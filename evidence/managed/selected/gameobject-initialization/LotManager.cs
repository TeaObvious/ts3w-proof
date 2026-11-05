/* Original PC1.67 selected managed members, actual ILSpy11.1 output.
   Omitted siblings are outside this selection. Repeated usings, selected getter body fragments
   and constructor base..ctor() text are tool renderings, not a compilable replacement class.
   Complete typed original CIL is paired in LotManager.il.txt; the canonical managed README owns assembly provenance. */

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Core.LotManager::PlaceObjectOnLot, MethodDef 0x06009944, RVA0x002AF5C8, 35 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Initializes lot to UInt64 zero, level to Int32.MaxValue and room to Int32 zero, asks original Objects.GetLocation using the object GUID, then calls original AddObjectToLot with previousLot null. */
using Sims3.Gameplay.Interfaces;
using Sims3.SimIFace;

public static void PlaceObjectOnLot(IGameObject gameObject, ObjectGuid objectId)
{
	ulong lotId = 0uL;
	int level = int.MaxValue;
	int roomId = 0;
	Sims3.SimIFace.Objects.GetLocation(objectId, out lotId, out level, out roomId);
	AddObjectToLot(gameObject, objectId, lotId, level, roomId, null);
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Core.LotManager::AddObjectToLot, MethodDef 0x0600997a, RVA0x002B04DC, 195 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Captures previous room/level, resolves/falls back to WorldLot, preserves the already-admitted non-world-lot early return, calls Lot.AddObjectToLot by ref, then original room/level and lot-change hooks. Native location and Lot.AddObjectToLot internals are not expanded. */
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Interfaces;
using Sims3.SimIFace;

private static void AddObjectToLot(IGameObject gameObject, ObjectGuid objectId, ulong lotId, int level, int roomId, Lot previousLot)
{
	if (previousLot == null)
	{
		previousLot = gameObject?.LotCurrent;
	}
	int previousRoomId = gameObject?.StaleRoomId ?? 0;
	int previousLevel = gameObject?.Level ?? 0;
	Lot lot = GetLot(lotId);
	if (lot == null)
	{
		lot = sWorldLot;
		level = 0;
		roomId = 0;
	}
	if (gameObject != null && gameObject.InternalLotCurrent != null && GetLot(gameObject.InternalLotCurrent.LotId) != null && !gameObject.InternalLotCurrent.IsWorldLot)
	{
		return;
	}
	lot.AddObjectToLot(ref gameObject, objectId);
	if (gameObject != null)
	{
		if (gameObject is Sim sim && !sActorList.Contains(sim) && Sims3.SimIFace.Objects.IsValid(sim.ObjectId))
		{
			sActorList.Add(sim);
		}
		gameObject.InternalOnSetRoomAndLevel(roomId, level, previousRoomId, previousLot);
		gameObject.LotChanged(previousLot, previousLevel, previousRoomId);
	}
}
