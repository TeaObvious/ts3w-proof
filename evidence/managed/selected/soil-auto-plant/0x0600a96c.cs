/* Analyst: selected complete original PC1.67 Sims3.Gameplay.Objects.Gardening.SoilAutoPlant::OnCreation 0x0600a96c.
 * Actual ILSpy11.1 selected-member rendering; paired original CIL governs operand types and branches.
 * Original managed policy: base first, Edit-in-Game exit, existing Plant-slot and original object-validity guards, seed creation, child creation, seed Destroy on null child, SetPlanted only on success. Native factory/slot internals and lifecycle reachability are separate.
 */

using Sims3.Gameplay.Interfaces;
using Sims3.SimIFace;

public override void OnCreation()
{
	base.OnCreation();
	if (Sims3.SimIFace.Environment.HasEditInGameModeSwitch)
	{
		return;
	}
	ObjectGuid containedObject = Slots.GetContainedObject(ObjectId, (uint)ContainmentSlots.Plant);
	if (containedObject != ObjectGuid.InvalidObjectGuid || !Sims3.SimIFace.Objects.IsValid(ObjectId))
	{
		return;
	}
	IGameObject gameObject = CreateSeed();
	if (gameObject != null)
	{
		Plant plant = Plant.CreateAutoPlantFromSeed(gameObject, this);
		if (plant == null)
		{
			gameObject.Destroy();
		}
		else
		{
			SetPlanted();
		}
	}
}
