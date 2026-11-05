/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System;
using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.EventSystem;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Objects.Miscellaneous;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.UI;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;
using Sims3.UI.Hud;

namespace Sims3.Gameplay.Objects.TombObjects;

public abstract class TreasureChest : GameObject, IBuildBuyListener, ITreasureChest, IHasWorldBuilderData, ISandsOfUnderstandingable, ICanHasTombObjectComponent, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent, IPetGuardable
{
	private class TreasureChestInfo
	{
		public string StringId;

		public float VisibleProbability;

		public float LockedProbability;

		public List<string> KeystonesRequired;

		public int NumberOfTreasures;

		public TreasureChestInfo(string stringId, float visibleProbability, float lockedProbability, List<string> keystonesRequired, int numberOfTreasures)
		{
			StringId = stringId;
			VisibleProbability = visibleProbability;
			LockedProbability = lockedProbability;
			KeystonesRequired = new List<string>(keystonesRequired);
			NumberOfTreasures = numberOfTreasures;
		}

		public bool Validate()
		{
			bool result = true;
			if (LockedProbability > 0f && KeystonesRequired.Count == 0)
			{
				result = false;
			}
			foreach (string item in KeystonesRequired)
			{
				if (!KeystoneMaker.IsValidKeystoneNameOrType(item))
				{
					result = false;
				}
			}
			return result;
		}

		public string GetLocalizedName()
		{
			return Localization.LocalizeString("Gameplay/Excel/TreasureChest/TreasureChest:" + StringId);
		}
	}

	private sealed class InsertKeystone : Interaction<Sim, TreasureChest>
	{
		private sealed class Definition : InteractionDefinition<Sim, TreasureChest, InsertKeystone>
		{
			protected override bool Test(Sim actor, TreasureChest target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (!target.IsLocked() || !target.HasTreasureChestInfoData())
				{
					return false;
				}
				if (actor.Inventory.Find<IKeystone>(target.IsObjectValidKey) == null)
				{
					greyedOutTooltipCallback = () =>
					{
						KeystonePanel keystonePanel = target.KeystonePanel;
						if (keystonePanel == null)
						{
							return "";
						}
						string text = ((keystonePanel.KeystoneInfo.Shape != KeystoneMaker.Shape.Named) ? Localization.LocalizeString("Gameplay/Objects/TombObjects/Keystone:" + keystonePanel.KeystoneInfo.Shape) : Localization.LocalizeString("Gameplay/Excel/Keystones/Keystones:" + keystonePanel.KeystoneInfo.Name));
						return LocalizeString("IncorrectKeystoneTooltip", text);
					};
					return false;
				}
				return true;
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/TreasureChest/InsertKeystone";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/TreasureChest/InsertKeystone:" + name, parameters);
		}

		protected override bool Run()
		{
			OpenWithAnimation openWithAnimation = OpenWithAnimation.Singleton.CreateInstance(Target, Actor, GetPriority(), Autonomous, CancellableByPlayer) as OpenWithAnimation;
			openWithAnimation.IsFromInsertKeystone = true;
			Actor.InteractionQueue.PushAsContinuation(openWithAnimation, mustRun: false);
			Actor.InteractionQueue.PushAsContinuation(Sims3.Gameplay.Objects.TombObjects.KeystonePanel.InsertKeystone.Singleton, Target.KeystonePanel, mustRun: false);
			return true;
		}
	}

	private sealed class OpenWithAnimation : Interaction<Sim, TreasureChest>
	{
		private sealed class Definition : InteractionDefinition<Sim, TreasureChest, OpenWithAnimation>
		{
			protected override bool Test(Sim actor, TreasureChest target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return !target.IsLocked();
			}

