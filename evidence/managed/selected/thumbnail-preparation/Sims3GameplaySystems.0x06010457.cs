// Original PC1.67 package assembly; actual ILSpy selected-member output.
// Analyst: original managed pose/layout/outfit policy remains in game assemblies.
// MethodDef/RVA and complete typed CIL are indexed beside this file.
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.CAS;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;
using Sims3.UI.Hud;

private static bool ThumbnailManager_OnPrepareObject(ObjectGuid templateId, ObjectGuid targetId, int index, uint uintVal1, uint uintVal2, ThumbnailSize size, uint prepareType, uint uintVal3)
{
	switch ((PrepareType)prepareType)
	{
	case PrepareType.kPrepareHousehold:
		return PrepareHouseholdForThumbnail(templateId.Value);
	case PrepareType.kPreparePromSims:
		if (GameObject.GetObject(new ObjectGuid(templateId.Value)) is Sim { IsHorse: not false })
		{
			return PrepareEquestrianRaceSimsForThumbnail(templateId.Value, targetId.Value);
		}
		return PreparePromSimsForThumbnail(templateId.Value, targetId.Value);
	case PrepareType.kPreparePhotoBoothSims:
		return PreparePhotoBoothSimsForThumbnail(templateId.Value, targetId.Value);
	case PrepareType.kPrepareSimsForSelfPhoto:
		return PrepareSelfPhotoSimsForThumbnail(templateId.Value, targetId.Value);
	case PrepareType.kPrepareSimsUsingObject:
		return PrepareThumbnailForSimsUsingObject(templateId.Value);
	case PrepareType.kPrepareLot:
		return PrepareLotForThumbnail(templateId.Value);
	case PrepareType.kPrepareSculptureSim:
		return PrepareSculptureSimForThumbnail(targetId.Value);
	case PrepareType.kPrepareSimsForServoBotArenaPic:
		return PrepareServoBotArenaSimsForThumbnail(templateId.Value);
	case PrepareType.kPrepareSimWithoutTemplate:
	{
		ResourceKey outfitKey = new ResourceKey(targetId.Value, (uint)templateId.Value, uintVal1);
		bool useCasSimBuilder = uintVal2 != 0;
		int num = index;
		int ghostIndex = -1;
		if (outfitKey.TypeId != 3735196956u && (index < 256 || index > 768))
		{
			if (num > -4)
			{
				num = -1;
			}
			if (index >= 6 && index < 32)
			{
				ghostIndex = index - 5;
			}
		}
		return SetupForSimThumbnailUsingSimBuilder(outfitKey, num, ghostIndex, useCasSimBuilder, size);
	}
	default:
	{
		if (templateId.Value == 55242443 || templateId.Value == 56144010 || templateId.Value == 2480425025u || templateId.Value == 85848797 || templateId.Value == 1919433749 || templateId.Value == 55925672)
		{
			bool flag = uintVal2 != 0;
			ResourceKey partKey = new ResourceKey(targetId.Value, (uint)templateId.Value, uintVal3);
			if (flag)
			{
				return SetupForCASThumbnailUsingCASSimbuilder(partKey, index, (CASAgeGenderFlags)uintVal1, size);
			}
			return SetupForCASThumbnailUsingSeparateSimbuilder(partKey, index, (CASAgeGenderFlags)uintVal1, size);
		}
		IScriptProxy proxyPreInit = Simulator.GetProxyPreInit(templateId);
		if (proxyPreInit == null)
		{
			return false;
		}
		object target = proxyPreInit.Target;
		if (target == null)
		{
			return false;
		}
		if (target is Sim sim)
		{
			if (index >= 6 && index < 32)
			{
				if (!sim.SimDescription.IsEP11Bot)
				{
					uint deathTypeFromMoodID = (uint)SimDescription.GetDeathTypeFromMoodID((MoodID)index);
					World.ObjectSetGhostState(targetId, deathTypeFromMoodID, (uint)sim.SimDescription.AgeGenderSpecies);
				}
				else
				{
					World.ObjectSetGhostState(targetId, 23u, (uint)sim.SimDescription.AgeGenderSpecies);
				}
			}
			if (sim.SimDescription.IsVampire)
			{
				World.ObjectSetVisualOverride(targetId, eVisualOverrideTypes.Vampire, null);
			}
			else if (sim.SimDescription.IsWerewolf)
			{
				World.ObjectSetVisualOverride(targetId, eVisualOverrideTypes.Werewolf, null);
			}
			else if (sim.SimDescription.IsGenie)
			{
				World.ObjectSetVisualOverride(targetId, eVisualOverrideTypes.Genie, null);
			}
			if (sim.SimDescription.IsAlien)
			{
				World.ObjectSetVisualOverride(targetId, eVisualOverrideTypes.Alien, null);
			}
			SimOutfit simOutfit = ((sim.Service == null) ? sim.SimDescription.GetOutfit(OutfitCategories.Everyday, 0) : sim.SimDescription.GetOutfit(OutfitCategories.Career, 0));
			if (simOutfit != null && (simOutfit.AgeGenderSpecies & CASAgeGenderFlags.AgeMask) == sim.SimDescription.Age)
			{
				CASUtils.SetOutfitInGameObject(simOutfit.Key, targetId);
				SelectSimPose(index, simOutfit.AgeGenderSpecies & CASAgeGenderFlags.AgeMask, simOutfit.AgeGenderSpecies & CASAgeGenderFlags.SpeciesMask, 0u, useFixedPose: false);
				return true;
			}
		}
		return false;
	}
	}
}
