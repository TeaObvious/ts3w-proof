using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class ThumbnailManager : CallbackObject, IThumbnailManager
{
	private delegate bool PrepareThumbnailObjectCallback(ulong templateId, ulong targetId, int index, uint uintVal1, uint uintVal2, int size, uint prepareHousehold, uint uintVal3);

	private delegate uint StartPregenerationCallback(uint sizeMask);

	private class PrepareTask : ITask, IDisposable
	{
		private ObjectGuid mObjectId;

		private ObjectGuid mTemplateGuid;

		private ObjectGuid mTargetGuid;

		private ThumbnailSize mSize;

		private int mIndex;

		private uint mUintVal1;

		private uint mUintVal2;

		private uint mPrepareType;

		private uint mUintVal3;

		private PrepareThumbnailObject mCallback;

		private bool mbPersistToMainMenu = true;

		public bool PersistToMainMenu
		{
			get
			{
				return mbPersistToMainMenu;
			}
			set
			{
				mbPersistToMainMenu = value;
			}
		}

		public ObjectGuid ObjectId
		{
			get
			{
				return mObjectId;
			}
			set
			{
				mObjectId = value;
			}
		}

		public string ClassName => "ScriptCore.ThumbnailManager+PrepareTask";

		public ScriptExecuteType ExecuteType => ScriptExecuteType.Task;

		public PrepareTask(ulong templateId, ulong targetId, int index, uint uintVal1, uint uintVal2, ThumbnailSize size, uint prepareType, uint uintVal3, PrepareThumbnailObject callback)
		{
			mTemplateGuid = new ObjectGuid(templateId);
			mTargetGuid = new ObjectGuid(targetId);
			mSize = size;
			mIndex = index;
			mUintVal1 = uintVal1;
			mUintVal2 = uintVal2;
			mPrepareType = prepareType;
			mUintVal3 = uintVal3;
			mCallback = callback;
		}

		public void Simulate()
		{
			try
			{
				Delegate[] invocationList = mCallback.GetInvocationList();
				for (int i = 0; i < invocationList.Length; i++)
				{
					PrepareThumbnailObject prepareThumbnailObject = (PrepareThumbnailObject)invocationList[i];
					if (prepareThumbnailObject(mTemplateGuid, mTargetGuid, mIndex, mUintVal1, mUintVal2, mSize, mPrepareType, mUintVal3))
					{
						break;
					}
				}
			}
			finally
			{
				ThumbnailManager_NotifyPreparationCompleted();
				Sims3.SimIFace.Simulator.DestroyObject(mObjectId);
			}
		}

		public void Stop()
		{
		}

		public void Dispose()
		{
		}
	}

	private PrepareThumbnailObjectCallback mPrepareObjectDelegate;

	private StartPregenerationCallback mStartPregenDelegate;

	public event PrepareThumbnailObject OnPrepareObject;

	public event StartPregeneration OnStartPregeneration;

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_SetCallbacks([MarshalAs(UnmanagedType.Interface)] PrepareThumbnailObjectCallback prepareObject, [MarshalAs(UnmanagedType.Interface)] StartPregenerationCallback startPregenObject);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_NotifyPreparationCompleted();

	[DllImport("Sims3Common.dll")]
	private static extern ulong ThumbnailManager_GetPregenerationStatus();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool ThumbnailManager_KeyExistsInDB(ResourceKey key, ulong templateId, int index, int size, ThumbnailCamera camera, ThumbnailTechnique technique);

	[DllImport("Sims3Common.dll")]
	private static extern ulong ThumbnailManager_AddPose(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern ulong ThumbnailManager_AddDisplacement(float x, float y, float z);

	[DllImport("Sims3Common.dll")]
	private static extern ulong ThumbnailManager_AddRotation(float angle);

	[DllImport("Sims3Common.dll")]
	private static extern ulong ThumbnailManager_AddNameSpace(uint nameSpace);

	[DllImport("Sims3Common.dll")]
	private static extern ulong ThumbnailManager_AddOccultState(uint occultState);

	[DllImport("Sims3Common.dll")]
	private static extern ulong ThumbnailManager_AddRig(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern ulong ThumbnailManager_AddModel(uint modelHandle);

	[DllImport("Sims3Common.dll")]
	private static extern ulong ThumbnailManager_AddSimBuilder(uint simBuilderHandle);

	[DllImport("Sims3Common.dll")]
	private static extern ulong ThumbnailManager_AddBoneDeltaFromBuilder(uint simBuilderHandle);

	[DllImport("Sims3Common.dll")]
	private static extern ulong ThumbnailManager_SetSceneObject(ulong sceneObjId);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_InvalidateThumbnail(bool expire, ResourceKey key, ulong templateId, int index, int size, ThumbnailCamera camera, ThumbnailTechnique technique);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_InvalidateHouseholdThumbnail(ulong householdId, ulong cacheId, uint sizeMask);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_InvalidateHouseholdSimThumbnail(ResourceKey key, ulong cacheId, uint groupId, uint sizeMask);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_InvalidateLotThumbnails(ulong lotId, ulong cacheId, uint sizeMask);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_InvalidateLotThumbnailsForGroup(ulong lotId, ulong cacheId, uint sizeMask, uint groupId);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_GenerateLotThumbnails(ulong lotId, ulong cacheId, uint sizeMask, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_GenerateLotThumbnailsForGroup(ulong lotId, ulong cacheId, uint sizeMask, uint groupId, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_UpdateDirtyLotThumbnails([MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_GenerateHouseholdThumbnail(ulong householdId, ulong cacheId, uint sizeMask, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_GeneratePromPicture(ulong sims1Id, ulong sim2Id, uint sizeMask, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_GenerateThumbnailForSimsUsingObject(ulong objectId, uint sizeMask, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_GenerateHouseholdSimThumbnail(ResourceKey key, ulong cacheId, uint groupId, uint sizeMask, byte technique, [MarshalAs(UnmanagedType.I1)] bool invalidate, uint ageGender, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_GeneratePhotoBoothPicture(ulong sims1Id, ulong sim2Id, uint sizeMask, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_GenerateSelfPhotoPicture(ulong sims1Id, ulong sim2Id, uint sizeMask, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_StitchPhotoboothPictures(ResourceKey photo1, ResourceKey photo2, ResourceKey photo3, ResourceKey photo4, uint sizeMask, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool ThumbnailManager_GenerateTravelSimThumbnail(ResourceKey key, ulong cacheId, uint sizeMask, byte technique);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool ThumbnailManager_GenerateSculpture(ResourceKey outfitKey, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool ThumbnailManager_GenerateServoBotArenaPicture(ulong simId, uint sizeMask, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern ulong ThumbnailManager_CloneObject(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_SetLotView(Vector3 dir);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_SetHouseholdCamera(uint cameraHash);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool ThumbnailManager_SaveSimFaceThumbnail(ResourceKey key, uint groupId, uint size, [MarshalAs(UnmanagedType.LPWStr)] string dataDirName, [MarshalAs(UnmanagedType.LPWStr)] string thumbName, [MarshalAs(UnmanagedType.LPWStr)] string xmlReportData);

	[DllImport("Sims3Common.dll")]
	private static extern void ThumbnailManager_SetCheatSaveSimFace(bool bEnable);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool ThumbnailManager_IsCheatSaveSimFaceEnabled();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)]
	private static extern float[] ThumbnailManager_LookupBBPreviewBound(ulong objectId);

	public ThumbnailManager()
	{
		AppDomain.CurrentDomain.SetData("ThumbnailManager", this);
		mPrepareObjectDelegate = ThumbnailManager_OnPrepareObject;
		mStartPregenDelegate = ThumbnailManager_OnStartPregeneration;
		ThumbnailManager_SetCallbacks(mPrepareObjectDelegate, mStartPregenDelegate);
	}

	public bool GetPregenerationStatus(out int processed, out int total, out int succeeded)
	{
		ulong num = ThumbnailManager_GetPregenerationStatus();
		processed = (int)num & 0xFFFFF;
		total = (int)(num >> 20) & 0xFFFFF;
		succeeded = (int)(num >> 40) & 0xFFFFF;
		return num >> 63 != 0;
	}

	public bool KeyExistsInDB(ref ThumbnailKey key)
	{
		return ThumbnailManager_KeyExistsInDB(key.mDescKey, key.mTemplateObjectId.Value, key.mIndex, (int)key.mSize, key.mCamera, key.mTechnique);
	}

	public void AddPose(string poseName, ProductVersion productVersion)
	{
		ulong clipInstanceId = Sims3.SimIFace.Animation.GetClipInstanceId(poseName);
		ResourceKey key = new ResourceKey(clipInstanceId, 1797309683u, ResourceUtils.ProductVersionToGroupId(productVersion));
		ThumbnailManager_AddPose(key);
	}

	public void AddDisplacement(float x, float y, float z)
	{
		ThumbnailManager_AddDisplacement(x, y, z);
	}

	public void AddRotation(float angle)
	{
		ThumbnailManager_AddRotation(angle);
	}

	public void AddNameSpace(uint nameSpace)
	{
		ThumbnailManager_AddNameSpace(nameSpace);
	}

	public void AddOccultState(uint occultState)
	{
		ThumbnailManager_AddOccultState(occultState);
	}

	public void AddRig(ResourceKey rigKey)
	{
		ThumbnailManager_AddRig(rigKey);
	}

	public void AddModel(uint modelHandle)
	{
		ThumbnailManager_AddModel(modelHandle);
	}

	public void AddSimBuilder(uint simBuilderHandle)
	{
		ThumbnailManager_AddSimBuilder(simBuilderHandle);
	}

	public void AddBoneDeltaFromBuilder(uint simBuilderHandle)
	{
		ThumbnailManager_AddBoneDeltaFromBuilder(simBuilderHandle);
	}

	public void SetSceneObject(ObjectGuid sceneObjId)
	{
		ThumbnailManager_SetSceneObject(sceneObjId.Value);
	}

	public void ExpireThumbnail(ref ThumbnailKey key)
	{
		ThumbnailManager_InvalidateThumbnail(expire: true, key.mDescKey, key.mTemplateObjectId.Value, key.mIndex, (int)key.mSize, key.mCamera, key.mTechnique);
	}

	public void InvalidateThumbnail(ref ThumbnailKey key)
	{
		ThumbnailManager_InvalidateThumbnail(expire: false, key.mDescKey, key.mTemplateObjectId.Value, key.mIndex, (int)key.mSize, key.mCamera, key.mTechnique);
	}

	public void InvalidateHouseholdThumbnail(ulong housholdId, ulong cacheId, ThumbnailSizeMask sizeMask)
	{
		ThumbnailManager_InvalidateHouseholdThumbnail(housholdId, cacheId, (uint)sizeMask);
	}

	public void InvalidateHouseholdSimThumbnail(ResourceKey key, ulong cacheId, uint groupId, ThumbnailSizeMask sizeMask)
	{
		ThumbnailManager_InvalidateHouseholdSimThumbnail(key, cacheId, groupId, (uint)sizeMask);
	}

	public void InvalidateLotThumbnails(ulong lotId, ulong cacheId, ThumbnailSizeMask sizeMask)
	{
		ThumbnailManager_InvalidateLotThumbnails(lotId, cacheId, (uint)sizeMask);
	}

	public void InvalidateLotThumbnailsForGroup(ulong lotId, ulong cacheId, ThumbnailSizeMask sizeMask, uint groupId)
	{
		ThumbnailManager_InvalidateLotThumbnailsForGroup(lotId, cacheId, (uint)sizeMask, groupId);
	}

	public bool GenerateLotThumbnails(ulong lotId, ulong cacheId, ThumbnailSizeMask sizeMask, bool wait)
	{
		if (!wait)
		{
			ThumbnailManager_GenerateLotThumbnails(lotId, cacheId, (uint)sizeMask, null);
			return true;
		}
		Sims3.SimIFace.Simulator.CheckYieldingContext();
		ThumbnailManager_GenerateLotThumbnails(lotId, cacheId, (uint)sizeMask, CallbackDelegate);
		return (bool)GetCallbackResult();
	}

	public bool GenerateLotThumbnailsForGroup(ulong lotId, ulong cacheId, ThumbnailSizeMask sizeMask, uint groupId, bool wait)
	{
		if (!wait)
		{
			ThumbnailManager_GenerateLotThumbnailsForGroup(lotId, cacheId, (uint)sizeMask, groupId, null);
			return true;
		}
		Sims3.SimIFace.Simulator.CheckYieldingContext();
		ThumbnailManager_GenerateLotThumbnailsForGroup(lotId, cacheId, (uint)sizeMask, groupId, CallbackDelegate);
		return (bool)GetCallbackResult();
	}

	public bool UpdateDirtyLotThumbnails()
	{
		Sims3.SimIFace.Simulator.CheckYieldingContext();
		ThumbnailManager_UpdateDirtyLotThumbnails(CallbackDelegate);
		return (bool)GetCallbackResult();
	}

	public bool GenerateHouseholdThumbnail(ulong householdId, ulong cacheId, ThumbnailSizeMask sizeMask, bool wait)
	{
		if (!wait)
		{
			ThumbnailManager_GenerateHouseholdThumbnail(householdId, cacheId, (uint)sizeMask, null);
			return true;
		}
		Sims3.SimIFace.Simulator.CheckYieldingContext();
		ThumbnailManager_GenerateHouseholdThumbnail(householdId, cacheId, (uint)sizeMask, CallbackDelegate);
		return (bool)GetCallbackResult();
	}

	public bool GeneratePhotoBoothPicture(ulong sim1Id, ulong sim2Id, ThumbnailSizeMask sizeMask, out ResourceKey resKey)
	{
		Sims3.SimIFace.Simulator.CheckYieldingContext();
		ThumbnailManager_GeneratePhotoBoothPicture(sim1Id, sim2Id, (uint)sizeMask, CallbackDelegate);
		object callbackResult = GetCallbackResult();
		resKey = ResourceKey.kInvalidResourceKey;
		if (callbackResult is ResourceKey)
		{
			resKey = (ResourceKey)callbackResult;
			return true;
		}
		return false;
	}

	public bool GenerateSelfPhotoPicture(ulong sim1Id, ulong sim2Id, ThumbnailSizeMask sizeMask, out ResourceKey resKey)
	{
		Sims3.SimIFace.Simulator.CheckYieldingContext();
		ThumbnailManager_GenerateSelfPhotoPicture(sim1Id, sim2Id, (uint)sizeMask, CallbackDelegate);
		object callbackResult = GetCallbackResult();
		resKey = ResourceKey.kInvalidResourceKey;
		if (callbackResult is ResourceKey)
		{
			resKey = (ResourceKey)callbackResult;
			return true;
		}
		return false;
	}

	public bool StitchPhotoboothPictures(ResourceKey photo1, ResourceKey photo2, ResourceKey photo3, ResourceKey photo4, ThumbnailSizeMask sizeMask, out ResourceKey resKey)
	{
		Sims3.SimIFace.Simulator.CheckYieldingContext();
		ThumbnailManager_StitchPhotoboothPictures(photo1, photo2, photo3, photo4, (uint)sizeMask, CallbackDelegate);
		object callbackResult = GetCallbackResult();
		resKey = ResourceKey.kInvalidResourceKey;
		if (callbackResult is ResourceKey)
		{
			resKey = (ResourceKey)callbackResult;
			return true;
		}
		return false;
	}

	public bool GeneratePromPicture(ulong sim1Id, ulong sim2Id, ThumbnailSizeMask sizeMask, out ResourceKey resKey)
	{
		Sims3.SimIFace.Simulator.CheckYieldingContext();
		ThumbnailManager_GeneratePromPicture(sim1Id, sim2Id, (uint)sizeMask, CallbackDelegate);
		object callbackResult = GetCallbackResult();
		resKey = ResourceKey.kInvalidResourceKey;
		if (callbackResult is ResourceKey)
		{
			resKey = (ResourceKey)callbackResult;
			return true;
		}
		return false;
	}

	public bool GenerateThumbnailForSimsUsingObject(ulong objectId, ThumbnailSizeMask sizeMask, out ResourceKey resKey)
	{
		Sims3.SimIFace.Simulator.CheckYieldingContext();
		ThumbnailManager_GenerateThumbnailForSimsUsingObject(objectId, (uint)sizeMask, CallbackDelegate);
		object callbackResult = GetCallbackResult();
		resKey = ResourceKey.kInvalidResourceKey;
		if (callbackResult is ResourceKey)
		{
			resKey = (ResourceKey)callbackResult;
			return true;
		}
		return false;
	}

	public bool GenerateHouseholdSimThumbnail(ResourceKey key, ulong cacheId, uint groupId, ThumbnailSizeMask sizeMask, ThumbnailTechnique technique, bool invalidate, bool wait, uint ageGender)
	{
		if (!wait)
		{
			ThumbnailManager_GenerateHouseholdSimThumbnail(key, cacheId, groupId, (uint)sizeMask, (byte)technique, invalidate, ageGender, null);
			return true;
		}
		Sims3.SimIFace.Simulator.CheckYieldingContext();
		ThumbnailManager_GenerateHouseholdSimThumbnail(key, cacheId, groupId, (uint)sizeMask, (byte)technique, invalidate, ageGender, CallbackDelegate);
		return (bool)GetCallbackResult();
	}

	public bool GenerateTravelSimThumbnail(ResourceKey key, ulong cacheId, ThumbnailSizeMask sizeMask, ThumbnailTechnique technique)
	{
		return ThumbnailManager_GenerateTravelSimThumbnail(key, cacheId, (uint)sizeMask, (byte)technique);
	}

	public bool GenerateSculpture(ResourceKey outfitKey, out ResourceKey resKey)
	{
		Sims3.SimIFace.Simulator.CheckYieldingContext();
		ThumbnailManager_GenerateSculpture(outfitKey, CallbackDelegate);
		object callbackResult = GetCallbackResult();
		resKey = ResourceKey.kInvalidResourceKey;
		if (callbackResult is ResourceKey)
		{
			resKey = (ResourceKey)callbackResult;
			return true;
		}
		return false;
	}

	public bool GenerateServoBotArenaPic(ulong simId, ThumbnailSizeMask sizeMask, out ResourceKey resKey)
	{
		Sims3.SimIFace.Simulator.CheckYieldingContext();
		ThumbnailManager_GenerateServoBotArenaPicture(simId, (uint)sizeMask, CallbackDelegate);
		object callbackResult = GetCallbackResult();
		resKey = ResourceKey.kInvalidResourceKey;
		if (callbackResult is ResourceKey)
		{
			resKey = (ResourceKey)callbackResult;
			return true;
		}
		return false;
	}

	public ObjectGuid CloneObject(ObjectGuid objId)
	{
		ulong value = ThumbnailManager_CloneObject(objId.Value);
		return new ObjectGuid(value);
	}

	public void SetLotView(Vector3 dir)
	{
		ThumbnailManager_SetLotView(dir);
	}

	public void SetHouseholdCamera(uint cameraHash)
	{
		ThumbnailManager_SetHouseholdCamera(cameraHash);
	}

	public bool SaveSimFaceThumbnail(ResourceKey key, uint groupId, ThumbnailSize size, string dataDirName, string thumbName, string xmlReportData)
	{
		return ThumbnailManager_SaveSimFaceThumbnail(key, groupId, (uint)size, dataDirName, thumbName, xmlReportData);
	}

	public void SetCheatSaveSimFace(bool bEnable)
	{
		ThumbnailManager_SetCheatSaveSimFace(bEnable);
	}

	public bool IsCheatSaveSimFaceEnabled()
	{
		return ThumbnailManager_IsCheatSaveSimFaceEnabled();
	}

	public bool LookupBBPreviewBound(ObjectGuid objectGuid, out Vector3 min, out Vector3 max)
	{
		float[] array = ThumbnailManager_LookupBBPreviewBound(objectGuid.Value);
		if (array != null && array.Length == 6)
		{
			min = new Vector3(array[0], array[1], array[2]);
			max = new Vector3(array[3], array[4], array[5]);
			return true;
		}
		min = new Vector3(0f, 0f, 0f);
		max = new Vector3(0f, 0f, 0f);
		return false;
	}

	private bool ThumbnailManager_OnPrepareObject(ulong templateId, ulong targetId, int index, uint uintVal1, uint uintVal2, int size, uint prepareType, uint uintVal3)
	{
		ObjectGuid templateId2 = new ObjectGuid(templateId);
		ObjectGuid targetId2 = new ObjectGuid(targetId);
		PrepareThumbnailObject onPrepareObject = OnPrepareObject;
		if (onPrepareObject != null)
		{
			if (prepareType == 4)
			{
				return onPrepareObject(templateId2, targetId2, index, uintVal1, uintVal2, (ThumbnailSize)size, prepareType, uintVal3);
			}
			Sims3.SimIFace.Simulator.AddObject(new PrepareTask(templateId, targetId, index, uintVal1, uintVal2, (ThumbnailSize)size, prepareType, uintVal3, onPrepareObject));
			return true;
		}
		return false;
	}

	private uint ThumbnailManager_OnStartPregeneration(uint pregenTypeFlags)
	{
		uint num = 0u;
		StartPregeneration onStartPregeneration = OnStartPregeneration;
		if (onStartPregeneration != null)
		{
			Delegate[] invocationList = onStartPregeneration.GetInvocationList();
			for (int i = 0; i < invocationList.Length; i++)
			{
				StartPregeneration startPregeneration = (StartPregeneration)invocationList[i];
				num += startPregeneration(pregenTypeFlags);
			}
		}
		return num;
	}

	protected override void OnAbortCallbackResult(object value)
	{
	}
}