			protected override string GetInteractionName(Sim actor, TreasureChest target, InteractionObjectPair iop)
			{
				if (target.HasTreasureChestInfoData())
				{
					return LocalizeString(actor.IsFemale, "InteractionName");
				}
				return LocalizeString(actor.IsFemale, "AtHomeInteractionName");
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/TreasureChest/OpenWithAnimation";

		public static readonly InteractionDefinition Singleton = new Definition();

		[TunableComment("Range:  Minutes.  Description:  Number of minutes until the Open interaction times out.")]
		[Tunable]
		public static float kMinutesUntilOpenInteractionTimesOut = 5f;

		public bool IsFromInsertKeystone;

		private static string LocalizeString(bool isFemale, string name, params object[] parameters)
		{
			return Localization.LocalizeString(isFemale, "Gameplay/Objects/TombObjects/TreasureChest/OpenWithAnimation:" + name, parameters);
		}

		public void InventoryChangedCallback(IInventory newInventory)
		{
			if (newInventory != Target.Inventory)
			{
				Actor.AddExitReason(ExitReason.Finished);
			}
		}

		public void TreasureChestOpenedCallback(StateMachineClient smc, IEvent evt)
		{
			if (!Target.Inventory.IsEmpty)
			{
				Target.TurnOnFilledWithTreasureFX();
				EventTracker.SendEvent(EventTypeId.kOpenedTreasureChest, Actor, Target);
			}
			if (Target.SandsOfUnderstandingComponent != null && Target.mSandsOfUnderstandingCanAddCoins)
			{
				AncientCoinPile ancientCoinPile = GlobalFunctions.CreateObjectOutOfWorld("AncientCoinPile") as AncientCoinPile;
				ancientCoinPile.CurrentTuningSize = PickWeightedRandomCoinPileSize();
				Actor.ShowTNSIfSelectable(LocalizeString(Actor.IsFemale, "TnsTextBonusCoinsFromSandsOfUnderstanding", Actor), StyledNotification.NotificationStyle.kGameMessagePositive, Actor.ObjectId, Target.ObjectId);
				Target.mSandsOfUnderstandingCanAddCoins = false;
				Target.RemoveComponent<SandsOfUnderstandingComponent>();
			}
			Target.TombObjectComponent.ActivateTrigger(Trigger.Open, Actor);
			Tutorialette.TriggerLesson(Lessons.TombTreasureChest, Actor);
			Actor.SimDescription.TombStats.IncrementTreasuresOpened();
		}

		private PileTuningSizes PickWeightedRandomCoinPileSize()
		{
			return (PileTuningSizes)RandomUtil.GetWeightedIndex(kSandsOfUnderstandingCoinPileSizeWeightedChances);
		}

		public void TreasureChestClosedCallback(StateMachineClient smc, IEvent evt)
		{
			Target.TurnOffFilledWithTreasureFX();
		}

		public void InventoryEventCallback(uint stackNumber, InventoryEvent inventoryEvent, IGameObject obj)
		{
			if (Target.Inventory.IsEmpty)
			{
				Target.TurnOffFilledWithTreasureFX();
				Actor.AddExitReason(ExitReason.Finished);
			}
			else
			{
				Target.TurnOnFilledWithTreasureFX();
			}
			if (obj is ITreasureSpawnableObject { HasBeenCollected: false } treasureSpawnableObject)
			{
				treasureSpawnableObject.OnTreasureCollected(Actor, playCollectionBehavior: false);
			}
		}

		public override bool Test()
		{
			if (IsFromInsertKeystone)
			{
				return true;
			}
			return base.Test();
		}

		protected override bool Run()
		{
			if (!Target.RouteToTreasureChest(Actor))
			{
				return false;
			}
			StandardEntry();
			if (Target.HasTreasureChestInfoData() && (Target.TreasureComponent.NumberOfTreasuresGivenThisVisit < 1 || Target.TreasureComponent.HasAdventureTreasure()))
			{
				Target.FillWithTreasure(Actor);
			}
			EnterStateMachine("TreasureChest", "Enter", "x");
			SetActor("treasureChest", Target);
			AddOneShotScriptEventHandler(200u, TreasureChestOpenedCallback);
			AddOneShotScriptEventHandler(1002u, OnPlaySound);
			AddOneShotScriptEventHandler(1003u, OnPlaySound);
			AnimateSim("Looking At Treasure");
			Inventory inventory = Target.Inventory;
			inventory.EventCallback = (InventoryEventCallback)Delegate.Combine(inventory.EventCallback, new InventoryEventCallback(InventoryEventCallback));
			float num = kMinutesUntilOpenInteractionTimesOut;
			while (!Actor.IsActiveSim && num > 0f && !Actor.HasExitReason())
			{
				Actor.WaitForExitReason(0.1f, ExitReason.Default);
				num -= 0.1f;
			}
			if (Actor.IsActiveSim)
			{
				HudModel.OpenObjectInventoryForOwner(Target);
				Sims3.UI.Responder.Instance.HudModel.SecondaryInventoryOwnerChanged += InventoryChangedCallback;
				DoLoop(ExitReason.Default, LoopDel, null);
				Sims3.UI.Responder.Instance.HudModel.SecondaryInventoryOwnerChanged -= InventoryChangedCallback;
				HudModel.OpenObjectInventoryForOwner(null);
			}
			Inventory inventory2 = Target.Inventory;
			inventory2.EventCallback = (InventoryEventCallback)Delegate.Remove(inventory2.EventCallback, new InventoryEventCallback(InventoryEventCallback));
			AddOneShotScriptEventHandler(201u, TreasureChestClosedCallback);
			AnimateSim("Exit");
			StandardExit();
			return true;
		}

		private void LoopDel(StateMachineClient smc, LoopData ld)
		{
			EventTracker.SendEvent(EventTypeId.kSimOpenedTreasureChest, Actor, Target);
			if (!Actor.IsActiveSim)
			{
				Actor.AddExitReason(ExitReason.Finished);
			}
		}

		public override void Cleanup()
		{
			Sims3.UI.Responder.Instance.HudModel.SecondaryInventoryOwnerChanged -= InventoryChangedCallback;
			if (Target.Inventory != null)
			{
				Inventory inventory = Target.Inventory;
				inventory.EventCallback = (InventoryEventCallback)Delegate.Remove(inventory.EventCallback, new InventoryEventCallback(InventoryEventCallback));
			}
		}

		private void OnPlaySound(StateMachineClient smc, IEvent evt)
		{
			if (!Target.mHasOpenedWithCurrentLoot)
			{
				if (!Target.Inventory.IsEmpty)
				{
					Audio.StartObjectSound(Target.ObjectId, "sting_treas_chest", loop: false);
				}
				Target.mHasOpenedWithCurrentLoot = true;
			}
			switch (evt.EventId)
			{
			case 1002u:
				Audio.StartObjectSound(Target.ObjectId, Target.OpenSfx, loop: false);
				break;
			case 1003u:
				Audio.StartObjectSound(Target.ObjectId, Target.CloseSfx, loop: false);
				break;
			}
		}
	}

