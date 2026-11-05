/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System;
using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Interactions;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

namespace Sims3.Gameplay.ObjectComponents;

public class TombObjectStaticComponent : StaticObjectComponent, ITombObjectComponent
{
	private TombObjectData mTombObjectData;

	public TombObjectData TombObjectData => mTombObjectData;

	public override Type BaseType => typeof(TombObjectStaticComponent);

	public string AdventureKey
	{
		get
		{
			return mTombObjectData.AdventureKey;
		}
		set
		{
			mTombObjectData.AdventureKey = value;
		}
	}

	private TombObjectStaticComponent()
	{
	}

	public TombObjectStaticComponent(GameObject o)
		: base(o)
	{
		mTombObjectData = new TombObjectData(o);
	}

	public void RegisterTrigger(Trigger trigger)
	{
		mTombObjectData.RegisterTrigger(trigger);
	}

	public void RegisterBehavior(ActivatedBehavior activatedBehavior, ActivatedBehaviorCallback callback)
	{
		mTombObjectData.RegisterBehavior(activatedBehavior, callback);
	}

	public bool ActivateTrigger(Trigger trigger, Sim sim)
	{
		return mTombObjectData.ActivateTrigger(trigger, sim);
	}

	public bool DeactivateTrigger(Trigger trigger, Sim sim)
	{
		return mTombObjectData.DeactivateTrigger(trigger, sim);
	}

	public bool IsTriggerLinkedToAnyActivatedBehavior(Trigger trigger)
	{
		return mTombObjectData.IsTriggerLinkedToAnyActivatedBehavior(trigger);
	}

	public bool IsActivatedBehaviorLinkedFromObjectType<T>(params ActivatedBehavior[] activatedBehaviors) where T : class, ICanHasTombObjectComponent
	{
		return mTombObjectData.IsActivatedBehaviorLinkedFromObjectType<T>(activatedBehaviors);
	}

	public List<ActivatedBehavior> GetLinkedActivatedBehaviors()
	{
		return TombObjectData.GetLinkedActivatedBehaviors();
	}

	public void RegisterOnTombObjectComponentChangedCallback(VoidEventHandler callback)
	{
		mTombObjectData.TombObjectComponentChanged += callback;
	}

	public void OnHover()
	{
		mTombObjectData.OnHover();
	}

	public override void OnStartup()
	{
		mTombObjectData.OnAddTombObjectComponent(this);
		base.OnStartup();
	}

	public override void Dispose()
	{
		base.Dispose();
		mTombObjectData.Dispose();
	}

	public override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		mTombObjectData.AddBuildBuyInteractions(buildBuyInteractions);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		return mTombObjectData.ExportContent(resKeyTable, objIdTable, writer);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		return mTombObjectData.ImportContent(resKeyTable, objIdTable, reader);
	}
}
