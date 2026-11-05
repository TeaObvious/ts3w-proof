using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class UIManager : IUIManager
{
	private class CaptureSceneCallback : CallbackObject
	{
		protected override void OnAbortCallbackResult(object value)
		{
		}
	}

	private UIShuttingDownCallback mShutdownCallback;

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_InitUIHierarchyImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_InitUserToolHelperImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_RegisterCustomControlFactoryImpl(uint classID, bool register);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_RegisterCustomControlDelegatesImpl(uint winHandle, uint propID, ushort typeID, [MarshalAs(UnmanagedType.Interface)] Delegate getDelegate, [MarshalAs(UnmanagedType.Interface)] Delegate setDelegate);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_LoadLayoutImpl(ulong instance, uint group, uint type);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_LoadLayoutAndAddToWindowImpl(ulong instance, uint group, uint type, uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_LoadLayoutAndAddToWindowByIDImpl(ulong instance, uint group, uint type, uint category);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_DestroyLayoutImpl(uint layoutHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_ShutdownLayoutImpl(uint layoutHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_ToggleDebugLayoutNamesVisibleImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_DestroyDrawableImpl(uint drawableHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_LoadUIImageImpl(ulong instance, uint group, uint type);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_DestroyUIImageImpl(uint imageHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_LoadUIHitMaskImpl(ulong instance, uint group, uint type);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_DestroyUIHitMaskImpl(uint hitMaskHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetThumbnailImageImpl(ResourceKey key, ulong templateObjectId, int index, uint ageGender, ThumbnailSize size, [MarshalAs(UnmanagedType.I1)] bool liveUpdate, ThumbnailCamera camera, ThumbnailTechnique technique, uint geoState, uint matState, uint placeholder, [MarshalAs(UnmanagedType.I1)] bool doNotCache, ThumbnailSizeMask additionalSizesToCache);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetCASThumbnailImageImpl(ResourceKey key, int index, uint bodyType, uint ageGender, ThumbnailSize size, bool liveUpdate);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetClassIDImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetInstanceIDImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetCustomControlIDImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UIManager_IsCustomProxyControlImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetWindowByExportIDImpl(uint layout, int exportID);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetParentWindowImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetChildByIDImpl(uint winHandle, uint id, [MarshalAs(UnmanagedType.I1)] bool recursive);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetChildByIndexImpl(uint winHandle, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_DestroyWindowImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_AddToTopWindowImpl(uint winHandle, uint id);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_RemoveFromTopWindowImpl(uint winHandle, uint id);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetMainWindowImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UIManager_IsWindowAttachedImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_AddChildImpl(uint parentHandle, uint childHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_RemoveChildImpl(uint parentHandle, uint childHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_DestroyAllChildrenImpl(uint parentHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_MoveDrawOrderImpl(uint winHandle, bool front);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetFocusImpl(uint context);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_SetFocusImpl(uint context, uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetCaptureTargetImpl(uint context);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_SetCaptureTargetImpl(uint context, uint winHandle, bool captureOnlyMouseButtons);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_ReleaseCaptureImpl(uint context, uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_GetCursorPositionImpl(ref Vector2 outPos);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_SetCursorPositionImpl(ref Vector2 pos);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_FreezeMouseImpl(bool freeze);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetWindowFromPointImpl(ref Vector2 pos);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_WindowScreenTransformImpl(uint winHandle, ref Vector2 inPos, ref Vector2 outPos, bool winToScreen);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_GetPhysicalAreaImpl(uint winHandle, ref Rect outRect);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_InvalidateImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_InvalidateCursorImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_SetOverrideCursorImpl(uint cursorID);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_RegisterWindowCursorImpl(uint cursorID, uint winHandle, ref Vector2 pickPoint, bool register);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetWindowCursorImpl(uint cursorID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UIManager_BeginModalImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UIManager_EndModalImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UIManager_IsModalImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetModalWindowImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_SetUICallbacksImpl([MarshalAs(UnmanagedType.Interface)] Delegate pEventCallback, [MarshalAs(UnmanagedType.Interface)] Delegate pLocaleChangedCallback, [MarshalAs(UnmanagedType.Interface)] Delegate pResolutionChangedCallback, [MarshalAs(UnmanagedType.Interface)] Delegate pWindowShutdownCallback, [MarshalAs(UnmanagedType.Interface)] Delegate pNewContentInstalledCallback, [MarshalAs(UnmanagedType.Interface)] Delegate pInGameStoreCallback, [MarshalAs(UnmanagedType.Interface)] Delegate pNewHotInstallDataCallback);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_RegisterEventImpl(uint winHandle, uint eventType);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_DeRegisterEventImpl(uint winHandle, uint eventType);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_DeRegisterAllEventsImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_SetupScrollbarsImpl(uint winHandle, uint hScrollbarSetting, uint vScrollbarSetting);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_SetUInt32PropertyImpl(uint winHandle, uint propID, uint value);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetUInt32PropertyImpl(uint winHandle, uint propID);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_SetFloatPropertyImpl(uint winHandle, uint propID, float value);

	[DllImport("Sims3Common.dll")]
	private static extern float UIManager_GetFloatPropertyImpl(uint winHandle, uint propID);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_SetRectFloatPropertyImpl(uint winHandle, uint propID, ref Rect value);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_GetRectFloatPropertyImpl(uint winHandle, uint propID, ref Rect outValue);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_SetVector2FloatPropertyImpl(uint handle, uint propID, ref Vector2 value);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_GetVector2FloatPropertyImpl(uint handle, uint propID, ref Vector2 outValue);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_SetStringPropertyImpl(uint winHandle, uint propID, [MarshalAs(UnmanagedType.LPWStr)] string value);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string UIManager_GetStringPropertyImpl(uint winHandle, uint propID);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_SetImagePropertyImpl(uint winHandle, uint imagePropID, uint componentID, uint imageHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetImagePropertyImpl(uint winHandle, uint imagePropID, uint componentID);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_GetDrawablePropertyImpl(uint handle, uint drawablePropID, uint componentID);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string UIManager_GridGetCellTextValueImpl(uint winHandle, int column, int row);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_GridSetCellTextValueImpl(uint winHandle, int column, int row, [MarshalAs(UnmanagedType.LPWStr)] string text);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UIManager_GridGenericImpl(uint winHandle, uint funcID, ref int int1, ref int int2, ref uint uint1, ref float float1);

	[DllImport("Sims3Common.dll")]
	private static extern int UIManager_ComboBoxGenericImpl(uint winHandle, uint funcID, int index, [MarshalAs(UnmanagedType.LPWStr)] string value);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string UIManager_ComboBoxGetValueImpl(uint winHandle, int index);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_AddTriggerHookImpl(uint winHandle, [MarshalAs(UnmanagedType.LPWStr)] string map, int mode, int priority, bool modal);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UIManager_RemoveTriggerHookImpl(uint triggerHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UIManager_ActivateTriggerHookImpl(uint triggerHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UIManager_DeactivateTriggerHookImpl(uint triggerHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_NewEffectImpl(uint effectType);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_DestroyEffectImpl(uint effectHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_TriggerEffectImpl(uint effectHandle, [MarshalAs(UnmanagedType.I1)] bool reverse);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_ResetEffectImpl(uint effectHandle, [MarshalAs(UnmanagedType.I1)] bool reverse);

	[DllImport("Sims3Common.dll")]
	private static extern int UIManager_EffectListGenericImpl(uint winHandle, uint funcID, int index, uint effectHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_FrameDrawableGenericImpl(uint dHandle, uint funcID, uint state, uint value);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_ButtonAutoSizeImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_TextAutoSizeImpl(uint winHandle, bool vertical);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_GetPickInfoImpl(uint winHandle, ref int x, ref int y, ref ulong objectId, ref uint objectMask, ref Vector3 worldPos, ref Vector3 displayPos, ref int CASId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UIManager_GetMapTagInfoImpl(ulong objectId, ref Vector3 bbMin, ref Vector3 bbMax);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)]
	private static extern float[] UIManager_PickPixelImpl(ResourceKey imageKey, float x, float y);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_SetResolutionImpl(uint width, uint height, uint refresh, bool fullScreen);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_UpdateResolutionImpl(uint width, uint height, uint refresh, bool fullScreen);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_InitMapTagSystemImpl(Vector2 default2DOffset, float outsideBounds, float radius, float pushForce, float collisionDamping, float mass, float pullDamping, float pullForce, float timeStep, float idealSeparation, Rect innerBorder, float minFadeDistance, float maxFadeDistance, uint maxFade);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_UpdateMapTagCameraImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool UIManager_CullMapTagByPositionImpl(Vector3 position);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_UpdateMapTagsImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_ShutdownMapTagSystemImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UINT)]
	private static extern uint[] UIManager_GetColorPickerSwatchesImpl(ulong id);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_AttachCameraFlashWinProcImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string UIManager_GetSaveGameMetadataImpl([MarshalAs(UnmanagedType.LPWStr)] string saveFile, ref uint householdThumbnail, ref uint lotThumbnail);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_SetSaveGameMetadataImpl([MarshalAs(UnmanagedType.LPWStr)] string saveFile, [MarshalAs(UnmanagedType.LPWStr)] string householdName, [MarshalAs(UnmanagedType.LPWStr)] string householdBio, [MarshalAs(UnmanagedType.LPWStr)] string homeworldName, ulong householdId, ulong lotId, bool travelSave);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string UIManager_GetWorldMetadataImpl([MarshalAs(UnmanagedType.LPWStr)] string worldFile, ref uint lotCount, ref uint worldThumbnail, ref ulong worldNameKey, ref uint worldType, ref uint worldName);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string UIManager_GetWorldNameMetadataImpl([MarshalAs(UnmanagedType.LPWStr)] string worldFile);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string UIManager_GetCustomMusicInfoImpl(uint songNumber);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_WinAttachToCycleImpl(uint winHandle, float secondsPerFrame);

	[DllImport("Sims3Common.dll")]
	private static extern void UIManager_WinDetachFromCycleImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern bool UIManager_SendBrowserCommandImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint UIManager_CaptureSceneAsImage(uint style, uint x, uint y, uint width, uint height, uint skill, [MarshalAs(UnmanagedType.Interface)] Delegate callbackDelegate);

	public UIManager()
	{
		AppDomain.CurrentDomain.SetData("UIManager", this);
	}

	~UIManager()
	{
		if (mShutdownCallback != null)
		{
			mShutdownCallback();
		}
	}

	public void RegisterShutdownCallback(UIShuttingDownCallback callback)
	{
		mShutdownCallback = callback;
	}

	public void InitUIHierarchy()
	{
		UIManager_InitUIHierarchyImpl();
	}

	public void InitUserToolHelper()
	{
		UIManager_InitUserToolHelperImpl();
	}

	public void RegisterCustomControlFactory(uint classID, bool register)
	{
		UIManager_RegisterCustomControlFactoryImpl(classID, register);
	}

	public void RegisterCustomControlDelegates(uint winHandle, uint propID, ushort typeID, Delegate getDelegate, Delegate setDelegate)
	{
		UIManager_RegisterCustomControlDelegatesImpl(winHandle, propID, typeID, getDelegate, setDelegate);
	}

	public uint LoadLayout(ResourceKey resKey)
	{
		return UIManager_LoadLayoutImpl(resKey.InstanceId, resKey.GroupId, resKey.TypeId);
	}

	public uint LoadLayoutAndAddToWindow(ResourceKey resKey, uint winHandle)
	{
		return UIManager_LoadLayoutAndAddToWindowImpl(resKey.InstanceId, resKey.GroupId, resKey.TypeId, winHandle);
	}

	public uint LoadLayoutAndAddToWindowByID(ResourceKey resKey, uint category)
	{
		return UIManager_LoadLayoutAndAddToWindowByIDImpl(resKey.InstanceId, resKey.GroupId, resKey.TypeId, category);
	}

	public void DestroyLayout(uint layoutHandle)
	{
		UIManager_DestroyLayoutImpl(layoutHandle);
	}

	public void ShutdownLayout(uint layoutHandle)
	{
		UIManager_ShutdownLayoutImpl(layoutHandle);
	}

	public void ToggleDebugLayoutNamesVisible()
	{
		UIManager_ToggleDebugLayoutNamesVisibleImpl();
	}

	public void DestroyDrawable(uint drawableHandle)
	{
		UIManager_DestroyDrawableImpl(drawableHandle);
	}

	public uint LoadUIImage(ResourceKey resKey)
	{
		return UIManager_LoadUIImageImpl(resKey.InstanceId, resKey.GroupId, resKey.TypeId);
	}

	public void DestroyUIImage(uint imageHandle)
	{
		UIManager_DestroyUIImageImpl(imageHandle);
	}

	public uint LoadUIHitMask(ResourceKey resKey)
	{
		return UIManager_LoadUIHitMaskImpl(resKey.InstanceId, resKey.GroupId, resKey.TypeId);
	}

	public void DestroyUIHitMask(uint hitMaskHandle)
	{
		UIManager_DestroyUIHitMaskImpl(hitMaskHandle);
	}

	public uint GetThumbnailImage(ThumbnailKey key, uint placeholderHandle)
	{
		return UIManager_GetThumbnailImageImpl(key.mDescKey, key.mTemplateObjectId.Value, key.mIndex, key.mAgeGender, key.mSize, key.mLiveUpdate, key.mCamera, key.mTechnique, key.mGeometryState, key.mMaterialState, placeholderHandle, key.mDoNotCache, key.mAdditionalSizesToCache);
	}

	public uint GetCASThumbnailImage(ThumbnailKey key)
	{
		return UIManager_GetCASThumbnailImageImpl(key.mDescKey, key.mIndex, key.mBodyType, key.mAgeGender, key.mSize, key.mLiveUpdate);
	}

	public uint GetClassID(uint winHandle)
	{
		return UIManager_GetClassIDImpl(winHandle);
	}

	public uint GetInstanceID(uint winHandle)
	{
		return UIManager_GetInstanceIDImpl(winHandle);
	}

	public uint GetCustomControlID(uint winHandle)
	{
		return UIManager_GetCustomControlIDImpl(winHandle);
	}

	public bool IsCustomProxyControl(uint winHandle)
	{
		return UIManager_IsCustomProxyControlImpl(winHandle);
	}

	public uint GetWindowByExportID(uint layout, int exportID)
	{
		return UIManager_GetWindowByExportIDImpl(layout, exportID);
	}

	public uint GetParentWindow(uint winHandle)
	{
		return UIManager_GetParentWindowImpl(winHandle);
	}

	public uint GetChildByID(uint winHandle, uint id, bool recursive)
	{
		return UIManager_GetChildByIDImpl(winHandle, id, recursive);
	}

	public uint GetChildByIndex(uint winHandle, uint index)
	{
		return UIManager_GetChildByIndexImpl(winHandle, index);
	}

	public void DestroyWindow(uint winHandle)
	{
		UIManager_DestroyWindowImpl(winHandle);
	}

	public void AddToTopWindow(uint winHandle, uint id)
	{
		UIManager_AddToTopWindowImpl(winHandle, id);
	}

	public void RemoveFromTopWindow(uint winHandle, uint id)
	{
		UIManager_RemoveFromTopWindowImpl(winHandle, id);
	}

	public uint GetMainWindow()
	{
		return UIManager_GetMainWindowImpl();
	}

	public bool IsWindowAttached(uint winHandle)
	{
		return UIManager_IsWindowAttachedImpl(winHandle);
	}

	public void AddChild(uint parentHandle, uint childHandle)
	{
		UIManager_AddChildImpl(parentHandle, childHandle);
	}

	public void RemoveChild(uint parentHandle, uint childHandle)
	{
		UIManager_RemoveChildImpl(parentHandle, childHandle);
	}

	public void DestroyAllChildren(uint parentHandle)
	{
		UIManager_DestroyAllChildrenImpl(parentHandle);
	}

	public void MoveDrawOrder(uint winHandle, bool front)
	{
		UIManager_MoveDrawOrderImpl(winHandle, front);
	}

	public uint GetFocus(uint context)
	{
		return UIManager_GetFocusImpl(context);
	}

	public void SetFocus(uint context, uint winHandle)
	{
		UIManager_SetFocusImpl(context, winHandle);
	}

	public uint GetCaptureTarget(uint context)
	{
		return UIManager_GetCaptureTargetImpl(context);
	}

	public void SetCaptureTarget(uint context, uint winHandle, bool captureOnlyMouseButtons)
	{
		UIManager_SetCaptureTargetImpl(context, winHandle, captureOnlyMouseButtons);
	}

	public void ReleaseCapture(uint context, uint winHandle)
	{
		UIManager_ReleaseCaptureImpl(context, winHandle);
	}

	public Vector2 GetCursorPosition()
	{
		Vector2 outPos = new Vector2(0f, 0f);
		UIManager_GetCursorPositionImpl(ref outPos);
		return outPos;
	}

	public void SetCursorPosition(Vector2 pos)
	{
		UIManager_SetCursorPositionImpl(ref pos);
	}

	public void FreezeMouse(bool freeze)
	{
		UIManager_FreezeMouseImpl(freeze);
	}

	public uint GetWindowFromPoint(Vector2 pos)
	{
		return UIManager_GetWindowFromPointImpl(ref pos);
	}

	public Vector2 WindowScreenTransform(uint winHandle, Vector2 inPos, bool winToScreen)
	{
		Vector2 outPos = new Vector2(-1f, -1f);
		UIManager_WindowScreenTransformImpl(winHandle, ref inPos, ref outPos, winToScreen);
		return outPos;
	}

	public Rect GetPhysicalArea(uint winHandle)
	{
		Rect outRect = Rect.Empty;
		UIManager_GetPhysicalAreaImpl(winHandle, ref outRect);
		return outRect;
	}

	public void Invalidate(uint winHandle)
	{
		UIManager_InvalidateImpl(winHandle);
	}

	public void InvalidateCursor(uint winHandle)
	{
		UIManager_InvalidateCursorImpl(winHandle);
	}

	public void SetOverrideCursor(uint cursorID)
	{
		UIManager_SetOverrideCursorImpl(cursorID);
	}

	public void RegisterWindowCursor(uint cursorID, uint winHandle, Vector2 pickPoint, bool register)
	{
		UIManager_RegisterWindowCursorImpl(cursorID, winHandle, ref pickPoint, register);
	}

	public uint GetWindowCursor(uint cursorID)
	{
		return UIManager_GetWindowCursorImpl(cursorID);
	}

	public bool BeginModal(uint winHandle)
	{
		return UIManager_BeginModalImpl(winHandle);
	}

	public bool EndModal(uint winHandle)
	{
		return UIManager_EndModalImpl(winHandle);
	}

	public bool IsModal(uint winHandle)
	{
		return UIManager_IsModalImpl(winHandle);
	}

	public uint GetModalWindow()
	{
		return UIManager_GetModalWindowImpl();
	}

	public void SetUICallbacks(UIEventCallback eventCallback, UILocaleChangedCallback localeChangedCallback, UIResolutionChangedCallback resolutionChangedCallback, UIWindowShutdownCallback windowShutdownCallback, UINewContentInstalledCallback newContentInstalledCallback, UIInGameStoreCallback newInGameStoreCallback, UINewHotInstallDataCallback newHotInstallDataCallBack)
	{
		UIManager_SetUICallbacksImpl(eventCallback, localeChangedCallback, resolutionChangedCallback, windowShutdownCallback, newContentInstalledCallback, newInGameStoreCallback, newHotInstallDataCallBack);
	}

	public void RegisterEvent(uint winHandle, uint eventType)
	{
		UIManager_RegisterEventImpl(winHandle, eventType);
	}

	public void DeRegisterEvent(uint winHandle, uint eventType)
	{
		UIManager_DeRegisterEventImpl(winHandle, eventType);
	}

	public void DeRegisterAllEvents(uint winHandle)
	{
		UIManager_DeRegisterAllEventsImpl(winHandle);
	}

	public void SetupScrollbars(uint winHandle, uint hScrollbarSetting, uint vScrollbarSetting)
	{
		UIManager_SetupScrollbarsImpl(winHandle, hScrollbarSetting, vScrollbarSetting);
	}

	public void SetUInt32Property(uint winHandle, uint propID, uint value)
	{
		UIManager_SetUInt32PropertyImpl(winHandle, propID, value);
	}

	public uint GetUInt32Property(uint winHandle, uint propID)
	{
		return UIManager_GetUInt32PropertyImpl(winHandle, propID);
	}

	public void SetFloatProperty(uint winHandle, uint propID, float value)
	{
		UIManager_SetFloatPropertyImpl(winHandle, propID, value);
	}

	public float GetFloatProperty(uint winHandle, uint propID)
	{
		return UIManager_GetFloatPropertyImpl(winHandle, propID);
	}

	public void SetRectFloatProperty(uint winHandle, uint propID, Rect value)
	{
		UIManager_SetRectFloatPropertyImpl(winHandle, propID, ref value);
	}

	public Rect GetRectFloatProperty(uint winHandle, uint propID)
	{
		Rect outValue = new Rect(0f, 0f, 0f, 0f);
		UIManager_GetRectFloatPropertyImpl(winHandle, propID, ref outValue);
		return outValue;
	}

	public void SetVector2FloatProperty(uint winHandle, uint propID, Vector2 value)
	{
		UIManager_SetVector2FloatPropertyImpl(winHandle, propID, ref value);
	}

	public Vector2 GetVector2FloatProperty(uint winHandle, uint propID)
	{
		Vector2 outValue = new Vector2(0f, 0f);
		UIManager_GetVector2FloatPropertyImpl(winHandle, propID, ref outValue);
		return outValue;
	}

	public void SetStringProperty(uint winHandle, uint propID, string value)
	{
		UIManager_SetStringPropertyImpl(winHandle, propID, value);
	}

	public string GetStringProperty(uint winHandle, uint propID)
	{
		return UIManager_GetStringPropertyImpl(winHandle, propID);
	}

	public void SetImageProperty(uint winHandle, uint imagePropID, uint componentID, uint imageHandle)
	{
		UIManager_SetImagePropertyImpl(winHandle, imagePropID, componentID, imageHandle);
	}

	public uint GetImageProperty(uint winHandle, uint imagePropID, uint componentID)
	{
		return UIManager_GetImagePropertyImpl(winHandle, imagePropID, componentID);
	}

	public uint GetDrawableProperty(uint handle, uint drawablePropID, uint componentID)
	{
		return UIManager_GetDrawablePropertyImpl(handle, drawablePropID, componentID);
	}

	public string GridGetCellTextValue(uint winHandle, int column, int row)
	{
		return UIManager_GridGetCellTextValueImpl(winHandle, column, row);
	}

	public void GridSetCellTextValue(uint winHandle, int column, int row, string text)
	{
		UIManager_GridSetCellTextValueImpl(winHandle, column, row, text);
	}

	public bool GridGeneric(uint winHandle, uint funcID, ref int int1, ref int int2, ref uint uint1, ref float float1)
	{
		return UIManager_GridGenericImpl(winHandle, funcID, ref int1, ref int2, ref uint1, ref float1);
	}

	public int ComboBoxGeneric(uint winHandle, uint funcID, int index, string value)
	{
		return UIManager_ComboBoxGenericImpl(winHandle, funcID, index, value);
	}

	public string ComboBoxGetValue(uint winHandle, int index)
	{
		return UIManager_ComboBoxGetValueImpl(winHandle, index);
	}

	public uint AddTriggerHook(uint winHandle, string map, int mode, int priority, bool modal)
	{
		return UIManager_AddTriggerHookImpl(winHandle, map, mode, priority, modal);
	}

	public bool RemoveTriggerHook(uint triggerHandle)
	{
		return UIManager_RemoveTriggerHookImpl(triggerHandle);
	}

	public bool ActivateTriggerHook(uint triggerHandle)
	{
		return UIManager_ActivateTriggerHookImpl(triggerHandle);
	}

	public bool DeactivateTriggerHook(uint triggerHandle)
	{
		return UIManager_DeactivateTriggerHookImpl(triggerHandle);
	}

	public uint NewEffect(uint effectType)
	{
		return UIManager_NewEffectImpl(effectType);
	}

	public void DestroyEffect(uint effectHandle)
	{
		UIManager_DestroyEffectImpl(effectHandle);
	}

	public void TriggerEffect(uint effectHandle, bool reverse)
	{
		UIManager_TriggerEffectImpl(effectHandle, reverse);
	}

	public void ResetEffect(uint effectHandle, bool reverse)
	{
		UIManager_ResetEffectImpl(effectHandle, reverse);
	}

	public int EffectListGeneric(uint winHandle, uint funcID, int index, uint effectHandle)
	{
		return UIManager_EffectListGenericImpl(winHandle, funcID, index, effectHandle);
	}

	public uint FrameDrawableGeneric(uint dHandle, uint funcID, uint state, uint value)
	{
		return UIManager_FrameDrawableGenericImpl(dHandle, funcID, state, value);
	}

	public void ButtonAutoSize(uint winHandle)
	{
		UIManager_ButtonAutoSizeImpl(winHandle);
	}

	public void TextAutoSize(uint winHandle, bool vertical)
	{
		UIManager_TextAutoSizeImpl(winHandle, vertical);
	}

	public void GetPickInfo(uint winHandle, ref int x, ref int y, ref ulong objectId, ref uint objectMask, ref Vector3 worldPos, ref Vector3 displayPos, ref int CASId)
	{
		UIManager_GetPickInfoImpl(winHandle, ref x, ref y, ref objectId, ref objectMask, ref worldPos, ref displayPos, ref CASId);
	}

	public bool GetMapTagInfo(ulong objectId, ref Vector3 bbMin, ref Vector3 bbMax)
	{
		return UIManager_GetMapTagInfoImpl(objectId, ref bbMin, ref bbMax);
	}

	public Color PickPixel(ResourceKey imageKey, float x, float y)
	{
		Color result = new Color(0u);
		float[] array = UIManager_PickPixelImpl(imageKey, x, y);
		if (array != null)
		{
			result.Red = (byte)(array[0] * 255f);
			result.Green = (byte)(array[1] * 255f);
			result.Blue = (byte)(array[2] * 255f);
			result.Alpha = (byte)(array[3] * 255f);
		}
		return result;
	}

	public void SetResolution(uint width, uint height, uint refresh, bool fullScreen)
	{
		UIManager_SetResolutionImpl(width, height, refresh, fullScreen);
	}

	public void UpdateResolution(uint width, uint height, uint refresh, bool fullScreen)
	{
		UIManager_UpdateResolutionImpl(width, height, refresh, fullScreen);
	}

	public void InitMapTagSystem(Vector2 default2DOffset, float outsideBounds, float radius, float pushForce, float collisionDamping, float mass, float pullDamping, float pullForce, float timeStep, float idealSeparation, Rect innerBorder, float minFadeDistance, float maxFadeDistance, uint maxFade)
	{
		UIManager_InitMapTagSystemImpl(default2DOffset, outsideBounds, radius, pushForce, collisionDamping, mass, pullDamping, pullForce, timeStep, idealSeparation, innerBorder, minFadeDistance, maxFadeDistance, maxFade);
	}

	public void UpdateMapTagCamera()
	{
		UIManager_UpdateMapTagCameraImpl();
	}

	public bool CullMapTagByPosition(Vector3 position)
	{
		return UIManager_CullMapTagByPositionImpl(position);
	}

	public void UpdateMapTags()
	{
		UIManager_UpdateMapTagsImpl();
	}

	public void ShutdownMapTagSystem()
	{
		UIManager_ShutdownMapTagSystemImpl();
	}

	public uint[] GetColorPickerSwatches(ulong id)
	{
		return UIManager_GetColorPickerSwatchesImpl(id);
	}

	public void AttachCameraFlashWinProc(uint winHandle)
	{
		UIManager_AttachCameraFlashWinProcImpl(winHandle);
	}

	public string GetSaveGameMetadata(string saveFile, ref uint householdThumbnail, ref uint lotThumbnail)
	{
		return UIManager_GetSaveGameMetadataImpl(saveFile, ref householdThumbnail, ref lotThumbnail);
	}

	public void SetSaveGameMetadata(string saveFile, string householdName, string householdBio, string homeworldName, ulong householdId, ulong lotId, bool travelSave)
	{
		UIManager_SetSaveGameMetadataImpl(saveFile, householdName, householdBio, homeworldName, householdId, lotId, travelSave);
	}

	public string GetWorldMetadata(string worldFile, ref uint lotCount, ref uint worldThumbnail, ref ulong worldNameKey, ref uint worldType, ref uint worldName)
	{
		return UIManager_GetWorldMetadataImpl(worldFile, ref lotCount, ref worldThumbnail, ref worldNameKey, ref worldType, ref worldName);
	}

	public string GetWorldNameMetadata(string worldFile)
	{
		return UIManager_GetWorldNameMetadataImpl(worldFile);
	}

	public string GetCustomMusicInfo(uint songNumber)
	{
		return UIManager_GetCustomMusicInfoImpl(songNumber);
	}

	public void WinAttachToCycle(uint winHandle, float secondsPerFrame)
	{
		UIManager_WinAttachToCycleImpl(winHandle, secondsPerFrame);
	}

	public void WinDetachFromCycle(uint winHandle)
	{
		UIManager_WinDetachFromCycleImpl(winHandle);
	}

	public bool SendBrowserCommand(uint command)
	{
		return UIManager_SendBrowserCommandImpl(command);
	}

	public uint CaptureSceneAsImage(uint style, uint x, uint y, uint width, uint height, uint skill)
	{
		CaptureSceneCallback captureSceneCallback = new CaptureSceneCallback();
		return UIManager_CaptureSceneAsImage(style, x, y, width, height, skill, captureSceneCallback.CallbackDelegate);
	}
}