	private sealed class OpenWithoutAnimation : ImmediateInteraction<Sim, TreasureChest>
	{
		private sealed class Definition : ImmediateInteractionDefinition<Sim, TreasureChest, OpenWithoutAnimation>
		{
			protected override bool Test(Sim actor, TreasureChest target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return !target.HasTreasureChestInfoData();
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			HudModel.OpenObjectInventoryForOwner(Target);
			EventTracker.SendEvent(EventTypeId.kSimOpenedTreasureChest, Actor, Target);
			return true;
		}
	}

	private sealed class SetTreasureChestInfo : ImmediateInteraction<Sim, TreasureChest>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, TreasureChest, SetTreasureChestInfo>
		{
			protected override bool Test(Sim actor, TreasureChest target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, TreasureChest target, InteractionObjectPair iop)
			{
				string localizedNameForTreasureChestInfoKey = target.GetLocalizedNameForTreasureChestInfoKey();
				return LocalizeString("InteractionName", localizedNameForTreasureChestInfoKey);
			}

			public override void PopulatePieMenuPicker(ref InteractionInstanceParameters parameters, out List<ObjectPicker.TabInfo> listObjs, out List<ObjectPicker.HeaderInfo> headers, out int NumSelectableRows)
			{
				NumSelectableRows = 1;
				headers = new List<ObjectPicker.HeaderInfo>();
				listObjs = new List<ObjectPicker.TabInfo>();
				List<ObjectPicker.RowInfo> list = new List<ObjectPicker.RowInfo>();
				foreach (KeyValuePair<string, TreasureChestInfo> sTreasureChestDatum in sTreasureChestData)
				{
					List<ObjectPicker.ColumnInfo> list2 = new List<ObjectPicker.ColumnInfo>();
					list2.Add(new ObjectPicker.TextColumn(sTreasureChestDatum.Value.GetLocalizedName()));
					ObjectPicker.RowInfo item = new ObjectPicker.RowInfo(sTreasureChestDatum.Key, list2);
					list.Add(item);
				}
				headers.Add(new ObjectPicker.HeaderInfo("Gameplay/Objects/TombObjects/TreasureChest/SetTreasureChestInfo:RowName", "Gameplay/Objects/TombObjects/TreasureChest/SetTreasureChestInfo:RowName", 500));
				listObjs.Add(new ObjectPicker.TabInfo("Treasure rows", "Treasure rows", list));
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/TreasureChest/SetTreasureChestInfo";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/TreasureChest/SetTreasureChestInfo:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.mTreasureChestInfoKey = GetSelectedObject() as string;
			Target.OnTreasureInfoSetEvent();
			return true;
		}
	}

