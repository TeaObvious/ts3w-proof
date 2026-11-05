using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class UserToolUtils : IUserToolUtils
{
	private delegate void BuildBuyGenericCallback(uint funcID, uint toolID, uint productHandle);

	private BuildBuyGenericCallback mBuildBuyGenericCallbackDelegate;

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_InitUserToolManagerImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_ShutdownUserToolManagerImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_ToolInputGenericImpl(uint inputID, float floatParam1, float floatParam2, int intParam1, int intParam2);

	[DllImport("Sims3Common.dll")]
	private static extern uint UserToolUtils_GetProductCategoryImpl(uint productHandle, uint type);

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_UserToolGenericImpl(uint funcID, ulong productInstanceID, uint productGroupID, uint productTypeID, uint presetID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UserToolUtils_SetCurrentUserToolImpl(int toolID, ResourceKey arg1, ResourceKey arg2, ResourceKey arg3, [MarshalAs(UnmanagedType.LPWStr)] string arg4, uint flags);

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_SetUserToolModeImpl(uint mode);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string UserToolUtils_ProductGenericImpl(uint productHandle, uint funcID, ref uint retUint32, ref ulong instance, ref uint group, ref uint type, ref float retFloat);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string UserToolUtils_FeaturedItemGenericImpl(ulong productHandle, uint funcID, uint arg0, ref uint retUint32, ref ulong instance, ref uint group, ref uint type, ref float retFloat, ref ulong retUint64);

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_OnCloseImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_FlushCommandQueues();

	[DllImport("Sims3Common.dll")]
	private static extern uint UserToolUtils_GetProductImpl(uint productType, ulong instanceID, uint groupID, uint typeID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern uint[] UserToolUtils_GetProductSetImpl(uint productType, uint productSetID);

	[DllImport("Sims3Common.dll")]
	private static extern uint UserToolUtils_GetPresetIdFromProductAndStringImpl(uint productHandle, [MarshalAs(UnmanagedType.LPWStr)] string presetStr, [MarshalAs(UnmanagedType.I1)] bool bAllowApproxMatch);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern uint[] UserToolUtils_GetProductListImpl(uint productType);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern uint[] UserToolUtils_GetTerrainProductListByCategoryImpl(uint category);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern uint[] UserToolUtils_GetWallPatternProductListByTypeImpl(uint subsortType);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern uint[] UserToolUtils_GetWallPatternPresetListByTypeImpl(uint subsortType);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern uint[] UserToolUtils_GetFloorPatternProductListByTypeImpl(uint subsortType);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern uint[] UserToolUtils_GetFloorPatternPresetListByTypeImpl(uint subsortType);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern uint[] UserToolUtils_GetDeckProductListByTypeImpl(uint subsortType, int subcatType);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern uint[] UserToolUtils_GetRoofProductListImpl(bool isDiagonal);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string UserToolUtils_GetCollectionListImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern uint[] UserToolUtils_GetCollectionPresetListImpl(ulong collectionId);

	[DllImport("Sims3Common.dll")]
	private static extern ulong UserToolUtils_CreateNewCollectionImpl([In][MarshalAs(UnmanagedType.LPWStr)] string collectionName, uint flags, ulong iconInstanceID, uint iconGroupID, uint iconTypeID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UserToolUtils_ModifyCollectionInfoImpl(ulong collectionId, [In][MarshalAs(UnmanagedType.LPWStr)] string collectionName, uint flags, ulong iconInstanceID, uint iconGroupID, uint iconTypeID);

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_DeleteCollectionImpl(ulong collectionId);

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_UpdateItemInCollectionImpl(bool bAdd, ulong collectionId, ulong instanceID, uint groupID, uint typeID, uint presetId);

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_SetCollectionOrderImpl([MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] newOrder);

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_SetItemOrderInCollectionImpl(ulong collectionId, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] itemKeys, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI4)] uint[] itemPresetIds);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UserToolUtils_IsBlueprintOnLotImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_DeleteBlueprintsOnLotImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern uint[] UserToolUtils_GetObjectProductListFilteredImpl(uint buyCategoryFlag, uint buildCategoryFlag, ulong buySubCategoryFlag, ulong buySubCategory2Flag, ulong buyRoomSubCategoryFlag, ulong excludeBuyRoomSubCategoryFlag, uint includeRoomFlag, uint excludeRoomFlag);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern ulong[] UserToolUtils_GetFeaturedItemsListImpl(uint productType);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern ulong[] UserToolUtils_GetFeaturedMainMenuItemsListImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern ulong[] UserToolUtils_GetTNSFeatureItemImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern ulong[] UserToolUtils_GetTNSListFeatureItemsImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern ulong[] UserToolUtils_GetFeaturedItemsListFilteredImpl(uint buyCategoryFlag, uint buildCategoryFlag, ulong buySubCategoryFlag, ulong buySubCategoryFlag2, ulong buyRoomSubCategoryFlag, ulong excludeBuyRoomSubCategoryFlag, uint includeRoomFlag, uint excludeRoomFlag);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern ulong[] UserToolUtils_GetFeaturedCASItemsListFilteredImpl(uint bodyPart, uint outfitTypeFlags, uint ageGenderFlags, uint numNonSetItems, bool isHat);

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_TryBuyingStoreFeaturedItemImpl(ulong itemId);

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_MainMenuFeaturedSetUpdateImpl(ulong itemId);

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_IncViewCountStoreFeaturedItemImpl(ulong itemId);

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_SaveViewCountStoreFeaturedItemImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UserToolUtils_ShouldShowFeaturedItemTNSImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UserToolUtils_ShouldShowSingleFeaturedItemTNSFirstImpl();

	[DllImport("Sims3Common.dll")]
	private static extern uint UserToolUtils_GetSimPointBalanceImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_ForwardUserToolMouseEventImpl(uint eventType, float x, float y, uint button, uint modifiers);

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_ForwardUserToolTriggerEventImpl(uint action, uint triggerCode);

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_SetBuildBuyGenericCallbackImpl([MarshalAs(UnmanagedType.Interface)] Delegate pCallback);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UserToolUtils_IsCatalogLoadedImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_SetBuildModePriceScaleImpl(float s);

	[DllImport("Sims3Common.dll")]
	private static extern float UserToolUtils_GetBuildModePriceScaleImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_SetBuyModePriceScaleImpl(float s);

	[DllImport("Sims3Common.dll")]
	private static extern float UserToolUtils_GetBuyModePriceScaleImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void UserToolUtils_SetElectronicsPriceScaleImpl(float s);

	[DllImport("Sims3Common.dll")]
	private static extern float UserToolUtils_GetElectronicsPriceScaleImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UserToolUtils_CheckObjectPlacementImpl(uint productHandle, uint checkForType);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern uint[] UserToolUtils_GetObjectProductPresetIdListImpl(uint typeID, ulong instanceID, uint groupID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string UserToolUtils_GetPresetStringImpl(uint typeID, ulong instanceID, uint groupID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UserToolUtils_GetMoodletIconInfoImpl(uint typeID, ulong instanceID, uint groupID, ref uint iconId, ref uint iconDegree);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern uint[] UserToolUtils_GetMoodletEffectTextIdsImpl(uint typeID, ulong instanceID, uint groupID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern uint[] UserToolUtils_GetMoodletEffectTextValuesImpl(uint typeID, ulong instanceID, uint groupID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string UserToolUtils_CheckDeleteObjectImpl(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UserToolUtils_TerrainSculptToolActiveImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UserToolUtils_TerrainPaintToolActiveImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UserToolUtils_IsUserToolBusyImpl();

	public UserToolUtils()
	{
		AppDomain.CurrentDomain.SetData("UserToolUtils", this);
		mBuildBuyGenericCallbackDelegate = ProcessBuildBuyGenericCallback;
		UserToolUtils_SetBuildBuyGenericCallbackImpl(mBuildBuyGenericCallbackDelegate);
	}

	public void InitUserToolManager()
	{
		UserToolUtils_InitUserToolManagerImpl();
	}

	public void ShutdownUserToolManager()
	{
		UserToolUtils_ShutdownUserToolManagerImpl();
	}

	public void ToolInputGeneric(uint inputID, float floatParam1, float floatParam2, int intParam1, int intParam2)
	{
		UserToolUtils_ToolInputGenericImpl(inputID, floatParam1, floatParam2, intParam1, intParam2);
	}

	public void UserToolGeneric(uint funcID, ResourceKey productKey, uint presetID)
	{
		UserToolUtils_UserToolGenericImpl(funcID, productKey.InstanceId, productKey.GroupId, productKey.TypeId, presetID);
	}

	public bool SetCurrentUserTool(int toolID, ResourceKey arg1, ResourceKey arg2, ResourceKey arg3, string arg4, uint flags)
	{
		return UserToolUtils_SetCurrentUserToolImpl(toolID, arg1, arg2, arg3, arg4, flags);
	}

	public void SetUserToolMode(uint mode)
	{
		UserToolUtils_SetUserToolModeImpl(mode);
	}

	public string ProductGeneric(uint productHandle, uint funcID, ref uint retUint32, ref ResourceKey retResKey, ref float retFloat)
	{
		ulong instance = retResKey.InstanceId;
		uint group = retResKey.GroupId;
		uint type = retResKey.TypeId;
		string text = UserToolUtils_ProductGenericImpl(productHandle, funcID, ref retUint32, ref instance, ref group, ref type, ref retFloat);
		retResKey.InstanceId = instance;
		retResKey.GroupId = group;
		retResKey.TypeId = type;
		if (text == null)
		{
			return string.Empty;
		}
		return text;
	}

	public string FeaturedItemGeneric(ulong productHandle, uint funcID, uint arg0, ref uint retUint32, ref ResourceKey retResKey, ref float retFloat, ref ulong retUint64)
	{
		ulong instance = retResKey.InstanceId;
		uint group = retResKey.GroupId;
		uint type = retResKey.TypeId;
		string text = UserToolUtils_FeaturedItemGenericImpl(productHandle, funcID, arg0, ref retUint32, ref instance, ref group, ref type, ref retFloat, ref retUint64);
		retResKey.InstanceId = instance;
		retResKey.GroupId = group;
		retResKey.TypeId = type;
		if (text == null)
		{
			return string.Empty;
		}
		return text;
	}

	public string GetFeatureItemProductName(ulong itemId)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		return FeaturedItemGeneric(itemId, 0u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
	}

	public string GetFeatureItemProductDescription(ulong itemId)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		return FeaturedItemGeneric(itemId, 1u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
	}

	public string GetFeatureItemTNSCustomText(ulong itemId)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		return FeaturedItemGeneric(itemId, 21u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
	}

	public string GetFeatureItemProductSalesInfo(ulong itemId)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		return FeaturedItemGeneric(itemId, 6u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
	}

	public uint GetFeatureItemProductPrice(ulong itemId)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		FeaturedItemGeneric(itemId, 2u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
		return retUint;
	}

	public uint GetFeatureItemProductScore(ulong itemId)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		FeaturedItemGeneric(itemId, 3u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
		return retUint;
	}

	public uint GetFeatureItemProductNumPresets(ulong itemId)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		FeaturedItemGeneric(itemId, 4u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
		return retUint;
	}

	public ResourceKey GetFeatureItemProductPresetKey(ulong itemId, uint presetIndex)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		FeaturedItemGeneric(itemId, 5u, presetIndex, ref retUint, ref retResKey, ref retFloat, ref retUint2);
		return retResKey;
	}

	public uint GetFeatureItemProductIsASet(ulong itemId)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		FeaturedItemGeneric(itemId, 11u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
		return retUint;
	}

	public uint GetFeatureItemProductIsCAS(ulong itemId)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		FeaturedItemGeneric(itemId, 12u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
		return retUint;
	}

	public uint GetFeatureItemNumInSet(ulong itemId)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		FeaturedItemGeneric(itemId, 13u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
		return retUint;
	}

	public ulong GetFeatureItemSetItemId(ulong itemId, uint index)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		FeaturedItemGeneric(itemId, 13u, index, ref retUint, ref retResKey, ref retFloat, ref retUint2);
		return retUint2;
	}

	public void GetMoodletIconFlagAndDegree(ulong itemId, ref uint iconFlag, ref uint iconDegree)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		FeaturedItemGeneric(itemId, 7u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
		iconFlag = retUint;
		iconDegree = retResKey.TypeId;
	}

	public void GetMoodletTextInfoAndDegree(ulong itemId, uint moodletIndex, ref uint flag, ref uint degree)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		FeaturedItemGeneric(itemId, 8u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
		flag = retUint;
		degree = retResKey.TypeId;
	}

	public uint GetMoodletCount(ulong itemId)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		FeaturedItemGeneric(itemId, 9u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
		return retUint;
	}

	public string GetFeaturedWorldFileName(ulong itemId)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		return FeaturedItemGeneric(itemId, 16u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
	}

	public string GetFeaturedBBSetURLName(ulong itemId)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		return FeaturedItemGeneric(itemId, 19u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
	}

	public void GetFeaturedWorldMetaData(ulong itemId, ref uint numLots, ref uint numResidentialLots, ref uint numOccupiedLots, ref uint numCommercialLots, ref uint numSims)
	{
		uint retUint = 0u;
		ResourceKey retResKey = new ResourceKey(0uL, 0u, 0u);
		float retFloat = 0f;
		ulong retUint2 = 0uL;
		FeaturedItemGeneric(itemId, 17u, 0u, ref retUint, ref retResKey, ref retFloat, ref retUint2);
		numLots = retUint;
		numResidentialLots = retResKey.TypeId;
		numCommercialLots = (uint)(retResKey.InstanceId & 0xFFFFFFFFu);
		numOccupiedLots = (uint)(retResKey.InstanceId >> 32);
		numSims = retResKey.GroupId;
	}

	public uint GetProductCategory(uint productHandle, uint productType)
	{
		return UserToolUtils_GetProductCategoryImpl(productHandle, productType);
	}

	public void OnClose()
	{
		UserToolUtils_OnCloseImpl();
	}

	public void FlushCommandQueues()
	{
		UserToolUtils_FlushCommandQueues();
	}

	public uint GetProduct(uint productType, ResourceKey resKey)
	{
		return UserToolUtils_GetProductImpl(productType, resKey.InstanceId, resKey.GroupId, resKey.TypeId);
	}

	public uint[] GetProductSet(uint productType, uint productSetID)
	{
		uint[] array = UserToolUtils_GetProductSetImpl(productType, productSetID);
		if (array == null)
		{
			return new uint[0];
		}
		return array;
	}

	public uint GetPresetIdFromProductAndString(uint productHandle, string preset, bool bAllowApproxMatch)
	{
		return UserToolUtils_GetPresetIdFromProductAndStringImpl(productHandle, preset, bAllowApproxMatch);
	}

	public uint[] GetProductList(uint productType)
	{
		uint[] array = UserToolUtils_GetProductListImpl(productType);
		if (array == null)
		{
			return new uint[0];
		}
		return array;
	}

	public uint[] GetTerrainProductListByCategory(uint category)
	{
		uint[] array = UserToolUtils_GetTerrainProductListByCategoryImpl(category);
		if (array == null)
		{
			return new uint[0];
		}
		return array;
	}

	public uint[] GetWallPatternProductListByType(uint wallPatternType)
	{
		uint[] array = UserToolUtils_GetWallPatternProductListByTypeImpl(wallPatternType);
		if (array == null)
		{
			return new uint[0];
		}
		return array;
	}

	public uint[] GetWallPatternPresetListByType(uint wallPatternType)
	{
		uint[] array = UserToolUtils_GetWallPatternPresetListByTypeImpl(wallPatternType);
		if (array == null)
		{
			return new uint[0];
		}
		return array;
	}

	public uint[] GetFloorPatternProductListByType(uint floorPatternType)
	{
		uint[] array = UserToolUtils_GetFloorPatternProductListByTypeImpl(floorPatternType);
		if (array == null)
		{
			return new uint[0];
		}
		return array;
	}

	public uint[] GetFloorPatternPresetListByType(uint floorPatternType)
	{
		uint[] array = UserToolUtils_GetFloorPatternPresetListByTypeImpl(floorPatternType);
		if (array == null)
		{
			return new uint[0];
		}
		return array;
	}

	public uint[] GetDeckProductListByType(uint deckType, int subcatType)
	{
		uint[] array = UserToolUtils_GetDeckProductListByTypeImpl(deckType, subcatType);
		if (array == null)
		{
			return new uint[0];
		}
		return array;
	}

	public uint[] GetRoofProductList(bool isDiagonal)
	{
		uint[] array = UserToolUtils_GetRoofProductListImpl(isDiagonal);
		if (array == null)
		{
			return new uint[0];
		}
		return array;
	}

	public string[] GetCollectionList()
	{
		string text = UserToolUtils_GetCollectionListImpl();
		if (text != null && text.Length > 0)
		{
			return text.Split('\u0019');
		}
		return null;
	}

	public uint[] GetCollectionPresetList(ulong collectionId)
	{
		uint[] array = UserToolUtils_GetCollectionPresetListImpl(collectionId);
		if (array == null)
		{
			return new uint[0];
		}
		return array;
	}

	public ulong CreateNewCollection(string collectionName, uint flags, ResourceKey iconKey)
	{
		return UserToolUtils_CreateNewCollectionImpl(collectionName, flags, iconKey.InstanceId, iconKey.GroupId, iconKey.TypeId);
	}

	public bool ModifyCollectionInfo(ulong collectionId, string collectionName, uint flags, ResourceKey iconKey)
	{
		return UserToolUtils_ModifyCollectionInfoImpl(collectionId, collectionName, flags, iconKey.InstanceId, iconKey.GroupId, iconKey.TypeId);
	}

	public void DeleteCollection(ulong collectionId)
	{
		UserToolUtils_DeleteCollectionImpl(collectionId);
	}

	public void UpdateItemInCollection(bool bAdd, ulong collectionId, ResourceKey productKey, uint presetId)
	{
		UserToolUtils_UpdateItemInCollectionImpl(bAdd, collectionId, productKey.InstanceId, productKey.GroupId, productKey.TypeId, presetId);
	}

	public void SetCollectionOrder(ulong[] newOrder)
	{
		UserToolUtils_SetCollectionOrderImpl(newOrder);
	}

	public void SetItemOrderInCollection(ulong collectionId, byte[] itemKeys, uint[] itemPresetIds)
	{
		UserToolUtils_SetItemOrderInCollectionImpl(collectionId, itemKeys, itemPresetIds);
	}

	public bool IsBlueprintOnLot()
	{
		return UserToolUtils_IsBlueprintOnLotImpl();
	}

	public void DeleteBlueprintsOnLot()
	{
		UserToolUtils_DeleteBlueprintsOnLotImpl();
	}

	public uint[] GetObjectProductListFiltered(uint buyCategoryFlag, uint buildCategoryFlag, ulong buySubCategoryFlag, ulong buySubCategory2Flag, ulong buyRoomSubCategoryFlag, ulong excludeBuyRoomSubCategoryFlag, uint includeRoomFlag, uint excludeRoomFlag, uint showAllInCatFlag)
	{
		uint[] array = UserToolUtils_GetObjectProductListFilteredImpl(buyCategoryFlag, buildCategoryFlag, buySubCategoryFlag, buySubCategory2Flag, buyRoomSubCategoryFlag, excludeBuyRoomSubCategoryFlag, includeRoomFlag, excludeRoomFlag);
		if (array == null)
		{
			return new uint[0];
		}
		return array;
	}

	public ulong[] GetFeaturedCASItemsListFiltered(uint bodyPart, uint outfitTypeFlags, uint ageGenderFlags, uint numNonSetItems, bool isHat)
	{
		ulong[] array = UserToolUtils_GetFeaturedCASItemsListFilteredImpl(bodyPart, outfitTypeFlags, ageGenderFlags, numNonSetItems, isHat);
		if (array == null)
		{
			return new ulong[0];
		}
		return array;
	}

	public ulong[] GetFeaturedItemsListFiltered(uint buyCategoryFlag, uint buildCategoryFlag, ulong buySubCategoryFlag, ulong buySubCategoryFlag2, ulong buyRoomSubCategoryFlag, ulong excludeBuyRoomSubCategoryFlag, uint includeRoomFlag, uint excludeRoomFlag)
	{
		ulong[] array = UserToolUtils_GetFeaturedItemsListFilteredImpl(buyCategoryFlag, buildCategoryFlag, buySubCategoryFlag, buySubCategoryFlag2, buyRoomSubCategoryFlag, excludeBuyRoomSubCategoryFlag, includeRoomFlag, excludeRoomFlag);
		if (array == null)
		{
			return new ulong[0];
		}
		return array;
	}

	public ulong[] GetFeaturedMainMenuItemsList()
	{
		ulong[] array = UserToolUtils_GetFeaturedMainMenuItemsListImpl();
		if (array == null)
		{
			return new ulong[0];
		}
		return array;
	}

	public ulong[] GetTNSFeatureItem()
	{
		ulong[] array = UserToolUtils_GetTNSFeatureItemImpl();
		if (array == null)
		{
			return new ulong[0];
		}
		return array;
	}

	public ulong[] GetTNSListFeatureItems()
	{
		ulong[] array = UserToolUtils_GetTNSListFeatureItemsImpl();
		if (array == null)
		{
			return new ulong[0];
		}
		return array;
	}

	public ulong[] GetFeaturedItemsList(uint productType)
	{
		ulong[] array = UserToolUtils_GetFeaturedItemsListImpl(productType);
		if (array == null)
		{
			return new ulong[0];
		}
		return array;
	}

	public void TryBuyingStoreFeaturedItem(ulong itemId)
	{
		UserToolUtils_TryBuyingStoreFeaturedItemImpl(itemId);
	}

	public void MainMenuFeaturedSetUpdate(ulong itemId)
	{
		UserToolUtils_MainMenuFeaturedSetUpdateImpl(itemId);
	}

	public void IncViewCountStoreFeaturedItem(ulong itemId)
	{
		UserToolUtils_IncViewCountStoreFeaturedItemImpl(itemId);
	}

	public void SaveViewCountStoreFeaturedItem()
	{
		UserToolUtils_SaveViewCountStoreFeaturedItemImpl();
	}

	public bool ShouldShowFeaturedItemTNS()
	{
		return UserToolUtils_ShouldShowFeaturedItemTNSImpl();
	}

	public bool ShouldShowSingleFeaturedItemTNSFirst()
	{
		return UserToolUtils_ShouldShowSingleFeaturedItemTNSFirstImpl();
	}

	public uint GetSimPointBalance()
	{
		return UserToolUtils_GetSimPointBalanceImpl();
	}

	public void ForwardUserToolMouseEvent(uint eventType, float x, float y, uint button, uint modifiers)
	{
		UserToolUtils_ForwardUserToolMouseEventImpl(eventType, x, y, button, modifiers);
	}

	public void ForwardUserToolTriggerEvent(uint action, uint triggerCode)
	{
		UserToolUtils_ForwardUserToolTriggerEventImpl(action, triggerCode);
	}

	public void ProcessBuildBuyGenericCallback(uint funcID, uint toolID, uint productHandle)
	{
		Sims3.SimIFace.UserToolUtils.ProcessBuildBuyGenericCallback(funcID, toolID, productHandle);
	}

	public bool IsCatalogLoaded()
	{
		return UserToolUtils_IsCatalogLoadedImpl();
	}

	public void SetBuildModePriceScale(float s)
	{
		UserToolUtils_SetBuildModePriceScaleImpl(s);
	}

	public float GetBuildModePriceScale()
	{
		return UserToolUtils_GetBuildModePriceScaleImpl();
	}

	public void SetBuyModePriceScale(float s)
	{
		UserToolUtils_SetBuyModePriceScaleImpl(s);
	}

	public float GetBuyModePriceScale()
	{
		return UserToolUtils_GetBuyModePriceScaleImpl();
	}

	public void SetElectronicsPriceScale(float s)
	{
		UserToolUtils_SetElectronicsPriceScaleImpl(s);
	}

	public float GetElectronicsPriceScale()
	{
		return UserToolUtils_GetElectronicsPriceScaleImpl();
	}

	public bool CheckObjectPlacement(uint productHandle, uint checkForType)
	{
		return UserToolUtils_CheckObjectPlacementImpl(productHandle, checkForType);
	}

	public string CheckDeleteObject(ulong objId)
	{
		return UserToolUtils_CheckDeleteObjectImpl(objId);
	}

	public bool TerrainSculptToolActive()
	{
		return UserToolUtils_TerrainSculptToolActiveImpl();
	}

	public bool TerrainPaintToolActive()
	{
		return UserToolUtils_TerrainPaintToolActiveImpl();
	}

	public bool IsUserToolBusy()
	{
		return UserToolUtils_IsUserToolBusyImpl();
	}

	public uint[] GetObjectProductPresetIdList(ResourceKey key)
	{
		uint[] array = UserToolUtils_GetObjectProductPresetIdListImpl(key.TypeId, key.InstanceId, key.GroupId);
		if (array == null)
		{
			return new uint[0];
		}
		return array;
	}

	public string GetPresetString(ResourceKey key)
	{
		string text = UserToolUtils_GetPresetStringImpl(key.TypeId, key.InstanceId, key.GroupId);
		if (string.IsNullOrEmpty(text))
		{
			return "";
		}
		return text;
	}

	public bool GetMoodletIconInfo(ResourceKey key, ref uint iconId, ref uint iconDegree)
	{
		return UserToolUtils_GetMoodletIconInfoImpl(key.TypeId, key.InstanceId, key.GroupId, ref iconId, ref iconDegree);
	}

	public uint[] GetMoodletEffectTextIds(ResourceKey key)
	{
		uint[] array = UserToolUtils_GetMoodletEffectTextIdsImpl(key.TypeId, key.InstanceId, key.GroupId);
		if (array == null)
		{
			return new uint[0];
		}
		return array;
	}

	public uint[] GetMoodletEffectTextValues(ResourceKey key)
	{
		uint[] array = UserToolUtils_GetMoodletEffectTextValuesImpl(key.TypeId, key.InstanceId, key.GroupId);
		if (array == null)
		{
			return new uint[0];
		}
		return array;
	}
}
