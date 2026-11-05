/* Analyst: original PC 1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.Core.LotManager.
   Complete original active-lot lock/defer/apply members and fields. SetActiveLot writes native lot GUID only on an unlocked change; locked changes become pending. Unlock applies pending before clearing it.
   Original selected metadata tokens: 0x0600991b, 0x0600991c, 0x0600991f, 0x06009920, 0x06009921, 0x06009922, 0x06009923, 0x0400517a, 0x0400517c, 0x0400517d.
   Actual ILSpy member rendering; paired original IL controls exact semantics. */

using Sims3.SimIFace;

public static Lot ActiveLot
{
	get
	{
		return sActiveLot;
	}
	set
	{
		SetActiveLot(value, updateCamera: true);
	}
}
public static void SetActiveLot(Lot newLot, bool updateCamera)
{
	if (sActiveLotLocked)
	{
		sActiveLotPending = newLot;
	}
	else if (newLot != sActiveLot)
	{
		Lot oldActiveLot = sActiveLot;
		sActiveLot = newLot;
		if (sActiveLot != null)
		{
			World.SetActiveLot(sActiveLot.LotId);
		}
		else
		{
			World.SetActiveLot(0uL);
		}
		if (ActiveLotChanged != null)
		{
			ActiveLotChanged(null, new ActiveLotChangedArgs(oldActiveLot, sActiveLot, updateCamera));
		}
	}
}
public static bool ActiveLotLocked => sActiveLotLocked;
public static Lot ActiveLotPending => sActiveLotPending;
public static void LockActiveLot(Lot lot)
{
	if (sActiveLotLocked)
	{
		if (lot == ActiveLot)
		{
			return;
		}
		UnlockActiveLot();
	}
	sActiveLotPending = ActiveLot;
	ActiveLot = lot;
	sActiveLotLocked = true;
}
public static void UnlockActiveLot()
{
	sActiveLotLocked = false;
	ActiveLot = sActiveLotPending;
	sActiveLotPending = null;
}
private static Lot sActiveLot;
private static Lot sActiveLotPending;
private static bool sActiveLotLocked;
