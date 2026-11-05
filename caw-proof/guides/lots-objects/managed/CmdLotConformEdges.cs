using System.Windows.Forms;
using Sims3.CSHost;
using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

internal sealed class CmdLotConformEdges : BaseLotCommand
{
	public CmdLotConformEdges()
		: base(null, groupWithPreviousCommand: false)
	{
	}

	public override bool Execute()
	{
		return true;
	}

	public override void Undo()
	{
		//IL_000d: Unknown result type (might be due to invalid IL or missing references)
		MessageBox.Show(Strings.kLotConformEdges_UndoDialog, Strings.kLotConformEdges_UndoDialogCaption, (MessageBoxButtons)0, (MessageBoxIcon)64);
	}

	public override void Redo()
	{
		//IL_000d: Unknown result type (might be due to invalid IL or missing references)
		MessageBox.Show(Strings.kLotConformEdges_RedoDialog, Strings.kLotConformEdges_RedoDialogCaption, (MessageBoxButtons)0, (MessageBoxIcon)64);
	}
}
