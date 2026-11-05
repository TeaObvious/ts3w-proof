/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

namespace Sims3.Gameplay.Objects.TombObjects;

public class TriggerPanel : GameObject, IBuildBuyListener, ICanHasTombObjectComponent, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent
{
	private const uint kTriggerVolumeFootprint = 2903438116u;

	private Lot mLotWithTriggerVolume;

	public override void OnStartup()
	{
		base.OnStartup();
		AddComponent<TombObjectStaticComponent>(new object[0]);
		AddComponent<AdventureComponent>(new object[0]);
		UpdateVisualState();
		UpdateTriggerVolume();
	}

	public override void Dispose()
	{
		base.Dispose();
		RemoveTriggerVolume();
	}

	public void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		tombObjectComponent.RegisterTrigger(Trigger.HiddenSwitch);
	}

	public override void LotChanged(Lot previousLot, int previousLevel, int previousRoomId)
	{
		base.LotChanged(previousLot, previousLevel, previousRoomId);
		UpdateTriggerVolume();
	}

	public override void OnHandToolPlacement()
	{
		base.OnHandToolPlacement();
		UpdateTriggerVolume();
	}

	public override void OnHandToolPickup(ePickupTypeHandTool pickupType)
	{
		base.OnHandToolPickup(pickupType);
		RemoveTriggerVolume();
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		bool result = base.ImportContent(resKeyTable, objIdTable, reader);
		UpdateVisualState();
		return result;
	}

	private void SetupTriggerVolume()
	{
		if (LotCurrent != null && !LotCurrent.IsWorldLot)
		{
			LotCurrent.AddTriggerVolumeCallback(this, 2903438116u, OnVolumeEntered);
			mLotWithTriggerVolume = LotCurrent;
		}
	}

	private void RemoveTriggerVolume()
	{
		if (mLotWithTriggerVolume != null)
		{
			mLotWithTriggerVolume.RemoveTriggerVolumeCallback(this, OnVolumeEntered);
			mLotWithTriggerVolume = null;
		}
	}

	private void UpdateTriggerVolume()
	{
		RemoveTriggerVolume();
		SetupTriggerVolume();
	}

	private void OnVolumeEntered(Sim actor)
	{
		if (InWorld)
		{
			TombObjectComponent.ActivateTrigger(Trigger.HiddenSwitch, actor);
		}
	}

	private void UpdateVisualState()
	{
		if (GameStates.NextInWorldStateId == InWorldState.SubState.BuildMode || GameStates.NextInWorldStateId == InWorldState.SubState.BuyMode)
		{
			SetHiddenFlags(HiddenFlags.Nothing);
		}
		else
		{
			SetHiddenFlags(HiddenFlags.Everything);
		}
	}

	public void OnEnterBuildBuyMode()
	{
		UpdateVisualState();
	}

	public void OnExitBuildBuyMode()
	{
		UpdateVisualState();
	}
}
