/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System.Collections.Generic;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Objects.Lighting;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;

namespace Sims3.Gameplay.Objects.TombObjects;

public class WallLampLever : LightWallTorch, IHasWorldBuilderData
{
	private sealed class Inspect : Interaction<Sim, WallLampLever>
	{
		private sealed class Definition : InteractionDefinition<Sim, WallLampLever, Inspect>
		{
			protected override bool Test(Sim a, WallLampLever target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return !target.mHasBeenInspected;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		public override void ConfigureInteraction()
		{
			TimedStage timedStage = new TimedStage(GetInteractionName(), kInspectTime, showCompletionTime: false, selectable: true, visibleProgress: true);
			Stages = new List<Stage>(new Stage[1] { timedStage });
			base.ConfigureInteraction();
		}

		protected override bool Run()
		{
			if (!Target.RouteToLever(Actor))
			{
				return false;
			}
			StandardEntry();
			EnterStateMachine("WallLampLever", "Enter", "x");
			SetActor("lamp", Target);
			StartStages();
			BeginCommodityUpdates();
			AnimateSim("InspectLoop");
			bool flag = DoLoop(ExitReason.Default);
			if (flag)
			{
				Target.mHasBeenInspected = true;
				string name;
				if (Target.mIsLever)
				{
					AnimateSim("FoundLever");
					name = "InspectLeverFound";
					InteractionInstance instance = PullLever.Singleton.CreateInstance(Target, Actor, GetPriority(), Autonomous, CancellableByPlayer);
					Actor.InteractionQueue.PushAsContinuation(instance, mustRun: false);
				}
				else
				{
					name = "InspectNoLever";
				}
				Actor.ShowTNSIfSelectable(LeverLocalizeString(name, Actor, Target), StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
			}
			EndCommodityUpdates(flag);
			AnimateSim("Exit");
			StandardExit();
			return flag;
		}
	}

	private sealed class PullLever : Interaction<Sim, WallLampLever>
	{
		private sealed class Definition : InteractionDefinition<Sim, WallLampLever, PullLever>
		{
			protected override bool Test(Sim a, WallLampLever target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.mIsLever)
				{
					return target.mHasBeenInspected;
				}
				return false;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			if (!Target.RouteToLever(Actor))
			{
				return false;
			}
			StandardEntry();
			EnterStateMachine("WallLampLever", "Enter", "x");
			SetActor("lamp", Target);
			BeginCommodityUpdates();
			AnimateSim("Pull");
			Target.mHasBeenPulled = true;
			Target.TombObjectComponent.ActivateTrigger(Trigger.PullLever, Actor);
			EndCommodityUpdates(succeeded: true);
			AnimateSim("Exit");
			StandardExit();
			return true;
		}
	}

	private sealed class SetIsLever : ImmediateInteraction<IActor, WallLampLever>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<IActor, WallLampLever, SetIsLever>
		{
			protected override string GetInteractionName(IActor a, WallLampLever target, InteractionObjectPair interaction)
			{
				string name = (target.mIsLever ? "SetLeverFalse" : "SetLeverTrue");
				return LeverLocalizeString(name);
			}

			protected override bool Test(IActor a, WallLampLever target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.mIsLever = !Target.mIsLever;
			return true;
		}
	}

	private sealed class SetInspected : ImmediateInteraction<IActor, WallLampLever>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<IActor, WallLampLever, SetInspected>
		{
			protected override string GetInteractionName(IActor a, WallLampLever target, InteractionObjectPair interaction)
			{
				string name = (target.mHasBeenInspected ? "ClearInspected" : "SetInspected");
				return LeverLocalizeString(name);
			}

			protected override bool Test(IActor a, WallLampLever target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.mHasBeenInspected = !Target.mHasBeenInspected;
			return true;
		}
	}

	private const uint kHasBeenInspected = 144857090u;

	private const uint kIsLever = 144857096u;

	private const uint kHasBeenPulled = 144857103u;

	private static readonly string sLocalizationKey = "Sims3.Gameplay.Objects.TombObjects".Substring(6).Replace('.', '/') + "/WallLampLever";

	private bool mHasBeenInspected = true;

	private bool mIsLever;

	private bool mHasBeenPulled;

	[TunableComment("Number of Sim minutes a Sim inspects a wall lamp before discovering if it is pullable.")]
	[Tunable]
	private static readonly float kInspectTime = 5f;

	private static readonly string[] kWorldBuilderDataKeyRemap = new string[4]
	{
		144857096u.ToString(),
		"IsLever",
		144857090u.ToString(),
		"Inspected"
	};

	private static string LeverLocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString(sLocalizationKey + ":" + name, parameters);
	}

	public override void OnStartup()
	{
		base.OnStartup();
		AddComponent<TombObjectStaticComponent>(new object[0]);
		AddComponent<AdventureComponent>(new object[0]);
		AddInteraction(Inspect.Singleton);
		AddInteraction(PullLever.Singleton);
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(SetIsLever.Singleton);
		buildBuyInteractions.Add(SetInspected.Singleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	public override void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		tombObjectComponent.RegisterTrigger(Trigger.PullLever);
		base.OnAddTombObjectComponent(tombObjectComponent);
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		writer.WriteBool(144857090u, mHasBeenInspected);
		writer.WriteBool(144857096u, mIsLever);
		writer.WriteBool(144857103u, mHasBeenPulled);
		return base.ExportContent(resKeyTable, objIdTable, writer);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		reader.ReadBool(144857090u, out mHasBeenInspected, defaultValue: false);
		reader.ReadBool(144857096u, out mIsLever, defaultValue: false);
		reader.ReadBool(144857103u, out mHasBeenPulled, defaultValue: false);
		return base.ImportContent(resKeyTable, objIdTable, reader);
	}

	public override void SaveWorldBuilderData()
	{
		WorldBuilderData.Set("LightGameObject", ObjectId, "IsLever", mIsLever, defaultValue: false);
		WorldBuilderData.Set("LightGameObject", ObjectId, "Inspected", mHasBeenInspected, defaultValue: true);
		base.SaveWorldBuilderData();
	}

	public override void LoadWorldBuilderData()
	{
		WorldBuilderData.SetKeyRemap(kWorldBuilderDataKeyRemap);
		WorldBuilderData.Get("LightGameObject", ObjectId, "IsLever", ref mIsLever);
		WorldBuilderData.Get("LightGameObject", ObjectId, "Inspected", ref mHasBeenInspected);
		base.LoadWorldBuilderData();
	}

	private bool RouteToLever(Sim sim)
	{
		return sim.RouteToSlotAndCheckInUse(this, Slot.RoutingSlot_0);
	}
}
