/* Analyst: PC1.67 original managed evidence. Synchronous linked trigger/actions, typed registration, NPC gate, inverse action mapping and portable ObjectIdTable remapping. ActivatedBehavior callbacks are Persistable(false); original classes re-register them. Deactivation return retains last callback result; activation ORs all results.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.EventSystem;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;

namespace Sims3.Gameplay.ObjectComponents;

[Persistable]
public class TombObjectData
{
	[Persistable]
	private class TriggerInfo
	{
		private const uint kLinksToActivatedBehaviors = 143226131u;

		private const uint kTNSText = 144756107u;

		public List<KeyValuePair<ObjectGuid, ActivatedBehavior>> LinksToActivatedBehaviors = new List<KeyValuePair<ObjectGuid, ActivatedBehavior>>();

		public string TNSText;

		public void ExportTrigger(IPropertyStreamWriter writer, ObjectIdTable objIdTable)
		{
			ExportLinks(writer.CreateChild(143226131u), objIdTable);
			writer.WriteString(144756107u, TNSText);
			writer.CommitChild();
		}

		private void ExportLinks(IPropertyStreamWriter writer, ObjectIdTable objIdTable)
		{
			writer.WriteInt32(0u, LinksToActivatedBehaviors.Count);
			uint num = 1u;
			foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior in LinksToActivatedBehaviors)
			{
				writer.WriteInt32(num++, objIdTable.AddId(linksToActivatedBehavior.Key));
				writer.WriteUint32(num++, (uint)linksToActivatedBehavior.Value);
				writer.CommitChild();
			}
		}

		public void ImportTrigger(IPropertyStreamReader reader, ObjectIdTable objIdTable)
		{
			ImportLinks(reader.GetChild(143226131u), objIdTable);
			reader.ReadString(144756107u, out TNSText, null);
		}

		private void ImportLinks(IPropertyStreamReader reader, ObjectIdTable objIdTable)
		{
			reader.ReadInt32(0u, out var value, 0);
			for (uint num = 1u; num <= value * 2; num += 2)
			{
				uint key = num;
				uint key2 = num + 1;
				reader.ReadInt32(key, out var value2, -1);
				ObjectGuid key3 = ObjectGuid.InvalidObjectGuid;
				if (value2 != -1)
				{
					key3 = objIdTable[value2];
				}
				if (key3.ObjectFromId<GameObject>() != null)
				{
					reader.ReadUint32(key2, out var value3, 0u);
					ActivatedBehavior activatedBehavior = ActivatedBehavior.None;
					if (Enum.IsDefined(typeof(ActivatedBehavior), value3))
					{
						activatedBehavior = (ActivatedBehavior)value3;
					}
					if (activatedBehavior != ActivatedBehavior.None)
					{
						KeyValuePair<ObjectGuid, ActivatedBehavior> item = new KeyValuePair<ObjectGuid, ActivatedBehavior>(key3, activatedBehavior);
						LinksToActivatedBehaviors.Add(item);
					}
				}
			}
		}
	}

	[Persistable]
	private class ActivatedBehaviorInfo
	{
		private const uint kTNSText = 143212363u;

		private const uint kPlayCauseEffectFX = 144417052u;

		[Persistable(false)]
		public ActivatedBehaviorCallback ActivatedBehaviorCallback;

		public string TNSText;

		public bool PlayCauseEffectFX;

		public void ExportActivatedBehavior(IPropertyStreamWriter writer)
		{
			writer.WriteString(143212363u, TNSText);
			writer.WriteBool(144417052u, PlayCauseEffectFX);
		}

		public void ImportActivatedBehavior(IPropertyStreamReader reader)
		{
			reader.ReadString(143212363u, out TNSText, null);
			reader.ReadBool(144417052u, out PlayCauseEffectFX, defaultValue: false);
		}
	}

	[Persistable]
	private class WorldBuilderSaveInfo : IWorldBuilderData
	{
		public Dictionary<Trigger, TriggerInfo> Triggers = new Dictionary<Trigger, TriggerInfo>();

		public Dictionary<ActivatedBehavior, ActivatedBehaviorInfo> ActivatedBehaviors = new Dictionary<ActivatedBehavior, ActivatedBehaviorInfo>();

		public string AdventureKey = string.Empty;

		public bool mTriggersActivatableByNPCs = true;

		public WorldBuilderSaveInfo()
		{
		}

		public WorldBuilderSaveInfo(Dictionary<Trigger, TriggerInfo> triggersLinkedToActivatedBehaviors, Dictionary<ActivatedBehavior, ActivatedBehaviorInfo> activatedBehaviors, string adventureKey, bool triggersActivatableByNPCs)
		{
			Triggers = new Dictionary<Trigger, TriggerInfo>(triggersLinkedToActivatedBehaviors);
			ActivatedBehaviors = new Dictionary<ActivatedBehavior, ActivatedBehaviorInfo>(activatedBehaviors);
			AdventureKey = adventureKey;
			mTriggersActivatableByNPCs = triggersActivatableByNPCs;
		}
	}

	protected abstract class TombObjectComponentInteraction : ImmediateInteraction<Sim, GameObject>
	{
		protected abstract class TombObjectComponentDefinition<InteractionType> : ActorlessInteractionDefinition<Sim, GameObject, InteractionType> where InteractionType : ImmediateInteraction<Sim, GameObject>, new()
		{
			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate1;

			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.InUse)
				{
					greyedOutTooltipCallback = () => LocalizeString("InUseTooltip");
					return false;
				}
				return true;
			}
		}
	}

	protected abstract class TriggerInteraction : TombObjectComponentInteraction
	{
		protected abstract class TriggerDefinition<TriggerInteractionType> : TombObjectComponentDefinition<TriggerInteractionType> where TriggerInteractionType : ImmediateInteraction<Sim, GameObject>, new()
		{
			public Trigger Trigger;

			public override string[] GetPath(bool isFemale)
			{
				return new string[2]
				{
					LocalizeTriggerInteractionString("TriggersPathName"),
					LocalizeString("Trigger" + Trigger) + Localization.Ellipsis
				};
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/TriggerInteraction";

		public static string LocalizeTriggerInteractionString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/TriggerInteraction:" + name, parameters);
		}
	}

	private sealed class AddLinkFromTrigger : TombObjectComponentInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : TombObjectComponentDefinition<AddLinkFromTrigger>
		{
			public Trigger Trigger;

			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (sTriggerToBeLinked == Trigger.None)
				{
					return base.Test(actor, target, isAutonomous, ref greyedOutTooltipCallback);
				}
				return false;
			}

			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return TombObjectData.LocalizeString("Trigger" + Trigger);
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, GameObject target, List<InteractionObjectPair> results)
			{
				foreach (Trigger key in target.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors.Keys)
				{
					Definition definition = new Definition();
					definition.Trigger = key;
					InteractionObjectPair item = new InteractionObjectPair(definition, target);
					results.Add(item);
				}
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { LocalizeString("PathName") };
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/AddLinkFromTrigger";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/AddLinkFromTrigger:" + name, parameters);
		}

		protected override bool Run()
		{
			sTriggerToBeLinked = (InteractionDefinition as Definition).Trigger;
			sObjectToBeLinked = Target;
			return true;
		}
	}

	private sealed class ClearAllLinksFromTrigger : TriggerInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : TriggerDefinition<ClearAllLinksFromTrigger>
		{
			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors.TryGetValue(Trigger, out var value) && value.LinksToActivatedBehaviors.Count > 0)
				{
					return base.Test(actor, target, isAutonomous, ref greyedOutTooltipCallback);
				}
				return false;
			}

			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, GameObject target, List<InteractionObjectPair> results)
			{
				foreach (Trigger key in target.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors.Keys)
				{
					Definition definition = new Definition();
					definition.Trigger = key;
					InteractionObjectPair item = new InteractionObjectPair(definition, target);
					results.Add(item);
				}
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/ClearAllLinksFromTrigger";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/ClearAllLinksFromTrigger:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.TombObjectComponent.TombObjectData.ClearLinksFromTrigger((InteractionDefinition as Definition).Trigger);
			return true;
		}
	}

	private sealed class ActivateTriggerInteraction : TriggerInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : TriggerDefinition<ActivateTriggerInteraction>
		{
			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate3;

			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (!target.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors.TryGetValue(Trigger, out var value) || value.LinksToActivatedBehaviors.Count == 0)
				{
					greyedOutTooltipCallback = () => TombObjectData.LocalizeString("NoActivatedBehaviorsTooltip");
					return false;
				}
				return base.Test(actor, target, isAutonomous, ref greyedOutTooltipCallback);
			}

			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, GameObject target, List<InteractionObjectPair> results)
			{
				foreach (Trigger key in target.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors.Keys)
				{
					Definition definition = new Definition();
					definition.Trigger = key;
					InteractionObjectPair item = new InteractionObjectPair(definition, target);
					results.Add(item);
				}
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/ActivateTriggerInteraction";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/ActivateTriggerInteraction:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.TombObjectComponent.ActivateTrigger((InteractionDefinition as Definition).Trigger, PlumbBob.SelectedActor);
			return true;
		}
	}

	private sealed class DeleteLinkFromTrigger : TriggerInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : TriggerDefinition<DeleteLinkFromTrigger>
		{
			public ActivatedBehavior ActivatedBehavior;

			public ObjectGuid ObjectIdWithActivatedBehavior = ObjectGuid.InvalidObjectGuid;

			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate5;

			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (!target.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors.TryGetValue(Trigger, out var value) || value.LinksToActivatedBehaviors.Count == 0)
				{
					greyedOutTooltipCallback = () => TombObjectData.LocalizeString("NoActivatedBehaviorsTooltip");
					return false;
				}
				return base.Test(actor, target, isAutonomous, ref greyedOutTooltipCallback);
			}

			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				GameObject gameObject = ObjectIdWithActivatedBehavior.ObjectFromId<GameObject>();
				if (gameObject == null)
				{
					return TombObjectData.LocalizeString("DeletedObjectName");
				}
				return string.Concat(gameObject, " - ", ObjectIdWithActivatedBehavior, ": ", ActivatedBehavior);
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, GameObject target, List<InteractionObjectPair> results)
			{
				foreach (Trigger key in target.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors.Keys)
				{
					foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior in target.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors[key].LinksToActivatedBehaviors)
					{
						Definition definition = new Definition();
						definition.Trigger = key;
						definition.ObjectIdWithActivatedBehavior = linksToActivatedBehavior.Key;
						definition.ActivatedBehavior = linksToActivatedBehavior.Value;
						InteractionObjectPair item = new InteractionObjectPair(definition, target);
						results.Add(item);
					}
				}
			}

			public override string[] GetPath(bool isFemale)
			{
				string[] path = base.GetPath(isFemale);
				string[] array = new string[path.Length + 1];
				path.CopyTo(array, 0);
				array[array.Length - 1] = LocalizeString("DeleteLinkPathName");
				return array;
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/DeleteLinkFromTrigger";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/DeleteLinkFromTrigger:" + name, parameters);
		}

		protected override bool Run()
		{
			Definition definition = InteractionDefinition as Definition;
			Target.TombObjectComponent.TombObjectData.UnlinkTriggerFromActivatedBehavior(definition.Trigger, definition.ObjectIdWithActivatedBehavior, definition.ActivatedBehavior);
			return true;
		}
	}

	private sealed class SetTNSTextOnTrigger : TriggerInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : TriggerDefinition<SetTNSTextOnTrigger>
		{
			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, GameObject target, List<InteractionObjectPair> results)
			{
				foreach (Trigger key in target.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors.Keys)
				{
					Definition definition = new Definition();
					definition.Trigger = key;
					InteractionObjectPair item = new InteractionObjectPair(definition, target);
					results.Add(item);
				}
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/SetTNSTextOnTrigger";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/SetTNSTextOnTrigger:" + name, parameters);
		}

		protected override bool Run()
		{
			string tNSText = Target.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors[(InteractionDefinition as Definition).Trigger].TNSText;
			tNSText = ((tNSText == null) ? "" : tNSText);
			string text = StringInputDialog.Show(TombObjectData.LocalizeString("SetTNSTextTitleText"), TombObjectData.LocalizeString("SetTNSTextPromptText"), tNSText, numbersOnly: false, 150);
			if (!string.IsNullOrEmpty(text))
			{
				Target.TombObjectComponent.TombObjectData.SetTriggerTNSText((InteractionDefinition as Definition).Trigger, text);
			}
			return true;
		}
	}

	private sealed class ClearTNSTextOnTrigger : TriggerInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : TriggerDefinition<ClearTNSTextOnTrigger>
		{
			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, GameObject target, List<InteractionObjectPair> results)
			{
				foreach (Trigger key in target.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors.Keys)
				{
					Definition definition = new Definition();
					definition.Trigger = key;
					InteractionObjectPair item = new InteractionObjectPair(definition, target);
					results.Add(item);
				}
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/ClearTNSTextOnTrigger";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/ClearTNSTextOnTrigger:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.TombObjectComponent.TombObjectData.SetTriggerTNSText((InteractionDefinition as Definition).Trigger, null);
			return true;
		}
	}

	protected abstract class ActivatedBehaviorInteraction : TombObjectComponentInteraction
	{
		protected abstract class ActivatedBehaviorDefinition<ActivatedBehaviorInteractionType> : TombObjectComponentDefinition<ActivatedBehaviorInteractionType> where ActivatedBehaviorInteractionType : ImmediateInteraction<Sim, GameObject>, new()
		{
			public ActivatedBehavior ActivatedBehavior;

			public override string[] GetPath(bool isFemale)
			{
				return new string[2]
				{
					LocalizeActivatedBehaviorInteractionString("ActivatedBehaviorsPathName"),
					LocalizeString("ActivatedBehavior" + ActivatedBehavior) + Localization.Ellipsis
				};
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/ActivatedBehaviorInteraction";

		private static string LocalizeActivatedBehaviorInteractionString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/ActivatedBehaviorInteraction:" + name, parameters);
		}
	}

	private sealed class AddLinkToActivatedBehavior : TombObjectComponentInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : TombObjectComponentDefinition<AddLinkToActivatedBehavior>
		{
			public ActivatedBehavior ActivatedBehavior;

			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (sTriggerToBeLinked != Trigger.None && sObjectToBeLinked != null && !sObjectToBeLinked.TombObjectComponent.TombObjectData.TriggerHasLinkToActivatedBehavior(sTriggerToBeLinked, target, ActivatedBehavior))
				{
					return base.Test(actor, target, isAutonomous, ref greyedOutTooltipCallback);
				}
				return false;
			}

			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return TombObjectData.LocalizeString("ActivatedBehavior" + ActivatedBehavior);
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, GameObject target, List<InteractionObjectPair> results)
			{
				foreach (KeyValuePair<ActivatedBehavior, ActivatedBehaviorInfo> mActivatedBehavior in target.TombObjectComponent.TombObjectData.mActivatedBehaviors)
				{
					Definition definition = new Definition();
					definition.ActivatedBehavior = mActivatedBehavior.Key;
					InteractionObjectPair item = new InteractionObjectPair(definition, target);
					results.Add(item);
				}
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { LocalizeString("PathName") };
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/AddLinkToActivatedBehavior";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/AddLinkToActivatedBehavior:" + name, parameters);
		}

		protected override bool Run()
		{
			if (sTriggerToBeLinked == Trigger.None || sObjectToBeLinked == null)
			{
				return false;
			}
			ActivatedBehavior activatedBehavior = (InteractionDefinition as Definition).ActivatedBehavior;
			sObjectToBeLinked.TombObjectComponent.TombObjectData.LinkTriggerToActivatedBehavior(sTriggerToBeLinked, Target, activatedBehavior);
			sTriggerToBeLinked = Trigger.None;
			sObjectToBeLinked = null;
			return true;
		}
	}

	private sealed class ClearLinksToActivatedBehaviorInteraction : ActivatedBehaviorInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActivatedBehaviorDefinition<ClearLinksToActivatedBehaviorInteraction>
		{
			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return base.Test(actor, target, isAutonomous, ref greyedOutTooltipCallback);
			}

			public override string GetInteractionName(ref InteractionInstanceParameters parameters)
			{
				return LocalizeString("InteractionName");
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, GameObject target, List<InteractionObjectPair> results)
			{
				foreach (KeyValuePair<ActivatedBehavior, ActivatedBehaviorInfo> mActivatedBehavior in target.TombObjectComponent.TombObjectData.mActivatedBehaviors)
				{
					Definition definition = new Definition();
					definition.ActivatedBehavior = mActivatedBehavior.Key;
					InteractionObjectPair item = new InteractionObjectPair(definition, target);
					results.Add(item);
				}
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/ClearLinksToActivatedBehaviorInteraction";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/ClearLinksToActivatedBehaviorInteraction:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.TombObjectComponent.TombObjectData.ClearLinksToActivatedBehavior((InteractionDefinition as Definition).ActivatedBehavior);
			return true;
		}
	}

	private sealed class ActivateBehaviorInteraction : ActivatedBehaviorInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActivatedBehaviorDefinition<ActivateBehaviorInteraction>
		{
			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return base.Test(actor, target, isAutonomous, ref greyedOutTooltipCallback);
			}

			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, GameObject target, List<InteractionObjectPair> results)
			{
				foreach (KeyValuePair<ActivatedBehavior, ActivatedBehaviorInfo> mActivatedBehavior in target.TombObjectComponent.TombObjectData.mActivatedBehaviors)
				{
					Definition definition = new Definition();
					definition.ActivatedBehavior = mActivatedBehavior.Key;
					InteractionObjectPair item = new InteractionObjectPair(definition, target);
					results.Add(item);
				}
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/ActivateBehaviorInteraction";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/ActivateBehaviorInteraction:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.TombObjectComponent.TombObjectData.ActivateBehavior((InteractionDefinition as Definition).ActivatedBehavior, Target, PlumbBob.SelectedActor);
			return true;
		}
	}

	private sealed class SetTNSTextOnActivatedBehavior : ActivatedBehaviorInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActivatedBehaviorDefinition<SetTNSTextOnActivatedBehavior>
		{
			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, GameObject target, List<InteractionObjectPair> results)
			{
				foreach (KeyValuePair<ActivatedBehavior, ActivatedBehaviorInfo> mActivatedBehavior in target.TombObjectComponent.TombObjectData.mActivatedBehaviors)
				{
					Definition definition = new Definition();
					definition.ActivatedBehavior = mActivatedBehavior.Key;
					InteractionObjectPair item = new InteractionObjectPair(definition, target);
					results.Add(item);
				}
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/SetTNSTextOnActivatedBehavior";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/SetTNSTextOnActivatedBehavior:" + name, parameters);
		}

		protected override bool Run()
		{
			string tNSText = Target.TombObjectComponent.TombObjectData.mActivatedBehaviors[(InteractionDefinition as Definition).ActivatedBehavior].TNSText;
			tNSText = ((tNSText == null) ? "" : tNSText);
			string text = StringInputDialog.Show(TombObjectData.LocalizeString("SetTNSTextTitleText"), TombObjectData.LocalizeString("SetTNSTextPromptText"), tNSText, numbersOnly: false, 150);
			if (!string.IsNullOrEmpty(text))
			{
				Target.TombObjectComponent.TombObjectData.SetActivatedBehaviorTNSText((InteractionDefinition as Definition).ActivatedBehavior, text);
				Target.TombObjectComponent.TombObjectData.OnTombObjectComponentChanged();
			}
			return true;
		}
	}

	private sealed class ClearTNSTextOnActivatedBehavior : ActivatedBehaviorInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActivatedBehaviorDefinition<ClearTNSTextOnActivatedBehavior>
		{
			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, GameObject target, List<InteractionObjectPair> results)
			{
				foreach (KeyValuePair<ActivatedBehavior, ActivatedBehaviorInfo> mActivatedBehavior in target.TombObjectComponent.TombObjectData.mActivatedBehaviors)
				{
					Definition definition = new Definition();
					definition.ActivatedBehavior = mActivatedBehavior.Key;
					InteractionObjectPair item = new InteractionObjectPair(definition, target);
					results.Add(item);
				}
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/ClearTNSTextOnActivatedBehavior";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/ClearTNSTextOnActivatedBehavior:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.TombObjectComponent.TombObjectData.SetActivatedBehaviorTNSText((InteractionDefinition as Definition).ActivatedBehavior, null);
			Target.TombObjectComponent.TombObjectData.OnTombObjectComponentChanged();
			return true;
		}
	}

	private sealed class ClearLinksToAndFromObject : TombObjectComponentInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : TombObjectComponentDefinition<ClearLinksToAndFromObject>
		{
			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/ClearLinksToAndFromObject";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/ClearLinksToAndFromObject:" + name, parameters);
		}

		protected override bool Run()
		{
			foreach (Trigger key in Target.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors.Keys)
			{
				Target.TombObjectComponent.TombObjectData.ClearLinksFromTrigger(key);
			}
			foreach (ActivatedBehavior key2 in Target.TombObjectComponent.TombObjectData.mActivatedBehaviors.Keys)
			{
				Target.TombObjectComponent.TombObjectData.ClearLinksToActivatedBehavior(key2);
			}
			return true;
		}
	}

	private sealed class ResetCurrentLink : ImmediateInteraction<Sim, GameObject>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, GameObject, ResetCurrentLink>
		{
			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return sTriggerToBeLinked != Trigger.None;
			}

			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/ResetCurrentLink";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/ResetCurrentLink:" + name, parameters);
		}

		protected override bool Run()
		{
			sTriggerToBeLinked = Trigger.None;
			sObjectToBeLinked = null;
			return true;
		}
	}

	private sealed class DrawLinksFromTriggersInteraction : ImmediateInteraction<Sim, GameObject>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, GameObject, DrawLinksFromTriggersInteraction>
		{
			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { TriggerInteraction.LocalizeTriggerInteractionString("TriggersPathName") };
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/DrawLinksFromTriggersInteraction";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/DrawLinksFromTriggersInteraction:" + name, parameters);
		}

		protected override bool Run()
		{
			ClearTimedDrawings();
			if (Target.TombObjectComponent.TombObjectData.DrawLinksFromTriggersVersion1())
			{
				StyledNotification.Format format = new StyledNotification.Format("There is an object linked to from this object that's null!", StyledNotification.NotificationStyle.kDebugAlert);
				StyledNotification.Show(format);
			}
			return true;
		}
	}

	private sealed class DrawAllLinksOnLot : ImmediateInteraction<Sim, GameObject>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, GameObject, DrawAllLinksOnLot>
		{
			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { TriggerInteraction.LocalizeTriggerInteractionString("TriggersPathName") };
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/DrawAllLinksOnLot";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/DrawAllLinksOnLot:" + name, parameters);
		}

		protected override bool Run()
		{
			ClearTimedDrawings();
			GameObject[] objects = Target.LotCurrent.GetObjects<GameObject>();
			foreach (GameObject gameObject in objects)
			{
				if (!ComponentIsMissing(gameObject))
				{
					gameObject.TombObjectComponent.TombObjectData.DrawLinksFromTriggersVersion1();
				}
			}
			return true;
		}
	}

	private sealed class ClearDrawings : ImmediateInteraction<Sim, GameObject>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, GameObject, ClearDrawings>
		{
			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { TriggerInteraction.LocalizeTriggerInteractionString("TriggersPathName") };
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/ClearDrawings";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/ClearDrawings:" + name, parameters);
		}

		protected override bool Run()
		{
			ClearTimedDrawings();
			return true;
		}
	}

	private sealed class ClearDeletedReferencesOnLotInteraction : ImmediateInteraction<Sim, GameObject>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, GameObject, ClearDeletedReferencesOnLotInteraction>
		{
			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { TriggerInteraction.LocalizeTriggerInteractionString("TriggersPathName") };
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/ClearDeletedReferencesOnLotInteraction";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/ClearDeletedReferencesOnLotInteraction:" + name, parameters);
		}

		protected override bool Run()
		{
			ClearDeletedReferencesOnLot(Target.LotCurrent);
			return true;
		}
	}

	private sealed class ToggleCauseEffectFXInteraction : ActivatedBehaviorInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActivatedBehaviorDefinition<ToggleCauseEffectFXInteraction>
		{
			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				string name = (target.TombObjectComponent.TombObjectData.mActivatedBehaviors[ActivatedBehavior].PlayCauseEffectFX ? "TurnOffFX" : "TurnOnFX");
				return LocalizeString(name);
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, GameObject target, List<InteractionObjectPair> results)
			{
				foreach (KeyValuePair<ActivatedBehavior, ActivatedBehaviorInfo> mActivatedBehavior in target.TombObjectComponent.TombObjectData.mActivatedBehaviors)
				{
					Definition definition = new Definition();
					definition.ActivatedBehavior = mActivatedBehavior.Key;
					InteractionObjectPair item = new InteractionObjectPair(definition, target);
					results.Add(item);
				}
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent/ToggleCauseEffectFX";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent/ToggleCauseEffectFX:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.TombObjectComponent.TombObjectData.ToggleCauseEffectFX((InteractionDefinition as Definition).ActivatedBehavior);
			return true;
		}
	}

	public sealed class AddTombObjectComponent : ImmediateInteraction<Sim, GameObject>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, GameObject, AddTombObjectComponent>
		{
			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return target.TombObjectComponent == TombObjectPlaceholderComponent.Singleton;
			}

			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName");
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectData/AddTombObjectComponent";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectData/AddTombObjectComponent:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.AddComponent<TombObjectDynamicComponent>(new object[0]);
			return true;
		}
	}

	public sealed class ToggleUsableByUnselectedSims : ImmediateInteraction<Sim, GameObject>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, GameObject, ToggleUsableByUnselectedSims>
		{
			protected override bool Test(Sim actor, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, GameObject target, InteractionObjectPair iop)
			{
				if (!target.TombObjectComponent.TombObjectData.mTriggersActivatableByNPCs)
				{
					return LocalizeString("MakeUsableInteractionName");
				}
				return LocalizeString("MakeUnusableInteractionName");
			}
		}

		private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectData/ToggleUsableByUnselectedSims";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectData/ToggleUsableByUnselectedSims:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.TombObjectComponent.TombObjectData.mTriggersActivatableByNPCs = !Target.TombObjectComponent.TombObjectData.mTriggersActivatableByNPCs;
			return true;
		}
	}

	private const string sLocalizationKey = "Gameplay/ObjectComponents/TombObjectComponent";

	private const uint kTombObjectComponentKey = 143210195u;

	private const uint kAdventureKey = 1747874836u;

	private const uint kTriggersLinkedToActivatedBehaviors = 143210335u;

	private const uint kActivatedBehaviors = 143210338u;

	private const uint kTriggersActivatableByNPCs = 147457040u;

	private static Trigger sTriggerToBeLinked;

	private static GameObject sObjectToBeLinked;

	private static List<ulong> sTimedDrawingList;

	private static IDictionary<ActivatedBehavior, ActivatedBehavior> sOppositeActivatedBehaviors;

	private GameObject mOwner;

	private bool mTriggersActivatableByNPCs = true;

	private Lot mOwnerLot;

	private string mAdventureKey = string.Empty;

	private Dictionary<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehaviors = new Dictionary<Trigger, TriggerInfo>();

	private Dictionary<ActivatedBehavior, ActivatedBehaviorInfo> mActivatedBehaviors = new Dictionary<ActivatedBehavior, ActivatedBehaviorInfo>();

	public string AdventureKey
	{
		get
		{
			return mAdventureKey;
		}
		set
		{
			mAdventureKey = value;
		}
	}

	public event VoidEventHandler TombObjectComponentChanged;

	static TombObjectData()
	{
		sTriggerToBeLinked = Trigger.None;
		sObjectToBeLinked = null;
		sTimedDrawingList = new List<ulong>();
		sOppositeActivatedBehaviors = new PairedListDictionary<ActivatedBehavior, ActivatedBehavior>();
		RegisterOppositeActivatedBehavior(ActivatedBehavior.Appear, ActivatedBehavior.Disappear);
		RegisterOppositeActivatedBehavior(ActivatedBehavior.Open, ActivatedBehavior.Close);
		RegisterOppositeActivatedBehavior(ActivatedBehavior.Lock, ActivatedBehavior.Unlock);
		RegisterOppositeActivatedBehavior(ActivatedBehavior.Hide, ActivatedBehavior.Unhide);
		RegisterOppositeActivatedBehavior(ActivatedBehavior.LightTurnOn, ActivatedBehavior.LightTurnOff);
		RegisterOppositeActivatedBehavior(ActivatedBehavior.In0, ActivatedBehavior.In0_Reset);
		RegisterOppositeActivatedBehavior(ActivatedBehavior.In1, ActivatedBehavior.In1_Reset);
		RegisterOppositeActivatedBehavior(ActivatedBehavior.In2, ActivatedBehavior.In2_Reset);
		RegisterOppositeActivatedBehavior(ActivatedBehavior.In3, ActivatedBehavior.In3_Reset);
		RegisterOppositeActivatedBehavior(ActivatedBehavior.In4, ActivatedBehavior.In4_Reset);
		RegisterOppositeActivatedBehavior(ActivatedBehavior.In5, ActivatedBehavior.In5_Reset);
		RegisterOppositeActivatedBehavior(ActivatedBehavior.In6, ActivatedBehavior.In6_Reset);
		RegisterOppositeActivatedBehavior(ActivatedBehavior.In7, ActivatedBehavior.In7_Reset);
	}

	private TombObjectData()
	{
	}

	public TombObjectData(GameObject owner)
	{
		mOwner = owner;
	}

	private static void RegisterOppositeActivatedBehavior(ActivatedBehavior a, ActivatedBehavior b)
	{
		sOppositeActivatedBehaviors[a] = b;
		sOppositeActivatedBehaviors[b] = a;
	}

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/ObjectComponents/TombObjectComponent:" + name, parameters);
	}

	public bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		IPropertyStreamWriter propertyStreamWriter = writer.CreateChild(143210195u);
		propertyStreamWriter.WriteString(1747874836u, mAdventureKey);
		propertyStreamWriter.WriteBool(147457040u, mTriggersActivatableByNPCs);
		ExportTriggers(propertyStreamWriter.CreateChild(143210335u), objIdTable);
		propertyStreamWriter.CommitChild();
		ExportActivatedBehaviors(propertyStreamWriter.CreateChild(143210338u));
		propertyStreamWriter.CommitChild();
		writer.CommitChild();
		return true;
	}

	private void ExportTriggers(IPropertyStreamWriter writer, ObjectIdTable objIdTable)
	{
		writer.WriteInt32(0u, mTriggersLinkedToActivatedBehaviors.Count);
		uint num = 1u;
		foreach (KeyValuePair<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehavior in mTriggersLinkedToActivatedBehaviors)
		{
			writer.WriteUint32(num++, (uint)mTriggersLinkedToActivatedBehavior.Key);
			mTriggersLinkedToActivatedBehavior.Value.ExportTrigger(writer.CreateChild(num++), objIdTable);
			writer.CommitChild();
		}
	}

	private void ExportActivatedBehaviors(IPropertyStreamWriter writer)
	{
		writer.WriteInt32(0u, mActivatedBehaviors.Count);
		uint num = 1u;
		foreach (KeyValuePair<ActivatedBehavior, ActivatedBehaviorInfo> mActivatedBehavior in mActivatedBehaviors)
		{
			writer.WriteUint32(num++, (uint)mActivatedBehavior.Key);
			mActivatedBehavior.Value.ExportActivatedBehavior(writer.CreateChild(num++));
			writer.CommitChild();
		}
	}

	public bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		IPropertyStreamReader child = reader.GetChild(143210195u);
		if (child == null)
		{
			return true;
		}
		child.ReadString(1747874836u, out mAdventureKey, string.Empty);
		child.ReadBool(147457040u, out mTriggersActivatableByNPCs, defaultValue: true);
		ImportTriggers(child.GetChild(143210335u), objIdTable);
		ImportActivatedBehaviors(child.GetChild(143210338u));
		foreach (TriggerInfo value in mTriggersLinkedToActivatedBehaviors.Values)
		{
			foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior in value.LinksToActivatedBehaviors)
			{
				GameObject gameObject = linksToActivatedBehavior.Key.ObjectFromId<GameObject>();
			}
		}
		return true;
	}

	private void ImportTriggers(IPropertyStreamReader reader, ObjectIdTable objIdTable)
	{
		reader.ReadInt32(0u, out var value, 0);
		for (uint num = 1u; num <= value * 2; num += 2)
		{
			uint key = num;
			uint key2 = num + 1;
			reader.ReadUint32(key, out var value2, 0u);
			Trigger trigger = Trigger.None;
			if (Enum.IsDefined(typeof(Trigger), value2))
			{
				trigger = (Trigger)value2;
			}
			if (trigger != Trigger.None && mTriggersLinkedToActivatedBehaviors.TryGetValue(trigger, out var value3))
			{
				value3.ImportTrigger(reader.GetChild(key2), objIdTable);
			}
		}
	}

	private void ImportActivatedBehaviors(IPropertyStreamReader reader)
	{
		reader.ReadInt32(0u, out var value, 0);
		for (uint num = 1u; num <= value * 2; num += 2)
		{
			uint key = num;
			uint key2 = num + 1;
			reader.ReadUint32(key, out var value2, 0u);
			ActivatedBehavior activatedBehavior = ActivatedBehavior.None;
			if (Enum.IsDefined(typeof(ActivatedBehavior), value2))
			{
				activatedBehavior = (ActivatedBehavior)value2;
			}
			if (activatedBehavior != ActivatedBehavior.None && mActivatedBehaviors.TryGetValue(activatedBehavior, out var value3))
			{
				value3.ImportActivatedBehavior(reader.GetChild(key2));
			}
		}
	}

	public void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		WorldBuilderData.SaveWorldBuilderData += SaveWorldBuilderData;
		if (mOwner is ICanHasTombObjectComponent canHasTombObjectComponent)
		{
			canHasTombObjectComponent.OnAddTombObjectComponent(tombObjectComponent);
			mOwnerLot = canHasTombObjectComponent.LotCurrent;
		}
	}

	public void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(AddLinkFromTrigger.Singleton);
		buildBuyInteractions.Add(ClearAllLinksFromTrigger.Singleton);
		buildBuyInteractions.Add(ActivateTriggerInteraction.Singleton);
		buildBuyInteractions.Add(DeleteLinkFromTrigger.Singleton);
		buildBuyInteractions.Add(SetTNSTextOnTrigger.Singleton);
		buildBuyInteractions.Add(ClearTNSTextOnTrigger.Singleton);
		buildBuyInteractions.Add(AddLinkToActivatedBehavior.Singleton);
		buildBuyInteractions.Add(ActivateBehaviorInteraction.Singleton);
		buildBuyInteractions.Add(SetTNSTextOnActivatedBehavior.Singleton);
		buildBuyInteractions.Add(ClearTNSTextOnActivatedBehavior.Singleton);
		buildBuyInteractions.Add(ToggleCauseEffectFXInteraction.Singleton);
		buildBuyInteractions.Add(ClearLinksToActivatedBehaviorInteraction.Singleton);
		buildBuyInteractions.Add(ClearLinksToAndFromObject.Singleton);
		buildBuyInteractions.Add(ResetCurrentLink.Singleton);
		buildBuyInteractions.Add(DrawLinksFromTriggersInteraction.Singleton);
		buildBuyInteractions.Add(DrawAllLinksOnLot.Singleton);
		buildBuyInteractions.Add(ClearDrawings.Singleton);
		buildBuyInteractions.Add(ClearDeletedReferencesOnLotInteraction.Singleton);
		buildBuyInteractions.Add(ToggleUsableByUnselectedSims.Singleton);
	}

	public void Dispose()
	{
		if (GameStates.IsGameShuttingDown)
		{
			return;
		}
		WorldBuilderData.SaveWorldBuilderData -= SaveWorldBuilderData;
		List<ObjectGuid> list = new List<ObjectGuid>();
		foreach (KeyValuePair<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehavior in mTriggersLinkedToActivatedBehaviors)
		{
			foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior in mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors)
			{
				if (!list.Contains(linksToActivatedBehavior.Key))
				{
					list.Add(linksToActivatedBehavior.Key);
				}
			}
		}
		if (mOwnerLot != null)
		{
			ICanHasTombObjectComponent[] objects = Queries.GetObjects<ICanHasTombObjectComponent>(mOwnerLot);
			foreach (ICanHasTombObjectComponent canHasTombObjectComponent in objects)
			{
				TombObjectData tombObjectData = canHasTombObjectComponent.TombObjectComponent.TombObjectData;
				if (tombObjectData == null)
				{
					continue;
				}
				bool flag = false;
				foreach (KeyValuePair<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehavior2 in tombObjectData.mTriggersLinkedToActivatedBehaviors)
				{
					foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior2 in mTriggersLinkedToActivatedBehavior2.Value.LinksToActivatedBehaviors)
					{
						if (!(linksToActivatedBehavior2.Key != mOwner.ObjectId))
						{
							list.Add(canHasTombObjectComponent.ObjectId);
							flag = true;
							break;
						}
					}
					if (flag)
					{
						break;
					}
				}
			}
		}
		foreach (ObjectGuid item in list)
		{
			NotifyComponentChanged(item);
		}
	}

	public void RegisterTrigger(Trigger trigger)
	{
		if (!mTriggersLinkedToActivatedBehaviors.ContainsKey(trigger))
		{
			TriggerInfo triggerInfo = new TriggerInfo();
			triggerInfo.LinksToActivatedBehaviors = new List<KeyValuePair<ObjectGuid, ActivatedBehavior>>();
			mTriggersLinkedToActivatedBehaviors.Add(trigger, triggerInfo);
		}
	}

	public void RegisterBehavior(ActivatedBehavior activatedBehavior, ActivatedBehaviorCallback callback)
	{
		if (mActivatedBehaviors.ContainsKey(activatedBehavior))
		{
			mActivatedBehaviors[activatedBehavior].ActivatedBehaviorCallback = callback;
			return;
		}
		ActivatedBehaviorInfo activatedBehaviorInfo = new ActivatedBehaviorInfo();
		activatedBehaviorInfo.ActivatedBehaviorCallback = callback;
		mActivatedBehaviors.Add(activatedBehavior, activatedBehaviorInfo);
	}

	public bool ActivateTrigger(Trigger trigger, Sim sim)
	{
		if (!CanTriggerBeActivated(trigger, sim))
		{
			return false;
		}
		bool flag = false;
		if (mTriggersLinkedToActivatedBehaviors.TryGetValue(trigger, out var value))
		{
			foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior in value.LinksToActivatedBehaviors)
			{
				GameObject gameObject = linksToActivatedBehavior.Key.ObjectFromId<GameObject>();
				if (gameObject != null)
				{
					if (ComponentIsMissing(gameObject) && gameObject is ICanHasTombObjectComponent)
					{
						gameObject.AddComponent<TombObjectDynamicComponent>(new object[0]);
					}
					if (!ComponentIsMissing(gameObject))
					{
						flag |= gameObject.TombObjectComponent.TombObjectData.ActivateBehavior(linksToActivatedBehavior.Value, mOwner, sim);
					}
				}
			}
			if (!string.IsNullOrEmpty(value.TNSText) && flag)
			{
				string titleText = (Localization.HasLocalizationString(value.TNSText) ? Localization.LocalizeString(value.TNSText) : value.TNSText);
				StyledNotification.Format format = new StyledNotification.Format(titleText, StyledNotification.NotificationStyle.kGameMessagePositive);
				StyledNotification.Show(format);
			}
			EventTracker.SendEvent(EventTypeId.kTombObjectTrigger, sim, mOwner);
		}
		return flag;
	}

	public bool DeactivateTrigger(Trigger trigger, Sim sim)
	{
		bool result = false;
		if (mTriggersLinkedToActivatedBehaviors.TryGetValue(trigger, out var value))
		{
			foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior in value.LinksToActivatedBehaviors)
			{
				GameObject gameObject = linksToActivatedBehavior.Key.ObjectFromId<GameObject>();
				if (gameObject != null && sOppositeActivatedBehaviors.TryGetValue(linksToActivatedBehavior.Value, out var value2))
				{
					if (ComponentIsMissing(gameObject) && gameObject is ICanHasTombObjectComponent)
					{
						gameObject.AddComponent<TombObjectDynamicComponent>(new object[0]);
					}
					if (!ComponentIsMissing(gameObject))
					{
						result = gameObject.TombObjectComponent.TombObjectData.ActivateBehavior(value2, mOwner, sim);
					}
				}
			}
		}
		return result;
	}

	public bool IsTriggerLinkedToAnyActivatedBehavior(Trigger trigger)
	{
		if (!mTriggersLinkedToActivatedBehaviors.TryGetValue(trigger, out var value))
		{
			return false;
		}
		return value.LinksToActivatedBehaviors.Count > 0;
	}

	public bool IsActivatedBehaviorLinkedFromObjectType<T>(params ActivatedBehavior[] activatedBehaviors) where T : class, ICanHasTombObjectComponent
	{
		T[] objects = mOwner.LotCurrent.GetObjects<T>();
		for (int i = 0; i < objects.Length; i++)
		{
			T val = objects[i];
			TombObjectData tombObjectData = val.TombObjectComponent.TombObjectData;
			if (tombObjectData == null)
			{
				continue;
			}
			foreach (KeyValuePair<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehavior in tombObjectData.mTriggersLinkedToActivatedBehaviors)
			{
				foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior in mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors)
				{
					if (!(linksToActivatedBehavior.Key == mOwner.ObjectId))
					{
						continue;
					}
					for (int j = 0; j < activatedBehaviors.Length; j++)
					{
						if (linksToActivatedBehavior.Value == activatedBehaviors[j])
						{
							return true;
						}
					}
				}
			}
		}
		return false;
	}

	public List<ActivatedBehavior> GetLinkedActivatedBehaviors()
	{
		List<ActivatedBehavior> list = new List<ActivatedBehavior>();
		ICanHasTombObjectComponent[] objects = mOwner.LotCurrent.GetObjects<ICanHasTombObjectComponent>();
		foreach (ICanHasTombObjectComponent canHasTombObjectComponent in objects)
		{
			TombObjectData tombObjectData = canHasTombObjectComponent.TombObjectComponent.TombObjectData;
			if (tombObjectData == null)
			{
				continue;
			}
			foreach (KeyValuePair<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehavior in tombObjectData.mTriggersLinkedToActivatedBehaviors)
			{
				foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior in mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors)
				{
					if (linksToActivatedBehavior.Key == mOwner.ObjectId && !list.Contains(linksToActivatedBehavior.Value))
					{
						list.Add(linksToActivatedBehavior.Value);
					}
				}
			}
		}
		return list;
	}

	public static void LoadWorldBuilderData()
	{
		LoadAllWorldBuilderDataOnLot();
	}

	public void OnHover()
	{
		if (GameStates.NextInWorldStateId == InWorldState.SubState.BuildMode || GameStates.NextInWorldStateId == InWorldState.SubState.BuyMode)
		{
			DrawLinksFromTriggersVersion2();
		}
	}

	public static bool ComponentIsMissing(GameObject gameObject)
	{
		ITombObjectComponent tombObjectComponent = gameObject.TombObjectComponent;
		if (tombObjectComponent != null)
		{
			return tombObjectComponent == TombObjectPlaceholderComponent.Singleton;
		}
		return true;
	}

	private bool ActivateBehavior(ActivatedBehavior activatedBehavior, GameObject triggerObject, Sim sim)
	{
		bool flag = false;
		if (!mActivatedBehaviors.ContainsKey(activatedBehavior))
		{
			return false;
		}
		if (mActivatedBehaviors[activatedBehavior] == null)
		{
			return false;
		}
		if (mActivatedBehaviors[activatedBehavior].ActivatedBehaviorCallback != null)
		{
			flag = mActivatedBehaviors[activatedBehavior].ActivatedBehaviorCallback(sim);
		}
		if (!string.IsNullOrEmpty(mActivatedBehaviors[activatedBehavior].TNSText) && flag)
		{
			string tNSText = mActivatedBehaviors[activatedBehavior].TNSText;
			tNSText = (Localization.HasLocalizationString(tNSText) ? Localization.LocalizeString(tNSText) : tNSText);
			StyledNotification.Format format = new StyledNotification.Format(tNSText, StyledNotification.NotificationStyle.kGameMessagePositive);
			StyledNotification.Show(format);
		}
		if (mActivatedBehaviors[activatedBehavior].PlayCauseEffectFX && flag)
		{
			Vector3 location = mOwner.Position;
			if (mOwner is IHasCustomCauseEffectBehavior hasCustomCauseEffectBehavior)
			{
				location = hasCustomCauseEffectBehavior.CauseEffectTargetPosition;
			}
			VisualEffect visualEffect = VisualEffect.Create("ep1CauseEffect");
			visualEffect.SetPosAndOrient(triggerObject.Position, triggerObject.ForwardVector, triggerObject.UpVector);
			visualEffect.SetAttractorLocation(location, 1f);
			visualEffect.SubmitOneShotEffect(VisualEffect.TransitionType.SoftTransition);
		}
		return flag;
	}

	private bool CanTriggerBeActivated(Trigger trigger, Sim sim)
	{
		if (mTriggersActivatableByNPCs)
		{
			return true;
		}
		if (sim == null || sim.IsInActiveHousehold)
		{
			return true;
		}
		return false;
	}

	private void SetTriggerTNSText(Trigger trigger, string tnsText)
	{
		if (mTriggersLinkedToActivatedBehaviors.TryGetValue(trigger, out var value))
		{
			value.TNSText = tnsText;
			OnTombObjectComponentChanged();
		}
	}

	private void SetActivatedBehaviorTNSText(ActivatedBehavior activatedBehavior, string tnsText)
	{
		if (mActivatedBehaviors.TryGetValue(activatedBehavior, out var value))
		{
			value.TNSText = tnsText;
			OnTombObjectComponentChanged();
		}
	}

	private void ToggleCauseEffectFX(ActivatedBehavior activatedBehavior)
	{
		if (mActivatedBehaviors.ContainsKey(activatedBehavior))
		{
			mActivatedBehaviors[activatedBehavior].PlayCauseEffectFX = !mActivatedBehaviors[activatedBehavior].PlayCauseEffectFX;
			OnTombObjectComponentChanged();
		}
	}

	private void LinkTriggerToActivatedBehavior(Trigger trigger, GameObject objectWithActivatedBehavior, ActivatedBehavior activatedBehavior)
	{
		if (mTriggersLinkedToActivatedBehaviors.ContainsKey(trigger))
		{
			mTriggersLinkedToActivatedBehaviors[trigger].LinksToActivatedBehaviors.Add(new KeyValuePair<ObjectGuid, ActivatedBehavior>(objectWithActivatedBehavior.ObjectId, activatedBehavior));
			OnTombObjectComponentChanged();
			NotifyComponentChanged(objectWithActivatedBehavior.ObjectId);
		}
	}

	private void UnlinkTriggerFromActivatedBehavior(Trigger trigger, ObjectGuid objectIdWithActivatedBehavior, ActivatedBehavior activatedBehavior)
	{
		if (!mTriggersLinkedToActivatedBehaviors.ContainsKey(trigger) || mTriggersLinkedToActivatedBehaviors[trigger] == null)
		{
			return;
		}
		for (int i = 0; i < mTriggersLinkedToActivatedBehaviors[trigger].LinksToActivatedBehaviors.Count; i++)
		{
			KeyValuePair<ObjectGuid, ActivatedBehavior> keyValuePair = mTriggersLinkedToActivatedBehaviors[trigger].LinksToActivatedBehaviors[i];
			if (keyValuePair.Key == objectIdWithActivatedBehavior && keyValuePair.Value == activatedBehavior)
			{
				objectIdWithActivatedBehavior.ObjectFromId<GameObject>();
				RemoveLinkToActivatedBehavior(mTriggersLinkedToActivatedBehaviors[trigger].LinksToActivatedBehaviors, i);
				break;
			}
		}
		OnTombObjectComponentChanged();
	}

	private bool TriggerHasLinkToActivatedBehavior(Trigger trigger, GameObject objectWithActivatedBehavior, ActivatedBehavior activatedBehavior)
	{
		foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior in mTriggersLinkedToActivatedBehaviors[trigger].LinksToActivatedBehaviors)
		{
			GameObject gameObject = linksToActivatedBehavior.Key.ObjectFromId<GameObject>();
			if (gameObject == objectWithActivatedBehavior && linksToActivatedBehavior.Value == activatedBehavior)
			{
				return true;
			}
		}
		return false;
	}

	private void ClearLinksFromTrigger(GameObject gameObject)
	{
		foreach (KeyValuePair<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehavior in mTriggersLinkedToActivatedBehaviors)
		{
			int num = 0;
			while (num < mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors.Count)
			{
				if (mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors[num].Key == gameObject.ObjectId)
				{
					RemoveLinkToActivatedBehavior(mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors, num);
				}
				else
				{
					num++;
				}
			}
		}
	}

	private void RemoveLinkToActivatedBehavior(List<KeyValuePair<ObjectGuid, ActivatedBehavior>> list, int i)
	{
		KeyValuePair<ObjectGuid, ActivatedBehavior> keyValuePair = list[i];
		list.RemoveAt(i);
		NotifyComponentChanged(keyValuePair.Key);
	}

	private static void NotifyComponentChanged(ObjectGuid id)
	{
		GameObject.GetObject<ICanHasTombObjectComponent>(id)?.TombObjectComponent.TombObjectData?.OnTombObjectComponentChanged();
	}

	private void ClearLinksFromTrigger(Trigger trigger)
	{
		if (mTriggersLinkedToActivatedBehaviors.TryGetValue(trigger, out var value))
		{
			while (value.LinksToActivatedBehaviors.Count > 0)
			{
				RemoveLinkToActivatedBehavior(value.LinksToActivatedBehaviors, 0);
			}
			OnTombObjectComponentChanged();
		}
	}

	private static void ClearLinksToActivatedBehavior(GameObject owner, Lot lot, ActivatedBehavior activatedBehavior)
	{
		IDictionary<GameObject, bool> dictionary = new PairedListDictionary<GameObject, bool>();
		GameObject[] objects = lot.GetObjects<GameObject>();
		foreach (GameObject gameObject in objects)
		{
			if (ComponentIsMissing(gameObject))
			{
				continue;
			}
			foreach (KeyValuePair<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehavior in gameObject.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors)
			{
				for (int j = 0; j < mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors.Count; j++)
				{
					KeyValuePair<ObjectGuid, ActivatedBehavior> keyValuePair = mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors[j];
					GameObject gameObject2 = keyValuePair.Key.ObjectFromId<GameObject>();
					if (gameObject2 == owner && keyValuePair.Value == activatedBehavior)
					{
						mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors.RemoveAt(j);
						dictionary[gameObject] = true;
						break;
					}
				}
			}
		}
		foreach (GameObject key in dictionary.Keys)
		{
			key.TombObjectComponent.TombObjectData.OnTombObjectComponentChanged();
		}
		owner.TombObjectComponent.TombObjectData.OnTombObjectComponentChanged();
	}

	private void ClearLinksToActivatedBehavior(ActivatedBehavior activatedBehavior)
	{
		ClearLinksToActivatedBehavior(mOwner, mOwner.LotCurrent, activatedBehavior);
	}

	private void DrawArrow(Vector3 startPos, Vector3 endPos, Color color, float duration)
	{
		Vector3 v = endPos - startPos;
		Vector3 vector = new Vector3(v);
		vector.Normalize();
		Vector3 vector2 = endPos - vector * 0.25f;
		Vector3 p = new Vector3(vector2);
		Vector3 vector3 = new Vector3(vector);
		Vector3 vector4 = new Vector3(vector);
		vector3.z = (vector.z * 0.70710677f - vector.x * 0.70710677f) * 0.25f;
		vector3.x = (vector.z * 0.70710677f + vector.x * 0.70710677f) * 0.25f;
		vector3 = endPos - vector3;
		vector4.z = (vector.z * 0.70710677f + vector.x * 0.70710677f) * 0.25f;
		vector4.x = ((0f - vector.z) * 0.70710677f + vector.x * 0.70710677f) * 0.25f;
		vector4 = endPos - vector4;
		vector2.y += 0.25f;
		p.y -= 0.25f;
		AddTimedDrawingToList(DebugDraw.DrawLineTimed(startPos, endPos, color, duration));
		AddTimedDrawingToList(DebugDraw.DrawLineTimed(endPos, vector3, color, duration));
		AddTimedDrawingToList(DebugDraw.DrawLineTimed(endPos, vector4, color, duration));
		AddTimedDrawingToList(DebugDraw.DrawLineTimed(endPos, vector2, color, duration));
		AddTimedDrawingToList(DebugDraw.DrawLineTimed(endPos, p, color, duration));
	}

	private void DrawArrowBetweenTwoObjects(GameObject gameObject1, GameObject gameObject2, Color color, float duration)
	{
		Quaternion q = Quaternion.MakeFromForwardVector(gameObject1.ForwardVector);
		Vector3 startPos = gameObject1.Position + Quaternion.VRotate(q, (gameObject1.BoundingBox.max + gameObject1.BoundingBox.min) / 2f);
		Vector3 vector = (gameObject2.Position - gameObject1.Position).Normalize();
		startPos.y += 0.1f;
		startPos += vector * ((gameObject1.BoundingBox.max - gameObject1.BoundingBox.min).Length() / 4f);
		Quaternion q2 = Quaternion.MakeFromForwardVector(gameObject2.ForwardVector);
		Vector3 endPos = gameObject2.Position + Quaternion.VRotate(q2, (gameObject2.BoundingBox.max + gameObject2.BoundingBox.min) / 2f);
		endPos.y += 0.1f;
		endPos -= vector * ((gameObject2.BoundingBox.max - gameObject2.BoundingBox.min).Length() / 2f);
		DrawArrow(startPos, endPos, color, duration);
	}

	private void DrawBoxAroundObject(GameObject gameObject, Color color, float duration)
	{
		BoundingBox boundingBox = default;
		Quaternion q = Quaternion.MakeFromForwardVector(gameObject.ForwardVector);
		boundingBox.min = Quaternion.VRotate(q, gameObject.BoundingBox.min) + gameObject.Position;
		boundingBox.max = Quaternion.VRotate(q, gameObject.BoundingBox.max) + gameObject.Position;
		ulong[] array = DebugDraw.DrawBoxTimed(boundingBox, color, duration);
		ulong[] array2 = array;
		foreach (ulong debugDrawId in array2)
		{
			AddTimedDrawingToList(debugDrawId);
		}
	}

	private bool DrawLinksFromTriggersVersion1()
	{
		Vector3 vector = mOwner.BoundingBox.max - mOwner.BoundingBox.min;
		float num = Math.Max(vector.x, vector.z);
		Vector3 center = mOwner.Position + new Vector3(0f, 0.1f, 0f);
		AddTimedDrawingToList(DebugDraw.DrawCircleTimed(center, num * 0.6f, Color.Preset.OpaqueGreen, 120f));
		Color color = Color.Preset.OpaqueRed;
		bool result = false;
		foreach (KeyValuePair<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehavior in mTriggersLinkedToActivatedBehaviors)
		{
			foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior in mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors)
			{
				GameObject gameObject = linksToActivatedBehavior.Key.ObjectFromId<GameObject>();
				if (gameObject == null)
				{
					result = true;
				}
				else
				{
					DrawArrowBetweenTwoObjects(mOwner, gameObject, color, 120f);
				}
			}
		}
		return result;
	}

	private void DrawLinksFromTriggersVersion2()
	{
		Color color = Color.Preset.OpaqueLtGreen;
		Color color2 = Color.Preset.OpaquePurple;
		ClearTimedDrawings();
		foreach (KeyValuePair<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehavior in mTriggersLinkedToActivatedBehaviors)
		{
			foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior in mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors)
			{
				GameObject gameObject = linksToActivatedBehavior.Key.ObjectFromId<GameObject>();
				if (gameObject != null)
				{
					DrawBoxAroundObject(gameObject, color2, 5f);
					DrawArrowBetweenTwoObjects(mOwner, gameObject, color2, 5f);
				}
			}
		}
		GameObject[] objects = mOwner.LotCurrent.GetObjects<GameObject>();
		foreach (GameObject gameObject2 in objects)
		{
			if (ComponentIsMissing(gameObject2))
			{
				continue;
			}
			foreach (KeyValuePair<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehavior2 in gameObject2.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors)
			{
				foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior2 in mTriggersLinkedToActivatedBehavior2.Value.LinksToActivatedBehaviors)
				{
					GameObject gameObject3 = linksToActivatedBehavior2.Key.ObjectFromId<GameObject>();
					if (gameObject3 == mOwner)
					{
						DrawBoxAroundObject(gameObject2, color, 5f);
						DrawArrowBetweenTwoObjects(gameObject2, mOwner, color, 5f);
					}
				}
			}
		}
	}

	private static void ClearDeletedReferencesOnLot(Lot lot)
	{
		IDictionary<GameObject, bool> dictionary = new PairedListDictionary<GameObject, bool>();
		GameObject[] objects = lot.GetObjects<GameObject>();
		foreach (GameObject gameObject in objects)
		{
			if (ComponentIsMissing(gameObject))
			{
				continue;
			}
			foreach (KeyValuePair<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehavior in gameObject.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors)
			{
				int num = 0;
				while (num < mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors.Count)
				{
					if (mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors[num].Key.ObjectFromId<GameObject>() == null)
					{
						mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors.RemoveAt(num);
						dictionary[gameObject] = true;
					}
					else
					{
						num++;
					}
				}
			}
		}
		foreach (GameObject key in dictionary.Keys)
		{
			key.TombObjectComponent.TombObjectData.OnTombObjectComponentChanged();
		}
	}

	private static void AddTimedDrawingToList(ulong debugDrawId)
	{
		sTimedDrawingList.Add(debugDrawId);
	}

	private static void ClearTimedDrawings()
	{
		foreach (ulong sTimedDrawing in sTimedDrawingList)
		{
			DebugDraw.RemoveTimedDebugDraw(sTimedDrawing);
		}
		sTimedDrawingList.Clear();
	}

	private void OnTombObjectComponentChanged()
	{
		if (mOwnerLot != mOwner.LotCurrent && mOwner.LotCurrent != null && !mOwner.LotCurrent.IsWorldLot)
		{
			mOwnerLot = mOwner.LotCurrent;
		}
		RemoveLinksToDeletedObjects();
		if (TombObjectComponentChanged != null)
		{
			TombObjectComponentChanged();
		}
	}

	private void RemoveLinksToDeletedObjects()
	{
		foreach (KeyValuePair<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehavior in mTriggersLinkedToActivatedBehaviors)
		{
			int num = 0;
			while (num < mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors.Count)
			{
				GameObject gameObject = GameObject.GetObject(mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors[num].Key);
				if (gameObject == null || gameObject.HasBeenDestroyed || gameObject.LotCurrent != mOwnerLot)
				{
					mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors.RemoveAt(num);
				}
				else
				{
					num++;
				}
			}
		}
	}

	private void SaveWorldBuilderData()
	{
		WorldBuilderSaveInfo value = new WorldBuilderSaveInfo(mTriggersLinkedToActivatedBehaviors, mActivatedBehaviors, mAdventureKey, mTriggersActivatableByNPCs);
		WorldBuilderData.SetDirect("TombObjectComponent", mOwner.ObjectId, value);
	}

	private static void LoadWorldBuilderDataForObject(GameObject gameObject, WorldBuilderSaveInfo worldBuilderSaveInfo)
	{
		foreach (KeyValuePair<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehavior in gameObject.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors)
		{
			if (!worldBuilderSaveInfo.Triggers.TryGetValue(mTriggersLinkedToActivatedBehavior.Key, out var value))
			{
				continue;
			}
			foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior in value.LinksToActivatedBehaviors)
			{
				GameObject gameObject2 = linksToActivatedBehavior.Key.ObjectFromId<GameObject>();
				if (gameObject2 != null)
				{
					if (ComponentIsMissing(gameObject2) && gameObject2 is ICanHasTombObjectComponent)
					{
						gameObject2.AddComponent<TombObjectDynamicComponent>(new object[0]);
					}
					mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors.Add(new KeyValuePair<ObjectGuid, ActivatedBehavior>(linksToActivatedBehavior.Key, linksToActivatedBehavior.Value));
				}
			}
			mTriggersLinkedToActivatedBehavior.Value.TNSText = value.TNSText;
		}
		foreach (KeyValuePair<ActivatedBehavior, ActivatedBehaviorInfo> mActivatedBehavior in gameObject.TombObjectComponent.TombObjectData.mActivatedBehaviors)
		{
			if (worldBuilderSaveInfo.ActivatedBehaviors.TryGetValue(mActivatedBehavior.Key, out var value2))
			{
				mActivatedBehavior.Value.TNSText = value2.TNSText;
				mActivatedBehavior.Value.PlayCauseEffectFX = value2.PlayCauseEffectFX;
			}
		}
		gameObject.TombObjectComponent.TombObjectData.mAdventureKey = worldBuilderSaveInfo.AdventureKey;
		gameObject.TombObjectComponent.TombObjectData.mTriggersActivatableByNPCs = worldBuilderSaveInfo.mTriggersActivatableByNPCs;
	}

	private static void LoadOldWorldBuilderDataForObject(GameObject gameObject, TombObjectComponent.WorldBuilderSaveInfo worldBuilderSaveInfo)
	{
		if (!(gameObject is ICanHasTombObjectComponent))
		{
			return;
		}
		foreach (KeyValuePair<Trigger, TriggerInfo> mTriggersLinkedToActivatedBehavior in gameObject.TombObjectComponent.TombObjectData.mTriggersLinkedToActivatedBehaviors)
		{
			if (!worldBuilderSaveInfo.Triggers.TryGetValue(mTriggersLinkedToActivatedBehavior.Key, out var value))
			{
				continue;
			}
			foreach (KeyValuePair<ObjectGuid, ActivatedBehavior> linksToActivatedBehavior in value.LinksToActivatedBehaviors)
			{
				GameObject gameObject2 = linksToActivatedBehavior.Key.ObjectFromId<GameObject>();
				if (gameObject2 != null)
				{
					mTriggersLinkedToActivatedBehavior.Value.LinksToActivatedBehaviors.Add(new KeyValuePair<ObjectGuid, ActivatedBehavior>(linksToActivatedBehavior.Key, linksToActivatedBehavior.Value));
				}
			}
			mTriggersLinkedToActivatedBehavior.Value.TNSText = value.TNSText;
		}
		foreach (KeyValuePair<ActivatedBehavior, ActivatedBehaviorInfo> mActivatedBehavior in gameObject.TombObjectComponent.TombObjectData.mActivatedBehaviors)
		{
			if (worldBuilderSaveInfo.ActivatedBehaviors.TryGetValue(mActivatedBehavior.Key, out var value2))
			{
				mActivatedBehavior.Value.TNSText = value2.TNSText;
			}
		}
	}

	private static void LoadAllWorldBuilderDataOnLot()
	{
		Dictionary<ObjectGuid, IWorldBuilderData> allRoots = WorldBuilderData.GetAllRoots("TombObjectComponent");
		foreach (KeyValuePair<ObjectGuid, IWorldBuilderData> item in allRoots)
		{
			GameObject gameObject = item.Key.ObjectFromId<GameObject>();
			if (gameObject == null)
			{
				continue;
			}
			if (ComponentIsMissing(gameObject) && gameObject is ICanHasTombObjectComponent)
			{
				gameObject.AddComponent<TombObjectDynamicComponent>(new object[0]);
			}
			if (!(item.Value is WorldBuilderSaveInfo worldBuilderSaveInfo))
			{
				if (item.Value is TombObjectComponent.WorldBuilderSaveInfo worldBuilderSaveInfo2)
				{
					LoadOldWorldBuilderDataForObject(gameObject, worldBuilderSaveInfo2);
				}
			}
			else
			{
				LoadWorldBuilderDataForObject(gameObject, worldBuilderSaveInfo);
			}
		}
	}
}
