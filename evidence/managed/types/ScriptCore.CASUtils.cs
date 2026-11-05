using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;

namespace ScriptCore;

public sealed class CASUtils : CallbackObject, ICASUtils
{
	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)]
	private static extern byte[] CASUtils_GetColorInfoBytesImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_CreatePartSearchImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_PartSearchCompleteImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_PartSearchMoveNextImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern CASPart CASUtils_PartSearchGetCurrentImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_PartSearchFreeSearchImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_PartDataIsUserPresetImpl(ResourceKey partKey, uint presetId);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_PartDataAddDesignPresetImpl(ResourceKey partKey, [MarshalAs(UnmanagedType.LPWStr)] string preset);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_PartDataRemoveDesignPresetImpl(ResourceKey partKey, uint presetId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_PartDataGetNameImpl(ResourceKey partKey);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_PartDataNumPresetsImpl(ResourceKey partKey);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_PartDataGetPresetImpl(ResourceKey partKey, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_PartDataGetPresetIdImpl(ResourceKey partKey, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_CreateKeySearchImpl(uint typeId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_KeySearchCompleteImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_KeySearchMoveNextImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_KeySearchGetCurrentImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_KeySearchFreeSearchImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimsVisibleInCASImpl([MarshalAs(UnmanagedType.I1)] bool visible);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_CASCameraModeImpl([MarshalAs(UnmanagedType.I1)] bool activate);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SetCameraPoseImpl(uint basePoseHash, uint closeUpPoseHash, float zoom, float zoomDelta, uint lerp);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SetCameraOffsetImpl(float x, float y, float z);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_SimBuilderCreateImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderFreeImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetAgeGenderSpeciesImpl(uint handle, uint flags);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetSkinToneImpl(uint handle, ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetSkinToneIndexImpl(uint handle, float value);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetSecondaryNormalMapWeightImpl(uint handle, uint index, float value);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderClearPartsImpl(uint handle, [MarshalAs(UnmanagedType.I1)] bool bClearObjectId, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_SimBuilderAddPartImpl(uint handle, ResourceKey partKey);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_SimBuilderAddPartImpl(uint handle, ResourceKey key, int tbIndex);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderRemovePartImpl(uint handle, ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetPartCompositorImpl(uint handle, ResourceKey key, uint partType, [MarshalAs(UnmanagedType.I1)] bool isSpecular, uint compositorHash, [MarshalAs(UnmanagedType.SafeArray)] byte[] data, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetPartPresetImpl(uint handle, ResourceKey key, [MarshalAs(UnmanagedType.LPWStr)] string presetString);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_SimBuilderGetPatternKeyImpl(uint handle, ResourceKey key, uint compositorHash, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderBuildModelImpl(uint handle, int detailLevel, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderProcessModelImpl(uint handle, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_SimBuilderCachePartImpl(uint handle, ResourceKey partKey);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderUncachePartImpl(uint handle, ResourceKey partKey);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_SimBuilderResetAnimationImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_SimBuilderGetModelHandleImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_SimBuilderGetTextureSizeImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetTextureSizeImpl(uint handle, uint size);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetMorphWeightAImpl(uint handle, float value);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetMorphWeightBImpl(uint handle, float value);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetMorphWeightCImpl(uint handle, float value);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetMorphWeightDImpl(uint handle, float value);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimBuilderGetMorphWeightAImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimBuilderGetMorphWeightBImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimBuilderGetMorphWeightCImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimBuilderGetMorphWeightDImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetNumCurlsImpl(uint handle, float value);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetFurMapImpl(uint handle, ResourceKey value);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetCurlPixelRadiusImpl(uint handle, float value);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimBuilderGetNumCurlsImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_SimBuilderGetFurMapImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimBuilderGetCurlPixelRadiusImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_SimBuilderSaveOutfitImpl(uint handle, [MarshalAs(UnmanagedType.LPWStr)] string packageName, [MarshalAs(UnmanagedType.I1)] bool cacheLODs, ulong uniformComponents);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_SimBuilderSaveUserOutfitImpl(uint handle, ulong uniformComponents);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_SimBuilderShareOutfitImpl(uint handle, [MarshalAs(UnmanagedType.LPWStr)] string packageName, [MarshalAs(UnmanagedType.LPWStr)] string description, ulong uniformComponents);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_SimBuilderSaveSkinTonePresetImpl(uint handle, [MarshalAs(UnmanagedType.LPWStr)] string packageName);

	[DllImport("Sims3Common.dll")]
	private static extern SkinTonePreset CASUtils_GetSkinTonePresetImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_SimBuilderSaveCompoundBlendImpl(uint handle, uint region, [MarshalAs(UnmanagedType.LPWStr)] string packageName);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSavePartPresetImpl(uint handle, ResourceKey partKey, [MarshalAs(UnmanagedType.LPWStr)] string presetName, [MarshalAs(UnmanagedType.LPWStr)] string preset);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_SimBuilderCacheOutfitImpl(uint handle, [MarshalAs(UnmanagedType.LPWStr)] string instanceName, ulong uniformComponents, bool bSimSave);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern void CASUtils_SimBuilderSetHighlightModeImpl(uint handle, uint mode);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern void CASUtils_SimBuilderSetHighlightIndexImpl(uint handle, uint highlightIndex);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern void CASUtils_SimBuilderSetSelectionIndexImpl(uint handle, uint selectionIndex);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern void CASUtils_SimBuilderGetBodyTypeAndRegionFromPickDataImpl(uint handle, int pickId, ref int bodyType, ref int region);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_SimBuilderGetPickDataFromBodyTypeAndRegionImpl(uint handle, int bodyType, int region);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_SimBuilderGetUseCompressionImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetUseCompressionImpl(uint handle, [MarshalAs(UnmanagedType.I1)] bool value);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetCacheAtlasesImpl(uint handle, [MarshalAs(UnmanagedType.I1)] bool value);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_SimBuilderGetWaitForTexturesImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetWaitForTexturesImpl(uint handle, [MarshalAs(UnmanagedType.I1)] bool value);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_SimBuilderGetIsDirtyImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_SimBuilderGetIsRigDirtyImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimBuilderGetFacialBlendImpl(uint handle, ResourceKey key);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_SimBuilderSetFacialBlendImpl(uint handle, ResourceKey key, float amount);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_SimBuilderGetNumBonesImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_SimBuilderGetBoneDeltaImpl(uint handle, uint index, ref Vector3 position, ref Quaternion orientation, ref Vector3 scale);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderAttachToSceneObjectImpl(uint handle, ulong objectId);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetupCASRoomObjectImpl(uint handle, ulong objectId);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderApplyBoneDeltasImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderClearFacialBlendsImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SetModelInGameObjectImpl(uint modelHandle, ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SetModelInGameObjectDelayedImpl(uint modelHandle, ulong scriptHandle, [MarshalAs(UnmanagedType.Interface)] Delegate finishedCallback);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SetOutfitInGameObjectImpl(ResourceKey resKey, ulong scriptHandle, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SetOutfitInGameObjectDelayedImpl(ResourceKey resKey, ulong scriptHandle, [MarshalAs(UnmanagedType.Interface)] Delegate finshedCallback, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_CompleteDelayedModelSwapImpl(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_AbortDelayedModelSwapImpl(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SetBodyShapeInGameObjectImpl(float fat, float fit, float thin, float pregnant, ulong scriptHandle, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_GetOutfitInGameObjectImpl(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_AddObjectToBabyMakerSceneWindowImpl(uint winHandle, ulong scriptHandle, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_RemoveObjectFromBabyMakerSceneWindowImpl(uint winHandle, ulong scriptHandle, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_AddPieMenuTweakEvalNode(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SetPieMenuHeadScale(float headScale);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_IsSceneLoadedImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_FrameAllImpl(uint winHandle, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_FrameBoundImpl(uint winHandle, Vector3 min, Vector3 max, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_FrameHeadImpl(uint winHandle, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SetupSimHeadSceneImpl(uint winHandle, float cursorDeltaX, float cursorDeltaY, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_InitSceneImpl(uint winHandle, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SetCameraOrientationImpl(uint winHandle, float yaw, float pitch, float roll, float zoom);

	[DllImport("Sims3Common.dll")]
	private static extern CASPart CASUtils_CASPartLoadImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_FacialBlendLoadImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_FacialBlendGetNameImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_FacialBlendGetBlendTypeImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_FacialBlendGetRegionFlagsImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_FacialBlendFreeImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_FacialBlendSupportsAgeGenderSpeciesImpl(uint handle, uint flags);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_CompoundBlendLoadImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_CompoundBlendGetRegionImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_CompoundBlendGetNumBlendsImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_CompoundBlendGetAgeGenderImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_BlendUnitLoadImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern ulong CASUtils_BlendUnitGetLocalizationKeyImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_BlendUnitIsBidirectionalImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_BlendUnitGetNumBlendKeysImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_BlendUnitGetBlendKeyAtIndexImpl(uint handle, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_BlendUnitGetRegionImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_BlendUnitGetCategoryImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern int CASUtils_BlendUnitGetSortIndexImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_BlendUnitFreeImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_CompoundBlendGetNameImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern CompoundBlend.BlendInfo CASUtils_CompoundBlendGetBlendInfoImpl(uint handle, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_CompoundBlendFreeImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_SimOutfitLoadImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_SimOutfitUncacheImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_SimOutfitGetAgeGenderSpeciesImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_SimOutfitGetSkinToneKeyImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimOutfitGetSkinToneIndexImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimOutfitGetSecondaryNormalMapWeightImpl(uint handle, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_SimOutfitGetRigKeyImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimOutfitGetMorphWeightAImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimOutfitGetMorphWeightBImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimOutfitGetMorphWeightCImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimOutfitGetMorphWeightDImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimOutfitSetMorphWeightAImpl(uint handle, float amount);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimOutfitSetMorphWeightBImpl(uint handle, float amount);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimOutfitSetMorphWeightCImpl(uint handle, float amount);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimOutfitSetMorphWeightDImpl(uint handle, float amount);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimOutfitGetNumCurlsImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_SimOutfitGetFurMapImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float CASUtils_SimOutfitGetCurlPixelRadiusImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimOutfitSetNumCurlsImpl(uint handle, float amount);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimOutfitSetFurMapImpl(uint handle, ResourceKey value);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimOutfitSetCurlPixelRadiusImpl(uint handle, float amount);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_SimOutfitGetNumBlendsImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern SimOutfit.BlendInfo CASUtils_SimOutfitGetBlendInfoImpl(uint handle, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_SimOutfitGetNumPartsImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern CASPart CASUtils_SimOutfitGetPartImpl(uint handle, uint index);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_SimOutfitGetPartPresetImpl(uint handle, ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimOutfitSetPartPresetImpl(uint handle, ResourceKey key, [MarshalAs(UnmanagedType.LPWStr)] string presetString);

	[DllImport("Sims3Common.dll")]
	private static extern Vector3 CASUtils_SimOutfitGetHairBaseColorImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern Vector3 CASUtils_SimOutfitGetHairHaloLowColorImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern Vector3 CASUtils_SimOutfitGetHairHaloHighColorImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern ulong CASUtils_SimOutfitGetUniformComponentsImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimOutfitFreeImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_SimOutfitFreeUserOutfitImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimOutfitDumpImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimOutfitAddRefImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_GetRigKeyImpl(uint ageGenderSpecies);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_SimBuilderGetSkinToneRampKeyImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetHairBaseColorImpl(uint handle, Vector3 color);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetHairHaloLowColorImpl(uint handle, Vector3 color);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimBuilderSetHairHaloHighColorImpl(uint handle, Vector3 color);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_TextSearchCreateImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_TextSearchFreeImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_TextSearchAddKeywordImpl(uint handle, [MarshalAs(UnmanagedType.LPWStr)] string keyword, ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_TextSearchStartSearchImpl(uint handle, [MarshalAs(UnmanagedType.I1)] bool startsWith, [MarshalAs(UnmanagedType.LPWStr)] string searchText);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_TextSearchSearchImpl(uint handle, uint searchHandle, float timeLimit);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_TextSearchEndSearchImpl(uint handle, uint searchHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_TextSearchCountResultsImpl(uint handle, uint searchHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_TextSearchCountKeywordResultsImpl(uint handle, uint searchHandle);

	[DllImport("Sims3Common.dll")]
	private static extern CASPart CASUtils_TextSearchLookupResultImpl(uint handle, uint searchHandle, uint index);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_TextSearchLookupKeywordResultImpl(uint handle, uint searchHandle, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_GetNumSkinColorsImpl(ResourceKey key, uint flags);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_GetSkinColorGeneticImpl(ResourceKey key, uint flags, uint index);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_GetSkinColorDominantImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_GetSkinToneRampKeyImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_ApplyPresetToPartImpl(uint handle, CASPart part, [MarshalAs(UnmanagedType.LPWStr)] string designPreset);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_DesignPresetCompareImpl([MarshalAs(UnmanagedType.LPWStr)] string designPreset1, [MarshalAs(UnmanagedType.LPWStr)] string designPreset2);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_DesignPresetReplaceHairColorsImpl([MarshalAs(UnmanagedType.LPWStr)] string designPreset, [MarshalAs(UnmanagedType.SafeArray)] uint[] colors);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_DesignPresetMergeTattooTemplates([MarshalAs(UnmanagedType.LPWStr)] string pBaseTattooPreset, [MarshalAs(UnmanagedType.LPWStr)] string pTemplatePreset0, [MarshalAs(UnmanagedType.LPWStr)] string pTemplatePreset1, [MarshalAs(UnmanagedType.LPWStr)] string pTemplatePreset2, [MarshalAs(UnmanagedType.LPWStr)] string pTemplatePreset3, [MarshalAs(UnmanagedType.LPWStr)] string pTemplatePreset4);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_DesignPresetExtractTattooTemplate([MarshalAs(UnmanagedType.LPWStr)] string pBaseTattooPreset, [MarshalAs(UnmanagedType.LPWStr)] string pCompositePreset, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern int CASUtils_GetTattooTemplateIndex([MarshalAs(UnmanagedType.LPWStr)] string pCompositePreset, [MarshalAs(UnmanagedType.LPWStr)] string pTemplatePreset, [MarshalAs(UnmanagedType.I1)] bool bMatchColors);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_InjectTattooColors([MarshalAs(UnmanagedType.LPWStr)] string pPreset, [MarshalAs(UnmanagedType.SafeArray)] uint[] colors, uint colorIndex);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI4)]
	private static extern uint[] CASUtils_ExtractTattooColors([MarshalAs(UnmanagedType.LPWStr)] string pPreset, uint colorIndex);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI4)]
	private static extern uint[] CASUtils_ExtractEnabledLayerIndices([MarshalAs(UnmanagedType.LPWStr)] string pPreset);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_InjectTattooOpacity([MarshalAs(UnmanagedType.LPWStr)] string pPreset, uint color);

	[DllImport("Sims3Common.dll")]
	private static extern uint CASUtils_ExtractTattooOpacity([MarshalAs(UnmanagedType.LPWStr)] string pPreset);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_InjectTattooDimensions([MarshalAs(UnmanagedType.LPWStr)] string pPreset, [MarshalAs(UnmanagedType.SafeArray)] float[] dimensions);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)]
	private static extern float[] CASUtils_ExtractTattooDimensions([MarshalAs(UnmanagedType.LPWStr)] string pPreset, [MarshalAs(UnmanagedType.I1)] bool getPrimary);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CASUtils_CompareCompositeTattooPresets([MarshalAs(UnmanagedType.LPWStr)] string pPreset1, [MarshalAs(UnmanagedType.LPWStr)] string pPreset2);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_InjectHairColorsImpl(uint handle, CASPart part, [MarshalAs(UnmanagedType.LPWStr)] string designPreset, [MarshalAs(UnmanagedType.SafeArray)] uint[] colors);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string CASUtils_InjectEyebrowColorImpl(uint handle, CASPart part, [MarshalAs(UnmanagedType.LPWStr)] string designPreset, uint color);

	[DllImport("Sims3Common.dll")]
	private static extern CASPart CASUtils_GetCASPartImpl(uint ageGenderFlags, uint category, uint bodyType, [MarshalAs(UnmanagedType.I1)] bool randomize);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI4)]
	private static extern uint[] CASUtils_ExtractHairColorImpl([MarshalAs(UnmanagedType.LPWStr)] string designPreset);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI4)]
	private static extern uint[] CASUtils_ExtractEyebrowColorImpl([MarshalAs(UnmanagedType.LPWStr)] string designPreset);

	[DllImport("Sims3Common.dll")]
	private static extern CASPart CASUtils_FindReplacementPartForCategoryImpl(ResourceKey nakedKey, uint ageGenderSpecies, uint category, uint bodyType);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey CASUtils_GetDefaultThumbnailCASPartKeyImpl(uint ageGenderFlags, uint category, uint bodyType);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_ResetTextureImpl(ulong scriptHandle, [MarshalAs(UnmanagedType.I1)] bool bAllOfType);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_BuildSimForTCCImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_GenerateLowResTexturesFromTCCImpl([MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void CASUtils_SimServiceEnableTimeSlicing([MarshalAs(UnmanagedType.I1)] bool bEnable);

	public CASUtils()
	{
		AppDomain.CurrentDomain.SetData("CASUtils", this);
	}

	public byte[] GetColorInfoBytes(ResourceKey key)
	{
		return CASUtils_GetColorInfoBytesImpl(key);
	}

	public uint CreateTextSearch()
	{
		return CASUtils_TextSearchCreateImpl();
	}

	public void TextSearchAddKeyword(uint handle, string keyword, ResourceKey key)
	{
		CASUtils_TextSearchAddKeywordImpl(handle, keyword, key);
	}

	public uint TextSearchStartSearch(uint handle, bool startsWith, string searchText)
	{
		return CASUtils_TextSearchStartSearchImpl(handle, startsWith, searchText);
	}

	public bool TextSearchSearch(uint handle, uint searchHandle, float timeLimit)
	{
		return CASUtils_TextSearchSearchImpl(handle, searchHandle, timeLimit);
	}

	public void TextSearchEndSearch(uint handle, uint searchHandle)
	{
		CASUtils_TextSearchEndSearchImpl(handle, searchHandle);
	}

	public uint TextSearchCountResults(uint handle, uint searchHandle)
	{
		return CASUtils_TextSearchCountResultsImpl(handle, searchHandle);
	}

	public uint TextSearchCountKeywordResults(uint handle, uint searchHandle)
	{
		return CASUtils_TextSearchCountKeywordResultsImpl(handle, searchHandle);
	}

	public CASPart TextSearchLookupResult(uint handle, uint searchHandle, uint index)
	{
		return CASUtils_TextSearchLookupResultImpl(handle, searchHandle, index);
	}

	public string TextSearchLookupKeywordResult(uint handle, uint searchHandle, uint index)
	{
		return CASUtils_TextSearchLookupKeywordResultImpl(handle, searchHandle, index);
	}

	public void TextSearchFree(uint handle)
	{
		CASUtils_TextSearchFreeImpl(handle);
	}

	public uint CreatePartSearch()
	{
		return CASUtils_CreatePartSearchImpl();
	}

	public bool PartSearchMoveNext(uint handle)
	{
		return CASUtils_PartSearchMoveNextImpl(handle);
	}

	public CASPart PartSearchGetCurrent(uint handle)
	{
		return CASUtils_PartSearchGetCurrentImpl(handle);
	}

	public void PartSearchFreeSearch(uint handle)
	{
		CASUtils_PartSearchFreeSearchImpl(handle);
	}

	public bool PartDataIsUserPreset(ResourceKey partKey, uint presetId)
	{
		return CASUtils_PartDataIsUserPresetImpl(partKey, presetId);
	}

	public uint PartDataAddDesignPreset(ResourceKey partKey, string preset)
	{
		return CASUtils_PartDataAddDesignPresetImpl(partKey, preset);
	}

	public void PartDataRemoveDesignPreset(ResourceKey partKey, uint presetId)
	{
		CASUtils_PartDataRemoveDesignPresetImpl(partKey, presetId);
	}

	public string PartDataGetName(ResourceKey partKey)
	{
		return CASUtils_PartDataGetNameImpl(partKey);
	}

	public uint PartDataNumPresets(ResourceKey partKey)
	{
		return CASUtils_PartDataNumPresetsImpl(partKey);
	}

	public string PartDataGetPreset(ResourceKey partKey, uint index)
	{
		return CASUtils_PartDataGetPresetImpl(partKey, index);
	}

	public uint PartDataGetPresetId(ResourceKey partKey, uint index)
	{
		return CASUtils_PartDataGetPresetIdImpl(partKey, index);
	}

	public uint CreateKeySearch(uint keyType)
	{
		return CASUtils_CreateKeySearchImpl(keyType);
	}

	public bool KeySearchMoveNext(uint handle)
	{
		return CASUtils_KeySearchMoveNextImpl(handle);
	}

	public ResourceKey KeySearchGetCurrent(uint handle)
	{
		return CASUtils_KeySearchGetCurrentImpl(handle);
	}

	public void KeySearchFreeSearch(uint handle)
	{
		CASUtils_KeySearchFreeSearchImpl(handle);
	}

	public void SimsVisibleInCAS(bool visible)
	{
		CASUtils_SimsVisibleInCASImpl(visible);
	}

	public void CASCameraMode(bool activate)
	{
		CASUtils_CASCameraModeImpl(activate);
	}

	public float SetCameraPose(uint basePoseHash, uint closeUpPoseHash, float zoom, float zoomDelta, CASCameraLerp lerp)
	{
		return CASUtils_SetCameraPoseImpl(basePoseHash, closeUpPoseHash, zoom, zoomDelta, (uint)lerp);
	}

	public void SetCameraOffset(float x, float y, float z)
	{
		CASUtils_SetCameraOffsetImpl(x, y, z);
	}

	public uint SimBuilderCreate()
	{
		return CASUtils_SimBuilderCreateImpl();
	}

	public void SimBuilderFree(uint handle)
	{
		CASUtils_SimBuilderFreeImpl(handle);
	}

	public void SimBuilderSetAgeGenderSpecies(uint handle, CASAgeGenderFlags flags)
	{
		CASUtils_SimBuilderSetAgeGenderSpeciesImpl(handle, (uint)flags);
	}

	public void SimBuilderSetSkinTone(uint handle, ResourceKey key)
	{
		CASUtils_SimBuilderSetSkinToneImpl(handle, key);
	}

	public void SimBuilderSetSkinToneIndex(uint handle, float value)
	{
		CASUtils_SimBuilderSetSkinToneIndexImpl(handle, value);
	}

	public void SimBuilderSetSecondaryNormalMapWeight(uint handle, uint index, float value)
	{
		CASUtils_SimBuilderSetSecondaryNormalMapWeightImpl(handle, index, value);
	}

	public void SimBuilderClearParts(uint handle, bool bClearObjectId)
	{
		CASUtils_SimBuilderClearPartsImpl(handle, bClearObjectId, CallbackDelegate);
	}

	public bool SimBuilderAddPart(uint handle, ResourceKey partKey)
	{
		return CASUtils_SimBuilderAddPartImpl(handle, partKey, 0);
	}

	public bool SimBuilderAddPart(uint handle, CASPart part, int tbIndex)
	{
		return CASUtils_SimBuilderAddPartImpl(handle, part.Key, tbIndex);
	}

	public void SimBuilderRemovePart(uint handle, CASPart part)
	{
		CASUtils_SimBuilderRemovePartImpl(handle, part.Key);
	}

	public bool SimBuilderSetTextureBuilderIndex(uint handle, CASPart part, int tbIndex)
	{
		return false;
	}

	public void SimBuilderSetPartCompositor(uint HandleCollector, CASPart part, uint partType, bool isSpecular, uint compositorHash, byte[] data)
	{
		CASUtils_SimBuilderSetPartCompositorImpl(HandleCollector, part.Key, partType, isSpecular, compositorHash, data, CallbackDelegate);
	}

	public void SimBuilderSetPartPreset(uint handle, ResourceKey partKey, string presetString)
	{
		CASUtils_SimBuilderSetPartPresetImpl(handle, partKey, presetString);
	}

	public ResourceKey SimBuilderGetPatternKey(uint HandleCollector, CASPart part, uint compositorHash)
	{
		return CASUtils_SimBuilderGetPatternKeyImpl(HandleCollector, part.Key, compositorHash, CallbackDelegate);
	}

	public bool SimBuilderIsDirty(uint handle)
	{
		return CASUtils_SimBuilderGetIsDirtyImpl(handle);
	}

	public bool SimBuilderIsRigDirty(uint handle)
	{
		return CASUtils_SimBuilderGetIsRigDirtyImpl(handle);
	}

	public void SimBuilderBuildModel(uint handle, int detailLevel)
	{
		SimBuilderBuildModel(handle, detailLevel, 0u);
	}

	public void SimBuilderBuildModel(uint handle, int detailLevel, uint processLimit)
	{
		CASUtils_SimBuilderBuildModelImpl(handle, detailLevel, CallbackDelegate);
		if (!CASUtils_SimBuilderGetIsDirtyImpl(handle))
		{
			return;
		}
		bool flag = true;
		uint num = 0u;
		while (flag)
		{
			CASUtils_SimBuilderProcessModelImpl(handle, CallbackDelegate);
			object callbackResult = GetCallbackResult();
			if (callbackResult == null)
			{
				break;
			}
			flag = (bool)callbackResult;
			num++;
			if (processLimit != 0 && num >= processLimit)
			{
				break;
			}
		}
	}

	public bool SimBuilderCachePart(uint handle, ResourceKey partKey)
	{
		return CASUtils_SimBuilderCachePartImpl(handle, partKey);
	}

	public void SimBuilderUncachePart(uint handle, ResourceKey partKey)
	{
		CASUtils_SimBuilderUncachePartImpl(handle, partKey);
	}

	public bool SimBuilderResetAnimation(uint handle)
	{
		return CASUtils_SimBuilderResetAnimationImpl(handle);
	}

	public uint SimBuilderGetModelHandle(uint handle)
	{
		return CASUtils_SimBuilderGetModelHandleImpl(handle);
	}

	public uint SimBuilderGetTextureSize(uint handle)
	{
		return CASUtils_SimBuilderGetTextureSizeImpl(handle);
	}

	public void SimBuilderSetTextureSize(uint handle, uint size)
	{
		CASUtils_SimBuilderSetTextureSizeImpl(handle, size);
	}

	public void SimBuilderSetMorphWeightA(uint handle, float value)
	{
		CASUtils_SimBuilderSetMorphWeightAImpl(handle, value);
	}

	public void SimBuilderSetMorphWeightB(uint handle, float value)
	{
		CASUtils_SimBuilderSetMorphWeightBImpl(handle, value);
	}

	public void SimBuilderSetMorphWeightC(uint handle, float value)
	{
		CASUtils_SimBuilderSetMorphWeightCImpl(handle, value);
	}

	public void SimBuilderSetMorphWeightD(uint handle, float value)
	{
		CASUtils_SimBuilderSetMorphWeightDImpl(handle, value);
	}

	public float SimBuilderGetMorphWeightA(uint handle)
	{
		return CASUtils_SimBuilderGetMorphWeightAImpl(handle);
	}

	public float SimBuilderGetMorphWeightB(uint handle)
	{
		return CASUtils_SimBuilderGetMorphWeightBImpl(handle);
	}

	public float SimBuilderGetMorphWeightC(uint handle)
	{
		return CASUtils_SimBuilderGetMorphWeightCImpl(handle);
	}

	public float SimBuilderGetMorphWeightD(uint handle)
	{
		return CASUtils_SimBuilderGetMorphWeightDImpl(handle);
	}

	public void SimBuilderSetNumCurls(uint handle, float value)
	{
		CASUtils_SimBuilderSetNumCurlsImpl(handle, value);
	}

	public void SimBuilderSetFurMap(uint handle, ResourceKey value)
	{
		CASUtils_SimBuilderSetFurMapImpl(handle, value);
	}

	public void SimBuilderSetCurlPixelRadius(uint handle, float value)
	{
		CASUtils_SimBuilderSetCurlPixelRadiusImpl(handle, value);
	}

	public float SimBuilderGetNumCurls(uint handle)
	{
		return CASUtils_SimBuilderGetNumCurlsImpl(handle);
	}

	public ResourceKey SimBuilderGetFurMap(uint handle)
	{
		return CASUtils_SimBuilderGetFurMapImpl(handle);
	}

	public float SimBuilderGetCurlPixelRadius(uint handle)
	{
		return CASUtils_SimBuilderGetCurlPixelRadiusImpl(handle);
	}

	public ResourceKey SimBuilderSaveOutfit(uint handle, string packageName, bool cacheLODs, ulong uniformComponents)
	{
		return CASUtils_SimBuilderSaveOutfitImpl(handle, packageName, cacheLODs, uniformComponents);
	}

	public ResourceKey SimBuilderSaveUserOutfit(uint handle, ulong uniformComponents)
	{
		return CASUtils_SimBuilderSaveUserOutfitImpl(handle, uniformComponents);
	}

	public bool SimBuilderShareOutfit(uint handle, string packageName, string description, ulong uniformComponents)
	{
		return CASUtils_SimBuilderShareOutfitImpl(handle, packageName, description, uniformComponents);
	}

	public ResourceKey SimBuilderSaveSkinTonePreset(uint handle, string packageName)
	{
		return CASUtils_SimBuilderSaveSkinTonePresetImpl(handle, packageName);
	}

	public SkinTonePreset GetSkinTonePreset(ResourceKey key)
	{
		return CASUtils_GetSkinTonePresetImpl(key);
	}

	public ResourceKey SimBuilderSaveCompoundBlend(uint handle, uint region, string packageName)
	{
		return CASUtils_SimBuilderSaveCompoundBlendImpl(handle, region, packageName);
	}

	public void SimBuilderSavePartPreset(uint handle, ResourceKey partKey, string presetName, string preset)
	{
		CASUtils_SimBuilderSavePartPresetImpl(handle, partKey, presetName, preset);
	}

	public ResourceKey SimBuilderCacheOutfit(uint handle, string instanceName, ulong uniformComponents, bool bSimSave)
	{
		return CASUtils_SimBuilderCacheOutfitImpl(handle, instanceName, uniformComponents, bSimSave);
	}

	public void SimBuilderSetHighlightMode(uint handle, uint mode)
	{
		CASUtils_SimBuilderSetHighlightModeImpl(handle, mode);
	}

	public void SimBuilderSetHighlightIndex(uint handle, uint highlightIndex)
	{
		CASUtils_SimBuilderSetHighlightIndexImpl(handle, highlightIndex);
	}

	public void SimBuilderSetSelectionIndex(uint handle, uint selectionIndex)
	{
		CASUtils_SimBuilderSetSelectionIndexImpl(handle, selectionIndex);
	}

	public void SimBuilderGetBodyTypeAndRegionFromPickData(uint handle, int pickId, ref int bodyType, ref int region)
	{
		CASUtils_SimBuilderGetBodyTypeAndRegionFromPickDataImpl(handle, pickId, ref bodyType, ref region);
	}

	public uint SimBuilderGetPickDataFromBodyTypeAndRegion(uint handle, int bodyType, int region)
	{
		return CASUtils_SimBuilderGetPickDataFromBodyTypeAndRegionImpl(handle, bodyType, region);
	}

	public bool SimBuilderGetUseCompression(uint handle)
	{
		return CASUtils_SimBuilderGetUseCompressionImpl(handle);
	}

	public void SimBuilderSetUseCompression(uint handle, bool value)
	{
		CASUtils_SimBuilderSetUseCompressionImpl(handle, value);
	}

	public void SimBuilderSetCacheAtlases(uint handle, bool value)
	{
		CASUtils_SimBuilderSetCacheAtlasesImpl(handle, value);
	}

	public bool SimBuilderGetWaitForTextures(uint handle)
	{
		return CASUtils_SimBuilderGetWaitForTexturesImpl(handle);
	}

	public void SimBuilderSetWaitForTextures(uint handle, bool value)
	{
		CASUtils_SimBuilderSetWaitForTexturesImpl(handle, value);
	}

	public bool SimBuilderSetFacialBlend(uint handle, ResourceKey key, float amount)
	{
		return CASUtils_SimBuilderSetFacialBlendImpl(handle, key, amount);
	}

	public float SimBuilderGetFacialBlend(uint handle, ResourceKey key)
	{
		return CASUtils_SimBuilderGetFacialBlendImpl(handle, key);
	}

	public uint SimBuilderGetNumBones(uint handle)
	{
		return CASUtils_SimBuilderGetNumBonesImpl(handle);
	}

	public string SimBuilderGetBoneDelta(uint handle, uint index, ref Vector3 position, ref Quaternion orientation, ref Vector3 scale)
	{
		return CASUtils_SimBuilderGetBoneDeltaImpl(handle, index, ref position, ref orientation, ref scale);
	}

	public void SimBuilderAttachToSceneObject(uint handle, ObjectGuid objectId)
	{
		CASUtils_SimBuilderAttachToSceneObjectImpl(handle, objectId.Value);
	}

	public void SimBuilderSetupCASRoomObject(uint handle, ObjectGuid objectId)
	{
		CASUtils_SimBuilderSetupCASRoomObjectImpl(handle, objectId.Value);
	}

	public void SimBuilderApplyBoneDeltas(uint handle)
	{
		CASUtils_SimBuilderApplyBoneDeltasImpl(handle);
	}

	public void SimBuilderClearFacialBlends(uint handle)
	{
		CASUtils_SimBuilderClearFacialBlendsImpl(handle);
	}

	public void CASUtilsSetModelInGameObject(uint modelHandle, ObjectGuid scriptHandle)
	{
		CASUtils_SetModelInGameObjectImpl(modelHandle, scriptHandle.Value);
	}

	public void CASUtilsSetModelInGameObjectDelayed(uint modelHandle, ObjectGuid scriptHandle, Delegate finishedCallback)
	{
		CASUtils_SetModelInGameObjectDelayedImpl(modelHandle, scriptHandle.Value, finishedCallback);
	}

	public uint SimBuilderGetDiffuseTextureBuilder(uint handle, ResourceKey key)
	{
		return 0u;
	}

	public uint SimBuilderGetFabricTextureBuilder(uint handle, uint tbHandle, uint stepNum)
	{
		return 0u;
	}

	public int SimBuilderGetNumTextureBlenderSteps(uint handle, uint tbHandle)
	{
		return 0;
	}

	public uint SimBuilderGetTextureBlenderType(uint handle, uint tbHandle, uint stepNum)
	{
		return 0u;
	}

	public bool SimBuilderTextureBlenderStepIsVisible(uint handle, uint tbHandle, uint stepNum)
	{
		return false;
	}

	public void SimBuilderSetRotation(uint handle, uint tbHandle, uint stepNum, float rotation)
	{
	}

	public float SimBuilderGetRotation(uint handle, uint tbHandle, uint stepNum)
	{
		return 0f;
	}

	public void SimBuilderSetColor(uint handle, uint tbHandle, uint stepNum, uint color)
	{
	}

	public uint SimBuilderGetColor(uint handle, uint tbHandle, uint stepNum)
	{
		return 0u;
	}

	public void SimBuilderSetHSVToRGB(uint handle, uint tbHandle, uint stepNum, float shift0, float shift1, float shift2)
	{
	}

	public void SimBuilderGetHSVToRGB(uint handle, uint tbHandle, uint stepNum, ref float shift0, ref float shift1, ref float shift2)
	{
		shift0 = 0f;
		shift1 = 0f;
		shift2 = 0f;
	}

	public void SimBuilderSetFabric(uint handle, uint tbHandle, uint stepNum, ResourceKey key)
	{
	}

	public ResourceKey SimBuilderGetFabric(uint handle, uint tbHandle, uint stepNum)
	{
		return default;
	}

	public ResourceKey SimBuilderGetSkinToneRampKey(uint handle)
	{
		return CASUtils_SimBuilderGetSkinToneRampKeyImpl(handle);
	}

	public void SimBuilderSetHairBaseColor(uint handle, Vector3 color)
	{
		CASUtils_SimBuilderSetHairBaseColorImpl(handle, color);
	}

	public void SimBuilderSetHairHaloLowColor(uint handle, Vector3 color)
	{
		CASUtils_SimBuilderSetHairHaloLowColorImpl(handle, color);
	}

	public void SimBuilderSetHairHaloHighColor(uint handle, Vector3 color)
	{
		CASUtils_SimBuilderSetHairHaloHighColorImpl(handle, color);
	}

	public void CASUtilsSetOutfitInGameObject(ResourceKey resKey, ObjectGuid scriptHandle)
	{
		CASUtils_SetOutfitInGameObjectImpl(resKey, scriptHandle.Value, CallbackDelegate);
	}

	public void CASUtilsSetOutfitInGameObjectDelayed(ResourceKey resKey, ObjectGuid scriptHandle, Delegate finishedCallback)
	{
		CASUtils_SetOutfitInGameObjectDelayedImpl(resKey, scriptHandle.Value, finishedCallback, CallbackDelegate);
	}

	public void CASUtilsCompleteDelayedModelSwap(ObjectGuid scriptHandle)
	{
		CASUtils_CompleteDelayedModelSwapImpl(scriptHandle.Value);
	}

	public void CASUtilsAbortDelayedModelSwap(ObjectGuid scriptHandle)
	{
		CASUtils_AbortDelayedModelSwapImpl(scriptHandle.Value);
	}

	public void CASUtilsSetBodyShapeInGameObject(float fat, float fit, float thin, float pregnant, ObjectGuid scriptHandle)
	{
		CASUtils_SetBodyShapeInGameObjectImpl(fat, fit, thin, pregnant, scriptHandle.Value, CallbackDelegate);
	}

	public ResourceKey CASUtilsGetOutfitInGameObject(ObjectGuid scriptHandle)
	{
		return CASUtils_GetOutfitInGameObjectImpl(scriptHandle.Value);
	}

	public ResourceKey GetRigKey(uint ageGenderSpecies)
	{
		return CASUtils_GetRigKeyImpl(ageGenderSpecies);
	}

	public void AddObjectToBabyMakerSceneWindow(uint winHandle, ObjectGuid scriptHandle)
	{
		CASUtils_AddObjectToBabyMakerSceneWindowImpl(winHandle, scriptHandle.Value, CallbackDelegate);
	}

	public void RemoveObjectFromBabyMakerSceneWindow(uint winHandle, ObjectGuid scriptHandle)
	{
		CASUtils_RemoveObjectFromBabyMakerSceneWindowImpl(winHandle, scriptHandle.Value, CallbackDelegate);
	}

	public void AddPieMenuTweakEvalNodeToObject(ObjectGuid scriptHandle)
	{
		CASUtils_AddPieMenuTweakEvalNode(scriptHandle.Value);
	}

	public void SetPieMenuHeadScale(float headScale)
	{
		CASUtils_SetPieMenuHeadScale(headScale);
	}

	public bool IsSceneLoaded(uint winHandle)
	{
		return CASUtils_IsSceneLoadedImpl(winHandle);
	}

	public void FrameAll(uint winHandle)
	{
		CASUtils_FrameAllImpl(winHandle, CallbackDelegate);
	}

	public void FrameBound(uint winHandle, Vector3 min, Vector3 max)
	{
		CASUtils_FrameBoundImpl(winHandle, min, max, CallbackDelegate);
	}

	public void FrameHead(uint winHandle)
	{
		CASUtils_FrameHeadImpl(winHandle, CallbackDelegate);
	}

	public void SetupSimHeadScene(uint winHandle, float cursorDeltaX, float cursorDeltaY)
	{
		CASUtils_SetupSimHeadSceneImpl(winHandle, cursorDeltaX, cursorDeltaY, CallbackDelegate);
	}

	public bool InitScene(uint winHandle)
	{
		CASUtils_InitSceneImpl(winHandle, CallbackDelegate);
		object callbackResult = GetCallbackResult();
		if (callbackResult == null)
		{
			return false;
		}
		return (bool)callbackResult;
	}

	public void SetCameraOrientation(uint winHandle, float yaw, float pitch, float roll, float zoom)
	{
		CASUtils_SetCameraOrientationImpl(winHandle, yaw, pitch, roll, zoom);
	}

	public CASPart CASPartLoad(ResourceKey key)
	{
		return CASUtils_CASPartLoadImpl(key);
	}

	public uint FacialBlendLoad(ResourceKey key)
	{
		return CASUtils_FacialBlendLoadImpl(key);
	}

	public string FacialBlendGetName(uint handle)
	{
		return CASUtils_FacialBlendGetNameImpl(handle);
	}

	public uint FacialBlendGetBlendType(uint handle)
	{
		return CASUtils_FacialBlendGetBlendTypeImpl(handle);
	}

	public uint FacialBlendGetRegionFlags(uint handle)
	{
		return CASUtils_FacialBlendGetRegionFlagsImpl(handle);
	}

	public void FacialBlendFree(uint handle)
	{
		CASUtils_FacialBlendFreeImpl(handle);
	}

	public bool FacialBlendSupportsAgeGenderSpecies(uint handle, CASAgeGenderFlags flags)
	{
		return CASUtils_FacialBlendSupportsAgeGenderSpeciesImpl(handle, (uint)flags);
	}

	public uint CompoundBlendLoad(ResourceKey key)
	{
		return CASUtils_CompoundBlendLoadImpl(key);
	}

	public uint CompoundBlendGetRegion(uint handle)
	{
		return CASUtils_CompoundBlendGetRegionImpl(handle);
	}

	public uint CompoundBlendGetNumBlends(uint handle)
	{
		return CASUtils_CompoundBlendGetNumBlendsImpl(handle);
	}

	public uint CompoundBlendGetAgeGender(uint handle)
	{
		return CASUtils_CompoundBlendGetAgeGenderImpl(handle);
	}

	public string CompoundBlendGetName(uint handle)
	{
		return CASUtils_CompoundBlendGetNameImpl(handle);
	}

	public CompoundBlend.BlendInfo CompoundBlendGetBlendInfo(uint handle, uint index)
	{
		return CASUtils_CompoundBlendGetBlendInfoImpl(handle, index);
	}

	public void CompoundBlendFree(uint handle)
	{
		CASUtils_CompoundBlendFreeImpl(handle);
	}

	public uint BlendUnitLoad(ResourceKey key)
	{
		return CASUtils_BlendUnitLoadImpl(key);
	}

	public ulong BlendUnitGetLocalizationKey(uint handle)
	{
		return CASUtils_BlendUnitGetLocalizationKeyImpl(handle);
	}

	public bool BlendUnitIsBidirectional(uint handle)
	{
		return CASUtils_BlendUnitIsBidirectionalImpl(handle);
	}

	public uint BlendUnitGetNumBlendKeys(uint handle)
	{
		return CASUtils_BlendUnitGetNumBlendKeysImpl(handle);
	}

	public ResourceKey BlendUnitGetBlendKeyAtIndex(uint handle, uint index)
	{
		return CASUtils_BlendUnitGetBlendKeyAtIndexImpl(handle, index);
	}

	public uint BlendUnitGetRegion(uint handle)
	{
		return CASUtils_BlendUnitGetRegionImpl(handle);
	}

	public uint BlendUnitGetCategory(uint handle)
	{
		return CASUtils_BlendUnitGetCategoryImpl(handle);
	}

	public int BlendUnitGetSortIndex(uint handle)
	{
		return CASUtils_BlendUnitGetSortIndexImpl(handle);
	}

	public void BlendUnitFree(uint handle)
	{
		CASUtils_BlendUnitFreeImpl(handle);
	}

	public bool SimOutfitUncache(ResourceKey key)
	{
		return CASUtils_SimOutfitUncacheImpl(key);
	}

	public uint SimOutfitLoad(ResourceKey key)
	{
		return CASUtils_SimOutfitLoadImpl(key);
	}

	public uint SimOutfitGetAgeGenderSpecies(uint handle)
	{
		return CASUtils_SimOutfitGetAgeGenderSpeciesImpl(handle);
	}

	public ResourceKey SimOutfitGetSkinToneKey(uint handle)
	{
		return CASUtils_SimOutfitGetSkinToneKeyImpl(handle);
	}

	public float SimOutfitGetSkinToneIndex(uint handle)
	{
		return CASUtils_SimOutfitGetSkinToneIndexImpl(handle);
	}

	public float SimOutfitGetSecondaryNormalMapWeight(uint handle, uint index)
	{
		return CASUtils_SimOutfitGetSecondaryNormalMapWeightImpl(handle, index);
	}

	public ResourceKey SimOutfitGetRigKey(uint handle)
	{
		return CASUtils_SimOutfitGetRigKeyImpl(handle);
	}

	public float SimOutfitGetMorphWeightA(uint handle)
	{
		return CASUtils_SimOutfitGetMorphWeightAImpl(handle);
	}

	public float SimOutfitGetMorphWeightB(uint handle)
	{
		return CASUtils_SimOutfitGetMorphWeightBImpl(handle);
	}

	public float SimOutfitGetMorphWeightC(uint handle)
	{
		return CASUtils_SimOutfitGetMorphWeightCImpl(handle);
	}

	public float SimOutfitGetMorphWeightD(uint handle)
	{
		return CASUtils_SimOutfitGetMorphWeightDImpl(handle);
	}

	public void SimOutfitSetMorphWeightA(uint handle, float amount)
	{
		CASUtils_SimOutfitSetMorphWeightAImpl(handle, amount);
	}

	public void SimOutfitSetMorphWeightB(uint handle, float amount)
	{
		CASUtils_SimOutfitSetMorphWeightBImpl(handle, amount);
	}

	public void SimOutfitSetMorphWeightC(uint handle, float amount)
	{
		CASUtils_SimOutfitSetMorphWeightCImpl(handle, amount);
	}

	public void SimOutfitSetMorphWeightD(uint handle, float amount)
	{
		CASUtils_SimOutfitSetMorphWeightDImpl(handle, amount);
	}

	public float SimOutfitGetNumCurls(uint handle)
	{
		return CASUtils_SimOutfitGetNumCurlsImpl(handle);
	}

	public ResourceKey SimOutfitGetFurMap(uint handle)
	{
		return CASUtils_SimOutfitGetFurMapImpl(handle);
	}

	public float SimOutfitGetCurlPixelRadius(uint handle)
	{
		return CASUtils_SimOutfitGetCurlPixelRadiusImpl(handle);
	}

	public void SimOutfitSetNumCurls(uint handle, float amount)
	{
		CASUtils_SimOutfitSetNumCurlsImpl(handle, amount);
	}

	public void SimOutfitSetFurMap(uint handle, ResourceKey value)
	{
		CASUtils_SimOutfitSetFurMapImpl(handle, value);
	}

	public void SimOutfitSetCurlPixelRadius(uint handle, float amount)
	{
		CASUtils_SimOutfitSetCurlPixelRadiusImpl(handle, amount);
	}

	public uint SimOutfitGetNumBlends(uint handle)
	{
		return CASUtils_SimOutfitGetNumBlendsImpl(handle);
	}

	public SimOutfit.BlendInfo SimOutfitGetBlendInfo(uint handle, uint index)
	{
		return CASUtils_SimOutfitGetBlendInfoImpl(handle, index);
	}

	public uint SimOutfitGetNumParts(uint handle)
	{
		return CASUtils_SimOutfitGetNumPartsImpl(handle);
	}

	public CASPart SimOutfitGetPart(uint handle, uint index)
	{
		return CASUtils_SimOutfitGetPartImpl(handle, index);
	}

	public string SimOutfitGetPartPreset(uint handle, ResourceKey partKey)
	{
		return CASUtils_SimOutfitGetPartPresetImpl(handle, partKey);
	}

	public void SimOutfitSetPartPreset(uint handle, ResourceKey partKey, string presetString)
	{
		CASUtils_SimOutfitSetPartPresetImpl(handle, partKey, presetString);
	}

	public Vector3 SimOutfitGetHairBaseColor(uint handle)
	{
		return CASUtils_SimOutfitGetHairBaseColorImpl(handle);
	}

	public Vector3 SimOutfitGetHairHaloLowColor(uint handle)
	{
		return CASUtils_SimOutfitGetHairHaloLowColorImpl(handle);
	}

	public Vector3 SimOutfitGetHairHaloHighColor(uint handle)
	{
		return CASUtils_SimOutfitGetHairHaloHighColorImpl(handle);
	}

	public ulong SimOutfitGetUniformComponents(uint handle)
	{
		return CASUtils_SimOutfitGetUniformComponentsImpl(handle);
	}

	public void SimOutfitFree(uint handle)
	{
		CASUtils_SimOutfitFreeImpl(handle);
	}

	public void SimOutfitDump(uint handle)
	{
		CASUtils_SimOutfitDumpImpl(handle);
	}

	public bool SimOutfitFreeUserOutfit(ResourceKey key)
	{
		return CASUtils_SimOutfitFreeUserOutfitImpl(key);
	}

	public void SimOutfitAddRef(ResourceKey key)
	{
		CASUtils_SimOutfitAddRefImpl(key);
	}

	public bool GetSkinColorDominant(ResourceKey key)
	{
		return CASUtils_GetSkinColorDominantImpl(key);
	}

	public uint GetNumSkinColors(ResourceKey key, uint flags)
	{
		return CASUtils_GetNumSkinColorsImpl(key, flags);
	}

	public bool GetSkinColorGenetic(ResourceKey key, uint flags, uint index)
	{
		return CASUtils_GetSkinColorGeneticImpl(key, flags, index);
	}

	public ResourceKey GetSkinToneRampKey(ResourceKey key)
	{
		return CASUtils_GetSkinToneRampKeyImpl(key);
	}

	public bool ApplyPresetToPart(uint simBuilderHandle, CASPart part, string designPreset)
	{
		return CASUtils_ApplyPresetToPartImpl(simBuilderHandle, part, designPreset);
	}

	public bool DesignPresetCompare(string designPreset1, string designPreset2)
	{
		return CASUtils_DesignPresetCompareImpl(designPreset1, designPreset2);
	}

	public string ReplaceHairColors(string designPreset, uint[] colors)
	{
		string text = CASUtils_DesignPresetReplaceHairColorsImpl(designPreset, colors);
		if (text != null)
		{
			return text;
		}
		return string.Empty;
	}

	public string MergeTattooTemplates(string baseTattooPreset, string[] templatePresets)
	{
		string text = CASUtils_DesignPresetMergeTattooTemplates(baseTattooPreset, templatePresets[0], templatePresets[1], templatePresets[2], templatePresets[3], templatePresets[4]);
		if (text != null)
		{
			return text;
		}
		return string.Empty;
	}

	public bool CompareCompositeTattooPresets(string preset1, string preset2)
	{
		return CASUtils_CompareCompositeTattooPresets(preset1, preset2);
	}

	public string ExtractTattooTemplate(string baseTattooPreset, string compositeTattooPreset, uint index)
	{
		return CASUtils_DesignPresetExtractTattooTemplate(baseTattooPreset, compositeTattooPreset, index);
	}

	public int GetTattooTemplateIndex(string compositePreset, string templatePreset, bool matchColors)
	{
		return CASUtils_GetTattooTemplateIndex(compositePreset, templatePreset, matchColors);
	}

	public string InjectTattooColors(string preset, uint[] colors, uint colorIndex)
	{
		return CASUtils_InjectTattooColors(preset, colors, colorIndex);
	}

	public uint[] ExtractTattooColors(string preset, uint colorIndex)
	{
		return CASUtils_ExtractTattooColors(preset, colorIndex);
	}

	public uint[] ExtractEnabledLayerIndices(string preset)
	{
		return CASUtils_ExtractEnabledLayerIndices(preset);
	}

	public string InjectTattooOpacity(string preset, uint color)
	{
		return CASUtils_InjectTattooOpacity(preset, color);
	}

	public uint ExtractTattooOpacity(string preset)
	{
		return CASUtils_ExtractTattooOpacity(preset);
	}

	public string InjectTattooDimensions(string preset, float[] dimensions)
	{
		return CASUtils_InjectTattooDimensions(preset, dimensions);
	}

	public float[] ExtractTattooDimensions(string preset, bool getPrimary)
	{
		return CASUtils_ExtractTattooDimensions(preset, getPrimary);
	}

	public string InjectHairColors(uint simBuilderHandle, CASPart part, string designPreset, uint[] colors)
	{
		string text = CASUtils_InjectHairColorsImpl(simBuilderHandle, part, designPreset, colors);
		if (text != null)
		{
			return text;
		}
		return string.Empty;
	}

	public string InjectEyebrowColor(uint simBuilderHandle, CASPart part, string designPreset, uint color)
	{
		string text = CASUtils_InjectEyebrowColorImpl(simBuilderHandle, part, designPreset, color);
		if (text != null)
		{
			return text;
		}
		return string.Empty;
	}

	public CASPart GetCASPart(uint ageGenderSpecies, uint category, uint bodyType, bool randomize)
	{
		return CASUtils_GetCASPartImpl(ageGenderSpecies, category, bodyType, randomize);
	}

	public uint[] ExtractHairColor(string designPreset)
	{
		return CASUtils_ExtractHairColorImpl(designPreset);
	}

	public uint[] ExtractEyebrowColor(string designPreset)
	{
		return CASUtils_ExtractEyebrowColorImpl(designPreset);
	}

	public CASPart FindReplacementPartForCategory(ResourceKey nakedKey, uint ageGenderSpecies, uint category, uint bodyType)
	{
		return CASUtils_FindReplacementPartForCategoryImpl(nakedKey, ageGenderSpecies, category, bodyType);
	}

	public ResourceKey GetDefaultThumbnailCASPartKey(uint ageGenderFlags, uint category, uint bodyType)
	{
		return CASUtils_GetDefaultThumbnailCASPartKeyImpl(ageGenderFlags, category, bodyType);
	}

	public void ResetTexture(ObjectGuid scriptHandle, bool bAllOfType)
	{
		CASUtils_ResetTextureImpl(scriptHandle.Value, bAllOfType);
	}

	public void BuildSimForTCC(uint handle)
	{
		CASUtils_BuildSimForTCCImpl(handle);
	}

	public void GenerateLowResTexturesFromTCC()
	{
		CASUtils_GenerateLowResTexturesFromTCCImpl(CallbackDelegate);
	}

	public void SimServiceEnableTimeSlicing(bool bEnable)
	{
		CASUtils_SimServiceEnableTimeSlicing(bEnable);
	}

	protected override void OnAbortCallbackResult(object value)
	{
	}
}
