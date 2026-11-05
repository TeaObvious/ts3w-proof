// Original PC1.67 package assembly; actual ILSpy selected-member output.
// Analyst: original managed pose/layout/outfit policy remains in game assemblies.
// MethodDef/RVA and complete typed CIL are indexed beside this file.
using System.Collections;
using System.Collections.Generic;
using Sims3.Gameplay.CAS;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;

private static bool PrepareCASHouseholdForThumbnail(Household household)
{
	//IL_01be: Unknown result type (might be due to invalid IL or missing references)
	//IL_01c4: Invalid comparison between Unknown and I4
	//IL_01e8: Unknown result type (might be due to invalid IL or missing references)
	//IL_01ef: Invalid comparison between Unknown and I4
	//IL_020a: Unknown result type (might be due to invalid IL or missing references)
	//IL_0211: Invalid comparison between Unknown and I4
	if (household.IsSpecialHousehold && !household.IsFutureDescendantHousehold)
	{
		return true;
	}
	int num = ((household.AllSimDescriptions != null) ? household.AllSimDescriptions.Count : 0);
	bool flag = sHouseholdsToCacheAtlases.Contains(household);
	if (num != 0)
	{
		Hashtable simPosesForCASHouseholdThumbnail = GetSimPosesForCASHouseholdThumbnail(household.AllSimDescriptions, ThumbnailType.kHousehold);
		int num2 = 0;
		List<SimDescription> list = new List<SimDescription>(household.AllSimDescriptions);
		foreach (SimDescription item in list)
		{
			SimOutfit simOutfit = null;
			simOutfit = item.GetOutfit(OutfitCategories.Everyday, 0);
			if (simOutfit == null)
			{
				continue;
			}
			uint num3 = 0u;
			if (sBuilders.Count <= num2)
			{
				sBuilders.Add(new SimBuilder());
			}
			SimBuilder simBuilder = (SimBuilder)sBuilders[num2];
			simBuilder.Clear();
			simBuilder.UseCompression = true;
			simBuilder.TextureSize = 512u;
			simBuilder.WaitForTextures = true;
			if (flag)
			{
				simBuilder.CacheAtlases = true;
			}
			OutfitUtils.SetOutfit(simBuilder, simOutfit, null);
			simBuilder.BuildModel(0, 200u);
			num3 = simBuilder.ModelHandle;
			if (simPosesForCASHouseholdThumbnail.ContainsKey(item))
			{
				PoseInfo poseInfo = (PoseInfo)simPosesForCASHouseholdThumbnail[item];
				ThumbnailManager.AddModel(num3);
				ThumbnailManager.AddRig(simOutfit.RigKey);
				ThumbnailManager.AddPose(poseInfo.mPose, poseInfo.mProductVersion);
				ThumbnailManager.AddDisplacement(poseInfo.mDisplacement.x, 0f, poseInfo.mDisplacement.y);
				ThumbnailManager.AddRotation(poseInfo.mRotation);
				ThumbnailManager.AddNameSpace(poseInfo.mNameSpace);
				uint occultState = 0u;
				if (item.DeathStyle != SimDescription.DeathType.None)
				{
					occultState = (uint)((item.DeathStyle & (SimDescription.DeathType)0xFFFFu) | (SimDescription.DeathType)0x10000u);
				}
				else if (item.IsVampire || (item.SupernaturalData != null && (int)item.SupernaturalData.OccultType == 4))
				{
					occultState = 131072u;
				}
				else if (item.IsGenie || (item.SupernaturalData != null && (int)item.SupernaturalData.OccultType == 32))
				{
					occultState = 524288u;
				}
				else if (item.SupernaturalData != null && (int)item.SupernaturalData.OccultType == 64)
				{
					occultState = 1048576u;
				}
				else if (item.IsAlien)
				{
					occultState = 262144u;
				}
				ThumbnailManager.AddOccultState(occultState);
				ThumbnailManager.AddSimBuilder(simBuilder.SimBuilderHandle);
			}
			num2++;
		}
		uint householdCamera = 66267653u;
		if (GameUtils.IsInstalled(ProductVersion.EP5) && household.CurrentMembers.PetSimDescriptionList.Count > 0)
		{
			householdCamera = household.CurrentMembers.GetSimDescriptionsOfType(CASAGSAvailabilityFlags.AllHorsesMask).Count switch
			{
				6 => 3005922744u, 
				5 => 3005922747u, 
				4 => 3005922746u, 
				3 => 3005922749u, 
				2 => 3005922748u, 
				1 => 3005922751u, 
				_ => 3046518966u, 
			};
		}
		ThumbnailManager.SetHouseholdCamera(householdCamera);
	}
	if (flag)
	{
		sHouseholdsToCacheAtlases.Remove(household);
		if (sBuilders.Count > 0)
		{
			((SimBuilder)sBuilders[0]).CacheAtlases = false;
		}
	}
	return true;
}
