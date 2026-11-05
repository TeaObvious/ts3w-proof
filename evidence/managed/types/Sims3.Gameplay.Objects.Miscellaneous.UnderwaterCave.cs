/* Analyst: PC1.67 original managed evidence. ExploreCave resolves current-world named destination objects and teleports by SetPosition; cave names are not world names. Confirmation decline can still return true with destination cleared. Footprint/use-list/ref-list cleanup is significant.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System;
using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.EventSystem;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.Objects.Environment;
using Sims3.Gameplay.Objects.FoodObjects;
using Sims3.Gameplay.Objects.Gardening;
using Sims3.Gameplay.Objects.Island;
using Sims3.Gameplay.Objects.Spawners;
using Sims3.Gameplay.Passport;
using Sims3.Gameplay.Scuba;
using Sims3.Gameplay.Skills;
using Sims3.Gameplay.Socializing;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;

namespace Sims3.Gameplay.Objects.Miscellaneous;

public class UnderwaterCave : GameObject, IHasWorldBuilderData, GameObject.IDoNotDuplicateOnClone, IUnderwaterCaveDestination, IScubaLotObject, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent
{
	public class RewardData : IWeightable
	{
		private enum RewardType
		{
			Ingredient,
			GameObject,
			RGM,
			Shell
		}

		private object mObjectToMake;

		private ProductVersion mVersion;

		private float mWeight;

		private RewardType mType;

		public float Weight => mWeight;

		public bool IsValid => GameUtils.IsInstalled(mVersion);

		public RewardData(XmlDbRow row)
		{
			string text = row.GetString("Name");
			if (ParserFunctions.TryParseEnum(row["ProductVersion"], out var value, ProductVersion.Undefined))
			{
				mVersion = value;
			}
			mWeight = row.GetFloat("Weight");
			if (ParserFunctions.TryParseEnum(row["RewardType"], out var value2, RewardType.GameObject))
			{
				mType = value2;
			}
			else
			{
				row.GetString("RewardType");
				mVersion = ProductVersion.Undefined;
			}
			if (!IsValid)
			{
				return;
			}
			switch (mType)
			{
			case RewardType.GameObject:
				mObjectToMake = text;
				break;
			case RewardType.Ingredient:
				foreach (IngredientData ingredientData in IngredientData.IngredientDataList)
				{
					if (ingredientData.mStringKey == text)
					{
						mObjectToMake = ingredientData;
						break;
					}
				}
				if (mObjectToMake != null)
				{
				}
				break;
			case RewardType.RGM:
			{
				ParserFunctions.TryParseEnum(text, out var value4, RockGemMetal.Copper);
				mObjectToMake = value4;
				break;
			}
			case RewardType.Shell:
			{
				ParserFunctions.TryParseEnum(text, out var value3, SeashellTypes.Scallop);
				mVersion = ProductVersion.EP10;
				mObjectToMake = value3;
				break;
			}
			}
		}

		public IGameObject CreateObject(Sim actor)
		{
			switch (mType)
			{
			case RewardType.GameObject:
				return GlobalFunctions.CreateObjectOutOfWorld(mObjectToMake as string, mVersion);
			case RewardType.Ingredient:
			{
				IngredientData ingredientData = mObjectToMake as IngredientData;
				Ingredient ingredient = Ingredient.Create(ingredientData, Quality.Neutral, !ingredientData.IsMushrooms, (PlantDefinition.GetPlantDefinition(ingredientData.PlantName).Rarity != PlantRarity.Common) ? PlayerDisclosure.Concealed : PlayerDisclosure.Exposed);
				Collecting collecting2 = actor.SkillManager.AddElement(SkillNames.Collecting) as Collecting;
				collecting2.Collected(ingredient, out var _);
				return ingredient;
			}
			case RewardType.RGM:
			{
				IGameObject gameObject2 = RockGemMetalBase.Make((RockGemMetal)mObjectToMake, setCollected: true);
				Collecting collecting3 = actor.SkillManager.AddElement(SkillNames.Collecting) as Collecting;
				collecting3.Collected(gameObject2 as RockGemMetalBase, out var _);
				return gameObject2;
			}
			case RewardType.Shell:
			{
				IGameObject gameObject = Seashell.Make((SeashellTypes)mObjectToMake);
				if (gameObject != null)
				{
					Collecting collecting = actor.SkillManager.AddElement(SkillNames.Collecting) as Collecting;
					collecting.CollectSeaShell(gameObject as ISeaShell);
				}
				return gameObject;
			}
			default:
				return null;
			}
		}
	}

	public sealed class SetAsCaveWithDestination : ImmediateInteraction<Sim, UnderwaterCave>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, UnderwaterCave, SetAsCaveWithDestination>
		{
			private bool mSetIsTravelCave;

			public bool SetIsTravelCave => mSetIsTravelCave;

			public Definition()
			{
			}

			public Definition(bool setIsTravelCave)
			{
				mSetIsTravelCave = setIsTravelCave;
			}

			protected override bool Test(Sim actor, UnderwaterCave target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.InUse)
				{
					greyedOutTooltipCallback = InteractionInstance.CreateTooltipCallback(UnderwaterCave.LocalizeString("InUseTooltip"));
					return false;
				}
				if (string.IsNullOrEmpty(target.mLinkedDestinationName) && !mSetIsTravelCave)
				{
					return false;
				}
				return true;
			}

			protected override string GetInteractionName(Sim actor, UnderwaterCave target, InteractionObjectPair iop)
			{
				if (!mSetIsTravelCave)
				{
					return LocalizeString("ClearTravelDestination");
				}
				if (string.IsNullOrEmpty(target.mLinkedDestinationName))
				{
					return LocalizeString("SetTravelDestination");
				}
				return LocalizeString("ChangeTravelDestination");
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, UnderwaterCave target, List<InteractionObjectPair> results)
			{
				Definition interaction = new Definition(setIsTravelCave: false);
				InteractionObjectPair item = new InteractionObjectPair(interaction, target);
				results.Add(item);
				interaction = new Definition(setIsTravelCave: true);
				item = new InteractionObjectPair(interaction, target);
				results.Add(item);
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/Miscellaneous/UnderwaterCave/SetAsCaveWithDestination";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/Miscellaneous/UnderwaterCave/SetAsCaveWithDestination:" + name, parameters);
		}

		protected override bool Run()
		{
			bool flag = false;
			string text = null;
			if ((InteractionDefinition as Definition).SetIsTravelCave)
			{
				text = StringInputDialog.Show(LocalizeString("LinkedDestinationTitle"), LocalizeString("LinkedDestinationPrompt"), Target.mLinkedDestinationName, numbersOnly: false, 50);
				flag = !string.IsNullOrEmpty(text);
			}
			else
			{
				flag = true;
			}
			if (flag)
			{
				Target.mLinkedDestinationName = text;
			}
			return true;
		}
	}

	private sealed class SetName : ImmediateInteraction<Sim, UnderwaterCave>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, UnderwaterCave, SetName>
		{
			protected override bool Test(Sim actor, UnderwaterCave target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, UnderwaterCave target, InteractionObjectPair iop)
			{
				string text = target.mUnderwaterCaveName ?? string.Empty;
				return LocalizeString("InteractionName", text);
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/Miscellaneous/UnderwaterCave/SetName";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/Miscellaneous/UnderwaterCave/SetName:" + name, parameters);
		}

		protected override bool Run()
		{
			string defaultEntryText = Target.mUnderwaterCaveName ?? string.Empty;
			string text = StringInputDialog.Show(LocalizeString("SetNameTitleText"), LocalizeString("SetNamePromptText"), defaultEntryText, numbersOnly: false, 50);
			if (!string.IsNullOrEmpty(text))
			{
				IUnderwaterCaveDestination[] objects = Queries.GetObjects<IUnderwaterCaveDestination>();
				foreach (IUnderwaterCaveDestination underwaterCaveDestination in objects)
				{
					if (underwaterCaveDestination != Target && text == underwaterCaveDestination.Name)
					{
						StyledNotification.Format format = new StyledNotification.Format(LocalizeString("DuplicateNameWarning"), StyledNotification.NotificationStyle.kDebugAlert);
						StyledNotification.Show(format);
						break;
					}
				}
			}
			if (text != string.Empty)
			{
				Target.mUnderwaterCaveName = text;
			}
			return true;
		}
	}

	private sealed class SetScubaSkillRequirement : ImmediateInteraction<Sim, UnderwaterCave>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, UnderwaterCave, SetScubaSkillRequirement>
		{
			protected override bool Test(Sim actor, UnderwaterCave target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, UnderwaterCave target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName", target.mScubaSkillRequirement.ToString());
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/Miscellaneous/UnderwaterCave/SetScubaSkillRequirement";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/Miscellaneous/UnderwaterCave/SetScubaSkillRequirement:" + name, parameters);
		}

		protected override bool Run()
		{
			string defaultEntryText = Target.mScubaSkillRequirement.ToString();
			string text = StringInputDialog.Show(LocalizeString("SkillRequirementTitleText"), LocalizeString("SkillRequirementPromptText"), defaultEntryText, numbersOnly: true, 3);
			if (text != string.Empty)
			{
				ushort.TryParse(text, out Target.mScubaSkillRequirement);
			}
			return true;
		}
	}

	private sealed class Explore : Interaction<Sim, UnderwaterCave>
	{
		private sealed class Definition : InteractionDefinition<Sim, UnderwaterCave, Explore>
		{
			protected override bool Test(Sim actor, UnderwaterCave target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return !target.InUse;
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/Miscellaneous/UnderwaterCave/Explore";

		private float mTotalTimeToExplore;

		private int mCurrentStageInExploration;

		private IUnderwaterCaveDestination mDestinationToWarpTo;

		private List<int> mExploreTNSsShownSoFar;

		private Slot mTargetDestinationSlot;

		private Slot mOriginSlot = Slot.RoutingSlot_0;

		private bool mFoundAirAlready;

		private VisualEffect mVfx;

		private bool mUpdatedReferenceList;

		[Tunable]
		private static float kMinutesToExploreCaveForScubaLevel0 = 120f;

		[Tunable]
		private static float kMinutesToExploreCaveForScubaLevel10 = 50f;

		[TunableComment("Range: Minutes.  Diving to the bottom of the well may take this much more or less than the minutes given by level of athletic skill.")]
		[Tunable]
		private static float kMinutesToExploreCaveJitter = 20f;

		[TunableComment("Number of TNSs in the localization database that can come up while the sim is diving")]
		[Tunable]
		private static int kNumberOfExploreProgressTNSs = 3;

		[Tunable]
		private static float kProbabilityOfReceivingATNSWhileExploring = 0.25f;

		[Tunable]
		[TunableComment("Time it will take to move the camera to the sim after Travelling.  Not sure what the range on this value is.")]
		private static float kTimeToFocusOnSimAfterTraveling = 3f;

		[Tunable]
		[TunableComment("Time it will take to exit cave if you decline (or can't use) other exit.")]
		private static float kMinimumMinutesInCaveAfterFindingDestination = 5f;

		[Tunable]
		private static float kMaximumMinutesInCaveAfterFindingDestination = 10f;

		[Tunable]
		[TunableComment("Odds of finding something")]
		private static float[] kOddsOfFindingSomething = new float[11]
		{
			0f, 0.1f, 0.15f, 0.2f, 0.25f, 0.3f, 0.35f, 0.4f, 0.43f, 0.47f,
			0.5f
		};

		[Tunable]
		[TunableComment("multiplier of remaining time it takes to cancel out")]
		private static float kCancelOutMultiplier = 0.2f;

		[Tunable]
		[TunableComment("Odds of finding air pocket")]
		private static float kProbabilityOfFindingAirPocketWhileExploring = 0.25f;

		[TunableComment("Min Amount of Minutes Restored from Air Pocket")]
		[Tunable]
		private static float kMinAirInPocket = 10f;

		[Tunable]
		[TunableComment("Max Amount of Minutes Restored from Air Pocket")]
		private static float kMaxAirInPocket = 20f;

		[Tunable]
		[TunableComment("Number of explore stages")]
		private static int kTotalStagesToExplore = 5;

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(bool isFemale, string name, params object[] parameters)
		{
			return Localization.LocalizeString(isFemale, "Gameplay/Objects/Miscellaneous/UnderwaterCave/Explore:" + name, parameters);
		}

		private static string LocalizeString(string name, params object[] parameters)
		{
			return LocalizeString(isFemale: false, name, parameters);
		}

		public void HideSimCallback(StateMachineClient smc, IEvent evt)
		{
			Actor.SetHiddenFlags(HiddenFlags.Model);
		}

		public void ShowSimCallback(StateMachineClient smc, IEvent evt)
		{
			Actor.SetHiddenFlags(HiddenFlags.Nothing);
		}

		private void GrabSimCallback(StateMachineClient smc, IEvent evt)
		{
			EventTracker.SendEvent(EventTypeId.kGrabbedByUnderwaterCaveTentacle, Actor, Target);
		}

		protected override bool Run()
		{
			Target.mActorsReferencingMe.Add(Actor);
			mUpdatedReferenceList = true;
			if (Target.mIsTentacleWaving)
			{
				Target.TentacleWaveUpdate();
			}
			if (!Actor.RouteToSlotAndCheckInUse(Target, mOriginSlot))
			{
				return false;
			}
			Target.WaitForTentacle(Actor);
			if (!Target.EnableFootprintAndPushSims((uint)mOriginSlot, Actor))
			{
				Target.DisableFootprint((uint)mOriginSlot);
				mOriginSlot = Slot.None;
				return false;
			}
			StandardEntry();
			BeginCommodityUpdates();
			AcquireStateMachine("UnderwaterCaveExplore");
			SetActor("Cave", Target);
			SetActorAndEnter("x", Actor, "Enter");
			SetParameter("isMermaid", Actor.SimDescription.IsMatureMermaid);
			uint skillLevel = Skill.GetSkillLevel(Actor, SkillNames.ScubaDiving);
			int maximumSupportedSkillLevel = SkillManager.GetMaximumSupportedSkillLevel(SkillNames.ScubaDiving);
			float num = MathHelpers.LinearInterpolate(0f, maximumSupportedSkillLevel, kMinutesToExploreCaveForScubaLevel0, kMinutesToExploreCaveForScubaLevel10, skillLevel);
			mTotalTimeToExplore = Math.Max(0f, RandomUtil.GetFloat(num - kMinutesToExploreCaveJitter, num + kMinutesToExploreCaveJitter));
			mCurrentStageInExploration = -1;
			UpdateExploreProgress(0f);
			AddOneShotScriptEventHandler(201u, HideSimCallback);
			(Actor.Posture as ScubaDiving).StopBubbleEffects();
			AnimateSim("Explore");
			mVfx = VisualEffect.Create(Target.GetVfxArray[2]);
			Vector3 positionOfSlot = Target.GetPositionOfSlot(Slot.FXJoint_0);
			Vector3 forwardOfSlot = Target.GetForwardOfSlot(Slot.FXJoint_0);
			mVfx.SetPosAndOrient(positionOfSlot, forwardOfSlot, Vector3.UnitY);
			mVfx.SubmitOneShotEffect(VisualEffect.TransitionType.SoftTransition);
			float lastTime = SimClock.ElapsedTime(TimeUnit.Minutes);
			bool flag = DoLoop(ExitReason.Default, ExploreLoop, null);
			IGameObject gameObject = null;
			bool flag2 = false;
			int count = Actor.Inventory.FindAll<DiverGnome>(checkInUse: false).Count;
			float num2 = ((count > 0) ? (DiverGnome.UnderwaterCollectingMultiplier * (float)count) : 1f);
			if (flag)
			{
				Actor.RemoveExitReason(ExitReason.StageComplete);
				if (!string.IsNullOrEmpty(Target.mLinkedDestinationName))
				{
					mDestinationToWarpTo = Target.GetNamedDestination();
					if (mDestinationToWarpTo != null)
					{
						flag2 = true;
						if (skillLevel >= Target.mScubaSkillRequirement)
						{
							if (AttemptToWarpDestinations())
							{
								if (Actor.Household != null && mDestinationToWarpTo != null)
								{
									Target.SetWhetherOrNotHouseholdHasBeenToThisCave(Actor.SimDescription.HouseholdMembers, hasBeenToCave: true);
									if (mDestinationToWarpTo is UnderwaterCave underwaterCave)
									{
										underwaterCave.SetWhetherOrNotHouseholdHasBeenToThisCave(Actor.SimDescription.HouseholdMembers, hasBeenToCave: true);
									}
								}
							}
							else
							{
								Actor.ShowTNSIfSelectable(TNSNames.UnderwaterCaveTunnelBlocked, null, Actor, null, Actor);
							}
						}
						else
						{
							Actor.ShowTNSIfSelectable(TNSNames.UnderwaterCaveTunnelInsufficientSkill, null, Actor, null, Actor);
							mDestinationToWarpTo = null;
						}
						if (mDestinationToWarpTo == null)
						{
							DoTimedLoop(RandomUtil.GetFloat(kMinimumMinutesInCaveAfterFindingDestination, kMaximumMinutesInCaveAfterFindingDestination), ExitReason.None);
						}
					}
				}
				float num3 = 0f;
				if (Actor.SkillManager.GetElement(SkillNames.ScubaDiving) is ScubaDivingSkill { UnderwaterSpelunkerCompleted: not false })
				{
					num3 = ScubaDivingSkill.kUnderwaterSpelunkerChance;
				}
				if (sRewards.Count > 0 && RandomUtil.RandomChance01(kOddsOfFindingSomething[skillLevel] * num2 + num3))
				{
					gameObject = RandomUtil.GetWeightedRandomObjectFromList(sRewards).CreateObject(Actor);
					if (!Actor.Inventory.TryToAdd(gameObject))
					{
						gameObject.Destroy();
						gameObject = null;
					}
				}
			}
			else
			{
				DoTimedLoop((mTotalTimeToExplore - SimClock.ElapsedTimeInMinutes(ref lastTime)) * kCancelOutMultiplier, ExitReason.None);
			}
			if (mVfx != null)
			{
				mVfx.Stop(VisualEffect.TransitionType.SoftTransition);
			}
			if (flag)
			{
				EventTracker.SendEvent(EventTypeId.kExploredUnderwaterCave, Actor, Target);
				if (Actor.SkillManager.GetElement(SkillNames.ScubaDiving) is ScubaDivingSkill scubaDivingSkill2)
				{
					scubaDivingSkill2.CavesExplored++;
				}
			}
			if (mDestinationToWarpTo != null && !mDestinationToWarpTo.IsCave)
			{
				Actor.Posture.CancelPosture(Actor);
			}
			else
			{
				AddOneShotScriptEventHandler(202u, ShowSimCallback);
				AddOneShotScriptEventHandler(203u, GrabSimCallback);
				if (RandomUtil.RandomChance01(kGrabbedChance[skillLevel]))
				{
					AnimateSim("Attacked");
					Actor.BuffManager.AddElement(BuffNames.Suckered, Origin.FromCaveMonster);
				}
				AnimateSim("Exit");
				(Actor.Posture as ScubaDiving).StartBubbleEffects();
			}
			if (flag)
			{
				if (mDestinationToWarpTo != null)
				{
					Lot lot = Actor.LotCurrent;
					if (lot.IsWorldLot)
					{
						float num4 = float.MaxValue;
						foreach (Lot allLot in LotManager.AllLots)
						{
							if (!allLot.IsWorldLot)
							{
								float num5 = (Actor.Position - allLot.Position).LengthSqr();
								if (num5 < num4)
								{
									lot = allLot;
									num4 = num5;
								}
							}
						}
					}
					if (UnchartedIslandMarker.DiscoverLot(Actor, lot, UnchartedIslandMarker.DiscoveryType.ScubaSurprise))
					{
						if (gameObject != null)
						{
							Actor.ShowTNSIfSelectable(TNSNames.UnderwaterCaveTunnelNewLotFoundObjectSummary, null, Actor, null, Actor, Actor.LotCurrent.Name, gameObject.GetLocalizedName());
						}
						else
						{
							Actor.ShowTNSIfSelectable(TNSNames.UnderwaterCaveTunnelNewLotSummary, null, Actor, null, Actor, Actor.LotCurrent.Name);
						}
					}
					else if (gameObject != null)
					{
						Actor.ShowTNSIfSelectable(TNSNames.UnderwaterCaveTunnelTraveledFoundObjectSummary, null, Actor, null, Actor, Actor.LotCurrent.Name, gameObject.GetLocalizedName());
					}
					else
					{
						Actor.ShowTNSIfSelectable(TNSNames.UnderwaterCaveTunnelTraveledSummary, null, Actor, null, Actor, Actor.LotCurrent.Name);
					}
				}
				else if (flag2)
				{
					if (gameObject != null)
					{
						Actor.ShowTNSIfSelectable(TNSNames.UnderwaterCaveTunnelFoundObjectSummary, null, Actor, null, Actor, gameObject.GetLocalizedName());
					}
					else
					{
						Actor.ShowTNSIfSelectable(TNSNames.UnderwaterCaveTunnelFoundSummary, null, Actor, null, Actor);
					}
				}
				else if (gameObject != null)
				{
					Actor.ShowTNSIfSelectable(TNSNames.UnderwaterCaveFoundObjectSummary, null, Actor, null, Actor, gameObject.GetLocalizedName());
				}
				else
				{
					Actor.ShowTNSIfSelectable(TNSNames.UnderwaterCaveSummary, null, Actor, null, Actor);
				}
			}
			EndCommodityUpdates(flag);
			StandardExit();
			return true;
		}

		private bool UpdateExploreProgress(float totalElapsedTime)
		{
			float num = mTotalTimeToExplore - totalElapsedTime;
			int num2 = (int)Math.Ceiling((float)(kTotalStagesToExplore - 1) * num / mTotalTimeToExplore);
			if (num2 >= kTotalStagesToExplore)
			{
				num2 = kTotalStagesToExplore - 1;
			}
			if (num2 < 0)
			{
				num2 = 0;
			}
			if (num2 != mCurrentStageInExploration)
			{
				if (num2 != 0 && num2 != kTotalStagesToExplore - 1)
				{
					if (RandomUtil.RandomChance01(kProbabilityOfFindingAirPocketWhileExploring) && !mFoundAirAlready)
					{
						float num3 = RandomUtil.GetFloat(kMinAirInPocket, kMaxAirInPocket);
						BuffInstance element = Actor.BuffManager.GetElement(BuffNames.BreathingComfortably);
						if (element == null)
						{
							element = Actor.BuffManager.GetElement(BuffNames.BreathingShallowly);
						}
						if (element == null)
						{
							element = Actor.BuffManager.GetElement(BuffNames.GaspingForAir);
						}
						if (element != null)
						{
							mFoundAirAlready = true;
							element.mTimeoutCount += num3;
							Actor.ShowTNSIfSelectable(TNSNames.FoundAirInCave, null, Actor, Actor);
						}
					}
					else if (RandomUtil.RandomChance01(kProbabilityOfReceivingATNSWhileExploring))
					{
						if (mExploreTNSsShownSoFar == null)
						{
							mExploreTNSsShownSoFar = new List<int>();
						}
						int num4 = RandomUtil.GetInt(kNumberOfExploreProgressTNSs - 1);
						while (mExploreTNSsShownSoFar.Contains(num4) && mExploreTNSsShownSoFar.Count < kNumberOfExploreProgressTNSs)
						{
							num4 = RandomUtil.GetInt(kNumberOfExploreProgressTNSs - 1);
						}
						Actor.ShowTNSIfSelectable(LocalizeString(Actor.IsFemale, "ExploreProgressTNS" + num4, Actor), StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
						mExploreTNSsShownSoFar.Add(num4);
					}
				}
				mCurrentStageInExploration = num2;
			}
			if (Actor.BuffManager.HasElement(BuffNames.GaspingForAir))
			{
				mCurrentStageInExploration = 0;
				if (!Actor.InteractionQueue.HasInteractionOfType(BuffGaspingForAir.BuffInstanceGaspingForAir.GaspForAirIdle.Singleton))
				{
					InteractionInstance interactionInstance = BuffGaspingForAir.BuffInstanceGaspingForAir.GaspForAirIdle.Singleton.CreateInstance(Actor, Actor, new InteractionPriority(InteractionPriorityLevel.NonCriticalNPCBehavior), isAutonomous: false, cancellableByPlayer: false);
					interactionInstance.Hidden = true;
					Actor.InteractionQueue.AddNext(interactionInstance);
				}
				Actor.ShowTNSIfSelectable(TNSNames.ExploreCaveMustSurface, null, Actor, null, Actor.IsFemale, Actor.IsFemale, Actor);
			}
			return mCurrentStageInExploration == 0;
		}

		private void ExploreLoop(StateMachineClient smc, LoopData ld)
		{
			if (UpdateExploreProgress(ld.mLifeTime))
			{
				Actor.AddExitReason(ExitReason.StageComplete);
			}
		}

		private bool AttemptToWarpDestinations()
		{
			if (mDestinationToWarpTo == null)
			{
				return false;
			}
			if (mDestinationToWarpTo.InUse)
			{
				return false;
			}
			mTargetDestinationSlot = mOriginSlot;
			if (mDestinationToWarpTo is UnderwaterCave underwaterCave)
			{
				underwaterCave.mActorsReferencingMe.Add(Actor);
				if (underwaterCave.mIsTentacleWaving)
				{
					underwaterCave.TentacleWaveUpdate();
				}
				if (!underwaterCave.PushSimsFromFootprint((uint)mTargetDestinationSlot, Actor, null, waitForPushes: true))
				{
					mTargetDestinationSlot = Slot.None;
					return false;
				}
				if (underwaterCave.WaitForTentacle(Actor))
				{
					underwaterCave.mActorsReferencingMe.Add(Actor);
				}
			}
			if ((Actor.Household == null || !Target.HasHouseholdBeenToThisCave(Actor.SimDescription.HouseholdMembers)) ? TwoButtonDialog.Show(LocalizeString(Actor.IsFemale, "FirstTimePortalChoice", Actor), LocalizeString("FirstTimePortalChoiceYes"), LocalizeString("FirstTimePortalChoiceNo")) : TwoButtonDialog.Show(LocalizeString("PortalChoice"), LocalizeString("PortalChoiceYes"), LocalizeString("PortalChoiceNo")))
			{
				mDestinationToWarpTo.AddToUseList(Actor);
				if (mDestinationToWarpTo.IsCave)
				{
					Actor.SetPosition(mDestinationToWarpTo, mTargetDestinationSlot);
					Actor.SetForward(Slots.GetForwardOfSlot(mDestinationToWarpTo.ObjectId, mTargetDestinationSlot));
				}
				else
				{
					Actor.SetPosition(mDestinationToWarpTo.Position);
				}
				SetActor("Cave", mDestinationToWarpTo);
				if (!Camera.sCameraFollow.IsSimBeingFollowed(Actor) && Actor.IsActiveSim)
				{
					Camera.FocusOnSim(Actor, kTimeToFocusOnSimAfterTraveling);
				}
			}
			else
			{
				mDestinationToWarpTo.DisableFootprint((uint)mTargetDestinationSlot);
				mDestinationToWarpTo = null;
				mTargetDestinationSlot = Slot.None;
			}
			return true;
		}

		public override void Cleanup()
		{
			base.Cleanup();
			if (!mUpdatedReferenceList && Target.mActorsReferencingMe.Contains(Actor))
			{
				return;
			}
			if (mVfx != null)
			{
				mVfx.Stop(VisualEffect.TransitionType.SoftTransition);
			}
			if (StandardEntryCalled && !StandardExitCalled)
			{
				Actor.SetHiddenFlags(HiddenFlags.Nothing);
			}
			Target.mActorsReferencingMe.Remove(Actor);
			if (mOriginSlot != Slot.None)
			{
				Target.DisableFootprint((uint)mOriginSlot);
				mOriginSlot = Slot.None;
			}
			if (mDestinationToWarpTo != null)
			{
				if (mDestinationToWarpTo.IsActorUsingMe(Actor))
				{
					mDestinationToWarpTo.RemoveFromUseList(Actor);
				}
				if (mTargetDestinationSlot != Slot.None)
				{
					mDestinationToWarpTo.DisableFootprint((uint)mTargetDestinationSlot);
				}
				mTargetDestinationSlot = Slot.None;
				if (mDestinationToWarpTo is UnderwaterCave underwaterCave)
				{
					underwaterCave.mActorsReferencingMe.Remove(Actor);
				}
				mDestinationToWarpTo = null;
			}
		}
	}

	public sealed class DeleteNonCaveDestination : ImmediateInteraction<Sim, UnderwaterCave>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, UnderwaterCave, DeleteNonCaveDestination>
		{
			private UnderwaterCaveSurfaceDestinationMarker mDestination;

			public UnderwaterCaveSurfaceDestinationMarker Destination => mDestination;

			public Definition()
			{
			}

			public Definition(UnderwaterCaveSurfaceDestinationMarker destination)
			{
				mDestination = destination;
			}

			protected override bool Test(Sim actor, UnderwaterCave target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, UnderwaterCave target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName", mDestination.Name);
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, UnderwaterCave target, List<InteractionObjectPair> results)
			{
				UnderwaterCaveSurfaceDestinationMarker[] objects = Queries.GetObjects<UnderwaterCaveSurfaceDestinationMarker>();
				foreach (UnderwaterCaveSurfaceDestinationMarker destination in objects)
				{
					Definition interaction = new Definition(destination);
					InteractionObjectPair item = new InteractionObjectPair(interaction, target);
					results.Add(item);
				}
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { LocalizeString("Path") };
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/Miscellaneous/UnderwaterCave/DeleteNonCaveDestination";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/Miscellaneous/UnderwaterCave/DeleteNonCaveDestination:" + name, parameters);
		}

		protected override bool Run()
		{
			(InteractionDefinition as Definition).Destination.Destroy();
			return true;
		}
	}

	private class WoohooInCave : Interaction<Sim, UnderwaterCave>
	{
		private sealed class Definition : InteractionDefinition<Sim, UnderwaterCave, WoohooInCave>
		{
			protected override bool Test(Sim a, UnderwaterCave target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.InUse)
				{
					return false;
				}
				if (a.Posture is ScubaDiving && GetPotentialLovers(a, target.LotCurrent, tryForBaby: false).Count > 0)
				{
					return true;
				}
				return false;
			}

			public override void PopulatePieMenuPicker(ref InteractionInstanceParameters parameters, out List<ObjectPicker.TabInfo> listObjs, out List<ObjectPicker.HeaderInfo> headers, out int NumSelectableRows)
			{
				NumSelectableRows = 1;
				Sim actor = parameters.Actor as Sim;
				PopulateSimPicker(ref parameters, out listObjs, out headers, GetPotentialLovers(actor, parameters.Target.LotCurrent, tryForBaby: false), includeActor: false);
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		public Sim mWoohooer;

		public Sim mWoohooee;

		private bool mMaster;

		public bool mRouteComplete;

		protected bool mIsTryingForBaby;

		private VisualEffect mVfxone;

		private VisualEffect mVfxtwo;

		private bool mAddedToReferenceList;

		[TunableComment("Radius that Sim will route after interaction to give room for other sim.")]
		[Tunable]
		private static float kRouteRadiusRange = 3f;

		[TunableComment("LTR Increase on completion")]
		[Tunable]
		private static float kLTRBump = 5f;

		protected override bool Run()
		{
			mAddedToReferenceList = true;
			Target.mActorsReferencingMe.Add(Actor);
			if (mWoohooer == null)
			{
				mMaster = true;
				mWoohooer = Actor;
				mWoohooee = GetSelectedObject() as Sim;
				if (mWoohooee == null)
				{
					mWoohooee = RandomUtil.GetRandomObjectFromList(GetPotentialLovers(Actor, Target.LotCurrent, tryForBaby: false));
					if (mWoohooee == null)
					{
						return false;
					}
				}
			}
			if (mMaster)
			{
				WoohooInCave woohooInCave = Singleton.CreateInstance(Target, mWoohooee, mPriority, Autonomous, cancellableByPlayer: true) as WoohooInCave;
				woohooInCave.mWoohooer = Actor;
				woohooInCave.mWoohooee = mWoohooee;
				woohooInCave.LinkedInteractionInstance = this;
				mWoohooee.InteractionQueue.AddNext(woohooInCave);
				if (Target.mIsTentacleWaving)
				{
					Target.TentacleWaveUpdate();
				}
				if (!Actor.RouteToSlot(Target, Slot.RoutingSlot_0))
				{
					mWoohooee.AddExitReason(ExitReason.SynchronizationFailed);
					return false;
				}
				Target.WaitForTentacle(Actor);
				StandardEntry();
				EnterStateMachine("UnderwaterCaveWooHoo", "enter", "x");
				SetParameter("IsMermaidX", Actor.SimDescription.IsMatureMermaid);
				SetActor("cave", Target);
				AnimateSim("xEnterCave");
				mRouteComplete = true;
			}
			WoohooInCave woohooInCave2 = LinkedInteractionInstance as WoohooInCave;
			while (woohooInCave2 != null && !woohooInCave2.mRouteComplete && !Actor.HasExitReason(ExitReason.Default))
			{
				Simulator.Sleep(0u);
			}
			if (woohooInCave2 == null || !woohooInCave2.mRouteComplete)
			{
				if (mMaster)
				{
					StandardExit();
				}
				return false;
			}
			if (!mMaster)
			{
				Route route = Actor.CreateRoute();
				route.AddObjectToIgnoreForRoute(mWoohooer.ObjectId);
				route.PlanToSlot(Target, Slot.RoutingSlot_0);
				mRouteComplete = Actor.DoRoute(route);
				if (!mRouteComplete)
				{
					mWoohooer.AddExitReason(ExitReason.SynchronizationFailed);
					return false;
				}
				StandardEntry();
			}
			BeginCommodityUpdates();
			if (mMaster)
			{
				if (Actor.HasExitReason(ExitReason.Default))
				{
					AnimateSim("xExit");
					EndCommodityUpdates(succeeded: false);
					StandardExit();
					return false;
				}
				Target.WaitForTentacle(mWoohooee);
				SetActor("y", mWoohooee);
				SetParameter("IsMermaidY", mWoohooee.SimDescription.IsMatureMermaid);
				AddOneShotScriptEventHandler(201u, FireVFX);
				if (mIsTryingForBaby)
				{
					AddOneShotScriptEventHandler(1001u, FirePreggo);
				}
				mCurrentStateMachine.EnterState("y", "enter");
				mCurrentStateMachine.RequestState("y", "yEnterCave");
				AnimateJoinSims("woohoo");
				mWoohooer.BuffManager.AddElement(BuffNames.MileLowClub, Origin.FromWooHooUnderwaterCave);
				mWoohooee.BuffManager.AddElement(BuffNames.MileLowClub, Origin.FromWooHooUnderwaterCave);
				Relationship relationship = mWoohooer.GetRelationship(mWoohooee, bCreateIfNotPresent: true);
				relationship.LTR.UpdateLiking(kLTRBump);
				if (mVfxone != null)
				{
					mVfxone.Stop(VisualEffect.TransitionType.SoftTransition);
					mVfxone = null;
				}
				if (mVfxtwo != null)
				{
					mVfxtwo.Stop(VisualEffect.TransitionType.SoftTransition);
					mVfxtwo = null;
				}
				AnimateSim("xExit");
				Actor.RouteToObjectRadius(Target, kRouteRadiusRange);
				Actor.LoopIdle();
				mCurrentStateMachine.RequestState("y", "yExit");
				mWoohooee.AddExitReason(ExitReason.Finished);
			}
			else
			{
				DoLoop(ExitReason.Default);
				Actor.RouteToObjectRadius(Target, kRouteRadiusRange);
			}
			EventTracker.SendEvent(EventTypeId.kWooHooInUnderwaterCave, Actor, Target);
			EndCommodityUpdates(succeeded: true);
			StandardExit();
			return true;
		}

		private void FireVFX(StateMachineClient sender, IEvent evt)
		{
			mVfxone = VisualEffect.Create(Target.GetVfxArray[0]);
			mVfxtwo = VisualEffect.Create(Target.GetVfxArray[1]);
			Vector3 positionOfSlot = Target.GetPositionOfSlot(Slot.FXJoint_0);
			Vector3 forwardOfSlot = Target.GetForwardOfSlot(Slot.FXJoint_0);
			mVfxone.SetPosAndOrient(positionOfSlot, forwardOfSlot, Vector3.UnitY);
			mVfxtwo.SetPosAndOrient(positionOfSlot, forwardOfSlot, Vector3.UnitY);
			mVfxone.SubmitOneShotEffect(VisualEffect.TransitionType.SoftTransition);
			mVfxtwo.SubmitOneShotEffect(VisualEffect.TransitionType.SoftTransition);
		}

		private void FirePreggo(StateMachineClient sender, IEvent evt)
		{
			if (Pregnancy.ShouldImpregnate(Actor, mWoohooee, TryForBabyInCave.kBabyMadeChance) && Pregnancy.Start(Actor, mWoohooee) && (Actor.IsSelectable || mWoohooee.IsSelectable))
			{
				Audio.StartSound("sting_baby_conception");
			}
		}

		public override void Cleanup()
		{
			if (mAddedToReferenceList)
			{
				Target.mActorsReferencingMe.Remove(Actor);
			}
			if (mVfxone != null)
			{
				mVfxone.Stop(VisualEffect.TransitionType.SoftTransition);
			}
			if (mVfxtwo != null)
			{
				mVfxtwo.Stop(VisualEffect.TransitionType.SoftTransition);
			}
			base.Cleanup();
		}
	}

	private sealed class TryForBabyInCave : WoohooInCave
	{
		private sealed class Definition : InteractionDefinition<Sim, UnderwaterCave, TryForBabyInCave>
		{
			protected override bool Test(Sim a, UnderwaterCave target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.InUse)
				{
					return false;
				}
				if (a.Posture is ScubaDiving && GetPotentialLovers(a, target.LotCurrent, tryForBaby: true).Count > 0)
				{
					return true;
				}
				return false;
			}

			public override void PopulatePieMenuPicker(ref InteractionInstanceParameters parameters, out List<ObjectPicker.TabInfo> listObjs, out List<ObjectPicker.HeaderInfo> headers, out int NumSelectableRows)
			{
				NumSelectableRows = 1;
				Sim actor = parameters.Actor as Sim;
				PopulateSimPicker(ref parameters, out listObjs, out headers, GetPotentialLovers(actor, parameters.Target.LotCurrent, tryForBaby: true), includeActor: false);
			}
		}

		[Tunable]
		[TunableComment("Chance a baby will be made when trying for baby")]
		internal static float kBabyMadeChance = 25f;

		public static readonly InteractionDefinition TryForBabySingleton = new Definition();

		protected override bool Run()
		{
			mIsTryingForBaby = true;
			return base.Run();
		}
	}

	private sealed class DEBUG_ToggleTenticle : ImmediateInteraction<Sim, UnderwaterCave>
	{
		[DoesntRequireTuning]
		private sealed class Definition : InteractionDefinition<Sim, UnderwaterCave, DEBUG_ToggleTenticle>
		{
			protected override bool Test(Sim a, UnderwaterCave target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.TentacleWaveUpdate();
			return true;
		}
	}

	private const string sLocalizationKey = "Gameplay/Objects/Miscellaneous/UnderwaterCave";

	private const uint kHideSimEvent = 201u;

	private const uint kShowSimEvent = 202u;

	private const uint kGrabEvent = 203u;

	private const uint kUnderwaterCaveName = 245942407u;

	private const uint kLinkedDestinationName = 245942411u;

	private const uint kScubaSkillRequirement = 245945991u;

	private const string kWorldBuilderDataName = "UnderwaterCave";

	[TunableComment("Range: Float . Chance of being attacked on exit")]
	[Tunable]
	private static float[] kGrabbedChance = new float[11]
	{
		0.5f, 0.45f, 0.4f, 0.35f, 0.3f, 0.25f, 0.2f, 0.15f, 0.1f, 0.05f,
		0f
	};

	[Tunable]
	[TunableComment("Range: Float. Min hours between tentacle waves")]
	private static float kMinTentacleWaveInterlude = 1f;

	[TunableComment("Range: Float. Max hours between tentacle waves")]
	[Tunable]
	private static float kMaxTentacleWaveInterlude = 4f;

	[TunableComment("Range: Float. Min minutes the tentacle waves")]
	[Tunable]
	private static float kMinTentacleWaveDuration = 10f;

	[Tunable]
	[TunableComment("Range: Float. Max minutes the tentacle waves")]
	private static float kMaxTentacleWaveDuration = 60f;

	[Tunable]
	[TunableComment("Range: Float. Time in minutes to wait for a tentacle wave to end before resetting the cave")]
	private static float kTentacleWaveStopTimeout = 20f;

	private string mUnderwaterCaveName;

	private string mLinkedDestinationName;

	private ushort mScubaSkillRequirement;

	private IDictionary<ulong, bool> mSimsThatHaveDiscoveredThisCaveDestination = new Dictionary<ulong, bool>();

	private AlarmHandle mTentacleWaveAlarm = AlarmHandle.kInvalidHandle;

	private bool mIsTentacleWaving;

	private StateMachineClient mStateMachine;

	private List<Sim> mActorsReferencingMe = new List<Sim>();

	private VisualEffect mVfxHandle;

	private static List<RewardData> sRewards = new List<RewardData>();

	private static string[] vfxArray = new string[3] { "ep10UnderwaterCaveRockWoohooBubbles", "ep10UnderwaterCaveRockWoohooPetals", "ep10UnderwaterCaveRockBubbles" };

	private static readonly string[] kWorldBuilderDataKeyRemap = new string[6]
	{
		245942407u.ToString(),
		"Name",
		245942411u.ToString(),
		"DestinationName",
		245945991u.ToString(),
		"ScubaSkillRequirement"
	};

	protected virtual string[] GetVfxArray => vfxArray;

	public bool IsCave => true;

	public string Name => mUnderwaterCaveName;

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/Objects/Miscellaneous/UnderwaterCave:" + name, parameters);
	}

	public override void OnStartup()
	{
		base.OnStartup();
		StartVfx();
		if (mTentacleWaveAlarm == AlarmHandle.kInvalidHandle)
		{
			mTentacleWaveAlarm = AddAlarm(RandomUtil.GetFloat(kMinTentacleWaveInterlude, kMaxTentacleWaveInterlude), TimeUnit.Hours, TentacleWaveUpdate, "Alarm for Underwater Cave Tentacle Wave", AlarmType.AlwaysPersisted);
		}
		AddInteraction(Explore.Singleton);
		AddInteraction(WoohooInCave.Singleton);
		AddInteraction(TryForBabyInCave.TryForBabySingleton);
	}

	protected override void AddDebugInteractions(List<InteractionDefinition> debugInteractions)
	{
		base.AddDebugInteractions(debugInteractions);
		debugInteractions.Add(DEBUG_ToggleTenticle.Singleton);
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(SetAsCaveWithDestination.Singleton);
		buildBuyInteractions.Add(SetScubaSkillRequirement.Singleton);
		buildBuyInteractions.Add(SetName.Singleton);
		buildBuyInteractions.Add(DeleteNonCaveDestination.Singleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	public override void Dispose()
	{
		StopVfx();
		base.Dispose();
	}

	protected override void DoReset(ResetInformation resetInformation)
	{
		base.DoReset(resetInformation);
		mIsTentacleWaving = false;
		mStateMachine = null;
		mActorsReferencingMe.Clear();
	}

	public override bool HandToolAllowPlacement(ref string errorStr)
	{
		return LotCurrent.IsDivingLot;
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		writer.WriteString(245942407u, mUnderwaterCaveName);
		writer.WriteString(245942411u, mLinkedDestinationName);
		writer.WriteUint16(245945991u, mScubaSkillRequirement);
		return base.ExportContent(resKeyTable, objIdTable, writer);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		reader.ReadString(245942407u, out mUnderwaterCaveName, null);
		reader.ReadString(245942411u, out mLinkedDestinationName, null);
		reader.ReadUint16(245945991u, out mScubaSkillRequirement, 0);
		StopVfx();
		StartVfx();
		return base.ImportContent(resKeyTable, objIdTable, reader);
	}

	public void SaveWorldBuilderData()
	{
		WorldBuilderData.Set("UnderwaterCave", ObjectId, "Name", mUnderwaterCaveName, null);
		WorldBuilderData.Set("UnderwaterCave", ObjectId, "DestinationName", mLinkedDestinationName, null);
		WorldBuilderData.Set("UnderwaterCave", ObjectId, "ScubaSkillRequirement", mScubaSkillRequirement, (ushort)0);
		WorldBuilderData.Set("UnderwaterCave", ObjectId, "Version", 1, 0);
	}

	public void LoadWorldBuilderData()
	{
		int value = 0;
		WorldBuilderData.SetKeyRemap(kWorldBuilderDataKeyRemap);
		WorldBuilderData.Get("UnderwaterCave", ObjectId, "Version", ref value);
		WorldBuilderData.Get("UnderwaterCave", ObjectId, "Name", ref mUnderwaterCaveName);
		WorldBuilderData.Get("UnderwaterCave", ObjectId, "DestinationName", ref mLinkedDestinationName);
		WorldBuilderData.Get("UnderwaterCave", ObjectId, "ScubaSkillRequirement", ref mScubaSkillRequirement);
	}

	private bool WaitForTentacle(Sim sim)
	{
		if (mIsTentacleWaving)
		{
			sim.LoopIdle();
			float num = SimClock.ElapsedTime(TimeUnit.Minutes) + kTentacleWaveStopTimeout;
			while (mIsTentacleWaving)
			{
				Simulator.Sleep(2u);
				if (SimClock.ElapsedTime(TimeUnit.Minutes) > num)
				{
					SetObjectToReset();
					Simulator.Sleep(2u);
					return true;
				}
			}
		}
		return false;
	}

	private void TentacleWaveUpdate()
	{
		float time = RandomUtil.GetFloat(kMinTentacleWaveInterlude, kMaxTentacleWaveInterlude);
		RemoveAlarm(mTentacleWaveAlarm);
		if (!mIsTentacleWaving && !InUse)
		{
			if (mStateMachine == null && Sims3.SimIFace.Objects.IsValid(ObjectId) && mActorsReferencingMe.Count == 0)
			{
				mStateMachine = StateMachineClient.Acquire(ObjectId, "UnderwaterCaveIdle", AnimationPriority.kAPDefault, allowYield: false);
				if (mStateMachine == null)
				{
					return;
				}
				mIsTentacleWaving = true;
				mStateMachine.SetActor("Cave", this);
				mStateMachine.EnterState("Cave", "Enter");
				mStateMachine.RequestState(yield: false, "Cave", "Wave");
				mStateMachine.AddOneShotStateEnteredEventHandler("Exit", TentacleWaveCallback);
				time = RandomUtil.GetFloat(kMinTentacleWaveDuration, kMaxTentacleWaveDuration);
			}
		}
		else if (mStateMachine != null && !InUse)
		{
			mStateMachine.RequestState(yield: false, "Cave", "Exit");
			mStateMachine = null;
		}
		mTentacleWaveAlarm = AddAlarm(time, TimeUnit.Hours, TentacleWaveUpdate, "Alarm for Underwater Cave Tentacle Wave", AlarmType.AlwaysPersisted);
	}

	private void TentacleWaveCallback(StateMachineClient smc, IEvent evt)
	{
		mIsTentacleWaving = false;
	}

	private void SetWhetherOrNotHouseholdHasBeenToThisCave(List<ulong> householdMembers, bool hasBeenToCave)
	{
		foreach (ulong householdMember in householdMembers)
		{
			if (hasBeenToCave)
			{
				mSimsThatHaveDiscoveredThisCaveDestination[householdMember] = true;
			}
			else
			{
				mSimsThatHaveDiscoveredThisCaveDestination.Remove(householdMember);
			}
		}
	}

	public bool HasHouseholdBeenToThisCave(List<ulong> householdMembers)
	{
		foreach (ulong householdMember in householdMembers)
		{
			if (mSimsThatHaveDiscoveredThisCaveDestination.ContainsKey(householdMember))
			{
				return true;
			}
		}
		return false;
	}

	private IUnderwaterCaveDestination GetNamedDestination()
	{
		if (string.IsNullOrEmpty(mLinkedDestinationName))
		{
			return null;
		}
		List<IUnderwaterCaveDestination> list = new List<IUnderwaterCaveDestination>();
		IUnderwaterCaveDestination[] objects = Queries.GetObjects<IUnderwaterCaveDestination>();
		foreach (IUnderwaterCaveDestination underwaterCaveDestination in objects)
		{
			if (underwaterCaveDestination.Name == mLinkedDestinationName)
			{
				list.Add(underwaterCaveDestination);
			}
		}
		if (list.Count == 0)
		{
			return null;
		}
		return RandomUtil.GetRandomObjectFromList(list);
	}

	private void StartVfx()
	{
		if (mVfxHandle == null)
		{
			mVfxHandle = VisualEffect.Create(GetVfxArray[2]);
			mVfxHandle.ParentTo(this, Slot.FXJoint_0);
			mVfxHandle.Start();
		}
	}

	private void StopVfx()
	{
		if (mVfxHandle != null)
		{
			mVfxHandle.Stop(VisualEffect.TransitionType.HardTransition);
			mVfxHandle.Dispose();
			mVfxHandle = null;
		}
	}

	public static void LoadData()
	{
		XmlDbData xmlDbData = XmlDbData.ReadData("UnderwaterCaveRewards");
		if (xmlDbData == null || xmlDbData.Tables == null || !xmlDbData.Tables.ContainsKey("Data"))
		{
			return;
		}
		XmlDbTable xmlDbTable = xmlDbData.Tables["Data"];
		foreach (XmlDbRow row in xmlDbTable.Rows)
		{
			RewardData rewardData = new RewardData(row);
			if (rewardData.IsValid)
			{
				sRewards.Add(rewardData);
			}
		}
	}

	public static List<Sim> GetPotentialLovers(Sim Actor, Lot targetLot, bool tryForBaby)
	{
		List<Sim> list = new List<Sim>();
		GreyedOutTooltipCallback greyedOutTooltipCallback = null;
		foreach (Sim sim in targetLot.GetSims())
		{
			if (!sim.SimDescription.IsFrankenstein && sim.Posture is ScubaDiving && Actor.CanGetRomantic(sim, tryingToWooHoo: true) && sim.SimDescription.DeathStyle == SimDescription.DeathType.None && !Sims3.Gameplay.Passport.Passport.IsPassportSim(sim) && (!tryForBaby || Pregnancy.CanTryForBaby(Actor, sim, ref greyedOutTooltipCallback)))
			{
				list.Add(sim);
			}
		}
		return list;
	}

	virtual bool IUnderwaterCaveDestination.DisableFootprint(uint P_0)
	{
		return DisableFootprint(P_0);
	}
}
