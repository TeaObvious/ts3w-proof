/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System.Collections.Generic;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;

namespace Sims3.Gameplay.ObjectComponents;

internal class TombObjectComponent
{
	[Persistable]
	internal class WorldBuilderSaveInfo : IWorldBuilderData
	{
		public Dictionary<Trigger, TriggerInfo> Triggers = new Dictionary<Trigger, TriggerInfo>();

		public Dictionary<ActivatedBehavior, ActivatedBehaviorInfo> ActivatedBehaviors = new Dictionary<ActivatedBehavior, ActivatedBehaviorInfo>();

		public WorldBuilderSaveInfo()
		{
		}

		public WorldBuilderSaveInfo(Dictionary<Trigger, TriggerInfo> triggersLinkedToActivatedBehaviors, Dictionary<ActivatedBehavior, ActivatedBehaviorInfo> activatedBehaviors)
		{
			Triggers = new Dictionary<Trigger, TriggerInfo>(triggersLinkedToActivatedBehaviors);
			ActivatedBehaviors = new Dictionary<ActivatedBehavior, ActivatedBehaviorInfo>(activatedBehaviors);
		}
	}

	[Persistable]
	internal class TriggerInfo
	{
		public List<KeyValuePair<ObjectGuid, ActivatedBehavior>> LinksToActivatedBehaviors = new List<KeyValuePair<ObjectGuid, ActivatedBehavior>>();

		public string TNSText;
	}

	[Persistable]
	internal class ActivatedBehaviorInfo
	{
		[Persistable(false)]
		public ActivatedBehaviorCallback ActivatedBehaviorCallback;

		public string TNSText;

		public bool PlayCauseEffectFX;
	}
}