	private const uint kIsVisible = 142956740u;

	private const uint kHasOpenedWithCurrentLoot = 142956896u;

	private const uint kTreasureChestInfoKey = 142956930u;

	private const string kWorldBuilderDataName = "TreasureChest";

	private const string kTreasureChestGlowName = "ep1TreasureChestGlow";

	private const string kFirstTimeOpenSoundName = "sting_treas_chest";

	private const string kTreasureChestPathingFootprintName = "treasureChest_ftp_pathingShape";

	[Tunable]
	[TunableComment("Relative weights of Ancient Coin Pile sizes.  Used to randomly determine which size of coin pile to add when Sands of Understanding makes this object glow.  Format: (WeightVerySmallPile, WeightSmallPile, WeightLargePile, WeightVeryLargePile).")]
	private static float[] kSandsOfUnderstandingCoinPileSizeWeightedChances = new float[4] { 2f, 1f, 0f, 0f };

	[Tunable]
	[TunableComment("Description:  Default Chest Info Key when treasure component is set")]
	private static string kDefaultTreasureChestInfoKey = "BasicChest";

	private static readonly string[] kWorldBuilderDataKeyRemap = new string[2]
	{
		142956930u.ToString(),
		"Key"
	};

	private static Dictionary<string, TreasureChestInfo> sTreasureChestData = new Dictionary<string, TreasureChestInfo>();

	private bool mIsVisible = true;

	private bool mHasOpenedWithCurrentLoot;

	private VisualEffect mFilledTreasureFX;

	private string mTreasureChestInfoKey;

	private bool mSandsOfUnderstandingCanAddCoins = true;

	private TreasureChestKeystonePanel KeystonePanel => GetContainedObject(Slot.ContainmentSlot_0) as TreasureChestKeystonePanel;

	protected abstract string OpenSfx { get; }

	protected abstract string CloseSfx { get; }

	public TreasureChest()
	{
	}

	public override void OnStartup()
	{
		base.OnStartup();
		AddComponent<InventoryComponent>(new object[1] { false });
		AddComponent<TreasureComponent>(new object[0]);
		AddComponent<TombObjectStaticComponent>(new object[0]);
		AddComponent<AdventureComponent>(new object[0]);
		AddInteraction(OpenWithAnimation.Singleton);
		AddInteraction(OpenWithoutAnimation.Singleton);
		AddInteraction(InsertKeystone.Singleton);
		KeystonePanel?.UpdateVisualState();
		GameStates.TravelComplete += ResetTreasureChestSettings;
		if (mTreasureChestInfoKey == null)
		{
			TreasureComponent.OnTresureInfoSetEvent += OnTreasureInfoSetEvent;
		}
	}

	public override void Dispose()
	{
		base.Dispose();
		if (mFilledTreasureFX != null)
		{
			mFilledTreasureFX.Dispose();
			mFilledTreasureFX = null;
		}
		GameStates.TravelComplete -= ResetTreasureChestSettings;
	}

