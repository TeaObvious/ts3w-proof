// Original PC 1.67 S3SA UI:0600124A; assembly identity: ../reference-inputs.json
// Annotated ILSpy view; the original projection below is retained verbatim.
// Complete 481-byte static constructor. IL_00AB/00B0/00B5 read, cast and cache gUIMgr; IL_00BA reads the designer flag afterward.
// The later flag branch skips selected setup, not connector construction/selection.
// UIManager has no BeforeFieldInit flag; class initialization effects/order must be distinguished from any called method body.
// Retain ILSpy unresolved-type diagnostics. Authoritative type/token/branch evidence is IL plus original metadata, not these diagnostics.

using System;
using System.Collections.Generic;
using System.Reflection;
using Sims3.SimIFace;

static UIManager()
{
	//IL_00b0: Unknown result type (might be due to invalid IL or missing references)
	//IL_00ba: Expected Obj, but got Unknown
	//IL_00cf: Unknown result type (might be due to invalid IL or missing references)
	//IL_00d9: Expected Obj, but got Unknown
	//IL_00e0: Unknown result type (might be due to invalid IL or missing references)
	//IL_00ea: Expected Obj, but got Unknown
	//IL_00f1: Unknown result type (might be due to invalid IL or missing references)
	//IL_00fb: Expected Obj, but got Unknown
	//IL_0102: Unknown result type (might be due to invalid IL or missing references)
	//IL_010c: Expected Obj, but got Unknown
	//IL_0113: Unknown result type (might be due to invalid IL or missing references)
	//IL_011d: Expected Obj, but got Unknown
	//IL_0124: Unknown result type (might be due to invalid IL or missing references)
	//IL_012e: Expected Obj, but got Unknown
	//IL_0135: Unknown result type (might be due to invalid IL or missing references)
	//IL_013f: Expected Obj, but got Unknown
	//IL_0146: Unknown result type (might be due to invalid IL or missing references)
	//IL_0150: Expected Obj, but got Unknown
	//IL_01cf: Unknown result type (might be due to invalid IL or missing references)
	//IL_01da: Unknown result type (might be due to invalid IL or missing references)
	kMouseDragDistanceSquared = 50f;
	mCustomControlInstanceDict = new Dictionary<uint, WindowBase>();
	mTagRegistry = new Dictionary<WindowBase, object>();
	mCreateTooltipCallbackRegistry = new Dictionary<WindowBase, WindowBase.CreateTooltipCallback>();
	mClassIDTypeMap = new Dictionary<uint, Type>();
	mInstancePools = new Dictionary<Type, Stack<WindowBase>>();
	gUIMgr = null;
	sDragDrop = null;
	sbPreShutdown = false;
	sDarkenBackground = null;
	sDarkenCount = 0u;
	mEventArgsConstructors = new Dictionary<uint, EventCreator>();
	mWindowConstructors = new Dictionary<Type, WindowCreator>();
	mCustomControlConstructorRegistry = new Dictionary<uint, ConstructorInfo>();
	mRollbackRes = false;
	mIsTogglingFullScreen = false;
	mIsModal = false;
	mTaskCount = 0u;
	mModalStack = new WindowBase[8];
	mModalStackPtr = 1;
	gUIMgr = (IUIManager)AppDomain.CurrentDomain.GetData("UIManager");
	bool flag = !InitUIManagerTask.sIsRunningUTFDesigner;
	gUIMgr.RegisterShutdownCallback((UIShuttingDownCallback)Shutdown);
	mUIEventCallbackDelegate = ProcessEventCallback;
	mUILocaleChangedCallbackDelegate = UILocaleChangedCallback;
	mUIResolutionChangedCallbackDelegate = UIResolutionChangedCallback;
	mUIWindowShutdownCallbackDelegate = UIWindowShutdownCallback;
	mUINewContentInstalledDelegate = UINewContentInstalled;
	mUIInGameStoreDelegate = UIInGameStoreMessageCallback;
	mUINewHotInstallDataCallback = UINewHotInstallData;
	gUIMgr.SetUICallbacks(mUIEventCallbackDelegate, mUILocaleChangedCallbackDelegate, mUIResolutionChangedCallbackDelegate, mUIWindowShutdownCallbackDelegate, mUINewContentInstalledDelegate, mUIInGameStoreDelegate, mUINewHotInstallDataCallback);
	mControlInstanceCache = new Cache<uint, WindowBase>(100);
	mControlInstanceCache.CacheEntryErased += OnControlCacheEntryErased;
	InitInstancePools();
	mEventRegistry = new Dictionary<uint, WindowEventData>();
	LoadCustomControls();
	if (flag)
	{
		gUIMgr.InitUIHierarchy();
		gUIMgr.InitUserToolHelper();
		Simulator.AddObject((object)new TooltipManager());
		Simulator.AddObject((object)new FeedbackBalloonManager());
	}
}
