/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Controllers;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;

namespace Sims3.Gameplay.Objects;

public class TombRoomMarker : GameObject, IBuildBuyListener, IHasWorldBuilderData, ICanHasTombObjectComponent, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent, IPersistPostLoad
{
	private sealed class ToggleFog : ImmediateInteraction<Sim, TombRoomMarker>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, TombRoomMarker, ToggleFog>
		{
			public FogStatus FogStatus;

			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate1;

			public Definition()
			{
			}

			private Definition(FogStatus fogStatus)
			{
				FogStatus = fogStatus;
			}

			protected override bool Test(Sim actor, TombRoomMarker target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.TombRoomInfo.FogStatus == FogStatus)
				{
					greyedOutTooltipCallback = () => TombRoomMarker.LocalizeString("AlreadySelectedTooltip");
					return false;
				}
				return true;
			}

			protected override string GetInteractionName(Sim actor, TombRoomMarker target, InteractionObjectPair iop)
			{
				return TombRoomMarker.LocalizeString("FogStatus" + FogStatus);
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, TombRoomMarker target, List<InteractionObjectPair> results)
			{
				foreach (FogStatus value in Enum.GetValues(typeof(FogStatus)))
				{
					Definition interaction = new Definition(value);
					results.Add(new InteractionObjectPair(interaction, target));
				}
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[2]
				{
					TombRoomMarker.LocalizeString("FogOfExplorationPathName"),
					LocalizeString("PathName")
				};
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombRoomMarker/ToggleFog";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombRoomMarker/ToggleFog:" + name, parameters);
		}

		protected override bool Run()
		{
			FogStatus fogStatus = (InteractionDefinition as Definition).FogStatus;
			Target.TombRoomInfo.FogStatus = fogStatus;
			return true;
		}
	}

	private sealed class ResetFogForCurrentHousehold : ImmediateInteraction<Sim, TombRoomMarker>
	{
		private enum FogResetScope
		{
			Room,
			Lot,
			World
		}

		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, TombRoomMarker, ResetFogForCurrentHousehold>
		{
			public FogResetScope FogResetScope;

			public Definition()
			{
			}

			private Definition(FogResetScope fogResetScope)
			{
				FogResetScope = fogResetScope;
			}

			protected override bool Test(Sim actor, TombRoomMarker target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return PlumbBob.SelectedActor != null;
			}

			protected override string GetInteractionName(Sim actor, TombRoomMarker target, InteractionObjectPair iop)
			{
				return FogResetScope switch
				{
					FogResetScope.Room => LocalizeString("RoomInteractionName"), 
					FogResetScope.Lot => LocalizeString("LotInteractionName"), 
					FogResetScope.World => LocalizeString("WorldInteractionName"), 
					_ => "", 
				};
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, TombRoomMarker target, List<InteractionObjectPair> results)
			{
				foreach (FogResetScope value in Enum.GetValues(typeof(FogResetScope)))
				{
					Definition interaction = new Definition(value);
					results.Add(new InteractionObjectPair(interaction, target));
				}
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[2]
				{
					TombRoomMarker.LocalizeString("FogOfExplorationPathName"),
					LocalizeString("PathName")
				};
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombRoomMarker/ResetFogForCurrentHousehold";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombRoomMarker/ResetFogForCurrentHousehold:" + name, parameters);
		}

		protected override bool Run()
		{
			switch ((InteractionDefinition as Definition).FogResetScope)
			{
			case FogResetScope.Room:
				Target.TombRoomInfo.SetWhetherOrNotHouseholdHasBeenToThisRoom(PlumbBob.SelectedActor.SimDescription.HouseholdMembers, hasBeenToRoom: false);
				break;
			case FogResetScope.World:
			{
				foreach (Lot lot in LotManager.Lots)
				{
					if (lot.TombRoomManager != null && lot != Target.LotCurrent)
					{
						lot.TombRoomManager.SetWhetherOrNotHouseholdHasBeenToThisLot(PlumbBob.SelectedActor.SimDescription.HouseholdMembers, hasBeenToLot: false);
					}
				}
				TombRoomMarker[] objects2 = Target.LotCurrent.GetObjects<TombRoomMarker>();
				foreach (TombRoomMarker tombRoomMarker2 in objects2)
				{
					tombRoomMarker2.TombRoomInfo.SetWhetherOrNotHouseholdHasBeenToThisRoom(PlumbBob.SelectedActor.SimDescription.HouseholdMembers, hasBeenToRoom: false);
				}
				break;
			}
			case FogResetScope.Lot:
			{
				TombRoomMarker[] objects = Target.LotCurrent.GetObjects<TombRoomMarker>();
				foreach (TombRoomMarker tombRoomMarker in objects)
				{
					tombRoomMarker.TombRoomInfo.SetWhetherOrNotHouseholdHasBeenToThisRoom(PlumbBob.SelectedActor.SimDescription.HouseholdMembers, hasBeenToRoom: false);
				}
				break;
			}
			}
			return true;
		}
	}

	private sealed class SetTombType : ImmediateInteraction<Sim, TombRoomMarker>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, TombRoomMarker, SetTombType>
		{
			public TombType TombType;

			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate3;

			public Definition()
			{
			}

			private Definition(TombType tombType)
			{
				TombType = tombType;
			}

			protected override bool Test(Sim actor, TombRoomMarker target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.TombRoomInfo.TombType == TombType)
				{
					greyedOutTooltipCallback = () => LocalizeString("AlreadySelectedTooltip");
					return false;
				}
				return true;
			}

			protected override string GetInteractionName(Sim actor, TombRoomMarker target, InteractionObjectPair iop)
			{
				return LocalizeString("TombType" + TombType);
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, TombRoomMarker target, List<InteractionObjectPair> results)
			{
				foreach (TombType value in Enum.GetValues(typeof(TombType)))
				{
					if (value != TombType.NonTomb)
					{
						Definition interaction = new Definition(value);
						results.Add(new InteractionObjectPair(interaction, target));
					}
				}
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { LocalizeString("TombTypePathName") };
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			TombType tombType = (InteractionDefinition as Definition).TombType;
			Target.TombRoomInfo.TombType = tombType;
			return true;
		}
	}

	private sealed class ShowConflictingMarkers : ImmediateInteraction<Sim, TombRoomMarker>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, TombRoomMarker, ShowConflictingMarkers>
		{
			protected override bool Test(Sim actor, TombRoomMarker target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, TombRoomMarker target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombRoomMarker/ShowConflictingMarkers";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombRoomMarker/ShowConflictingMarkers:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.LotCurrent.TombRoomManager.CheckForAndDrawConflictingTombRoomMarkers();
			return true;
		}
	}

	private sealed class SetAsFinalRoom : ImmediateInteraction<IActor, TombRoomMarker>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<IActor, TombRoomMarker, SetAsFinalRoom>
		{
			protected override string GetInteractionName(IActor a, TombRoomMarker target, InteractionObjectPair interaction)
			{
				if (target.TombRoomInfo.IsFinalRoom)
				{
					return LocalizeString("UnsetFinalRoom");
				}
				return LocalizeString("SetFinalRoom") + Localization.Ellipsis;
			}

			protected override bool Test(IActor a, TombRoomMarker target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			if (Target.TombRoomInfo.IsFinalRoom)
			{
				Target.TombRoomInfo.SetFinalRoom(isFinalRoom: false);
			}
			else
			{
				string text = StringInputDialog.Show(GetInteractionName(), LocalizeString("SetFinalRoomDialogPrompt"), Target.TombRoomInfo.TnsText, numbersOnly: false, 512);
				if (!string.IsNullOrEmpty(text))
				{
					Target.TombRoomInfo.SetFinalRoom(isFinalRoom: true, text);
				}
			}
			return true;
		}
	}

	private const string sLocalizationKey = "Gameplay/Objects/TombRoomMarker";

	protected const string kWorldBuilderSystemName = "TombRoomMarker";

	public TombRoomInfo TombRoomInfo = new TombRoomInfo();

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/Objects/TombRoomMarker:" + name, parameters);
	}

	public TombRoomMarker()
	{
		TombRoomInfo.SetOwner(this);
	}

	public override void OnCreation()
	{
		base.OnCreation();
		TombRoomInfo.SetOwner(this);
	}

	public override void OnStartup()
	{
		base.OnStartup();
		if (Sims3.SimIFace.Objects.IsValid(ObjectId))
		{
			SetFlagsAndSeed();
		}
		AddComponent<AdventureComponent>(new object[0]);
	}

	protected virtual void SetFlagsAndSeed()
	{
		if (GameStates.IsBuildBuyLikeState)
		{
			SetHiddenFlags(HiddenFlags.Footprint);
			return;
		}
		SetHiddenFlags(HiddenFlags.Everything);
		World.SetRoomMarkerSeed(ObjectId, RoomMarkerTypes.TombRoom);
	}

	protected override void AddDebugInteractions(List<InteractionDefinition> debugInteractions)
	{
		base.AddDebugInteractions(debugInteractions);
		debugInteractions.Add(ToggleFog.Singleton);
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		base.AddBuildBuyInteractions(buildBuyInteractions);
		buildBuyInteractions.Add(ToggleFog.Singleton);
		buildBuyInteractions.Add(ResetFogForCurrentHousehold.Singleton);
		buildBuyInteractions.Add(ShowConflictingMarkers.Singleton);
		buildBuyInteractions.Add(SetTombType.Singleton);
		buildBuyInteractions.Add(SetAsFinalRoom.Singleton);
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		TombRoomInfo.ExportContent(resKeyTable, objIdTable, writer);
		return base.ExportContent(resKeyTable, objIdTable, writer);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		TombRoomInfo.ImportContent(resKeyTable, objIdTable, reader);
		TombRoomInfo.SetOwner(this);
		SetFlagsAndSeed();
		return base.ImportContent(resKeyTable, objIdTable, reader);
	}

	public virtual void SaveWorldBuilderData()
	{
		WorldBuilderData.Set("TombRoomMarker", ObjectId, "TombRoomInfo", TombRoomInfo, null);
	}

	public virtual void LoadWorldBuilderData()
	{
		WorldBuilderData.Get("TombRoomMarker", ObjectId, "TombRoomInfo", ref TombRoomInfo);
		TombRoomInfo.SetOwner(this);
	}

	public void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.UnfogRoom, UnfogRoom);
	}

	public void OnEnterBuildBuyMode()
	{
		UpdateVisualState();
	}

	public void OnExitBuildBuyMode()
	{
		UpdateVisualState();
	}

	public bool UnfogRoom(Sim sim)
	{
		if (PlumbBob.SelectedActor != null && LotCurrent.TombRoomManager != null)
		{
			return LotCurrent.TombRoomManager.UnfogRoomContainingObject(this);
		}
		return false;
	}

	public override void OnHandToolPlacement()
	{
		World.SetRoomMarkerSeed(ObjectId, RoomMarkerTypes.TombRoom);
	}

	public override void OnHandToolPickup(ePickupTypeHandTool pickupType)
	{
		World.ClearRoomMarkerSeed(ObjectId, RoomMarkerTypes.TombRoom);
	}

	public override void OnHandToolDeleted()
	{
		World.ClearRoomMarkerSeed(ObjectId, RoomMarkerTypes.TombRoom);
	}

	private void UpdateVisualState()
	{
		if (GameStates.NextInWorldStateId == InWorldState.SubState.BuildMode || GameStates.NextInWorldStateId == InWorldState.SubState.BuyMode)
		{
			UpdateVisibilityForBuildBuy();
		}
		else
		{
			SetHiddenFlags(HiddenFlags.Everything);
		}
	}

	public virtual void UpdateVisibilityForBuildBuy()
	{
		SetHiddenFlags(HiddenFlags.Footprint);
	}

	public void PersistPostLoad()
	{
		TombRoomInfo.SetOwner(this);
	}
}
