using System.Collections;
using System.Collections.Generic;
using Sims3;
using Sims3.CSHost;
using Sims3.Math;

namespace WorldBuilderCS;

internal sealed class CmdCloneLot : BaseLotCommand
{
	private ulong mClonedLotId;

	private Vector3 mNewPosition;

	private float mNewRotation;

	internal ulong ClonedLotId => mClonedLotId;

	internal CmdCloneLot(Lot sourceLot, World world, Vector3 newPosition, float newRotation, bool groupWithPreviousCommand)
		: base(sourceLot, world, groupWithPreviousCommand)
	{
		mNewPosition = newPosition;
		mNewRotation = newRotation;
	}

	public override bool Execute()
	{
		Lot lot = FindLotObjectManager();
		if (lot == null)
		{
			return false;
		}
		WorldBuilderMainForm instance = WorldBuilderMainForm.Instance;
		if (instance == null || mWorld == null)
		{
			return false;
		}
		Dictionary<ulong, ulong> clonedLots = instance.ClonedLots;
		if (clonedLots == null)
		{
			return false;
		}
		tNewLotDescription lotDesc = default;
		lotDesc.mLotType = lot.LotType;
		lotDesc.mPosition = mNewPosition;
		lotDesc.mRotation = mNewRotation;
		lotDesc.mWidth = lot.SizeX;
		lotDesc.mHeight = lot.SizeZ;
		lotDesc.mAdditionalPropertyValue = lot.AdditionalValue;
		lotDesc.mBeautifulVistaBuf = lot.BeautifulVistaBuf;
		lotDesc.mLotSubtype = lot.LotSubType;
		Lot lot2 = mWorld.CreateNewLot(ref lotDesc);
		if (lot2 != null && instance.AddLot(lot2))
		{
			mClonedLotId = lot2.Id;
			ulong num = lot.Id;
			if (clonedLots.ContainsKey(num))
			{
				num = clonedLots[num];
			}
			lot2.CopyData(lot, num);
			clonedLots.Add(mClonedLotId, num);
			instance.RefreshWorldLayersNode(mClonedLotId);
			lot.Dispose();
			lot = null;
			return true;
		}
		mClonedLotId = 0uL;
		return false;
	}

	public override void Undo()
	{
		Lot lot = FindLotObjectManager(mClonedLotId);
		if (lot != null)
		{
			WorldBuilderMainForm.Instance?.DeleteLot(lot);
			lot.Dispose();
			lot = null;
		}
	}

	public override void Redo()
	{
		ulong num = mClonedLotId;
		if (!Execute())
		{
			return;
		}
		ArrayList commandList = new ArrayList();
		UndoManager.Instance.GetCommandsOfBaseTypeAfterCurrent(typeof(BaseLotCommand), ref commandList);
		foreach (BaseLotCommand item in commandList)
		{
			if (item.LotId == num)
			{
				item.LotId = mClonedLotId;
			}
		}
	}
}
