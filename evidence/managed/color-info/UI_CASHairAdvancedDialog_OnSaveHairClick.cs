// PC1.67 identified original managed method(s); execution-free ILSpy rendering.
// Original metadata names/tokens retained; accessor fragments need not be standalone compilable C#.
// See guides/appearance/color-info-serialization.md and the central managed reference inputs.
using Sims3.Metadata;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;
using Sims3.UI.CAS.CAP;

private void OnSaveHairClick(WindowBase sender, UIButtonClickEventArgs eventArgs)
{
	int num = Responder.Instance.CASModel.FindCurrentHairColorPresetIndex(mBodyType, filterUserOnly: false);
	if (num == -1)
	{
		ColorInfo colorInfo = new ColorInfo();
		colorInfo.Usage = ColorInfo.PreferredUse.Hair;
		colorInfo.Colors = new Color[8]
		{
			default,
			default,
			default,
			default,
			default,
			default,
			default,
			default
		};
		Color color = Color.Preset.None;
		for (uint num2 = 0u; num2 < 4; num2++)
		{
			color = Responder.Instance.CASModel.GetHairColor(BodyTypes.Hair, (int)num2);
			color = Vector3ToColor(mCurHairPartVecColors[num2]);
			color.Alpha = byte.MaxValue;
			colorInfo.Colors[num2].ARGB = color.ARGB;
		}
		ResourceKey kInvalidResourceKey = ResourceKey.kInvalidResourceKey;
		if (CAPColoringTMH.gSingleton != null)
		{
			colorInfo.Usage = ColorInfo.PreferredUse.Makeup;
			colorInfo.UsageSubCategory = ColorInfo.eUsageSubCategory.PeltColor;
			kInvalidResourceKey = colorInfo.SaveMakeupPreset(colorInfo.UsageSubCategory);
		}
		else
		{
			kInvalidResourceKey = colorInfo.SaveHairPreset();
		}
		if (kInvalidResourceKey != ResourceKey.kInvalidResourceKey)
		{
			mSaveButton.Enabled = false;
			CASController.Singleton.ErrorMsg(CASErrorCode.SaveSuccess);
			if (CASHair.gSingleton != null)
			{
				CASHair.gSingleton.PopulateHairPresets();
			}
			else if (CASBeard.gSingleton != null)
			{
				CASBeard.gSingleton.PopulateBeardPresets();
			}
			else if (CAPColoringTMH.gSingleton != null)
			{
				CAPColoringTMH.gSingleton.PopulateHairPresets();
			}
		}
		else
		{
			CASController.Singleton.ErrorMsg(CASErrorCode.SaveFailed);
		}
	}
	else
	{
		Simulator.AddObject(new OneShotFunctionTask(() =>
		{
			string messageText = Responder.Instance.LocalizationModel.LocalizeString("Ui/Caption/CAS/Hair:SaveDuplicate");
			SimpleMessageDialog.Show(null, messageText, PauseMode.PauseTask, new Vector2(-1f, -1f), "ui_error", "ui_hardwindow_close");
		}));
	}
}