	protected override void AddDebugInteractions(List<InteractionDefinition> debugInteractions)
	{
		base.AddDebugInteractions(debugInteractions);
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(SetTreasureChestInfo.Singleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	public void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		tombObjectComponent.RegisterTrigger(Trigger.Open);
		tombObjectComponent.RegisterTrigger(Trigger.InsertKeystone);
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		writer.WriteBool(142956740u, mIsVisible);
		writer.WriteBool(142956896u, mHasOpenedWithCurrentLoot);
		writer.WriteString(142956930u, mTreasureChestInfoKey);
		return base.ExportContent(resKeyTable, objIdTable, writer);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		reader.ReadBool(142956740u, out mIsVisible, defaultValue: true);
		reader.ReadBool(142956896u, out mHasOpenedWithCurrentLoot, defaultValue: false);
		reader.ReadString(142956930u, out mTreasureChestInfoKey, null);
		KeystonePanel?.UpdateVisualState();
		return base.ImportContent(resKeyTable, objIdTable, reader);
	}

	public void SaveWorldBuilderData()
	{
		WorldBuilderData.Set("TreasureChest", ObjectId, "Key", mTreasureChestInfoKey, null);
	}

	public void LoadWorldBuilderData()
	{
		WorldBuilderData.SetKeyRemap(kWorldBuilderDataKeyRemap);
		WorldBuilderData.Get("TreasureChest", ObjectId, "Key", ref mTreasureChestInfoKey);
	}

	public static void ParseData()
	{
		XmlDbData xmlDbData = XmlDbData.ReadData("TreasureChest");
		XmlDbTable value = null;
		xmlDbData.Tables.TryGetValue("TreasureChest", out value);
		foreach (XmlDbRow row in value.Rows)
		{
			string text = row["StringID"];
			float visibleProbability = ParserFunctions.ParseFloat(row["VisibleProbability"], 1f);
			float lockedProbability = ParserFunctions.ParseFloat(row["LockedProbability"], 0f);
			bool flag = ParserFunctions.ParseCommaSeparatedString(row["KeystonesRequired"], out var list);
			if (!(row["KeystonesRequired"] != "") || flag)
			{
				List<string> keystonesRequired = ((list == null) ? new List<string>() : new List<string>(list));
				int numberOfTreasures = ParserFunctions.ParseInt(row["NumberOfTreasures"], 0);
				TreasureChestInfo treasureChestInfo = new TreasureChestInfo(text, visibleProbability, lockedProbability, keystonesRequired, numberOfTreasures);
				if (!sTreasureChestData.ContainsKey(text) && treasureChestInfo.Validate())
				{
					sTreasureChestData.Add(text, treasureChestInfo);
				}
			}
		}
	}

	public static void Shutdown()
	{
		sTreasureChestData.Clear();
	}

	public void OnEnterBuildBuyMode()
	{
		Show();
	}

	public void OnExitBuildBuyMode()
	{
		if (!mIsVisible)
		{
			Hide();
		}
	}

	public override bool HandToolAllowDragDrop(IGameObject objectToDrop)
	{
		if (objectToDrop is ImaginaryDoll || objectToDrop is MinorPet)
		{
			return false;
		}
		return !HasTreasureChestInfoData();
	}

	public override bool PackForMovingOverride()
	{
		return true;
	}

	public bool CanItemsBeRemovedFromInventory()
	{
		return HasTreasureChestInfoData();
	}

	public string GetTabDelimitedTreasureChestInfo()
	{
		return mTreasureChestInfoKey;
	}

	public bool CanTurnOnUnderstandingGlowNow()
	{
		return HasTreasureChestInfoData();
	}

	public bool ShouldUnderstandingGlowBePositive()
	{
		return true;
	}

	public bool ShouldConsumeSandsOfUnderstanding()
	{
		return mSandsOfUnderstandingCanAddCoins;
	}

	public SandsOfUnderstandingComponent.OnGlowCallback GetOnGlowCallback()
	{
		return null;
	}

	private bool IsLocked()
	{
		KeystonePanel keystonePanel = KeystonePanel;
		if (keystonePanel != null)
		{
			return !keystonePanel.IsUnlocked;
		}
		return false;
	}

	private bool HasTreasureChestInfoData()
	{
		return !string.IsNullOrEmpty(mTreasureChestInfoKey);
	}

	private void Show()
	{
		SetHiddenFlags(HiddenFlags.Nothing);
		EnableFootprint("treasureChest_ftp_pathingShape");
	}

	private void Hide()
	{
		SetHiddenFlags(HiddenFlags.Model);
		DisableFootprint("treasureChest_ftp_pathingShape");
	}

	private void TurnOnFilledWithTreasureFX()
	{
		if (mFilledTreasureFX == null)
		{
			mFilledTreasureFX = VisualEffect.Create("ep1TreasureChestGlow");
			mFilledTreasureFX.ParentTo(this, Slot.FXJoint_0);
		}
		if (!mFilledTreasureFX.HasEffectStarted())
		{
			mFilledTreasureFX.Start();
		}
	}

	private void TurnOffFilledWithTreasureFX()
	{
		if (mFilledTreasureFX != null)
		{
			mFilledTreasureFX.Stop();
			mFilledTreasureFX.Dispose();
			mFilledTreasureFX = null;
		}
	}

	private void FillWithTreasure(Sim sim)
	{
		if (!sTreasureChestData.TryGetValue(mTreasureChestInfoKey, out var value))
		{
			return;
		}
		if (TreasureComponent.HasAdventureTreasure())
		{
			List<IGameObject> adventureTreasure = TreasureComponent.GetAdventureTreasure(sim);
			foreach (IGameObject item in adventureTreasure)
			{
				if (!Inventory.TryToAdd(item))
				{
					item.Destroy();
				}
			}
		}
		if (TreasureComponent.NumberOfTreasuresGivenThisVisit >= 1)
		{
			return;
		}
		for (int i = 0; i < value.NumberOfTreasures; i++)
		{
			List<IGameObject> standardTreasure = TreasureComponent.GetStandardTreasure(sim);
			if (standardTreasure == null)
			{
				continue;
			}
			foreach (IGameObject item2 in standardTreasure)
			{
				if (!Inventory.TryToAdd(item2))
				{
					item2.Destroy();
				}
			}
		}
	}

	private void ResetTreasureChestSettings()
	{
		if (!Inventory.IsEmpty || !HasTreasureChestInfoData() || !sTreasureChestData.TryGetValue(mTreasureChestInfoKey, out var value))
		{
			return;
		}
		mHasOpenedWithCurrentLoot = false;
		IGameObject containedObject = GetContainedObject(Slot.ContainmentSlot_0);
		if (containedObject != null)
		{
			_ = containedObject is TreasureChestKeystonePanel;
			containedObject.UnParent();
			containedObject.Destroy();
		}
		if (RandomUtil.RandomChance01(value.VisibleProbability))
		{
			mIsVisible = true;
			Show();
			if (RandomUtil.RandomChance01(value.LockedProbability))
			{
				string randomStringFromList = RandomUtil.GetRandomStringFromList(value.KeystonesRequired.ToArray());
				KeystoneMaker.KeystoneInitParams initData = new KeystoneMaker.KeystoneInitParams(randomStringFromList);
				if (GlobalFunctions.CreateObjectParentedToSlot("keystonePanel", this, Slot.ContainmentSlot_0, typeof(TreasureChestKeystonePanel).FullName, initData) is TreasureChestKeystonePanel treasureChestKeystonePanel)
				{
					treasureChestKeystonePanel.UpdateVisualState();
					treasureChestKeystonePanel.SetHiddenFlags(HiddenFlags.Footprint);
				}
			}
		}
		else
		{
			mIsVisible = false;
			Hide();
		}
		mSandsOfUnderstandingCanAddCoins = true;
	}

	private string GetLocalizedNameForTreasureChestInfoKey()
	{
		if (!HasTreasureChestInfoData())
		{
			return "";
		}
		return Localization.LocalizeString("Gameplay/Excel/TreasureChest/TreasureChest:" + mTreasureChestInfoKey);
	}

	private void OnTreasureInfoSetEvent()
	{
		if (mTreasureChestInfoKey == null)
		{
			mTreasureChestInfoKey = kDefaultTreasureChestInfoKey;
		}
		TreasureComponent.OnTresureInfoSetEvent -= OnTreasureInfoSetEvent;
	}

	public bool IsObjectValidKey(IGameObject obj, object customData)
	{
		KeystonePanel keystonePanel = KeystonePanel;
		if (keystonePanel == null)
		{
			return false;
		}
		if (obj is IKeystone keystone)
		{
			return keystone.IsCorrectShape(keystonePanel.KeystoneInfo);
		}
		return false;
	}

	public bool RouteToTreasureChest(Sim actor)
	{
		return actor.RouteToSlotAndCheckInUse(this, Slot.RoutingSlot_0);
	}
}
