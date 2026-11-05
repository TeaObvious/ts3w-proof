using System;
using System.IO;
using System.Runtime.InteropServices;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

namespace ScriptCore;

public sealed class DownloadContent : IDownloadContent, IContentManager, IExportBin
{
	private delegate void SimSavedCallback(ulong longInstance, uint type, uint group);

	private enum ContentType : uint
	{
		Downloaded = 2u
	}

	private const string kContentPackageFileExt = ".package";

	private SimSavedCallback mSimSavedDelegate;

	private string mImportsFolder;

	public event SimSavedDelegate OnSimSaved;

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_ExportContentImpl(ExportContentType type, ulong id, [In][MarshalAs(UnmanagedType.LPWStr)] string contentName, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pKeyTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] pIdTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pScriptData, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] xmlTags, long shaderIndex);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_CreateHostMySimInvite(long nucleusId, int passportId, uint slot, long guid, long careerId, int simLevel, [In][MarshalAs(UnmanagedType.LPWStr)] string simName, [In][MarshalAs(UnmanagedType.LPWStr)] string career, [In][MarshalAs(UnmanagedType.LPWStr)] string level, [In][MarshalAs(UnmanagedType.LPWStr)] string venue, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pKeyTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] pIdTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pScriptData, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] xmlTags);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_AcceptSendMeYourSimInvite(uint postId, int passportId, uint slot, long guid, long careerId, int simLevel, [In][MarshalAs(UnmanagedType.LPWStr)] string simName, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pKeyTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] pIdTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pScriptData, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] xmlTags);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_SaveCustomSim([MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pKeyTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] pIdTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pScriptData, [In][MarshalAs(UnmanagedType.LPWStr)] string outputFilename, ResourceKey key, int trait, uint ageGenderSpecies);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_DeleteCustomSim(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_SaveTravelSim([MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pKeyTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] pIdTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pScriptData, ResourceKey outfitKey, ref ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern void DownloadContent_SetSimSaveMode(ushort mode);

	[DllImport("Sims3Common.dll")]
	private static extern void DownloadContent_SetExportMode(ushort mode);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_IsCustomContentImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern ulong DownloadContent_StoreInventoryImpl([MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pKeyTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] pIdTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pScriptData);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_ImportInventoryImpl(ulong id, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] ref byte[] pKeyTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ref ulong[] pIdTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] ref byte[] pScriptData);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_DeleteInventoryImpl(ulong id);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_StoreHouseholdContentsImpl(ulong lotId, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pKeyTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] pIdTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pScriptData);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_ImportHouseholdContentsImpl(ulong id, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] ref byte[] pKeyTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ref ulong[] pIdTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] ref byte[] pScriptData);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_DeleteHouseholdContentsImpl(ulong id);

	[DllImport("Sims3Common.dll")]
	private static extern ulong DownloadContent_GenerateGUIDImpl();

	[DllImport("Sims3Common.dll")]
	private static extern ulong DownloadContent_StoreLotContentsImpl(ulong lotId, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pKeyTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] pIdTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] pScriptData, long exportDateTime);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_ImportLotContentsImpl(ulong id, ulong lotId, ref ushort rot, ref ushort pos, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] ref byte[] pKeyTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ref ulong[] pIdTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] ref byte[] pScriptData);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_DeleteLotContentsImpl(ulong id);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string DownloadContent_ExportLotContentsToExportBinImpl(ulong id);

	[DllImport("Sims3Common.dll")]
	private static extern void DownloadContent_ExportLotContentsToTravelBinImpl(ulong id);

	[DllImport("Sims3Common.dll")]
	private static extern ulong DownloadContent_ImportLotContentsFromExportBinImpl([In][MarshalAs(UnmanagedType.LPWStr)] string packageFile, [In][Out] ref ulong oldLotContentId);

	[DllImport("Sims3Common.dll")]
	private static extern ulong DownloadContent_ImportHouseholdContentsFromExportBinImpl([In][MarshalAs(UnmanagedType.LPWStr)] string packageFile);

	[DllImport("Sims3Common.dll")]
	private static extern ulong DownloadContent_ImportHouseholdContentsFromTravelBinImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_ImportSimDescriptionImpl(ResourceKey key, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] ref byte[] pKeyTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ref ulong[] pIdTable, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] ref byte[] pScriptData);

	[DllImport("Sims3Common.dll")]
	private static extern int DownloadContent_GetImportedSimResourceKeys([MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] ref byte[] pKeyTable, bool getTravelImports);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_ExportResourceImpl(ResourceKey key, [In][MarshalAs(UnmanagedType.LPWStr)] string packageFile, [In][MarshalAs(UnmanagedType.LPWStr)] string description);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_ExportLotImpl([In][MarshalAs(UnmanagedType.LPWStr)] string packageFile, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] xmlTags);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_ExportHouseholdImpl([In][MarshalAs(UnmanagedType.LPWStr)] string packageFile, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] xmlTags);

	[DllImport("Sims3Common.dll")]
	private static extern uint DownloadContent_SetPackageEnabledImpl(PackageId packageId, bool bEnabled);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string DownloadContent_GetPackageNameImpl(PackageId packageId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_GetLocalKeyFromSourceKey(PackageId pid, ResourceKey sourceKey, ref ResourceKey localKey);

	[DllImport("Sims3Common.dll")]
	private static extern uint DownloadContent_GetContentSourceImpl(ResourceKey sourceKey);

	[DllImport("Sims3Common.dll")]
	private static extern void DownloadContent_SetSimSavedCallbackImpl([MarshalAs(UnmanagedType.Interface)] SimSavedCallback simSavedCallback);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_IsCustomContentEnabled();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_IsDevBuild();

	public DownloadContent()
	{
		AppDomain.CurrentDomain.SetData("DownloadContent", this);
		mSimSavedDelegate = DownloadContent_OnSimSaved;
		DownloadContent_SetSimSavedCallbackImpl(mSimSavedDelegate);
	}

	public bool ExportContent(ExportContentType type, string contentName, ulong id, IExportableContent contentObj, IMetaTagExporter metaTagObj, int shaderIndex)
	{
		MemoryStream stream = null;
		ObjectIdTable idTable = null;
		if (!ExportManagedContent(contentObj, out var keyTable, ref idTable, out var stream2))
		{
			return false;
		}
		if (metaTagObj != null && !ExportMetaTagData(metaTagObj, out stream))
		{
			return false;
		}
		byte[] xmlTags = stream?.ToArray();
		return DownloadContent_ExportContentImpl(type, id, contentName, keyTable.ByteArray, idTable.ObjectIdArray, stream2.ToArray(), xmlTags, shaderIndex);
	}

	public bool CreateHostMySimInvite(long nucleusId, int passportId, uint slot, long guid, long careerId, int simLevel, string simName, string career, string level, string venue, IExportableContent contentObj, IMetaTagExporter metaTagObj)
	{
		MemoryStream stream = null;
		ObjectIdTable idTable = null;
		if (!ExportManagedContent(contentObj, out var keyTable, ref idTable, out var stream2))
		{
			return false;
		}
		if (metaTagObj != null && !ExportMetaTagData(metaTagObj, out stream))
		{
			return false;
		}
		byte[] xmlTags = stream?.ToArray();
		return DownloadContent_CreateHostMySimInvite(nucleusId, passportId, slot, guid, careerId, simLevel, simName, career, level, venue, keyTable.ByteArray, idTable.ObjectIdArray, stream2.ToArray(), xmlTags);
	}

	public bool AcceptSendMeYourSimInvite(uint postId, int passportId, uint slot, long guid, long careerId, int simLevel, string simName, IExportableContent contentObj, IMetaTagExporter metaTagObj)
	{
		MemoryStream stream = null;
		ObjectIdTable idTable = null;
		if (!ExportManagedContent(contentObj, out var keyTable, ref idTable, out var stream2))
		{
			return false;
		}
		if (metaTagObj != null && !ExportMetaTagData(metaTagObj, out stream))
		{
			return false;
		}
		byte[] xmlTags = stream?.ToArray();
		return DownloadContent_AcceptSendMeYourSimInvite(postId, passportId, slot, guid, careerId, simLevel, simName, keyTable.ByteArray, idTable.ObjectIdArray, stream2.ToArray(), xmlTags);
	}

	public bool SaveCustomSim(IExportableContent contentObj, string outputFilename, ResourceKey outfitKey, int trait, uint ageGenderSpecies)
	{
		ObjectIdTable idTable = null;
		if (!ExportManagedContent(contentObj, out var keyTable, ref idTable, out var stream))
		{
			return false;
		}
		return DownloadContent_SaveCustomSim(keyTable.ByteArray, idTable.ObjectIdArray, stream.ToArray(), outputFilename, outfitKey, trait, ageGenderSpecies);
	}

	public bool DeleteCustomSim(ResourceKey key)
	{
		return DownloadContent_DeleteCustomSim(key);
	}

	public bool SaveTravelSim(IExportableContent contentObj, ResourceKey outfitKey, ref ResourceKey exportKey)
	{
		ObjectIdTable idTable = null;
		if (!ExportManagedContent(contentObj, out var keyTable, ref idTable, out var stream))
		{
			return false;
		}
		if (!DownloadContent_SaveTravelSim(keyTable.ByteArray, idTable.ObjectIdArray, stream.ToArray(), outfitKey, ref exportKey))
		{
			return false;
		}
		return true;
	}

	public void SetSimSaveMode(SimSaveMode mode)
	{
		DownloadContent_SetSimSaveMode((ushort)mode);
	}

	public void SetExportMode(ExportMode mode)
	{
		DownloadContent_SetExportMode((ushort)mode);
	}

	public bool IsCustomContent(ResourceKey key)
	{
		return DownloadContent_IsCustomContentImpl(key);
	}

	public bool IsCustomContentEnabled()
	{
		return DownloadContent_IsCustomContentEnabled();
	}

	public bool IsDownloadContentCategory(ResourceKeyContentCategory cat)
	{
		if (ResourceKeyContentCategory.kFreeDownloadedEA != cat && ResourceKeyContentCategory.kPaidDownloadedEA != cat)
		{
			return ResourceKeyContentCategory.kUserCreated == cat;
		}
		return true;
	}

	public ContentSourceType GetContentSource(ResourceKey key)
	{
		return (ContentSourceType)DownloadContent_GetContentSourceImpl(key);
	}

	private bool IsContentBitSet(ContentCategoryFlags cat, uint groupId)
	{
		return cat == (ContentCategoryFlags)((uint)cat & groupId);
	}

	private ushort GetContentEPNumber(uint groupId)
	{
		return (ushort)(groupId >> 27);
	}

	public ResourceKeyContentCategory GetContentCategory(ResourceKey key)
	{
		ResourceKeyContentCategory result = ResourceKeyContentCategory.kInstalled;
		switch (GetContentSource(key))
		{
		case ContentSourceType.kContentType_Download:
			result = ((!IsContentBitSet(ContentCategoryFlags.kCustomContent, key.GroupId)) ? ((!IsContentBitSet(ContentCategoryFlags.kPaidContent, key.GroupId)) ? ResourceKeyContentCategory.kFreeDownloadedEA : ResourceKeyContentCategory.kPaidDownloadedEA) : ResourceKeyContentCategory.kUserCreated);
			break;
		case ContentSourceType.kContentType_Local:
			result = ResourceKeyContentCategory.kLocalUserCreated;
			break;
		default:
			if (key.TypeId == 103965146)
			{
				result = ResourceKeyContentCategory.kLocalUserCreated;
			}
			break;
		case ContentSourceType.kContentType_Installed:
			break;
		}
		return result;
	}

	public ulong StoreInventory(IExportableContent inventory, ObjectIdTable objectIdTable)
	{
		if (!ExportManagedContent(inventory, out var keyTable, ref objectIdTable, out var stream))
		{
			return 0uL;
		}
		return DownloadContent_StoreInventoryImpl(keyTable.ByteArray, objectIdTable.ObjectIdArray, stream.ToArray());
	}

	public bool StoreHouseholdContents(IExportableContent householdContents, ulong lotId)
	{
		ObjectIdTable idTable = null;
		if (!ExportManagedContent(householdContents, out var keyTable, ref idTable, out var stream))
		{
			return false;
		}
		return DownloadContent_StoreHouseholdContentsImpl(lotId, keyTable.ByteArray, idTable.ObjectIdArray, stream.ToArray());
	}

	public bool ImportHouseholdContents(IExportableContent householdContents, ulong id)
	{
		byte[] pKeyTable = null;
		ulong[] pIdTable = null;
		byte[] pScriptData = null;
		if (!DownloadContent_ImportHouseholdContentsImpl(id, ref pKeyTable, ref pIdTable, ref pScriptData))
		{
			return false;
		}
		return ImportManagedContent(householdContents, pKeyTable, pIdTable, pScriptData);
	}

	public bool DeleteHouseholdContents(ulong id)
	{
		return DownloadContent_DeleteHouseholdContentsImpl(id);
	}

	public ulong GenerateGUID()
	{
		return DownloadContent_GenerateGUIDImpl();
	}

	public bool ImportInventory(ulong id, IExportableContent inventory)
	{
		byte[] pKeyTable = null;
		ulong[] pIdTable = null;
		byte[] pScriptData = null;
		if (!DownloadContent_ImportInventoryImpl(id, ref pKeyTable, ref pIdTable, ref pScriptData))
		{
			return false;
		}
		return ImportManagedContent(inventory, pKeyTable, pIdTable, pScriptData);
	}

	public bool DeleteInventory(ulong id)
	{
		return DownloadContent_DeleteInventoryImpl(id);
	}

	public ulong StoreLotContents(IExportableContent lot, ulong lotId)
	{
		ObjectIdTable idTable = null;
		if (!ExportManagedContent(lot, out var keyTable, ref idTable, out var stream))
		{
			return 0uL;
		}
		return DownloadContent_StoreLotContentsImpl(lotId, keyTable.ByteArray, idTable.ObjectIdArray, stream.ToArray(), DateTime.Now.ToBinary());
	}

	public bool ImportLotContents(ulong id, IExportableContent lot, ulong lotId, ref LotRotationAngle rot, ref LotPosition position)
	{
		byte[] pKeyTable = null;
		ulong[] pIdTable = null;
		byte[] pScriptData = null;
		ushort rot2 = (ushort)rot;
		ushort pos = (ushort)position;
		if (!DownloadContent_ImportLotContentsImpl(id, lotId, ref rot2, ref pos, ref pKeyTable, ref pIdTable, ref pScriptData))
		{
			return false;
		}
		rot = (LotRotationAngle)rot2;
		position = (LotPosition)pos;
		return ImportManagedContent(lot, pKeyTable, pIdTable, pScriptData);
	}

	public bool DeleteLotContents(ulong id)
	{
		return DownloadContent_DeleteLotContentsImpl(id);
	}

	public string ExportLotContentsToExportBin(ulong id)
	{
		return DownloadContent_ExportLotContentsToExportBinImpl(id);
	}

	public void ExportLotContentsToTravelBin(ulong id)
	{
		DownloadContent_ExportLotContentsToTravelBinImpl(id);
	}

	public ulong ImportLotContentsFromExportBin(string packageName, ref ulong oldLotContentId)
	{
		return DownloadContent_ImportLotContentsFromExportBinImpl(packageName, ref oldLotContentId);
	}

	public ulong ImportHouseholdContentsFromExportBin(string packageName)
	{
		return DownloadContent_ImportHouseholdContentsFromExportBinImpl(packageName);
	}

	public ulong ImportHouseholdContentsFromTravelBin()
	{
		return DownloadContent_ImportHouseholdContentsFromTravelBinImpl();
	}

	public bool ImportSimDescription(ResourceKey key, IExportableContent desc, ref ResourceKeyContentCategory category)
	{
		byte[] pKeyTable = null;
		ulong[] pIdTable = null;
		byte[] pScriptData = null;
		if (!DownloadContent_ImportSimDescriptionImpl(key, ref pKeyTable, ref pIdTable, ref pScriptData))
		{
			return false;
		}
		category = GetContentCategory(key);
		return ImportManagedContent(desc, pKeyTable, pIdTable, pScriptData);
	}

	public ResKeyTable GetImportedSimResourceKeys(bool getTravelImports)
	{
		byte[] pKeyTable = null;
		if (DownloadContent_GetImportedSimResourceKeys(ref pKeyTable, getTravelImports) > 0)
		{
			return new ResKeyTable(pKeyTable);
		}
		return null;
	}

	public bool ExportResource(ResourceKey key, string resourceName, string description)
	{
		return DownloadContent_ExportResourceImpl(key, resourceName, description);
	}

	public bool ExportLot(string lotPkgName, IMetaTagExporter metaTagObj)
	{
		MemoryStream stream = null;
		if (!ExportMetaTagData(metaTagObj, out stream))
		{
			return false;
		}
		byte[] xmlTags = stream?.ToArray();
		return DownloadContent_ExportLotImpl(lotPkgName, xmlTags);
	}

	public bool ExportHousehold(string householdPkgName, IMetaTagExporter metaTagObj)
	{
		MemoryStream stream = null;
		if (!ExportMetaTagData(metaTagObj, out stream))
		{
			return false;
		}
		byte[] xmlTags = stream?.ToArray();
		return DownloadContent_ExportHouseholdImpl(householdPkgName, xmlTags);
	}

	public uint SetPackageEnabled(PackageId pid, bool bEnabled)
	{
		return DownloadContent_SetPackageEnabledImpl(pid, bEnabled);
	}

	public string GetPackageName(PackageId id)
	{
		return DownloadContent_GetPackageNameImpl(id);
	}

	public bool GetLocalKeyFromSourceKey(PackageId pid, ResourceKey sourceKey, ref ResourceKey localKey)
	{
		return DownloadContent_GetLocalKeyFromSourceKey(pid, sourceKey, ref localKey);
	}

	public bool IsDevBuild()
	{
		return DownloadContent_IsDevBuild();
	}

	private bool ExportMetaTagData(IMetaTagExporter exporter, out MemoryStream stream)
	{
		stream = new MemoryStream();
		BinaryWriter binaryWriter = new BinaryWriter(stream);
		PropertyStreamWriter propertyStreamWriter = new PropertyStreamWriter();
		if (!propertyStreamWriter.Open(binaryWriter))
		{
			return false;
		}
		try
		{
			if (!exporter.ExportMetaTags(propertyStreamWriter))
			{
				return false;
			}
			if (!propertyStreamWriter.Close())
			{
				return false;
			}
			return true;
		}
		catch (Exception)
		{
			return false;
		}
		finally
		{
			binaryWriter.Close();
		}
	}

	private bool ExportManagedContent(IExportableContent content, out ResKeyTable keyTable, ref ObjectIdTable idTable, out MemoryStream stream)
	{
		keyTable = new ResKeyTable();
		if (idTable == null)
		{
			idTable = new ObjectIdTable();
		}
		stream = new MemoryStream();
		BinaryWriter binaryWriter = new BinaryWriter(stream);
		PropertyStreamWriter propertyStreamWriter = new PropertyStreamWriter();
		if (!propertyStreamWriter.Open(binaryWriter))
		{
			return false;
		}
		try
		{
			if (!content.ExportContent(keyTable, idTable, propertyStreamWriter))
			{
				return false;
			}
			if (!propertyStreamWriter.Close())
			{
				return false;
			}
			return true;
		}
		catch (Exception)
		{
			return false;
		}
		finally
		{
			binaryWriter.Close();
		}
	}

	private bool ImportManagedContent(IExportableContent content, byte[] keyTableArray, ulong[] idTableArray, byte[] scriptData)
	{
		ResKeyTable resKeyTable = new ResKeyTable(keyTableArray);
		ObjectIdTable objIdTable = new ObjectIdTable(idTableArray);
		MemoryStream input = new MemoryStream(scriptData);
		BinaryReader stream = new BinaryReader(input);
		PropertyStreamReader propertyStreamReader = new PropertyStreamReader();
		if (!propertyStreamReader.Open(stream))
		{
			return false;
		}
		return content.ImportContent(resKeyTable, objIdTable, propertyStreamReader);
	}

	[DllImport("Sims3Common.dll")]
	private static extern void DownloadContent_InitImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void DownloadContent_ShutdownImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string DownloadContent_GetImportsFolderImpl();

	[DllImport("Sims3Common.dll")]
	private static extern uint DownloadContent_InstallContentImpl([In][MarshalAs(UnmanagedType.LPWStr)] string packageFile);

	[DllImport("Sims3Common.dll")]
	private static extern uint DownloadContent_UnInstallContentImpl([In][MarshalAs(UnmanagedType.LPWStr)] string packageId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_GetFirstPackageId([In][Out] ref PackageId packageId);

	[DllImport("Sims3Common.dll")]
	private static extern bool DownloadContent_GetNextPackageId([In][Out] ref PackageId packageId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_GetFirstPackageEnableData([In][Out] ref PackageId packageId, [In][Out][MarshalAs(UnmanagedType.I1)] ref bool enableState);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_GetNextPackageEnableData([In][Out] ref PackageId packageId, [In][Out][MarshalAs(UnmanagedType.I1)] ref bool enableState);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string DownloadContent_GetFirstFilename();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string DownloadContent_GetNextFilename();

	[DllImport("Sims3Common.dll")]
	private static extern void DownloadContent_GetBaseGameId([In][Out] ref ulong part0, [In][Out] ref ulong part1);

	[DllImport("Sims3Common.dll")]
	private static extern void DownloadContent_LoadNewlyDownloadedChallenges();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DownloadContent_DownloadChallenges();

	[DllImport("Sims3Common.dll")]
	private static extern uint DownloadContent_GetNumChallengeManifestEntries();

	[DllImport("Sims3Common.dll")]
	private static extern void DownloadContent_RefreshChallengeManifest();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.U1)]
	private static extern bool DownloadContent_GetChallengeManifestEntry(uint index, [Out][MarshalAs(UnmanagedType.LPStruct)] UploadedChallengeManifestEntry entry);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.U1)]
	private static extern bool DownloadContent_ManifestContainsChallengeGuid([In][MarshalAs(UnmanagedType.LPWStr)] string challengeGuid);

	public void Init()
	{
		DownloadContent_InitImpl();
		mImportsFolder = DownloadContent_GetImportsFolderImpl();
	}

	public void Shutdown()
	{
		DownloadContent_ShutdownImpl();
	}

	public bool GetFirstPackageId(ref PackageId packageId)
	{
		return DownloadContent_GetFirstPackageId(ref packageId);
	}

	public bool GetNextPackageId(ref PackageId packageId)
	{
		return DownloadContent_GetNextPackageId(ref packageId);
	}

	public string GetFirstFilename()
	{
		return DownloadContent_GetFirstFilename();
	}

	public string GetNextFilename()
	{
		return DownloadContent_GetNextFilename();
	}

	public bool GetFirstPackageEnableData(ref PackageEnableData data)
	{
		return DownloadContent_GetFirstPackageEnableData(ref data.packageId, ref data.enabled);
	}

	public bool GetNextPackageEnableData(ref PackageEnableData data)
	{
		return DownloadContent_GetNextPackageEnableData(ref data.packageId, ref data.enabled);
	}

	public void LoadNewlyDownloadedChallenges()
	{
		DownloadContent_LoadNewlyDownloadedChallenges();
	}

	public bool DownloadChallenges()
	{
		return DownloadContent_DownloadChallenges();
	}

	public uint GetNumChallengeManifestEntries()
	{
		return DownloadContent_GetNumChallengeManifestEntries();
	}

	public bool GetChallengeManifestEntry(uint index, ref UploadedChallengeManifestEntry entry)
	{
		return DownloadContent_GetChallengeManifestEntry(index, entry);
	}

	public bool ManifestContainsChallengeGuid(string guid)
	{
		return DownloadContent_ManifestContainsChallengeGuid(guid);
	}

	public void RefreshChallengeManifest()
	{
		DownloadContent_RefreshChallengeManifest();
	}

	public uint InstallContent(string filename)
	{
		return DownloadContent_InstallContentImpl(filename);
	}

	public uint UnInstallContent(PackageId packageId)
	{
		return DownloadContent_UnInstallContentImpl(packageId.ToString());
	}

	public PackageId GetBaseGameId()
	{
		ulong part = 0uL;
		ulong part2 = 0uL;
		DownloadContent_GetBaseGameId(ref part, ref part2);
		return new PackageId(part, part2);
	}

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string DownloadContent_GetExportBinPackageNamesImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string DownloadContent_GetExportBinPackageInfoImpl([In][MarshalAs(UnmanagedType.LPWStr)] string package);

	[DllImport("Sims3Common.dll")]
	private static extern bool DownloadContent_DeleteExportBinPackageImpl([In][MarshalAs(UnmanagedType.LPWStr)] string package);

	[DllImport("Sims3Common.dll")]
	private static extern bool DownloadContent_HideExportBinPackageImpl([In][MarshalAs(UnmanagedType.LPWStr)] string package);

	[DllImport("Sims3Common.dll")]
	private static extern bool DownloadContent_UnhideAllExportBinPackagesImpl();

	[DllImport("Sims3Common.dll")]
	private static extern bool DownloadContent_IsAnyExportBinPackageHiddenImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void DownloadContent_RefreshExportBin();

	public string[] GetPackageNames()
	{
		string text = DownloadContent_GetExportBinPackageNamesImpl();
		if (text != null && text.Length > 0)
		{
			return text.Split('\u001a');
		}
		return null;
	}

	public void RefreshExportBin()
	{
		DownloadContent_RefreshExportBin();
	}

	public bool DeleteExportBinPackage(string package)
	{
		return DownloadContent_DeleteExportBinPackageImpl(package);
	}

	public bool HideExportBinPackage(string package)
	{
		return DownloadContent_HideExportBinPackageImpl(package);
	}

	public bool UnhideAllExportBinPackages()
	{
		return DownloadContent_UnhideAllExportBinPackagesImpl();
	}

	public bool IsAnyExportBinPackageHidden()
	{
		return DownloadContent_IsAnyExportBinPackageHiddenImpl();
	}

	public string GetPackageInfo(string package)
	{
		return DownloadContent_GetExportBinPackageInfoImpl(package);
	}

	private void DownloadContent_OnSimSaved(ulong longInstance, uint type, uint group)
	{
		if (OnSimSaved != null)
		{
			OnSimSaved(new ResourceKey(longInstance, type, group));
		}
	}
}
