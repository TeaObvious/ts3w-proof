// Original PC1.67 package assembly; actual ILSpy selected-member output.
// Analyst: original managed pose/layout/outfit policy remains in game assemblies.
// MethodDef/RVA and complete typed CIL are indexed beside this file.
using Sims3.Gameplay.CAS;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;

private static bool SetupForSimThumbnailUsingSimBuilder(ResourceKey outfitKey, int index, int ghostIndex, bool useCasSimBuilder, ThumbnailSize size)
{
	SimOutfit simOutfit = new SimOutfit(outfitKey);
	uint num = 0u;
	uint num2 = 0u;
	CASAgeGenderFlags cASAgeGenderFlags;
	CASAgeGenderFlags cASAgeGenderFlags2;
	int index2;
	if (outfitKey.TypeId == 3735196956u)
	{
		cASAgeGenderFlags = (CASAgeGenderFlags)(index & 0x7F);
		cASAgeGenderFlags2 = (CASAgeGenderFlags)(index & 0xCF00);
		index2 = -4;
	}
	else
	{
		cASAgeGenderFlags = simOutfit.AgeGenderSpecies & CASAgeGenderFlags.AgeMask;
		cASAgeGenderFlags2 = simOutfit.AgeGenderSpecies & CASAgeGenderFlags.SpeciesMask;
		index2 = index;
	}
	CASLogic singleton = CASLogic.GetSingleton();
	if (singleton.Active)
	{
		if (cASAgeGenderFlags == CASAgeGenderFlags.None)
		{
			cASAgeGenderFlags = singleton.Age;
		}
		if (cASAgeGenderFlags2 == CASAgeGenderFlags.None)
		{
			cASAgeGenderFlags2 = singleton.Species;
		}
	}
	if (useCasSimBuilder)
	{
		while (!singleton.IsModelBuilt())
		{
			if (singleton != CASLogic.GetSingleton())
			{
				return false;
			}
			Simulator.Sleep(0u);
		}
		bool bBuilderExists = false;
		num = singleton.GetModelHandle(ref bBuilderExists);
		ThumbnailManager.AddBoneDeltaFromBuilder(singleton.GetSimBuilderHandle());
		if (num == 0 && !bBuilderExists)
		{
		}
	}
	else
	{
		if (sBuilders.Count < 1)
		{
			sBuilders.Add(new SimBuilder());
		}
		SimBuilder simBuilder = (SimBuilder)sBuilders[0];
		simBuilder.Clear();
		simBuilder.UseCompression = true;
		if (size == ThumbnailSize.ExtraLarge)
		{
			simBuilder.TextureSize = 2048u;
		}
		else
		{
			simBuilder.TextureSize = 512u;
		}
		simBuilder.WaitForTextures = false;
		simBuilder.Age = cASAgeGenderFlags;
		simBuilder.Species = cASAgeGenderFlags2;
		OutfitUtils.SetOutfit(simBuilder, simOutfit, null);
		if (simOutfit.GetComponents() == 27021597764222976L)
		{
			OutfitUtils.AddMissingParts(simBuilder, OutfitCategories.Naked, randomize: false, null, isAlien: false);
		}
		simBuilder.BuildModel(0, 200u);
		num = simBuilder.ModelHandle;
		num2 = simBuilder.SimBuilderHandle;
		ThumbnailManager.AddSimBuilder(num2);
	}
	if (num == 0)
	{
		return false;
	}
	ThumbnailManager.AddModel(num);
	ResourceKey rigKey = simOutfit.RigKey;
	if (rigKey.InstanceId == 0)
	{
		rigKey = CASUtils.GetRigKeyForAgeGenderSpecies(cASAgeGenderFlags | cASAgeGenderFlags2);
	}
	ThumbnailManager.AddRig(rigKey);
	bool useFixedPose = useCasSimBuilder;
	if (ThumbnailManager.IsCheatSaveSimFaceEnabled())
	{
		useFixedPose = true;
	}
	SelectSimPose(index2, cASAgeGenderFlags, cASAgeGenderFlags2, 0u, useFixedPose);
	if (ghostIndex != -1)
	{
		ThumbnailManager.AddOccultState((uint)(ghostIndex | 0x10000));
	}
	return true;
}
