/* Analyst: PC1.67 original managed evidence. Surface level1 on divinglot else level0 plus seaY. Placement failure preserves scuba state. Event103moves actor and stops bubbleVFX; successful run transfers to SwimmingInPool.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.EventSystem;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.Pools;
using Sims3.Gameplay.UI;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;
using Sims3.SimIFace.SACS;
using Sims3.UI;

namespace Sims3.Gameplay.Scuba;

internal sealed class EndScubaDive : Interaction<Sim, Sim>
{
	private sealed class Definition : InteractionDefinition<Sim, Sim, EndScubaDive>, IScubaDivingInteractionDefinition
	{
		protected override bool Test(Sim actor, Sim target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
		{
			if (actor == target)
			{
				return actor.Posture is ScubaDiving;
			}
			return false;
		}
	}

	public static readonly InteractionDefinition Singleton = new Definition();

	private Vector3 mPos;

	private Vector3 mFwd;

	private int mLevel;

	public override ThumbnailKey GetIconKey()
	{
		return new ThumbnailKey(ResourceKey.CreatePNGKey("w_return_to_surface", ResourceUtils.ProductVersionToGroupId(ProductVersion.EP10)), ThumbnailSize.Large);
	}

	protected override bool Run()
	{
		if (!(Actor.Posture is ScubaDiving))
		{
			return false;
		}
		mPos = Actor.Position;
		mFwd = Actor.ForwardVector;
		mLevel = 1;
		if (!Actor.LotCurrent.IsDivingLot)
		{
			mLevel = 0;
		}
		if (!GlobalFunctions.FindGoodLocationNearbyOnLevel(Actor, mLevel, ref mPos, ref mFwd, FindGoodLocationBooleans.TemporaryPlacement | FindGoodLocationBooleans.AllowInSea))
		{
			return false;
		}
		if (mLevel == 0)
		{
			mPos.y = World.GetSeaLevel();
		}
		BeginCommodityUpdates();
		mCurrentStateMachine = Actor.Posture.CurrentStateMachine;
		mCurrentStateMachine.AddOneShotScriptEventHandler(101u, TransitionCamera);
		mCurrentStateMachine.AddOneShotScriptEventHandler(102u, FadeOut);
		mCurrentStateMachine.AddOneShotScriptEventHandler(103u, FadeIn);
		DateAndTime previousDateAndTime = SimClock.CurrentTime();
		mCurrentStateMachine.RequestState(yield: true, "x", "Idle", DriverRequestFlags.kNoRedundancyProtection);
		float num = ScubaDiving.kScubaEndScubaDiveIdleTime - SimClock.ElapsedTime(TimeUnit.Minutes, previousDateAndTime);
		bool flag = true;
		if (num > 0f)
		{
			flag = DoTimedLoop(num);
		}
		AnimateSim("InScuba");
		if (Actor.HasExitReason(ExitReason.UserCanceled))
		{
			EndCommodityUpdates(flag);
			return flag;
		}
		CancellableByPlayer = false;
		AnimateSim("Surface");
		if (Actor.IsSelectable)
		{
			if (Sims3.UI.Responder.Instance.HudModel is HudModel hudModel)
			{
				hudModel.OnLotLevelInfoChange(null, new World.LotLevelInfoChangeEventArgs(Actor.LotCurrent.LotId));
			}
			bool flag2 = false;
			foreach (Sim sim in Household.ActiveHousehold.Sims)
			{
				if (sim.LotCurrent == Actor.LotCurrent && sim.IsOnDivingFloor)
				{
					flag2 = true;
					break;
				}
			}
			if (!flag2)
			{
				Actor.LotCurrent.SetDisplayLevel(1);
			}
		}
		SwimmingInPool swimmingInPool = new SwimmingInPool(Ocean.Singleton, Actor);
		Actor.Posture = swimmingInPool;
		bool flag3 = false;
		if (Actor.SimDescription.IsMatureMermaid)
		{
			OccultMermaid.PutOnTailWithSpin(Actor.SimDescription);
			flag3 = true;
		}
		Actor.RequestWalkStyle(Sim.WalkStyle.SwimInPool);
		swimmingInPool.StartSwimmingUpdates(forceRequestWalkStyle: false);
		EventTracker.SendEvent(EventTypeId.kReturnedToSurface, Actor);
		EndCommodityUpdates(flag);
		if (!flag3 && !Actor.IsEP11Bot)
		{
			Actor.SwitchToOutfitWithSwimmingSpin(OutfitCategories.Swimwear, 0);
		}
		return flag;
	}

	private void FadeOut(StateMachineClient sender, IEvent evt)
	{
		Actor.FadeOut(yield: false, destroyObject: false, 0.4f);
	}

	private void TransitionCamera(StateMachineClient sender, IEvent evt)
	{
		if (Camera.sCameraFollow != null && Camera.sCameraFollow.IsSimBeingFollowed(Actor))
		{
			Actor.LotCurrent.SetDisplayLevel(mLevel);
		}
	}

	private void FadeIn(StateMachineClient sender, IEvent evt)
	{
		Actor.SetPosition(mPos);
		Actor.SetForward(mFwd);
		(Actor.Posture as ScubaDiving).StopBubbleEffects();
		Actor.FadeIn(yield: false, 0.4f);
	}

	public override void Cleanup()
	{
		if (mCurrentStateMachine != null)
		{
			mCurrentStateMachine.RemoveEventHandler(TransitionCamera);
			mCurrentStateMachine.RemoveEventHandler(FadeOut);
			mCurrentStateMachine.RemoveEventHandler(FadeIn);
		}
		base.Cleanup();
	}
}
