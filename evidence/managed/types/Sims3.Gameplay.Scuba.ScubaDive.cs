/* Analyst: PC1.67 original managed evidence. Current loaded diving lot uses floor0 and surface1. State events101camera/102fadeout/103move-fadein complete posture change; positioning is event-driven. No world-load call in this method.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System.Collections.Generic;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.EventSystem;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Objects.Vehicles;
using Sims3.Gameplay.Pools;
using Sims3.Gameplay.Services;
using Sims3.Gameplay.Skills;
using Sims3.Gameplay.UI;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.UI;

namespace Sims3.Gameplay.Scuba;

public sealed class ScubaDive : Interaction<Sim, Sim>, ITransitionForcesGetOutIntoWater
{
	private sealed class Definition : InteractionDefinition<Sim, Sim, ScubaDive>
	{
		private string mMenuPath = "";

		private bool mRetroOutfit;

		public Definition()
		{
		}

		public Definition(string menuPath, bool retro)
		{
			mRetroOutfit = retro;
			mMenuPath = menuPath;
		}

		public override string[] GetPath(bool isFemale)
		{
			if (mMenuPath == "")
			{
				return new string[0];
			}
			return new string[1] { mMenuPath };
		}

		protected override bool Test(Sim actor, Sim target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
		{
			return actor == target;
		}

		public override InteractionTestResult Test(ref InteractionInstanceParameters parameters, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
		{
			if (ScubaDiving.ScubaTest(parameters.Actor as Sim, parameters.Actor.LotCurrent))
			{
				InteractionTestResult result;
				if (InteractionDefinitionUtilities.IsPass(result = base.Test(ref parameters, ref greyedOutTooltipCallback)))
				{
					if (!ScubaDiving.ScubaTestTooltips(parameters.Actor as Sim, parameters.Actor.LotCurrent, ref greyedOutTooltipCallback))
					{
						return InteractionTestResult.Def_TestFailed;
					}
					return InteractionTestResult.Pass;
				}
				return result;
			}
			return InteractionTestResult.Def_TestFailed;
		}

		protected override string GetInteractionName(Sim actor, Sim target, InteractionObjectPair iop)
		{
			return ScubaDiving.SharedGetInteractionName(mMenuPath, mRetroOutfit, actor);
		}

		protected override InteractionInstance CreateInstance(ref InteractionInstanceParameters parameters)
		{
			ScubaDive scubaDive = base.CreateInstance(ref parameters) as ScubaDive;
			if (mRetroOutfit)
			{
				scubaDive.SetRetroOutfit();
			}
			return scubaDive;
		}

		protected override void AddInteractions(InteractionObjectPair iop, Sim actor, Sim target, List<InteractionObjectPair> results)
		{
			if (!actor.SimDescription.IsMatureMermaid && !actor.IsEP11Bot && actor.SkillManager.GetSkillLevel(SkillNames.ScubaDiving) == SkillManager.GetMaximumSupportedSkillLevel(SkillNames.ScubaDiving))
			{
				string menuPath = Localization.LocalizeString("Gameplay/Actors/Sim/ScubaDive:InteractionName") + Localization.Ellipsis;
				results.Add(new InteractionObjectPair(new Definition(menuPath, retro: true), target));
				results.Add(new InteractionObjectPair(new Definition(menuPath, retro: false), target));
			}
			else
			{
				results.Add(iop);
			}
		}
	}

	public static readonly InteractionDefinition Singleton = new Definition();

	private Vector3 mPos;

	private Vector3 mFwd;

	private bool mActorIsMermaid;

	private bool mRetroOutfit;

	private Jig mJig;

	public override ThumbnailKey GetIconKey()
	{
		return new ThumbnailKey(ResourceKey.CreatePNGKey("w_go_scuba_diving", ResourceUtils.ProductVersionToGroupId(ProductVersion.EP10)), ThumbnailSize.Large);
	}

	public void SetRetroOutfit()
	{
		mRetroOutfit = true;
	}

	protected override bool Run()
	{
		Actor.SkillManager.AddElement(SkillNames.ScubaDiving);
		mPos = Actor.Position;
		mFwd = Actor.ForwardVector;
		if (!GlobalFunctions.FindGoodLocationNearbyOnLevel(Actor, 0, ref mPos, ref mFwd, FindGoodLocationBooleans.AllowOnSlopes | FindGoodLocationBooleans.AllowInSea))
		{
			return false;
		}
		mJig = GlobalFunctions.CreateJigFromObject(Actor) as Jig;
		mJig.AddToWorld();
		mJig.SetPosition(mPos);
		mJig.SetForward(mFwd);
		mActorIsMermaid = Actor.SimDescription.IsMatureMermaid;
		if (Actor.IsSelectable)
		{
			NPCMermaidManager.RequestNPCMermaidToDiveLot(Actor.LotCurrent);
		}
		if (mActorIsMermaid)
		{
			OccultMermaid.PutOnTailWithSpin(Actor.SimDescription);
			if (Actor.Household.IsMermaidHousehold)
			{
				NPCMermaidManager.ClearNPCMermaidToDiveLotRequest(Actor.LotCurrent);
				Actor.Motives.ChangeValue(CommodityKind.Social, NPCMermaidManager.kNPCMermaidDiveSocialDelta);
				Actor.Motives.ForceSetMax(CommodityKind.Energy);
				Actor.Motives.ForceSetMax(CommodityKind.Hunger);
				Actor.Motives.ForceSetMax(CommodityKind.Bladder);
				Actor.Motives.ForceSetMax(CommodityKind.Fun);
			}
		}
		if (!mActorIsMermaid && !(Actor.Service is GrimReaper) && !Actor.IsEP11Bot)
		{
			bool flag = false;
			if (!((!mRetroOutfit) ? ScubaDiving.PutOnScubaOutfit(Actor) : ScubaDiving.PutOnRetroScubaOutfit(Actor)))
			{
				return false;
			}
		}
		BeginCommodityUpdates();
		EnterStateMachine("ScubaPosture", "Surface", "x");
		SetParameter("isMermaid", mActorIsMermaid);
		mCurrentStateMachine.AddOneShotScriptEventHandler(101u, TransitionCamera);
		mCurrentStateMachine.AddOneShotScriptEventHandler(102u, FadeOut);
		mCurrentStateMachine.AddOneShotScriptEventHandler(103u, FadeIn);
		AnimateSim("InScuba");
		EndCommodityUpdates(succeeded: true);
		if (mActorIsMermaid && Actor.Posture is SwimmingInPool swimmingInPool)
		{
			swimmingInPool.mLeaveMermaidTailOnWhenExiting = true;
		}
		Actor.Posture = null;
		ScubaDiving scubaDiving = new ScubaDiving(mCurrentStateMachine, Ocean.Singleton, Actor);
		Actor.Posture = scubaDiving;
		scubaDiving.StartBubbleEffects();
		EventTracker.SendEvent(EventTypeId.kScubaDived, Actor);
		return true;
	}

	private void FadeOut(StateMachineClient sender, IEvent evt)
	{
		Actor.FadeOut(yield: false, destroyObject: false, 0.4f);
	}

	private void TransitionCamera(StateMachineClient sender, IEvent evt)
	{
		if (Camera.sCameraFollow != null && Camera.sCameraFollow.IsSimBeingFollowed(Actor))
		{
			Actor.LotCurrent.SetDisplayLevel(0);
			Camera.FollowSim(Actor, enableSmartFollow: true);
		}
	}

	private void FadeIn(StateMachineClient sender, IEvent evt)
	{
		if (mActorIsMermaid)
		{
			OccultMermaid.SatsifyDivingDeficiency(Actor);
		}
		Actor.SetPosition(mPos);
		Actor.SetForward(mFwd);
		Actor.FadeIn(yield: false, 0.4f);
		if (Actor.IsSelectable && Sims3.UI.Responder.Instance.HudModel is HudModel hudModel)
		{
			hudModel.OnLotLevelInfoChange(null, new World.LotLevelInfoChangeEventArgs(Actor.LotCurrent.LotId));
		}
	}

	public override void Cleanup()
	{
		if (mCurrentStateMachine != null)
		{
			mCurrentStateMachine.RemoveEventHandler(TransitionCamera);
			mCurrentStateMachine.RemoveEventHandler(FadeOut);
			mCurrentStateMachine.RemoveEventHandler(FadeIn);
		}
		if (mJig != null)
		{
			mJig.RemoveFromWorld();
			mJig.Destroy();
		}
		base.Cleanup();
	}
}
