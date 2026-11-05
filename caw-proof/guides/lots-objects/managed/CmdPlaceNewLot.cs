using System.Collections;
using Sims3;
using Sims3.CSHost;

namespace WorldBuilderCS;

internal sealed class CmdPlaceNewLot : BaseLotCommand
{
	private tNewLotDescription mLotDesc;

	internal CmdPlaceNewLot(World curWorld, tNewLotDescription lotDesc, bool groupWithPreviousCommand)
		: base(curWorld, groupWithPreviousCommand)
	{
		mLotDesc = lotDesc;
	}

	public override bool Execute()
	{
		WorldBuilderMainForm instance = WorldBuilderMainForm.Instance;
		if (instance != null && mWorld != null && mLotDesc.mHeight != 0 && mLotDesc.mWidth != 0)
		{
			Lot lot = mWorld.CreateNewLot(ref mLotDesc);
			if (lot != null)
			{
				if (instance.AddLot(lot))
				{
					mLotId = lot.Id;
					return true;
				}
				mWorld.DeleteNewLot(lot);
				lot.Dispose();
			}
		}
		return false;
	}

	public override void Undo()
	{
		Lot lot = FindLotObjectManager();
		if (lot != null)
		{
			WorldBuilderMainForm.Instance?.DeleteLot(lot);
			lot.Dispose();
			lot = null;
		}
	}

	public override void Redo()
	{
		ulong num = mLotId;
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
				item.LotId = mLotId;
			}
		}
	}
}
