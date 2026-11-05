using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;

namespace Sims3.SimIFace;

[ComVisible(false)]
public sealed class World
{
	public class DoorRoutingEventArgs : EventArgs
	{
		private ObjectGuid mSimObjId;

		private ObjectGuid mDoorObjId;

		private uint mDoorData;

		private uint mSegmentIdx;

		private bool mInOrOut;

		public ObjectGuid SimObjId => mSimObjId;

		public ObjectGuid DoorObjId => mDoorObjId;

		public uint DoorData => mDoorData;

		public uint SegmentIndex => mSegmentIdx;

		public bool InOrOut => mInOrOut;

		public DoorRoutingEventArgs(ulong simObjId, ulong doorObjId, uint doorData, uint segmentIdx, bool bEnterExit)
		{
			mSimObjId = new ObjectGuid(simObjId);
			mDoorObjId = new ObjectGuid(doorObjId);
			mDoorData = doorData;
			mSegmentIdx = segmentIdx;
			mInOrOut = bEnterExit;
		}
	}

	[Persistable]
	public class OnRouteEvent : RouteEvent
	{
		private uint mType;

		private ObjectGuid mSourceObjId;

		private Vector3 mPosition;

		private Vector3 mSource;

		private Vector3 mDirection;

		private float mDistanceTravelled;

		private float mDistanceRemaining;

		private uint mUserData0;

		private uint mUserData1;

		public override tEventType EventType => (tEventType)mType;

		public override Vector3 EventPosition => mPosition;

		public override Vector3 EventSource => mSource;

		public override Vector3 EventDirection => mDirection;

		public override float DistanceTravelled => mDistanceTravelled;

		public override float DistanceRemaining => mDistanceRemaining;

		public override ObjectGuid ObjectID => mSourceObjId;

		public override uint Data => mUserData0;

		public override uint Data2 => mUserData1;

		public OnRouteEvent(OnRoutingEventArgs evArgs)
		{
			mSourceObjId = evArgs.SourceObjId;
			mType = evArgs.Type;
			mPosition = evArgs.Position;
			mSource = evArgs.Source;
			mDirection = evArgs.Direction;
			mDistanceTravelled = evArgs.DistanceTravelled;
			mDistanceRemaining = evArgs.DistanceRemaining;
			mUserData0 = evArgs.UserData0;
			mUserData1 = evArgs.UserData1;
		}

		private OnRouteEvent()
		{
		}

		public override void Dispose()
		{
		}
	}

	public class OnRoutingEventArgs : EventArgs
	{
		private uint mType;

		private ObjectGuid mSimObjId;

		private ObjectGuid mSourceObjId;

		private Vector3 mPosition;

		private Vector3 mSource;

		private Vector3 mDirection;

		private float mDistanceTravelled;

		private float mDistanceRemaining;

		private uint mUserData0;

		private uint mUserData1;

		public ObjectGuid SimObjId => mSimObjId;

		public ObjectGuid SourceObjId => mSourceObjId;

		public uint Type => mType;

		public float DistanceTravelled => mDistanceTravelled;

		public float DistanceRemaining => mDistanceRemaining;

		public Vector3 Position => mPosition;

		public Vector3 Source => mSource;

		public Vector3 Direction => mDirection;

		public uint UserData0 => mUserData0;

		public uint UserData1 => mUserData1;

		public OnRoutingEventArgs(ulong simObjId, ulong sourceObjId, uint eventType, float x, float y, float z, float sx, float sy, float sz, float dx, float dy, float dz, float fDistanceTravelled, float fDistanceRemaining, uint uData0, uint uData1)
		{
			mSimObjId = new ObjectGuid(simObjId);
			mSourceObjId = new ObjectGuid(sourceObjId);
			mType = eventType;
			mPosition.x = x;
			mPosition.y = y;
			mPosition.z = z;
			mSource.x = sx;
			mSource.y = sy;
			mSource.z = sz;
			mDirection.x = dx;
			mDirection.y = dy;
			mDirection.z = dz;
			mDistanceTravelled = fDistanceTravelled;
			mDistanceRemaining = fDistanceRemaining;
			mUserData0 = uData0;
			mUserData1 = uData1;
		}
	}

	public class OnRoutingEvent_ObstaclesEncountered_Args : EventArgs
	{
		public ObjectGuid RoutingObjectId;

		public List<ObjectGuid> ObstacleIds;

		public bool ForceReplan;

		public OnRoutingEvent_ObstaclesEncountered_Args(object[] args)
		{
			RoutingObjectId = new ObjectGuid((ulong)args[0]);
			ForceReplan = (bool)args[1];
			ObstacleIds = new List<ObjectGuid>();
			int num = args.Length;
			for (int i = 2; i < num; i++)
			{
				ObstacleIds.Add(new ObjectGuid((ulong)args[i]));
			}
		}
	}

	public class WorldEventArgs : EventArgs
	{
		internal WorldEventArgs()
		{
		}
	}

	public class OnStartupAppEventArgs : WorldEventArgs
	{
	}

	public class OnEnterNotInWorldEventArgs : WorldEventArgs
	{
	}

	public class OnLeaveNotInWorldEventArgs : WorldEventArgs
	{
	}

	public class OnWorldQuitEventArgs : WorldEventArgs
	{
	}

	public class OnQuitAppEventArgs : WorldEventArgs
	{
	}

	public class OnWorldLoadStartedEventArgs : WorldEventArgs
	{
	}

	public class OnWorldLoadStatusEventArgs : WorldEventArgs
	{
		private float mPercentage;

		public float Percentage => mPercentage;

		public OnWorldLoadStatusEventArgs(float percentage)
		{
			mPercentage = percentage;
		}
	}

	public class OnWorldLoadFinishedEventArgs : WorldEventArgs
	{
	}

	public class OnWorldLoadFailedEventArgs : WorldEventArgs
	{
	}

	public class OnFinishedLoadingWorldFileEventArgs : WorldEventArgs
	{
	}

	public class OnFinishedLoadingSaveGameEventArgs : WorldEventArgs
	{
		public readonly uint warnings;

		public OnFinishedLoadingSaveGameEventArgs(uint warningCount)
		{
			warnings = warningCount;
		}
	}

	public class OnTextureCompositeStartedEventArgs : WorldEventArgs
	{
	}

	public class OnTextureCompositeFinishedEventArgs : WorldEventArgs
	{
	}

	public class OnLotAddedEventArgs : WorldEventArgs
	{
		private ulong mLotId;

		private bool mEditable;

		public ulong LotId => mLotId;

		public bool Editable => mEditable;

		public OnLotAddedEventArgs(ulong lotId, bool editable)
		{
			mLotId = lotId;
			mEditable = editable;
		}
	}

	public class OnLotRemovedEventArgs : WorldEventArgs
	{
		private ulong mLotId;

		public ulong LotId => mLotId;

		public OnLotRemovedEventArgs(ulong lotId)
		{
			mLotId = lotId;
		}
	}

	public class OnLotBoundsChangedEventArgs : WorldEventArgs
	{
		public readonly ulong LotId;

		public OnLotBoundsChangedEventArgs(ulong lotId)
		{
			LotId = lotId;
		}
	}

	public class OnLotTypeChangedEventArgs : WorldEventArgs
	{
		public readonly ulong LotId;

		public readonly LotType LotType;

		public OnLotTypeChangedEventArgs(ulong lotId, LotType lotType)
		{
			LotId = lotId;
			LotType = lotType;
		}
	}

	public class OnObjectPlacedInLotEventArgs : WorldEventArgs
	{
		private ObjectGuid mObjectId;

		private ulong mLotId;

		public ObjectGuid ObjectId => mObjectId;

		public ulong LotId => mLotId;

		public OnObjectPlacedInLotEventArgs(ulong objectId, ulong lotId)
		{
			mObjectId = new ObjectGuid(objectId);
			mLotId = lotId;
		}
	}

	public class OnObjectPendingDestructionEventArgs : WorldEventArgs
	{
		public readonly ObjectGuid ObjectId;

		public readonly ulong LotId;

		public OnObjectPendingDestructionEventArgs(ulong objectId, ulong lotId)
		{
			ObjectId = new ObjectGuid(objectId);
			LotId = lotId;
		}
	}

	public class OnObjectLotUpdateEventArgs : WorldEventArgs
	{
		private ObjectGuid mObjectId;

		private ulong mLotId;

		private int mLevel;

		private int mRoomId;

		public ObjectGuid ObjectId => mObjectId;

		public ulong LotId => mLotId;

		public int Level => mLevel;

		public int RoomId => mRoomId;

		public OnObjectLotUpdateEventArgs(ulong objectId, ulong lotId, int level, int roomId)
		{
			mObjectId = new ObjectGuid(objectId);
			mLotId = lotId;
			mLevel = level;
			mRoomId = roomId;
		}
	}

	public class OnObjectVideoStoppedEventArgs : WorldEventArgs
	{
		private ObjectGuid mObjectId;

		public ObjectGuid ObjectId => mObjectId;

		public OnObjectVideoStoppedEventArgs(ulong objectId)
		{
			mObjectId = new ObjectGuid(objectId);
		}
	}

	public delegate void DesignModeFoundPatternEventHandler(object sender, DesignModePatternEventArgs args);

	public class DesignModePatternEventArgs : EventArgs
	{
		private ResourceKey mPatternKey;

		private ResourceKey mPresetKey;

		public ResourceKey PatternKey => mPatternKey;

		public ResourceKey PresetKey => mPresetKey;

		public DesignModePatternEventArgs(ResourceKey patternKey, ResourceKey presetKey)
		{
			mPatternKey = patternKey;
			mPresetKey = presetKey;
		}
	}

	public class OnObjectSoundMaterialUpdatedEventArgs : WorldEventArgs
	{
		public readonly ObjectGuid ObjectId;

		public readonly uint Index;

		public readonly SurfaceTypes SoundMaterial;

		public OnObjectSoundMaterialUpdatedEventArgs(ObjectGuid objectId, uint index, SurfaceTypes soundMaterial)
		{
			ObjectId = objectId;
			Index = index;
			SoundMaterial = soundMaterial;
		}
	}

	public delegate void HandToolEventHandler(object sender, HandToolEventArgs eventArgs);

	public delegate bool HandToolQueryEventHandler(object sender, HandToolEventArgs eventArgs);

	public class HandToolEventArgs : EventArgs
	{
		private ObjectGuid mObjectId;

		public ObjectGuid ObjectId => mObjectId;

		public HandToolEventArgs(ulong objectId)
		{
			mObjectId = new ObjectGuid(objectId);
		}
	}

	public class HandToolIntersectEventArgs : HandToolEventArgs
	{
		private ObjectGuid mObjectToIntersectId;

		private Matrix44 mTestMatrix;

		public ObjectGuid ObjectToIntersectId => mObjectToIntersectId;

		public Matrix44 TestMatrix => mTestMatrix;

		public HandToolIntersectEventArgs(ulong objectId, ulong objectToIntersectId, Matrix44 mat)
			: base(objectId)
		{
			mObjectToIntersectId = new ObjectGuid(objectToIntersectId);
			mTestMatrix = mat;
		}
	}

	public delegate bool HandToolAllowPlacementEventHandler(object sender, HandToolEventArgs eventArgs, ref string errorStr);

	public class HandToolSlotEventArgs : HandToolEventArgs
	{
		private ObjectGuid mObjectWithSlotId;

		private Slot mSlotToQuery;

		public SlotPlacementCheckResults Result;

		public ObjectGuid ObjectWithSlotId => mObjectWithSlotId;

		public Slot SlotToQuery => mSlotToQuery;

		public HandToolSlotEventArgs(ulong objectId, ulong objectWithSlotId, uint slotHash)
			: base(objectId)
		{
			mObjectWithSlotId = new ObjectGuid(objectWithSlotId);
			mSlotToQuery = (Slot)slotHash;
		}
	}

	public class HandToolChangeModelArgs : HandToolEventArgs
	{
		private Vector3 mPosition;

		public Vector3 Position => mPosition;

		public HandToolChangeModelArgs(ulong objectId, float x, float y, float z)
			: base(objectId)
		{
			mPosition.Set(x, y, z);
		}
	}

	public class HandToolWallAdjacencyEventArgs : HandToolEventArgs
	{
		private WallAdjacencyFlags mWallFlags;

		public WallAdjacencyFlags WallFlags => mWallFlags;

		public HandToolWallAdjacencyEventArgs(ulong objectId, int wallFlags)
			: base(objectId)
		{
			mWallFlags = (WallAdjacencyFlags)wallFlags;
		}
	}

	public class HandToolPickupEventArgs : HandToolEventArgs
	{
		private ePickupTypeHandTool mPickupType;

		private ResourceKey mProductKey;

		public ePickupTypeHandTool PickupType => mPickupType;

		public ResourceKey ProductKey => mProductKey;

		public HandToolPickupEventArgs(ulong objectId, ePickupTypeHandTool pickupType, ResourceKey pickedUpProductKey)
			: base(objectId)
		{
			mPickupType = pickupType;
			mProductKey = pickedUpProductKey;
		}
	}

	public class HandToolRotateToMoveEventArgs : HandToolEventArgs
	{
		private ResourceKey mProductKey;

		public ResourceKey ProductKey => mProductKey;

		public HandToolRotateToMoveEventArgs(ulong objectId, ResourceKey pickedUpProductKey)
			: base(objectId)
		{
			mProductKey = pickedUpProductKey;
		}
	}

	public enum eEditTypeHandTool
	{
		kEditTypePlaced,
		kEditTypeCancelled,
		kEditTypeDeleted,
		kEditTypeUndone,
		kEditTypeRedone,
		kEditTypeHidden,
		kEditTypeMovedToFamilyInventory,
		kEditTypeUndoPlaced,
		kEditTypeUndoPlacedFailed
	}

	public class HandToolEditEventArgs : HandToolEventArgs
	{
		private eEditTypeHandTool mEditType;

		public eEditTypeHandTool EditType => mEditType;

		public HandToolEditEventArgs(ulong objectId, eEditTypeHandTool editEndedType)
			: base(objectId)
		{
			mEditType = editEndedType;
		}
	}

	public enum InventoryOperation
	{
		InventoryToWorldRedo,
		InventoryToWorldUndo,
		WorldToInventoryUndo,
		WorldToInventoryRedo,
		OutOfInventoryDeleteRedo,
		OutOfInventoryDeleteUndo
	}

	public delegate void InventoryEventHandler(object sender, InventoryEventArgs eventArgs);

	public class InventoryEventArgs : EventArgs
	{
		private ObjectGuid mObjectId;

		private int mChangeDir;

		public ObjectGuid ObjectId => mObjectId;

		public int ChangeDir => mChangeDir;

		public InventoryEventArgs(ulong objectId, InventoryOperation changeDir)
		{
			mObjectId = new ObjectGuid(objectId);
			mChangeDir = (int)changeDir;
		}
	}

	public delegate ulong ActiveSimIdEventHandler(object sender, EventArgs eventArgs);

	public class IsOkToTurnFaceToDestinationEventArgs : EventArgs
	{
		private ObjectGuid mObjId;

		private ObjectGuid mTargetObjId;

		private Vector3 mPos;

		private Quaternion mOrient;

		private ulong[] mObjectIdsToIgnore;

		private ulong[] mEndTurnObjectIdsToIgnore;

		private bool mbUseFullSimJig;

		public ObjectGuid ObjId => mObjId;

		public ObjectGuid TargetObjId => mTargetObjId;

		public Vector3 Pos => mPos;

		public Quaternion Orientation => mOrient;

		public ulong[] ObjectIdsToIgnore => mObjectIdsToIgnore;

		public ulong[] EndTurnObjectIdsToIgnore => mEndTurnObjectIdsToIgnore;

		public bool UseFullSimJig => mbUseFullSimJig;

		public IsOkToTurnFaceToDestinationEventArgs(ulong objectId, ulong targetObjectId, Vector3 pos, Quaternion orient, ulong[] objIdsToIgnore, ulong[] endTurnObjIdsToIgnore, bool bUseFullSimJig)
		{
			mObjId.mValue = objectId;
			mTargetObjId.mValue = targetObjectId;
			mPos = pos;
			mOrient = orient;
			mObjectIdsToIgnore = objIdsToIgnore;
			mEndTurnObjectIdsToIgnore = endTurnObjIdsToIgnore;
			mbUseFullSimJig = bUseFullSimJig;
		}
	}

	public delegate bool IsOkToTurnFaceToDestinationEventHandler(object sender, IsOkToTurnFaceToDestinationEventArgs eventArgs);

	public class HandToolPlacementValidityEventArgs : HandToolEventArgs
	{
		private uint mValid;

		public uint Valid => mValid;

		public HandToolPlacementValidityEventArgs(ulong objectId, uint valid)
			: base(objectId)
		{
			mValid = valid;
		}
	}

	public class HandToolPlacementModeEventArgs : HandToolEventArgs
	{
		private uint mPlacementMode;

		public uint PlacementMode => mPlacementMode;

		public HandToolPlacementModeEventArgs(ulong objectId, uint mode)
			: base(objectId)
		{
			mPlacementMode = mode;
		}
	}

	public class OnLotEditZonesChangedEventArgs : EventArgs
	{
		private ulong mLotId;

		public ulong LotId => mLotId;

		public OnLotEditZonesChangedEventArgs(ulong lotId)
		{
			mLotId = lotId;
		}
	}

	public delegate void OnLotEditZonesChangedEventHandler(object sender, OnLotEditZonesChangedEventArgs eventArgs);

	public delegate void FootprintEventHandler(object sender, FootprintEventArgs eventArgs);

	public class FootprintEventArgs : EventArgs
	{
		private ObjectGuid mObjectId;

		private uint mFootprintNameHash;

		private bool mEnabled;

		public ObjectGuid ObjectId => mObjectId;

		public uint FootprintNameHash => mFootprintNameHash;

		public bool Enabled => mEnabled;

		public FootprintEventArgs(ulong objectId, uint footprintNameHash, bool enabled)
		{
			mObjectId = new ObjectGuid(objectId);
			mFootprintNameHash = footprintNameHash;
			mEnabled = enabled;
		}
	}

	public delegate void WallsChangedEventHandler(object sender, WallsEventArgs eventArgs);

	public class WallsEventArgs : EventArgs
	{
		private ulong mLotId;

		public ulong LotId => mLotId;

		public WallsEventArgs(ulong lotId)
		{
			mLotId = lotId;
		}
	}

	public delegate int HandToolGetDepreciatedValueEventHandler(object sender, HandToolEventArgs eventArgs);

	public delegate int FamilyFundsQueryAvailableEventHandler(object sender, EventArgs eventArgs);

	public delegate bool FamilyFundsMakeChangeEventHandler(object sender, FamilyFundsMakeChangeEventArgs eventArgs);

	public class FamilyFundsMakeChangeEventArgs : EventArgs
	{
		private int mAmount;

		public int Amount => mAmount;

		public FamilyFundsMakeChangeEventArgs(int amount)
		{
			mAmount = amount;
		}
	}

	public delegate bool FamilyFundsCanBeChargedEventHandler(object sender, EventArgs eventArgs);

	public delegate bool IsInLiveDragModeEventHandler(object sender, EventArgs eventArgs);

	public delegate bool CanEyedropperPickObjectEventHandler(object sender, HandToolEventArgs eventArgs);

	public delegate bool IsIslandCounterEventHandler(object sender, HandToolEventArgs eventArgs);

	public delegate bool ShouldDoorBeVisibleInLiveModeEventHandler(object sender, HandToolEventArgs eventArgs);

	public delegate bool DoesObjectBlockWallDragEventHandler(object sender, HandToolEventArgs eventArgs);

	public delegate bool DoorRoutingEventHandler(object sender, DoorRoutingEventArgs eventArgs);

	public delegate bool OnRoutingEventHandler(object sender, OnRoutingEventArgs eventArgs);

	private delegate bool OnRoutingEvent_Delegate(ulong simObjId, ulong sourceObjId, uint eventType, float x, float y, float z, float sx, float sy, float sz, float dx, float dy, float dz, float fDistanceTravelled, float fDistanceRemaining, uint uData0, uint uData1);

	public delegate bool OnRoutingEvent_ObstaclesEncountered_Handler(object sender, OnRoutingEvent_ObstaclesEncountered_Args eventArgs);

	private delegate bool OnRoutingEvent_ObstaclesEncountered_Delegate(object[] args);

	public delegate uint OnPortalLocked_Delegate(ulong lotId, ulong routingObjectId, ulong portalObjectId, short roomFrom, short roomTo, bool initialLockedSetting);

	public class BuildBuyFeedbackEventArgs : EventArgs
	{
		public enum FeedbackType
		{
			Error,
			ExplicitError,
			Tooltip,
			DebugInfo
		}

		private uint mFeedbackCode;

		private uint mFeedbackGroup;

		private FeedbackType mFeedbackType;

		private string mFeedbackStr;

		private Vector3 mPosition;

		private ulong mBlockingObjectId;

		public uint FeedbackCode => mFeedbackCode;

		public uint FeedbackGroup => mFeedbackGroup;

		public FeedbackType Type => mFeedbackType;

		public string FeedbackString => mFeedbackStr;

		public Vector3 FeedbackPosition => mPosition;

		public ulong ObjectId => mBlockingObjectId;

		public BuildBuyFeedbackEventArgs(uint code, uint groupID, FeedbackType type, string str, Vector3 position, ulong blockingObjectId)
		{
			mFeedbackCode = code;
			mFeedbackGroup = groupID;
			mFeedbackType = type;
			mFeedbackStr = str;
			mPosition = position;
			mBlockingObjectId = blockingObjectId;
		}
	}

	public class StoreFeaturedItemPurchaseResultEventArgs : EventArgs
	{
		private string mFeedbackStr;

		private ulong mItemId;

		private uint mType;

		public string FeedbackString => mFeedbackStr;

		public ulong ItemId => mItemId;

		public uint Type => mType;

		public StoreFeaturedItemPurchaseResultEventArgs(ulong itemId, uint errorType, string str)
		{
			mFeedbackStr = str;
			mItemId = itemId;
			mType = errorType;
		}
	}

	public class UndoRedoStateChangeEventArgs : EventArgs
	{
		private uint mUndoListLen;

		private uint mRedoListLen;

		public uint UndoListLen => mUndoListLen;

		public uint RedoListLen => mRedoListLen;

		public UndoRedoStateChangeEventArgs(uint undoListLen, uint redoListLen)
		{
			mUndoListLen = undoListLen;
			mRedoListLen = redoListLen;
		}
	}

	public class EyedropperPickpEventArgs : EventArgs
	{
		private int mToolID;

		private ResourceKey mArg1;

		private ResourceKey mArg2;

		private ResourceKey mArg3;

		private string mArg4;

		public int ToolID => mToolID;

		public ResourceKey Arg1 => mArg1;

		public ResourceKey Arg2 => mArg2;

		public ResourceKey Arg3 => mArg3;

		public string Arg4 => mArg4;

		public EyedropperPickpEventArgs(int toolID, ResourceKey arg1, ResourceKey arg2, ResourceKey arg3, string arg4)
		{
			mToolID = toolID;
			mArg1 = arg1;
			mArg2 = arg2;
			mArg3 = arg3;
			mArg4 = arg4;
		}
	}

	public class LotLevelInfoChangeEventArgs : EventArgs
	{
		private ulong mLotId;

		public ulong LotId => mLotId;

		public LotLevelInfoChangeEventArgs(ulong lotId)
		{
			mLotId = lotId;
		}
	}

	public class AddLotPostLoadEventArgs : EventArgs
	{
		private ulong mLotId;

		public ulong LotId => mLotId;

		public AddLotPostLoadEventArgs(ulong lotId)
		{
			mLotId = lotId;
		}
	}

	public class RefreshRoofPitchButtonVisibilityEventArgs : EventArgs
	{
	}

	public class IsLotOwnedEventArgs : EventArgs
	{
		private ulong mLotId;

		public ulong LotId => mLotId;

		public IsLotOwnedEventArgs(ulong lotId)
		{
			mLotId = lotId;
		}
	}

	public delegate bool IsLotOwnedEventHandler(object sender, IsLotOwnedEventArgs eventArgs);

	public delegate ObjectGuid HandToolGetObjectIdForCloneEventHandler(ObjectGuid objectId);

	public delegate ObjectGuid HandToolCloneObjectEventHandler(ObjectGuid objectId);

	public enum TelemetryEventID
	{
		kUnknown,
		kCameraPitchUse,
		kCameraRotateUse,
		kCameraZoomUse,
		kBuildModePanel,
		kUndoEvent,
		kRedoEvent,
		kHudSubPanel,
		kTutorialResponse,
		kAudioUpdate
	}

	public enum CameraEvent
	{
		kKeyboard,
		kMouse,
		kUI
	}

	public class TelemetryEventArgs : EventArgs
	{
		private TelemetryEventID mEventID;

		private int mEventData1;

		private int mEventData2;

		public TelemetryEventID EventID => mEventID;

		public int EventData1 => mEventData1;

		public int EventData2 => mEventData2;

		public TelemetryEventArgs(TelemetryEventID eventID, int eventData1, int eventData2)
		{
			mEventID = eventID;
			mEventData1 = eventData1;
			mEventData2 = eventData2;
		}
	}

	public delegate void TelemetryEventHandler(object sender, TelemetryEventArgs eventArgs);

	public struct FindGoodLocationParams
	{
		public Vector3 StartPosition;

		public int DirectionToSelect;

		public int InitialSearchDirection;

		public uint FacingMask;

		public FindGoodLocationBooleans BooleanConstraints;

		public int RequiredRoomID;

		public int RequiredPlatformRoomID;

		public ValidatePlacementDelegate PlacementCheckFunc;

		public int OffsetScale;

		public float MaximumSearchRadius;

		public FindGoodLocationParams(Vector3 startPos)
			: this(startPos, FindGoodLocationBooleans.PreferEmptyTiles | FindGoodLocationBooleans.Routable)
		{
		}

		public FindGoodLocationParams(Vector3 startPos, FindGoodLocationBooleans constraints)
		{
			StartPosition = startPos;
			DirectionToSelect = -1;
			InitialSearchDirection = -1;
			FacingMask = FacingMaskUseAnyOrientation;
			BooleanConstraints = constraints;
			RequiredRoomID = -1;
			RequiredPlatformRoomID = -1;
			PlacementCheckFunc = null;
			OffsetScale = 1;
			MaximumSearchRadius = 10000000f;
		}
	}

	public enum SurfaceClass
	{
		Sand
	}

	private const float kFudgeForRenderPickLayerDetection = 0.25f;

	private const string kTypeName = "Sims3.SimIFace.World, SimIFace";

	public const float kPlatformHeight = 0.1875f;

	public const FindGoodLocationBooleans DefaultFindGoodLocationConstraints = FindGoodLocationBooleans.PreferEmptyTiles | FindGoodLocationBooleans.Routable;

	private static IWorld gWorld;

	private static EventHandler sOnStartupAppEventHandler;

	private static EventHandler sOnEnterNotInWorldEventHandler;

	private static EventHandler sOnLeaveNotInWorldEventHandler;

	private static EventHandler sOnWorldQuitEventHandler;

	private static EventHandler sOnQuitAppEventHandler;

	private static EventHandler sOnWorldLoadStartedEventHandler;

	private static EventHandler sOnWorldLoadStatusEventHandler;

	private static EventHandler sOnWorldLoadFinishedEventHandler;

	private static EventHandler sOnWorldLoadFailedEventHandler;

	private static EventHandler sOnFinishedLoadingWorldFileEventHandler;

	private static EventHandler<OnFinishedLoadingSaveGameEventArgs> sOnFinishedLoadingSaveGameEventHandler;

	private static EventHandler sOnTextureCompositeStartedEventHandler;

	private static EventHandler sOnTextureCompositeFinishedEventHandler;

	private static DateTime sLastTextureCompositeStartedEventTime;

	private static DateTime sLastTextureCompositeFinishedEventTime;

	private static bool sIsCompositing;

	private static EventHandler sOnLotAddedEventHandler;

	private static EventHandler sOnLotRemovedEventHandler;

	private static EventHandler sOnLotBoundsChangedEventHandler;

	private static EventHandler sOnLotTypeChangedEventHandler;

	private static EventHandler sOnObjectPlacedInLotEventHandler;

	private static EventHandler sOnObjectPendingDestructionEventHandler;

	private static EventHandler sOnObjectLotUpdateEventHandler;

	private static EventHandler sOnObjectVideoStoppedEventHandler;

	private static EventHandler sOnDesignModeStart;

	private static EventHandler sOnDesignModeCancel;

	private static DesignModeFoundPatternEventHandler sOnDesignModeFoundPattern;

	private static EventHandler sOnObjectSoundMaterialUpdatedEventHandler;

	public static HandToolQueryEventHandler HandToolAllowIntersectionCallback;

	public static HandToolQueryEventHandler HandToolAllowUserPickupCallback;

	public static HandToolAllowPlacementEventHandler HandToolAllowPlacementCallback;

	public static HandToolQueryEventHandler HandToolAllowPlacementInSlotCallback;

	public static HandToolQueryEventHandler HandToolCanBeSoldCallback;

	public static HandToolEventHandler HandToolLetScriptRotateObjectCallback;

	public static HandToolEventHandler HandToolLetScriptChangeModelCallback;

	public static HandToolEventHandler OnHandToolWallAdjacencyChangedCallback;

	public static HandToolEventHandler OnHandToolPickupCallback;

	public static HandToolEventHandler OnHandToolRotateToMoveCallback;

	public static HandToolEventHandler OnHandToolUnslottedCallback;

	public static HandToolEventHandler OnHandToolEditCallback;

	public static HandToolEventHandler OnHandToolMovementInSlotCallback;

	public static HandToolEventHandler OnHandToolPlacementInSlotCallback;

	public static HandToolEventHandler OnHandToolMovementCallback;

	public static HandToolEventHandler OnHandToolInvalidMovementCallback;

	public static HandToolEventHandler OnHandToolRotatedCallback;

	public static HandToolEventHandler OnHandToolSoldCallback;

	public static InventoryEventHandler OnPlaceObjectIntoInventoryCallback;

	public static ActiveSimIdEventHandler ActiveSimIdCallback;

	public static IsOkToTurnFaceToDestinationEventHandler IsOkToTurnFaceToDestinationCallback;

	public static HandToolEventHandler OnHandToolPlacementValidityChangedCallback;

	public static HandToolEventHandler OnHandToolPlacementModeChangedCallback;

	public static HandToolQueryEventHandler DoesObjectHaveBuildBuyInteractionsCallback;

	public static HandToolEventHandler ShowBuildBuyInteractionsCallback;

	public static HandToolEventHandler OnHandToolChangedCallback;

	public static OnLotEditZonesChangedEventHandler OnLotEditZonesChangedCallback;

	public static FootprintEventHandler OnFootprintChangedCallback;

	public static WallsChangedEventHandler OnWallsChangedCallback;

	public static HandToolGetDepreciatedValueEventHandler HandToolGetDepreciatedValueCallback;

	public static FamilyFundsQueryAvailableEventHandler FamilyFundsQueryAvailableCallback;

	public static FamilyFundsMakeChangeEventHandler FamilyFundsMakeChangeCallback;

	public static FamilyFundsCanBeChargedEventHandler FamilyFundsCanBeChargedCallback;

	public static IsInLiveDragModeEventHandler IsInLiveDragModeCallback;

	public static CanEyedropperPickObjectEventHandler CanEyedropperPickObjectCallback;

	public static IsIslandCounterEventHandler IsIslandCounterCallback;

	public static ShouldDoorBeVisibleInLiveModeEventHandler ShouldDoorBeVisibleInLiveModeCallback;

	public static DoesObjectBlockWallDragEventHandler DoesObjectBlockWallDragCallback;

	public static DoorRoutingEventHandler DoorRoutingEventCallback;

	public static OnRoutingEventHandler OnRoutingEventCallback;

	private static OnRoutingEvent_Delegate mOnRoutingEvent;

	public static OnRoutingEvent_ObstaclesEncountered_Handler OnRoutingEvent_ObstaclesEncountered_Callback;

	private static OnRoutingEvent_ObstaclesEncountered_Delegate mOnRoutingEvent_ObstaclesEncountered;

	private static OnPortalLocked_Delegate mOnPortalLocked_Delegate;

	public static EventHandler OnBuildBuyFeedbackCallback;

	public static EventHandler StoreFeaturedItemPurchaseResultCallback;

	public static EventHandler OnHideAllBuildBuyFeedbackCallback;

	public static EventHandler OnUndoRedoStateChangeCallback;

	public static EventHandler OnHandToolPlacementCallback;

	public static EventHandler OnEyedropperPickCallback;

	public static EventHandler OnLotLevelInfoChangeCallback;

	public static EventHandler OnAddLotPostLoadCallback;

	public static EventHandler RefreshRoofPitchButtonVisibilityCallback;

	public static IsLotOwnedEventHandler IsLotOwnedCallback;

	public static HandToolGetObjectIdForCloneEventHandler HandToolGetObjectIdForCloneCallback;

	public static HandToolCloneObjectEventHandler HandToolCloneObjectCallback;

	public static TelemetryEventHandler OnTelemetryEventCallback;

	public static readonly uint FacingMaskUseCurrentOrientationOnly;

	public static readonly uint FacingMaskUseAnyOrientation;

	public static readonly uint FacingMaskUseSymmetricalOrientation;

	public static readonly uint FacingMaskForSquares;

	public static bool IsCompositingTextures => sIsCompositing;

	public static DateTime LastTextureCompositeStartTime => sLastTextureCompositeStartedEventTime;

	public static DateTime LastTextureCompositeEndTime => sLastTextureCompositeFinishedEventTime;

	public static float CatalogRefundRate
	{
		get
		{
			if (gWorld == null)
			{
				return 1f;
			}
			return gWorld.GetCatalogRefundRate();
		}
	}

	public static ObjectGuid GlobalObjectManagerId => new ObjectGuid(gWorld.GetGlobalObjectManagerId());

	public static bool UpdateLightRigs
	{
		get
		{
			return gWorld.GetUpdateLightRigs();
		}
		set
		{
			gWorld.SetUpdateLightRigs(value);
		}
	}

	public static event EventHandler OnStartupAppEventHandler
	{
		add
		{
			sOnStartupAppEventHandler = (EventHandler)Delegate.Combine(sOnStartupAppEventHandler, value);
		}
		remove
		{
			sOnStartupAppEventHandler = (EventHandler)Delegate.Remove(sOnStartupAppEventHandler, value);
		}
	}

	public static event EventHandler OnEnterNotInWorldEventHandler
	{
		add
		{
			sOnEnterNotInWorldEventHandler = (EventHandler)Delegate.Combine(sOnEnterNotInWorldEventHandler, value);
		}
		remove
		{
			sOnEnterNotInWorldEventHandler = (EventHandler)Delegate.Remove(sOnEnterNotInWorldEventHandler, value);
		}
	}

	public static event EventHandler OnLeaveNotInWorldEventHandler
	{
		add
		{
			sOnLeaveNotInWorldEventHandler = (EventHandler)Delegate.Combine(sOnLeaveNotInWorldEventHandler, value);
		}
		remove
		{
			sOnLeaveNotInWorldEventHandler = (EventHandler)Delegate.Remove(sOnLeaveNotInWorldEventHandler, value);
		}
	}

	public static event EventHandler OnWorldQuitEventHandler
	{
		add
		{
			sOnWorldQuitEventHandler = (EventHandler)Delegate.Combine(sOnWorldQuitEventHandler, value);
		}
		remove
		{
			sOnWorldQuitEventHandler = (EventHandler)Delegate.Remove(sOnWorldQuitEventHandler, value);
		}
	}

	public static event EventHandler OnQuitAppEventHandler
	{
		add
		{
			sOnQuitAppEventHandler = (EventHandler)Delegate.Combine(sOnQuitAppEventHandler, value);
		}
		remove
		{
			sOnQuitAppEventHandler = (EventHandler)Delegate.Remove(sOnQuitAppEventHandler, value);
		}
	}

	public static event EventHandler OnWorldLoadStartedEventHandler
	{
		add
		{
			sOnWorldLoadStartedEventHandler = (EventHandler)Delegate.Combine(sOnWorldLoadStartedEventHandler, value);
		}
		remove
		{
			sOnWorldLoadStartedEventHandler = (EventHandler)Delegate.Remove(sOnWorldLoadStartedEventHandler, value);
		}
	}

	public static event EventHandler OnWorldLoadStatusEventHandler
	{
		add
		{
			sOnWorldLoadStatusEventHandler = (EventHandler)Delegate.Combine(sOnWorldLoadStatusEventHandler, value);
		}
		remove
		{
			sOnWorldLoadStatusEventHandler = (EventHandler)Delegate.Remove(sOnWorldLoadStatusEventHandler, value);
		}
	}

	public static event EventHandler OnWorldLoadFinishedEventHandler
	{
		add
		{
			sOnWorldLoadFinishedEventHandler = (EventHandler)Delegate.Combine(sOnWorldLoadFinishedEventHandler, value);
		}
		remove
		{
			sOnWorldLoadFinishedEventHandler = (EventHandler)Delegate.Remove(sOnWorldLoadFinishedEventHandler, value);
		}
	}

	public static event EventHandler OnWorldLoadFailedEventHandler
	{
		add
		{
			sOnWorldLoadFailedEventHandler = (EventHandler)Delegate.Combine(sOnWorldLoadFailedEventHandler, value);
		}
		remove
		{
			sOnWorldLoadFailedEventHandler = (EventHandler)Delegate.Remove(sOnWorldLoadFailedEventHandler, value);
		}
	}

	public static event EventHandler OnFinishedLoadingWorldFileEventHandler
	{
		add
		{
			sOnFinishedLoadingWorldFileEventHandler = (EventHandler)Delegate.Combine(sOnFinishedLoadingWorldFileEventHandler, value);
		}
		remove
		{
			sOnFinishedLoadingWorldFileEventHandler = (EventHandler)Delegate.Remove(sOnFinishedLoadingWorldFileEventHandler, value);
		}
	}

	public static event EventHandler<OnFinishedLoadingSaveGameEventArgs> OnFinishedLoadingSaveGameEventHandler
	{
		add
		{
			sOnFinishedLoadingSaveGameEventHandler = (EventHandler<OnFinishedLoadingSaveGameEventArgs>)Delegate.Combine(sOnFinishedLoadingSaveGameEventHandler, value);
		}
		remove
		{
			sOnFinishedLoadingSaveGameEventHandler = (EventHandler<OnFinishedLoadingSaveGameEventArgs>)Delegate.Remove(sOnFinishedLoadingSaveGameEventHandler, value);
		}
	}

	public static event EventHandler OnTextureCompositeStartedEventHandler
	{
		add
		{
			sOnTextureCompositeStartedEventHandler = (EventHandler)Delegate.Combine(sOnTextureCompositeStartedEventHandler, value);
		}
		remove
		{
			sOnTextureCompositeStartedEventHandler = (EventHandler)Delegate.Remove(sOnTextureCompositeStartedEventHandler, value);
		}
	}

	public static event EventHandler OnTextureCompositeFinishedEventHandler
	{
		add
		{
			sOnTextureCompositeFinishedEventHandler = (EventHandler)Delegate.Combine(sOnTextureCompositeFinishedEventHandler, value);
		}
		remove
		{
			sOnTextureCompositeFinishedEventHandler = (EventHandler)Delegate.Remove(sOnTextureCompositeFinishedEventHandler, value);
		}
	}

	public static event EventHandler OnLotAddedEventHandler
	{
		add
		{
			sOnLotAddedEventHandler = (EventHandler)Delegate.Combine(sOnLotAddedEventHandler, value);
		}
		remove
		{
			sOnLotAddedEventHandler = (EventHandler)Delegate.Remove(sOnLotAddedEventHandler, value);
		}
	}

	public static event EventHandler OnLotRemovedEventHandler
	{
		add
		{
			sOnLotRemovedEventHandler = (EventHandler)Delegate.Combine(sOnLotRemovedEventHandler, value);
		}
		remove
		{
			sOnLotRemovedEventHandler = (EventHandler)Delegate.Remove(sOnLotRemovedEventHandler, value);
		}
	}

	public static event EventHandler OnLotBoundsChangedEventHandler
	{
		add
		{
			sOnLotBoundsChangedEventHandler = (EventHandler)Delegate.Combine(sOnLotBoundsChangedEventHandler, value);
		}
		remove
		{
			sOnLotBoundsChangedEventHandler = (EventHandler)Delegate.Remove(sOnLotBoundsChangedEventHandler, value);
		}
	}

	public static event EventHandler OnLotTypeChangedEventHandler
	{
		add
		{
			sOnLotTypeChangedEventHandler = (EventHandler)Delegate.Combine(sOnLotTypeChangedEventHandler, value);
		}
		remove
		{
			sOnLotTypeChangedEventHandler = (EventHandler)Delegate.Remove(sOnLotTypeChangedEventHandler, value);
		}
	}

	public static event EventHandler OnObjectPlacedInLotEventHandler
	{
		add
		{
			sOnObjectPlacedInLotEventHandler = (EventHandler)Delegate.Combine(sOnObjectPlacedInLotEventHandler, value);
		}
		remove
		{
			sOnObjectPlacedInLotEventHandler = (EventHandler)Delegate.Remove(sOnObjectPlacedInLotEventHandler, value);
		}
	}

	public static event EventHandler OnObjectPendingDestructionEventHandler
	{
		add
		{
			sOnObjectPendingDestructionEventHandler = (EventHandler)Delegate.Combine(sOnObjectPendingDestructionEventHandler, value);
		}
		remove
		{
			sOnObjectPendingDestructionEventHandler = (EventHandler)Delegate.Remove(sOnObjectPendingDestructionEventHandler, value);
		}
	}

	public static event EventHandler OnObjectLotUpdateEventHandler
	{
		add
		{
			sOnObjectLotUpdateEventHandler = (EventHandler)Delegate.Combine(sOnObjectLotUpdateEventHandler, value);
		}
		remove
		{
			sOnObjectLotUpdateEventHandler = (EventHandler)Delegate.Remove(sOnObjectLotUpdateEventHandler, value);
		}
	}

	public static event EventHandler OnObjectVideoStoppedEventHandler
	{
		add
		{
			sOnObjectVideoStoppedEventHandler = (EventHandler)Delegate.Combine(sOnObjectVideoStoppedEventHandler, value);
		}
		remove
		{
			sOnObjectVideoStoppedEventHandler = (EventHandler)Delegate.Remove(sOnObjectVideoStoppedEventHandler, value);
		}
	}

	public static event EventHandler OnDesignModeStartEventHandler
	{
		add
		{
			sOnDesignModeStart = (EventHandler)Delegate.Combine(sOnDesignModeStart, value);
		}
		remove
		{
			sOnDesignModeStart = (EventHandler)Delegate.Remove(sOnDesignModeStart, value);
		}
	}

	public static event EventHandler OnDesignModeCancelEventHandler
	{
		add
		{
			sOnDesignModeCancel = (EventHandler)Delegate.Combine(sOnDesignModeCancel, value);
		}
		remove
		{
			sOnDesignModeCancel = (EventHandler)Delegate.Remove(sOnDesignModeCancel, value);
		}
	}

	public static event DesignModeFoundPatternEventHandler OnDesignModeFoundPatternEventHandler
	{
		add
		{
			sOnDesignModeFoundPattern = (DesignModeFoundPatternEventHandler)Delegate.Combine(sOnDesignModeFoundPattern, value);
		}
		remove
		{
			sOnDesignModeFoundPattern = (DesignModeFoundPatternEventHandler)Delegate.Remove(sOnDesignModeFoundPattern, value);
		}
	}

	public static event EventHandler OnObjectSoundMaterialUpdatedEventHandler
	{
		add
		{
			sOnObjectSoundMaterialUpdatedEventHandler = (EventHandler)Delegate.Combine(sOnObjectSoundMaterialUpdatedEventHandler, value);
		}
		remove
		{
			sOnObjectSoundMaterialUpdatedEventHandler = (EventHandler)Delegate.Remove(sOnObjectSoundMaterialUpdatedEventHandler, value);
		}
	}

	public static event OnPortalLocked_Delegate OnPortalLockedCallback
	{
		add
		{
			mOnPortalLocked_Delegate = (OnPortalLocked_Delegate)Delegate.Combine(mOnPortalLocked_Delegate, value);
			RegisterCallbackDelegate(WorldEvent.OnPortalLocked, mOnPortalLocked_Delegate);
		}
		remove
		{
			mOnPortalLocked_Delegate = (OnPortalLocked_Delegate)Delegate.Remove(mOnPortalLocked_Delegate, value);
			RegisterCallbackDelegate(WorldEvent.OnPortalLocked, mOnPortalLocked_Delegate);
		}
	}

	static World()
	{
		gWorld = null;
		sLastTextureCompositeStartedEventTime = DateTime.MaxValue;
		sLastTextureCompositeFinishedEventTime = DateTime.MinValue;
		sIsCompositing = false;
		FacingMaskUseCurrentOrientationOnly = 0u;
		FacingMaskUseAnyOrientation = 255u;
		FacingMaskUseSymmetricalOrientation = 15u;
		FacingMaskForSquares = 3u;
		gWorld = (IWorld)AppDomain.CurrentDomain.GetData("World");
	}

	private static void RegisterCallbackMethod(WorldEvent worldEvent)
	{
		if (gWorld != null)
		{
			gWorld.RegisterCallbackMethod(worldEvent, "Sims3.SimIFace.World, SimIFace", worldEvent.ToString());
		}
	}

	private static void RegisterCallbackDelegate(WorldEvent worldEvent, Delegate handler)
	{
		if (gWorld != null)
		{
			gWorld.RegisterCallbackDelegate(worldEvent, handler);
		}
	}

	public static void RegisterAllCallbacks()
	{
		RegisterCallbackMethod(WorldEvent.OnStartupApp);
		RegisterCallbackMethod(WorldEvent.OnEnterNotInWorld);
		RegisterCallbackMethod(WorldEvent.OnLeaveNotInWorld);
		RegisterCallbackMethod(WorldEvent.OnWorldQuit);
		RegisterCallbackMethod(WorldEvent.OnQuitApp);
		RegisterCallbackMethod(WorldEvent.OnWorldLoadStarted);
		RegisterCallbackMethod(WorldEvent.OnWorldLoadStatus);
		RegisterCallbackMethod(WorldEvent.OnWorldLoadFinished);
		RegisterCallbackMethod(WorldEvent.OnWorldLoadFailed);
		RegisterCallbackMethod(WorldEvent.OnFinishedLoadingWorldFile);
		RegisterCallbackMethod(WorldEvent.OnFinishedLoadingSaveGame);
		RegisterCallbackMethod(WorldEvent.OnTextureCompositeStarted);
		RegisterCallbackMethod(WorldEvent.OnTextureCompositeFinished);
		RegisterCallbackMethod(WorldEvent.OnLotAdded);
		RegisterCallbackMethod(WorldEvent.OnLotRemoved);
		RegisterCallbackMethod(WorldEvent.OnLotBoundsChanged);
		RegisterCallbackMethod(WorldEvent.OnLotTypeChanged);
		RegisterCallbackMethod(WorldEvent.OnObjectLotUpdate);
		RegisterCallbackMethod(WorldEvent.OnObjectPlacedInLot);
		RegisterCallbackMethod(WorldEvent.OnObjectPendingDestruction);
		RegisterCallbackMethod(WorldEvent.OnObjectVideoStopped);
		RegisterCallbackMethod(WorldEvent.OnDesignModeStart);
		RegisterCallbackMethod(WorldEvent.OnDesignModeCancel);
		RegisterCallbackMethod(WorldEvent.OnDesignModeFoundPattern);
		RegisterCallbackMethod(WorldEvent.HandToolAllowIntersection);
		RegisterCallbackMethod(WorldEvent.HandToolAllowUserPickup);
		RegisterCallbackMethod(WorldEvent.HandToolAllowPlacement);
		RegisterCallbackMethod(WorldEvent.HandToolAllowPlacementInSlot);
		RegisterCallbackMethod(WorldEvent.HandToolCanBeSold);
		RegisterCallbackMethod(WorldEvent.HandToolLetScriptRotateObject);
		RegisterCallbackMethod(WorldEvent.HandToolLetScriptChangeModel);
		RegisterCallbackMethod(WorldEvent.OnHandToolWallAdjacencyChanged);
		RegisterCallbackMethod(WorldEvent.OnHandToolPickup);
		RegisterCallbackMethod(WorldEvent.OnHandToolRotateToMove);
		RegisterCallbackMethod(WorldEvent.OnHandToolUnslotted);
		RegisterCallbackMethod(WorldEvent.OnHandToolEdit);
		RegisterCallbackMethod(WorldEvent.OnHandToolPlacementInSlot);
		RegisterCallbackMethod(WorldEvent.OnHandToolMovement);
		RegisterCallbackMethod(WorldEvent.OnHandToolInvalidMovement);
		RegisterCallbackMethod(WorldEvent.OnHandToolRotated);
		RegisterCallbackMethod(WorldEvent.OnHandToolSold);
		RegisterCallbackMethod(WorldEvent.OnHandToolPlacementValidityChanged);
		RegisterCallbackMethod(WorldEvent.OnHandToolPlacementModeChanged);
		RegisterCallbackMethod(WorldEvent.DoesObjectHaveBuildBuyInteractions);
		RegisterCallbackMethod(WorldEvent.ShowBuildBuyInteractions);
		RegisterCallbackMethod(WorldEvent.OnLotEditZonesChanged);
		RegisterCallbackMethod(WorldEvent.OnFootprintChanged);
		RegisterCallbackMethod(WorldEvent.OnWallsChanged);
		RegisterCallbackMethod(WorldEvent.HandToolGetDepreciatedValue);
		RegisterCallbackMethod(WorldEvent.FamilyFundsQueryAvailable);
		RegisterCallbackMethod(WorldEvent.FamilyFundsMakeChange);
		RegisterCallbackMethod(WorldEvent.FamilyFundsCanBeCharged);
		RegisterCallbackMethod(WorldEvent.IsInLiveDragMode);
		RegisterCallbackMethod(WorldEvent.CanEyedropperPickObject);
		RegisterCallbackMethod(WorldEvent.IsIslandCounter);
		RegisterCallbackMethod(WorldEvent.DoesObjectBlockWallDrag);
		RegisterCallbackMethod(WorldEvent.DoorRoutingEvent);
		RegisterCallbackMethod(WorldEvent.ShouldDoorBeVisibleInLiveMode);
		RegisterCallbackMethod(WorldEvent.OnStoreFeaturedItemPurchaseResult);
		RegisterCallbackMethod(WorldEvent.OnBuildBuyFeedback);
		RegisterCallbackMethod(WorldEvent.OnHideAllBuildBuyFeedback);
		RegisterCallbackMethod(WorldEvent.OnEyedropperPick);
		RegisterCallbackMethod(WorldEvent.OnUndoRedoStateChange);
		mOnRoutingEvent = OnRoutingEvent;
		RegisterCallbackDelegate(WorldEvent.OnRoutingEvent, mOnRoutingEvent);
		mOnRoutingEvent_ObstaclesEncountered = OnRoutingEvent_ObstaclesEncountered;
		RegisterCallbackDelegate(WorldEvent.OnRoutingEvent_ObstaclesEncountered, mOnRoutingEvent_ObstaclesEncountered);
		RegisterCallbackMethod(WorldEvent.IsOkToTurnFaceToDestination);
		RegisterCallbackMethod(WorldEvent.ActiveSimId);
		RegisterCallbackMethod(WorldEvent.OnPlaceObjectIntoInventory);
		RegisterCallbackMethod(WorldEvent.OnLotLevelInfoChange);
		RegisterCallbackMethod(WorldEvent.OnAddLotPostLoad);
		RegisterCallbackMethod(WorldEvent.RefreshRoofPitchButtonVisibility);
		RegisterCallbackMethod(WorldEvent.IsLotOwned);
		RegisterCallbackMethod(WorldEvent.HandToolGetObjectIdForClone);
		RegisterCallbackMethod(WorldEvent.HandToolCloneObject);
		RegisterCallbackMethod(WorldEvent.OnTelemetryEvent);
	}

	private static void OnStartupApp()
	{
		if (sOnStartupAppEventHandler != null)
		{
			sOnStartupAppEventHandler(gWorld.GetType(), new OnStartupAppEventArgs());
		}
	}

	private static void OnEnterNotInWorld()
	{
		if (sOnEnterNotInWorldEventHandler != null)
		{
			sOnEnterNotInWorldEventHandler(gWorld.GetType(), new OnEnterNotInWorldEventArgs());
		}
	}

	private static void OnLeaveNotInWorld()
	{
		if (sOnLeaveNotInWorldEventHandler != null)
		{
			sOnLeaveNotInWorldEventHandler(gWorld.GetType(), new OnLeaveNotInWorldEventArgs());
		}
	}

	private static void OnWorldQuit()
	{
		if (sOnWorldQuitEventHandler != null)
		{
			sOnWorldQuitEventHandler(gWorld.GetType(), new OnWorldQuitEventArgs());
		}
	}

	private static void OnQuitApp()
	{
		if (sOnQuitAppEventHandler != null)
		{
			sOnQuitAppEventHandler(gWorld.GetType(), new OnQuitAppEventArgs());
		}
	}

	private static void OnWorldLoadStarted()
	{
		ResetCompositeTimes();
		if (sOnWorldLoadStartedEventHandler != null)
		{
			sOnWorldLoadStartedEventHandler(gWorld.GetType(), new OnWorldLoadStartedEventArgs());
		}
	}

	private static void OnWorldLoadStatus(float percentage)
	{
		if (sOnWorldLoadStatusEventHandler != null)
		{
			sOnWorldLoadStatusEventHandler(gWorld.GetType(), new OnWorldLoadStatusEventArgs(percentage));
		}
	}

	private static void OnWorldLoadFinished()
	{
		ResetCompositeTimes();
		if (sOnWorldLoadFinishedEventHandler != null)
		{
			sOnWorldLoadFinishedEventHandler(gWorld.GetType(), new OnWorldLoadFinishedEventArgs());
		}
	}

	private static void OnWorldLoadFailed()
	{
		if (sOnWorldLoadFailedEventHandler != null)
		{
			sOnWorldLoadFailedEventHandler(gWorld.GetType(), new OnWorldLoadFailedEventArgs());
		}
	}

	private static void OnFinishedLoadingWorldFile()
	{
		if (sOnFinishedLoadingWorldFileEventHandler != null)
		{
			sOnFinishedLoadingWorldFileEventHandler(gWorld.GetType(), new OnFinishedLoadingWorldFileEventArgs());
		}
	}

	private static void OnFinishedLoadingSaveGame(uint warningCount)
	{
		if (sOnFinishedLoadingSaveGameEventHandler != null)
		{
			sOnFinishedLoadingSaveGameEventHandler(gWorld.GetType(), new OnFinishedLoadingSaveGameEventArgs(warningCount));
		}
	}

	public static void ResetCompositeTimes()
	{
		sLastTextureCompositeStartedEventTime = DateTime.MaxValue;
		sLastTextureCompositeFinishedEventTime = DateTime.MinValue;
	}

	public static TimeSpan GetTimeSinceCompositeEnd()
	{
		DateTime now = DateTime.Now;
		if (!IsCompositingTextures && now > LastTextureCompositeEndTime && LastTextureCompositeEndTime > LastTextureCompositeStartTime)
		{
			return now - LastTextureCompositeEndTime;
		}
		return TimeSpan.Zero;
	}

	public static TimeSpan GetTimeSinceCompositeStarted()
	{
		if (IsCompositingTextures)
		{
			return DateTime.Now - LastTextureCompositeStartTime;
		}
		return TimeSpan.Zero;
	}

	private static void OnTextureCompositeStarted()
	{
		sLastTextureCompositeStartedEventTime = DateTime.Now;
		sIsCompositing = true;
		if (sOnTextureCompositeStartedEventHandler != null)
		{
			sOnTextureCompositeStartedEventHandler(gWorld.GetType(), new OnTextureCompositeStartedEventArgs());
		}
	}

	private static void OnTextureCompositeFinished()
	{
		sLastTextureCompositeFinishedEventTime = DateTime.Now;
		sIsCompositing = false;
		if (sOnTextureCompositeFinishedEventHandler != null)
		{
			sOnTextureCompositeFinishedEventHandler(gWorld.GetType(), new OnTextureCompositeFinishedEventArgs());
		}
	}

	private static void OnLotAdded(ulong lotId, bool editable)
	{
		if (sOnLotAddedEventHandler != null)
		{
			sOnLotAddedEventHandler(gWorld.GetType(), new OnLotAddedEventArgs(lotId, editable));
		}
	}

	private static void OnLotRemoved(ulong lotId)
	{
		if (sOnLotRemovedEventHandler != null)
		{
			sOnLotRemovedEventHandler(gWorld.GetType(), new OnLotRemovedEventArgs(lotId));
		}
	}

	private static void OnLotBoundsChanged(ulong lotId)
	{
		if (sOnLotBoundsChangedEventHandler != null)
		{
			sOnLotBoundsChangedEventHandler(gWorld.GetType(), new OnLotBoundsChangedEventArgs(lotId));
		}
	}

	private static void OnLotTypeChanged(ulong lotId, int lotType)
	{
		if (sOnLotTypeChangedEventHandler != null)
		{
			sOnLotTypeChangedEventHandler(gWorld.GetType(), new OnLotTypeChangedEventArgs(lotId, (LotType)lotType));
		}
	}

	private static void OnObjectPlacedInLot(ulong objectId, ulong lotId)
	{
		if (sOnObjectPlacedInLotEventHandler != null)
		{
			sOnObjectPlacedInLotEventHandler(gWorld.GetType(), new OnObjectPlacedInLotEventArgs(objectId, lotId));
		}
	}

	private static void OnObjectPendingDestruction(ulong objectId, ulong lotId)
	{
		if (sOnObjectPendingDestructionEventHandler != null)
		{
			sOnObjectPendingDestructionEventHandler(gWorld.GetType(), new OnObjectPendingDestructionEventArgs(objectId, lotId));
		}
	}

	private static void OnObjectLotUpdate(ulong objectId, ulong lotId, int level, int roomId)
	{
		if (sOnObjectLotUpdateEventHandler != null)
		{
			sOnObjectLotUpdateEventHandler(gWorld.GetType(), new OnObjectLotUpdateEventArgs(objectId, lotId, level, roomId));
		}
	}

	private static void OnObjectVideoStopped(ulong objectId)
	{
		if (sOnObjectVideoStoppedEventHandler != null)
		{
			sOnObjectVideoStoppedEventHandler(gWorld.GetType(), new OnObjectVideoStoppedEventArgs(objectId));
		}
	}

	private static void OnDesignModeStart()
	{
		if (sOnDesignModeStart != null)
		{
			sOnDesignModeStart(null, new EventArgs());
		}
	}

	private static void OnDesignModeCancel()
	{
		if (sOnDesignModeCancel != null)
		{
			sOnDesignModeCancel(null, new EventArgs());
		}
	}

	private static void OnDesignModeFoundPattern(ResourceKey patternKey, ResourceKey presetKey)
	{
		if (sOnDesignModeFoundPattern != null)
		{
			sOnDesignModeFoundPattern(null, new DesignModePatternEventArgs(patternKey, presetKey));
		}
	}

	public static void OnObjectSoundMaterialUpdated(ObjectGuid objectId, uint index, SurfaceTypes soundMaterial)
	{
		if (sOnObjectSoundMaterialUpdatedEventHandler != null)
		{
			sOnObjectSoundMaterialUpdatedEventHandler(gWorld.GetType(), new OnObjectSoundMaterialUpdatedEventArgs(objectId, index, soundMaterial));
		}
	}

	private static bool HandToolAllowIntersection(ulong objectId, ulong objectToIntersectId, Matrix44 mat)
	{
		if (HandToolAllowIntersectionCallback != null)
		{
			return HandToolAllowIntersectionCallback(null, new HandToolIntersectEventArgs(objectId, objectToIntersectId, mat));
		}
		return false;
	}

	private static bool HandToolAllowUserPickup(ulong objectId)
	{
		if (HandToolAllowUserPickupCallback != null)
		{
			return HandToolAllowUserPickupCallback(null, new HandToolEventArgs(objectId));
		}
		return false;
	}

	private static string HandToolAllowPlacement(ulong objectId)
	{
		if (HandToolAllowPlacementCallback != null)
		{
			string errorStr = null;
			if (!HandToolAllowPlacementCallback(null, new HandToolEventArgs(objectId), ref errorStr))
			{
				return "!" + errorStr;
			}
		}
		return null;
	}

	private static uint HandToolAllowPlacementInSlot(ulong objectId, ulong objectWithSlot, uint slotNameHash)
	{
		SlotPlacementCheckResults result = SlotPlacementCheckResults.Invalid;
		if (HandToolAllowPlacementInSlotCallback != null)
		{
			HandToolSlotEventArgs e = new HandToolSlotEventArgs(objectId, objectWithSlot, slotNameHash);
			HandToolAllowPlacementInSlotCallback(null, e);
			result = e.Result;
		}
		return (uint)result;
	}

	private static bool HandToolCanBeSold(ulong objectId)
	{
		if (HandToolCanBeSoldCallback != null)
		{
			return HandToolCanBeSoldCallback(null, new HandToolEventArgs(objectId));
		}
		return false;
	}

	private static void HandToolLetScriptRotateObject(ulong objectId)
	{
		if (HandToolLetScriptRotateObjectCallback != null)
		{
			HandToolLetScriptRotateObjectCallback(null, new HandToolEventArgs(objectId));
		}
	}

	private static void HandToolLetScriptChangeModel(ulong objectId, float x, float y, float z)
	{
		if (HandToolLetScriptChangeModelCallback != null)
		{
			HandToolLetScriptChangeModelCallback(null, new HandToolChangeModelArgs(objectId, x, y, z));
		}
	}

	private static void OnHandToolWallAdjacencyChanged(ulong objectId, int wallFlags)
	{
		if (OnHandToolWallAdjacencyChangedCallback != null)
		{
			OnHandToolWallAdjacencyChangedCallback(null, new HandToolWallAdjacencyEventArgs(objectId, wallFlags));
		}
	}

	private static void OnHandToolPickup(ulong objectId, uint pickupType, ResourceKey productKey)
	{
		if (OnHandToolPickupCallback != null)
		{
			OnHandToolPickupCallback(null, new HandToolPickupEventArgs(objectId, (ePickupTypeHandTool)pickupType, productKey));
		}
		OnHandToolChanged(objectId);
	}

	private static void OnHandToolRotateToMove(ulong objectId, ResourceKey productKey)
	{
		if (OnHandToolRotateToMoveCallback != null)
		{
			OnHandToolRotateToMoveCallback(null, new HandToolRotateToMoveEventArgs(objectId, productKey));
		}
	}

	private static void OnHandToolUnslotted(ulong objectId, ulong objectWithSlotId, uint slotNameHash)
	{
		if (OnHandToolUnslottedCallback != null)
		{
			OnHandToolUnslottedCallback(null, new HandToolSlotEventArgs(objectId, objectWithSlotId, slotNameHash));
		}
	}

	private static void OnHandToolEdit(ulong objectId, uint editEndedType)
	{
		if (OnHandToolEditCallback != null)
		{
			OnHandToolEditCallback(null, new HandToolEditEventArgs(objectId, (eEditTypeHandTool)editEndedType));
		}
		OnHandToolChanged(ObjectGuid.InvalidObjectGuid.mValue);
	}

	private static void OnHandToolPlacementInSlot(ulong objectId, ulong objectWithSlotId, uint slotNameHash, bool editEnded)
	{
		if (editEnded)
		{
			if (OnHandToolPlacementInSlotCallback != null)
			{
				OnHandToolPlacementInSlotCallback(null, new HandToolSlotEventArgs(objectId, objectWithSlotId, slotNameHash));
			}
			OnHandToolChanged(ObjectGuid.InvalidObjectGuid.mValue);
		}
		else if (OnHandToolMovementInSlotCallback != null)
		{
			OnHandToolMovementInSlotCallback(null, new HandToolSlotEventArgs(objectId, objectWithSlotId, slotNameHash));
		}
	}

	private static void OnHandToolMovement(ulong objectId)
	{
		if (OnHandToolMovementCallback != null)
		{
			OnHandToolMovementCallback(null, new HandToolEventArgs(objectId));
		}
	}

	private static void OnHandToolInvalidMovement(ulong objectId)
	{
		if (OnHandToolInvalidMovementCallback != null)
		{
			OnHandToolInvalidMovementCallback(null, new HandToolEventArgs(objectId));
		}
	}

	private static void OnHandToolRotated(ulong objectId)
	{
		if (OnHandToolRotatedCallback != null)
		{
			OnHandToolRotatedCallback(null, new HandToolEventArgs(objectId));
		}
	}

	private static void OnHandToolSold(ulong objectId)
	{
		if (OnHandToolSoldCallback != null)
		{
			OnHandToolSoldCallback(null, new HandToolEventArgs(objectId));
		}
		OnHandToolChanged(ObjectGuid.InvalidObjectGuid.mValue);
	}

	private static void OnPlaceObjectIntoInventory(ulong objectId, int changeDir)
	{
		if (OnPlaceObjectIntoInventoryCallback != null)
		{
			InventoryEventArgs eventArgs = new InventoryEventArgs(objectId, (InventoryOperation)changeDir);
			OnPlaceObjectIntoInventoryCallback(null, eventArgs);
		}
	}

	private static ulong ActiveSimId()
	{
		if (ActiveSimIdCallback != null)
		{
			return ActiveSimIdCallback(null, null);
		}
		return 0uL;
	}

	private static bool IsOkToTurnFaceToDestination(ulong objId, ulong targetObjId, float x, float y, float z, float ox, float oy, float oz, float n, ulong[] objIdsToIgnore, ulong[] endTurnObjIdsToIgnore, bool bUseFullSimJig)
	{
		if (IsOkToTurnFaceToDestinationCallback != null)
		{
			Vector3 pos = new Vector3(x, y, z);
			Quaternion orient = new Quaternion(ox, oy, oz, n);
			return IsOkToTurnFaceToDestinationCallback(null, new IsOkToTurnFaceToDestinationEventArgs(objId, targetObjId, pos, orient, objIdsToIgnore, endTurnObjIdsToIgnore, bUseFullSimJig));
		}
		return true;
	}

	private static void OnHandToolPlacementValidityChanged(ulong objectId, uint valid)
	{
		if (OnHandToolPlacementValidityChangedCallback != null)
		{
			OnHandToolPlacementValidityChangedCallback(null, new HandToolPlacementValidityEventArgs(objectId, valid));
		}
		OnHandToolChanged(ObjectGuid.InvalidObjectGuid.mValue);
	}

	private static void OnHandToolPlacementModeChanged(ulong objectId, uint mode)
	{
		if (OnHandToolPlacementModeChangedCallback != null)
		{
			OnHandToolPlacementModeChangedCallback(null, new HandToolPlacementModeEventArgs(objectId, mode));
		}
	}

	private static bool DoesObjectHaveBuildBuyInteractions(ulong objectId)
	{
		if (DoesObjectHaveBuildBuyInteractionsCallback != null)
		{
			return DoesObjectHaveBuildBuyInteractionsCallback(null, new HandToolEventArgs(objectId));
		}
		return false;
	}

	private static void ShowBuildBuyInteractions(ulong objectId)
	{
		if (ShowBuildBuyInteractionsCallback != null)
		{
			ShowBuildBuyInteractionsCallback(null, new HandToolEventArgs(objectId));
		}
	}

	private static void OnHandToolChanged(ulong objectId)
	{
		if (OnHandToolChangedCallback != null)
		{
			OnHandToolChangedCallback(null, new HandToolEventArgs(objectId));
		}
	}

	private static void OnLotEditZonesChanged(ulong lotId)
	{
		if (OnLotEditZonesChangedCallback != null)
		{
			OnLotEditZonesChangedCallback(null, new OnLotEditZonesChangedEventArgs(lotId));
		}
	}

	private static void OnFootprintChanged(ulong objectId, uint footprintNameHash, bool enabled)
	{
		if (OnFootprintChangedCallback != null)
		{
			OnFootprintChangedCallback(null, new FootprintEventArgs(objectId, footprintNameHash, enabled));
		}
	}

	private static void OnWallsChanged(ulong lotId)
	{
		if (OnWallsChangedCallback != null)
		{
			OnWallsChangedCallback(null, new WallsEventArgs(lotId));
		}
	}

	private static int HandToolGetDepreciatedValue(ulong objectId)
	{
		if (HandToolGetDepreciatedValueCallback != null)
		{
			return HandToolGetDepreciatedValueCallback(null, new HandToolEventArgs(objectId));
		}
		return 0;
	}

	private static int FamilyFundsQueryAvailable()
	{
		if (FamilyFundsQueryAvailableCallback != null)
		{
			return FamilyFundsQueryAvailableCallback(null, null);
		}
		return 0;
	}

	private static bool FamilyFundsMakeChange(int amount)
	{
		if (FamilyFundsMakeChangeCallback != null)
		{
			return FamilyFundsMakeChangeCallback(null, new FamilyFundsMakeChangeEventArgs(amount));
		}
		return false;
	}

	private static bool FamilyFundsCanBeCharged()
	{
		if (FamilyFundsCanBeChargedCallback != null)
		{
			return FamilyFundsCanBeChargedCallback(null, null);
		}
		return false;
	}

	private static bool IsInLiveDragMode()
	{
		if (IsInLiveDragModeCallback != null)
		{
			return IsInLiveDragModeCallback(null, null);
		}
		return false;
	}

	private static bool CanEyedropperPickObject(ulong objectId)
	{
		if (CanEyedropperPickObjectCallback != null)
		{
			return CanEyedropperPickObjectCallback(null, new HandToolEventArgs(objectId));
		}
		return true;
	}

	private static bool IsIslandCounter(ulong objectId)
	{
		if (IsIslandCounterCallback != null)
		{
			return IsIslandCounterCallback(null, new HandToolEventArgs(objectId));
		}
		return false;
	}

	private static bool ShouldDoorBeVisibleInLiveMode(ulong objectId)
	{
		if (ShouldDoorBeVisibleInLiveModeCallback != null)
		{
			return ShouldDoorBeVisibleInLiveModeCallback(null, new HandToolEventArgs(objectId));
		}
		return false;
	}

	private static bool DoesObjectBlockWallDrag(ulong objectId)
	{
		if (DoesObjectBlockWallDragCallback != null)
		{
			return DoesObjectBlockWallDragCallback(null, new HandToolEventArgs(objectId));
		}
		return false;
	}

	public static void ExportWorldInfo()
	{
		if (gWorld != null)
		{
			gWorld.ExportWorldInfo();
		}
	}

	private static bool DoorRoutingEvent(ulong simObjId, ulong doorObjId, uint doorNum, uint segmentNum, bool bEnterExit)
	{
		if (DoorRoutingEventCallback != null)
		{
			return DoorRoutingEventCallback(null, new DoorRoutingEventArgs(simObjId, doorObjId, doorNum, segmentNum, bEnterExit));
		}
		return false;
	}

	private static bool OnRoutingEvent(ulong simObjId, ulong sourceObjId, uint eventType, float x, float y, float z, float sx, float sy, float sz, float dx, float dy, float dz, float fDistanceTravelled, float fDistanceRemaining, uint uData0, uint uData1)
	{
		if (OnRoutingEventCallback != null)
		{
			return OnRoutingEventCallback(null, new OnRoutingEventArgs(simObjId, sourceObjId, eventType, x, y, z, sx, sy, sz, dx, dy, dz, fDistanceTravelled, fDistanceRemaining, uData0, uData1));
		}
		return false;
	}

	private static bool OnRoutingEvent_ObstaclesEncountered(object[] args)
	{
		if (OnRoutingEvent_ObstaclesEncountered_Callback != null)
		{
			OnRoutingEvent_ObstaclesEncountered_Args eventArgs = new OnRoutingEvent_ObstaclesEncountered_Args(args);
			return OnRoutingEvent_ObstaclesEncountered_Callback(null, eventArgs);
		}
		return false;
	}

	private static void OnBuildBuyFeedback(uint code, uint groupID, uint feedbackType, string str, float x, float y, float z, ulong blockingObjectId)
	{
		if (OnBuildBuyFeedbackCallback != null)
		{
			Vector3 position = default;
			position.x = x;
			position.y = y;
			position.z = z;
			OnBuildBuyFeedbackCallback(null, new BuildBuyFeedbackEventArgs(code, groupID, (BuildBuyFeedbackEventArgs.FeedbackType)feedbackType, str, position, blockingObjectId));
		}
	}

	private static void OnStoreFeaturedItemPurchaseResult(ulong itemId, uint errorType, string str)
	{
		if (StoreFeaturedItemPurchaseResultCallback != null)
		{
			StoreFeaturedItemPurchaseResultCallback(null, new StoreFeaturedItemPurchaseResultEventArgs(itemId, errorType, str));
		}
	}

	private static void OnHideAllBuildBuyFeedback()
	{
		if (OnHideAllBuildBuyFeedbackCallback != null)
		{
			OnHideAllBuildBuyFeedbackCallback(null, null);
		}
	}

	private static void OnUndoRedoStateChange(uint undoListLen, uint redoListLen)
	{
		if (OnUndoRedoStateChangeCallback != null)
		{
			OnUndoRedoStateChangeCallback(null, new UndoRedoStateChangeEventArgs(undoListLen, redoListLen));
		}
	}

	private static void OnEyedropperPick(int toolID, ResourceKey arg1, ResourceKey arg2, ResourceKey arg3, string arg4)
	{
		if (OnEyedropperPickCallback != null)
		{
			OnEyedropperPickCallback(null, new EyedropperPickpEventArgs(toolID, arg1, arg2, arg3, arg4));
		}
	}

	private static void OnLotLevelInfoChange(ulong lotId)
	{
		if (OnLotLevelInfoChangeCallback != null)
		{
			OnLotLevelInfoChangeCallback(null, new LotLevelInfoChangeEventArgs(lotId));
		}
	}

	private static void OnAddLotPostLoad(ulong lotId)
	{
		if (OnAddLotPostLoadCallback != null)
		{
			OnAddLotPostLoadCallback(null, new AddLotPostLoadEventArgs(lotId));
		}
	}

	private static void RefreshRoofPitchButtonVisibility()
	{
		if (RefreshRoofPitchButtonVisibilityCallback != null)
		{
			RefreshRoofPitchButtonVisibilityCallback(null, new RefreshRoofPitchButtonVisibilityEventArgs());
		}
	}

	private static bool IsLotOwned(ulong lotId)
	{
		if (IsLotOwnedCallback != null)
		{
			return IsLotOwnedCallback(null, new IsLotOwnedEventArgs(lotId));
		}
		return false;
	}

	private static ulong HandToolGetObjectIdForClone(ulong objectId)
	{
		if (HandToolGetObjectIdForCloneCallback != null)
		{
			return HandToolGetObjectIdForCloneCallback(new ObjectGuid(objectId)).Value;
		}
		return objectId;
	}

	private static ulong HandToolCloneObject(ulong objectId)
	{
		if (HandToolCloneObjectCallback != null)
		{
			return HandToolCloneObjectCallback(new ObjectGuid(objectId)).Value;
		}
		return objectId;
	}

	private static void OnTelemetryEvent(int eventID, int eventData1, int eventData2)
	{
		if (OnTelemetryEventCallback != null)
		{
			OnTelemetryEventCallback(null, new TelemetryEventArgs((TelemetryEventID)eventID, eventData1, eventData2));
		}
	}

	public static void PostTelemetryEvent(TelemetryEventID eventID, int eventData1, int eventData2)
	{
		if (OnTelemetryEventCallback != null)
		{
			OnTelemetryEventCallback(null, new TelemetryEventArgs(eventID, eventData1, eventData2));
		}
	}

	public static bool ResourceExists(ResourceKey key)
	{
		return gWorld.ResourceExists(key);
	}

	public static float GetTerrainHeight(float x, float z, bool considerBridges)
	{
		return gWorld.GetTerrainHeight(x, z, considerBridges);
	}

	public static float GetTerrainHeight(float x, float z)
	{
		return GetTerrainHeight(x, z, considerBridges: false);
	}

	public static void LotSetTerrainHeight(ulong lotId, float x, float z, float height)
	{
		gWorld.LotSetTerrainHeight(lotId, x, z, height);
	}

	public static float GetSeaLevel()
	{
		return gWorld.GetSeaLevel();
	}

	public static bool GetPondLevel(float x, float z, out float waterLevel)
	{
		return gWorld.GetPondLevel(x, z, out waterLevel);
	}

	public static float GetLevelHeight(float x, float z, int level)
	{
		return gWorld.GetLevelHeight(x, z, level);
	}

	public static float GetSunriseTime()
	{
		return gWorld.GetSunriseTime();
	}

	public static float GetSunsetTime()
	{
		return gWorld.GetSunsetTime();
	}

	public static TerrainType GetTerrainType(Vector3 pos)
	{
		LotLocation location = default;
		if (GetLotLocation(pos, ref location) != 0)
		{
			float levelHeight = GetLevelHeight(pos.x, pos.z, 1);
			if (levelHeight - 0.25f <= pos.y)
			{
				return TerrainType.LotFloor;
			}
			levelHeight = GetLevelHeight(pos.x, pos.z, -1);
			if (levelHeight + 0.25f >= pos.y)
			{
				TerrainType terrainType = (TerrainType)gWorld.GetTerrainType(pos.x, pos.z, 0);
				if (terrainType != TerrainType.LotPool)
				{
					return TerrainType.LotFloor;
				}
				return terrainType;
			}
		}
		return (TerrainType)gWorld.GetTerrainType(pos.x, pos.z, 0);
	}

	public static int GetTerrainType(float x, float z, int level)
	{
		return gWorld.GetTerrainType(x, z, level);
	}

	public static TerrainTypes GetTerrainSurfaceType(Vector3 pos)
	{
		LotLocation location = default;
		GetLotLocation(pos, ref location);
		return (TerrainTypes)gWorld.GetTerrainSurfaceType(pos.x, pos.z, location.mLevel);
	}

	public static void AddObjectToObjectManager(ObjectGuid scriptHandle)
	{
		if (gWorld != null)
		{
			gWorld.AddObjectToObjectManager(scriptHandle);
		}
	}

	public static bool AddObjectToObjectManagers(ObjectGuid scriptHandle, Simulator.ObjectInitParameters initData)
	{
		if (gWorld != null)
		{
			return gWorld.AddObjectToObjectManagers(scriptHandle, initData);
		}
		return false;
	}

	public static void RemoveObjectFromObjectManager(ObjectGuid scriptHandle)
	{
		if (gWorld != null)
		{
			gWorld.RemoveObjectFromObjectManager(scriptHandle);
		}
	}

	public static void MoveObjectToObjectManager(ObjectGuid scriptHandle, ulong mgrId)
	{
		gWorld.MoveObjectToObjectManager(scriptHandle, mgrId);
	}

	public static void AddObjectToScene(ObjectGuid scriptHandle)
	{
		gWorld.AddObjectToScene(scriptHandle);
	}

	public static ulong GetManagerIdForObject(ObjectGuid scriptHandle)
	{
		return gWorld.GetManagerIdForObject(scriptHandle);
	}

	public static Rect GetTerrainExtents()
	{
		return gWorld.GetTerrainExtents();
	}

	public static bool GetObjectScreenSpacePos(ObjectGuid scriptHandle, Vector3 offset, out Vector2 outPos)
	{
		return gWorld.GetObjectScreenSpacePos(scriptHandle, offset, out outPos);
	}

	public static bool GetScreenSpacePos(Vector3 worldPos, out Vector2 outPos)
	{
		return gWorld.GetScreenSpacePos(worldPos, out outPos);
	}

	public static void LightSetDimmer(ObjectGuid scriptHandle, float dimmerValue)
	{
		if (gWorld != null)
		{
			gWorld.LightSetDimmer(scriptHandle, dimmerValue);
		}
	}

	public static float LightGetDimmer(ObjectGuid scriptHandle)
	{
		if (gWorld != null)
		{
			return gWorld.LightGetDimmer(scriptHandle);
		}
		return 0f;
	}

	public static void BurninateWindow(ObjectGuid scriptHandle)
	{
		if (gWorld != null)
		{
			gWorld.BurninateWindow(scriptHandle);
		}
	}

	public static void ScratchObject(ObjectGuid scriptHandle, bool bScratched)
	{
		if (gWorld != null)
		{
			gWorld.ScratchObject(scriptHandle, bScratched);
		}
	}

	public static void SetObjectSnow(ObjectGuid scriptHandle, bool bEnable)
	{
		if (gWorld != null)
		{
			gWorld.SetObjectSnow(scriptHandle, bEnable);
		}
	}

	public static bool HasObjectSnow(ObjectGuid scriptHandle, bool bCheckOnlyScript)
	{
		if (gWorld != null)
		{
			return gWorld.HasObjectSnow(scriptHandle, bCheckOnlyScript);
		}
		return true;
	}

	public static void LightSetColor(ObjectGuid scriptHandle, float r, float g, float b)
	{
		if (gWorld != null)
		{
			gWorld.LightSetColor(scriptHandle, r, g, b);
		}
	}

	public static void LotChangeDisplayLevel(ulong lotId, bool increment)
	{
		if (gWorld != null)
		{
			gWorld.LotChangeDisplayLevel(lotId, increment);
		}
	}

	public static void LotSetDisplayLevel(ulong lotId, int level)
	{
		if (gWorld != null)
		{
			gWorld.LotSetDisplayLevel(lotId, level);
		}
	}

	public static void LotSetVisibility(ulong lotId, bool bVisible, bool bOutside)
	{
		if (gWorld != null)
		{
			gWorld.LotSetVisibility(lotId, bVisible, bOutside);
		}
	}

	public static void LotUpdateVisibility(ulong lotId)
	{
		if (gWorld != null)
		{
			gWorld.LotUpdateVisibility(lotId);
		}
	}

	public static void LotSetDetailPriority(ulong lotId, LotDetailPriority priority)
	{
		if (gWorld != null)
		{
			gWorld.LotSetDetailPriority(lotId, priority);
		}
	}

	public static bool IsSimOnHill(ObjectGuid simObjId)
	{
		if (gWorld != null)
		{
			return gWorld.IsSimOnHill(simObjId);
		}
		return false;
	}

	public static void SetIsSimInPool(ObjectGuid simObjId, bool isInPool, float waterSurfaceHeight)
	{
		if (gWorld != null)
		{
			gWorld.SetIsSimInPool(simObjId, isInPool, waterSurfaceHeight);
		}
	}

	public static bool GetNearestSwimmingPoint(Vector3 currentLocation, ref Vector3 nearestShoreline, ref Vector3 oceanPoint)
	{
		if (gWorld != null)
		{
			return gWorld.GetNearestSwimmingPoint(currentLocation, ref nearestShoreline, ref oceanPoint);
		}
		return false;
	}

	public static bool FindNearbyPointToSwimTo(Vector3 currentLocation, float distance, float depth, ref Vector3 destination)
	{
		if (gWorld != null)
		{
			return gWorld.FindNearbyPointToSwimTo(currentLocation, distance, depth, ref destination);
		}
		return false;
	}

	public static bool CanSeeSkyFromPos(Vector3 position)
	{
		if (gWorld != null)
		{
			return gWorld.CanSeeSkyFromPos(position);
		}
		return false;
	}

	public static bool IsPosInsideGreenhouse(Vector3 position)
	{
		if (gWorld != null)
		{
			return gWorld.IsPosInsideGreenhouse(position);
		}
		return false;
	}

	public static bool HasAnyRoofAtPos(Vector3 position)
	{
		if (gWorld != null)
		{
			return gWorld.HasAnyRoofAtPos(position);
		}
		return false;
	}

	public static bool HasAnyRoofOrFloorAbovePos(Vector3 position)
	{
		if (gWorld != null)
		{
			return gWorld.HasAnyRoofOrFloorAbovePos(position);
		}
		return false;
	}

	public static bool HasAnyRoof(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.HasAnyRoof(lotId);
		}
		return false;
	}

	public static bool HasAnyRoofWithAdjustableSlope(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.HasAnyRoofWithAdjustableSlope(lotId);
		}
		return false;
	}

	public static void LotShowRoof(ulong lotId, bool showRoof)
	{
		if (gWorld != null)
		{
			gWorld.LotShowRoof(lotId, showRoof);
		}
	}

	public static bool LotRoofVisible(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.LotRoofVisible(lotId);
		}
		return false;
	}

	public static void LotRoofUp(ulong lotId)
	{
		if (gWorld != null)
		{
			gWorld.LotRoofUp(lotId);
		}
	}

	public static bool LotWasRefreshed(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.LotWasRefreshed(lotId);
		}
		return false;
	}

	public static bool WaitForDetailedLots()
	{
		return gWorld.WaitForDetailedLots();
	}

	public static bool WaitForLot(ulong lotID, bool waitForSims, bool waitForObjects)
	{
		return gWorld.WaitForLot(lotID, waitForSims, waitForObjects);
	}

	public static void LotDoAutoRoof(ulong lotId)
	{
		if (gWorld != null)
		{
			gWorld.LotDoAutoRoof(lotId);
		}
	}

	public static void LotSetAutoRoofStyle(ulong lotId, ResourceKey productKey)
	{
		if (gWorld != null)
		{
			gWorld.LotSetAutoRoofStyle(lotId, productKey);
		}
	}

	public static ResourceKey LotGetAutoRoofStyle(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.LotGetAutoRoofStyle(lotId);
		}
		return ResourceKey.kInvalidResourceKey;
	}

	public static void RemoveAllRoofs(ulong lotId)
	{
		if (gWorld != null)
		{
			gWorld.LotRemoveAllRoofs(lotId);
		}
	}

	public static bool LotIsEmpty(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.LotIsEmpty(lotId);
		}
		return false;
	}

	public static void LotSetForceDoorVisibilityCheck(ulong lotId, bool bEnabled)
	{
		if (gWorld != null)
		{
			gWorld.LotSetForceDoorVisibilityCheck(lotId, bEnabled);
		}
	}

	public static bool DoesFoundationExistOnLot(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.DoesFoundationExistOnLot(lotId);
		}
		return false;
	}

	public static bool IsDeckFoundationAtLotLoc(ulong lotId, float x, float z, int level)
	{
		if (gWorld != null)
		{
			return gWorld.IsDeckFoundationAtLotLoc(lotId, x, z, level);
		}
		return false;
	}

	public static void LotSetHighlightColor(ulong lotId, float red, float green, float blue)
	{
		if (gWorld != null)
		{
			gWorld.LotSetHighlightColor(lotId, red, green, blue);
		}
	}

	public static bool LotAreHolidayHouseLightsEnabled(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.LotAreHolidayHouseLightsEnabled(lotId);
		}
		return false;
	}

	public static void LotSetHolidayHouseLights(ulong lotId, bool bEnable, bool bMultiColored, ushort lightsType, float red, float green, float blue)
	{
		if (gWorld != null)
		{
			gWorld.LotSetHolidayHouseLights(lotId, bEnable, bMultiColored, lightsType, red, green, blue);
		}
	}

	public static ResourceKey LotGetDefaultAutoRoofStyle(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.LotGetDefaultAutoRoofStyle(lotId);
		}
		return ResourceKey.kInvalidResourceKey;
	}

	public static bool LotGetIsAutoRoofEnabled(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.LotGetIsAutoRoofEnabled(lotId);
		}
		return false;
	}

	public static bool LotAreRoofChangesAllowed(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.LotAreRoofChangesAllowed(lotId);
		}
		return false;
	}

	public static uint TreesWithinRadialRange(ObjectGuid objectGuid, Vector3 position, float range)
	{
		if (gWorld != null)
		{
			return gWorld.TreesWithinRadialRange(objectGuid, position, range);
		}
		return 0u;
	}

	public static void LotClusterTrees(ulong lotId, bool cluster)
	{
		if (gWorld != null)
		{
			gWorld.LotClusterTrees(lotId, cluster);
		}
	}

	public static void BulldozeLot(ulong lotId, bool bAllowDestruction, bool bFinishOp)
	{
		if (gWorld != null)
		{
			gWorld.BulldozeLot(lotId, bAllowDestruction, bFinishOp);
		}
	}

	public static ulong ChimneyCapObjectFromFireplaceObject(ulong lotId, ulong fireplaceObjectId)
	{
		if (gWorld != null)
		{
			return gWorld.ChimneyCapObjectFromFireplaceObject(lotId, fireplaceObjectId);
		}
		return 0uL;
	}

	public static ulong FireplaceObjectFromChimneyObject(ulong lotId, ulong chimneyObjectId)
	{
		if (gWorld != null)
		{
			return gWorld.FireplaceObjectFromChimneyObject(lotId, chimneyObjectId);
		}
		return 0uL;
	}

	public static LotDisplayLevelInfo LotGetDisplayLevelInfo(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.LotGetDisplayLevelInfo(lotId);
		}
		return LotDisplayLevelInfo.Invalid;
	}

	public static LotCorners LotGetCorners(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.LotGetCorners(lotId);
		}
		return LotCorners.Invalid;
	}

	public static Matrix44 LotGetWorldToLotTransform(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.LotGetWorldToLotTransform(lotId);
		}
		return Matrix44.Invalid;
	}

	public static Vector3 LotGetPtInside(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.LotGetPtInside(lotId);
		}
		return Vector3.Invalid;
	}

	public static void SetActiveLot(ulong lotId)
	{
		if (gWorld != null)
		{
			gWorld.SetActiveLot(lotId);
		}
	}

	public static void SetFocusLot(ulong lotId)
	{
		if (gWorld != null)
		{
			gWorld.SetFocusLot(lotId);
		}
	}

	public static void SetWallCutawayFocusPos(Vector3 pos)
	{
		if (gWorld != null)
		{
			gWorld.SetWallCutawayFocusPos(pos);
		}
	}

	public static void EnableCustomLightRigging(bool value)
	{
		if (gWorld != null)
		{
			gWorld.EnableCustomLightRigging(value);
		}
	}

	public static void SetStartTime(long ticks)
	{
		gWorld.SetStartTime(ticks);
	}

	public static void SetAdvancedTime(long ticks)
	{
		gWorld.SetAdvancedTime(ticks);
	}

	public static bool IsObjectOnScreen(ObjectGuid scriptHandle)
	{
		if (gWorld != null)
		{
			return gWorld.IsObjectOnScreen(scriptHandle);
		}
		return false;
	}

	public static bool IsObjectOnScreen(IHasScriptProxy scriptObject)
	{
		if (scriptObject != null && scriptObject.Proxy != null)
		{
			return IsObjectOnScreen(scriptObject.Proxy.ObjectId);
		}
		return false;
	}

	public static void SetTestingCheatsEnabled(bool bEnabled)
	{
		if (gWorld != null)
		{
			gWorld.SetTestingCheatsEnabled(bEnabled);
		}
	}

	public static void EnableBuyDebugMode(bool enable)
	{
		if (gWorld != null)
		{
			gWorld.EnableBuyDebugMode(enable);
		}
	}

	public static void RestrictBuildBuyInBuildings(bool enable)
	{
		if (gWorld != null)
		{
			gWorld.RestrictBuildBuyInBuildings(enable);
		}
	}

	public static void LoadHeightMapRelatedData(bool bKeepLoaded)
	{
		if (gWorld != null)
		{
			gWorld.LoadHeightMapRelatedData(bKeepLoaded);
		}
	}

	public static void UnloadHeightMapRelatedData(bool bForceRelease)
	{
		if (gWorld != null)
		{
			gWorld.UnloadHeightMapRelatedData(bForceRelease);
		}
	}

	public static void BuildRoutingData()
	{
		if (gWorld != null)
		{
			gWorld.BuildRoutingData();
		}
	}

	public static void SetImposterMode(bool enable)
	{
		if (gWorld != null)
		{
			gWorld.SetImposterMode(enable);
		}
	}

	public static void SetMapViewActiveLotMode(bool allowHighLOD)
	{
		if (gWorld != null)
		{
			gWorld.SetMapViewActiveLotMode(allowHighLOD);
		}
	}

	public static void RegenImposter(ulong lotId)
	{
		if (gWorld != null)
		{
			gWorld.RegenImposter(lotId);
		}
	}

	public static void LotSnowUpdate(ulong lotId)
	{
		if (gWorld != null)
		{
			gWorld.LotSnowUpdate(lotId);
		}
	}

	public static bool TestIfObjectsIntersect(ObjectGuid obj1Id, ObjectGuid obj2Id, Matrix44 mat1)
	{
		if (gWorld != null)
		{
			return gWorld.TestIfObjectsIntersect(obj1Id, obj2Id, ref mat1);
		}
		return false;
	}

	public static bool TestObjectPlacement(ObjectGuid objectGuid, TestObjectPlacementBooleans options, Vector3 position)
	{
		if (gWorld != null)
		{
			return gWorld.TestObjectPlacement(objectGuid, (uint)options, ref position);
		}
		return false;
	}

	public static bool TestObjectPlacement(ObjectGuid objectGuid, TestObjectPlacementBooleans options, Vector3 position, uint maxErrors, ref uint numErrors, ref ObjectPlacementError[] errors)
	{
		numErrors = 0u;
		if (gWorld != null)
		{
			return gWorld.TestObjectPlacement(objectGuid, (uint)options, ref position, maxErrors, ref numErrors, ref errors);
		}
		return false;
	}

	public static bool TestObjectPlacement(ObjectGuid objectGuid, TestObjectPlacementBooleans options, Vector3 position, Quaternion orientation)
	{
		if (gWorld != null)
		{
			return gWorld.TestObjectPlacement(objectGuid, (uint)options, ref position, ref orientation);
		}
		return false;
	}

	public static bool TestObjectPlacement(ObjectGuid objectGuid, TestObjectPlacementBooleans options, ObjectGuid[] objIdsToIgnore, Vector3 position, Quaternion orientation)
	{
		if (gWorld != null)
		{
			ulong[] array = null;
			if (objIdsToIgnore != null)
			{
				array = new ulong[objIdsToIgnore.Length];
				for (int i = 0; i < objIdsToIgnore.Length; i++)
				{
					array[i] = objIdsToIgnore[i].mValue;
				}
			}
			return gWorld.TestObjectPlacement(objectGuid, (uint)options, array, ref position, ref orientation);
		}
		return false;
	}

	public static bool TestObjectPlacement(ObjectGuid objectGuid, TestObjectPlacementBooleans options, Vector3 position, Vector3 forward)
	{
		Quaternion orientation = Quaternion.MakeFromForwardVector(forward);
		return TestObjectPlacement(objectGuid, options, position, orientation);
	}

	public static bool TestObjectPlacement(ObjectGuid objectGuid, TestObjectPlacementBooleans options, ObjectGuid[] objIdsToIgnore, Vector3 position, Vector3 forward)
	{
		Quaternion orientation = Quaternion.MakeFromForwardVector(forward);
		return TestObjectPlacement(objectGuid, options, objIdsToIgnore, position, orientation);
	}

	public static bool TestObjectPlacement(ObjectGuid objectGuid, TestObjectPlacementBooleans options, Vector3 position, Quaternion orientation, uint maxErrors, ref uint numErrors, ref ObjectPlacementError[] errors)
	{
		numErrors = 0u;
		if (gWorld != null)
		{
			return gWorld.TestObjectPlacement(objectGuid, (uint)options, ref position, ref orientation, maxErrors, ref numErrors, ref errors);
		}
		return false;
	}

	public static bool TestObjectPlacement(ObjectGuid objectGuid, TestObjectPlacementBooleans options, ObjectGuid[] objIdsToIgnore, Vector3 position, Quaternion orientation, uint maxErrors, ref uint numErrors, ref ObjectPlacementError[] errors)
	{
		numErrors = 0u;
		if (gWorld != null)
		{
			ulong[] array = null;
			if (objIdsToIgnore != null)
			{
				array = new ulong[objIdsToIgnore.Length];
				for (int i = 0; i < objIdsToIgnore.Length; i++)
				{
					array[i] = objIdsToIgnore[i].mValue;
				}
			}
			return gWorld.TestObjectPlacement(objectGuid, (uint)options, array, ref position, ref orientation, maxErrors, ref numErrors, ref errors);
		}
		return false;
	}

	public static bool FindGoodLocation(ObjectGuid objGuid, FindGoodLocationParams fglParams, out Vector3 outPos, out Vector3 outFwd)
	{
		outPos = Vector3.Invalid;
		outFwd = Vector3.Invalid;
		float outOrientation = 0f;
		if (gWorld != null)
		{
			fglParams.StartPosition = SnapToFloor(fglParams.StartPosition);
			if (gWorld.FindGoodLocation(objGuid.Value, fglParams.StartPosition, fglParams.DirectionToSelect, fglParams.InitialSearchDirection, fglParams.FacingMask, (uint)fglParams.BooleanConstraints, fglParams.RequiredRoomID, fglParams.RequiredPlatformRoomID, fglParams.PlacementCheckFunc, fglParams.OffsetScale, null, fglParams.MaximumSearchRadius, ref outPos, ref outOrientation))
			{
				outFwd = Quaternion.MakeFromEulerAngles(0f, 0f - outOrientation, 0f).ToMatrix().TransformVector(Vector3.UnitZ);
				return true;
			}
		}
		return false;
	}

	public static bool FindGoodLocation(ObjectGuid objGuid, FindGoodLocationParams fglParams, ObjectGuid[] objIdsToIgnore, out Vector3 outPos, out Vector3 outFwd)
	{
		outPos = Vector3.Invalid;
		outFwd = Vector3.Invalid;
		float outOrientation = 0f;
		if (gWorld != null)
		{
			ulong[] array = null;
			if (objIdsToIgnore != null)
			{
				array = new ulong[objIdsToIgnore.Length];
				for (int i = 0; i < objIdsToIgnore.Length; i++)
				{
					array[i] = objIdsToIgnore[i].mValue;
				}
			}
			fglParams.StartPosition = SnapToFloor(fglParams.StartPosition);
			if (gWorld.FindGoodLocation(objGuid.Value, fglParams.StartPosition, fglParams.DirectionToSelect, fglParams.InitialSearchDirection, fglParams.FacingMask, (uint)fglParams.BooleanConstraints, fglParams.RequiredRoomID, fglParams.RequiredPlatformRoomID, fglParams.PlacementCheckFunc, fglParams.OffsetScale, array, fglParams.MaximumSearchRadius, ref outPos, ref outOrientation))
			{
				outFwd = Quaternion.MakeFromEulerAngles(0f, 0f - outOrientation, 0f).ToMatrix().TransformVector(Vector3.UnitZ);
				return true;
			}
		}
		return false;
	}

	public static bool FindGoodLocationOnWorld(ObjectGuid objGuid, FindGoodLocationParams fglParams, out Vector3 outPos, out Vector3 outFwd)
	{
		outPos = Vector3.Invalid;
		outFwd = Vector3.Invalid;
		float outOrientation = 0f;
		if (gWorld != null)
		{
			fglParams.StartPosition = SnapToFloor(fglParams.StartPosition);
			if (gWorld.FindGoodLocationOnWorld(objGuid.Value, fglParams.StartPosition, fglParams.DirectionToSelect, fglParams.InitialSearchDirection, fglParams.FacingMask, (uint)fglParams.BooleanConstraints, fglParams.RequiredRoomID, fglParams.RequiredPlatformRoomID, fglParams.PlacementCheckFunc, fglParams.OffsetScale, fglParams.MaximumSearchRadius, ref outPos, ref outOrientation))
			{
				outFwd = Quaternion.MakeFromEulerAngles(0f, 0f - outOrientation, 0f).ToMatrix().TransformVector(Vector3.UnitZ);
				return true;
			}
		}
		return false;
	}

	public static bool FindGoodLocationOnWorldAtCustomDepth(ObjectGuid objGuid, FindGoodLocationParams fglParams, ObjectGuid[] objIdsToIgnore, float minDepth, float maxDepth, out Vector3 outPos, out Vector3 outFwd)
	{
		outPos = Vector3.Invalid;
		outFwd = Vector3.Invalid;
		float outOrientation = 0f;
		if (gWorld != null)
		{
			ulong[] array = null;
			if (objIdsToIgnore != null)
			{
				array = new ulong[objIdsToIgnore.Length];
				for (int i = 0; i < objIdsToIgnore.Length; i++)
				{
					array[i] = objIdsToIgnore[i].mValue;
				}
			}
			fglParams.StartPosition = SnapToFloor(fglParams.StartPosition);
			if (gWorld.FindGoodLocationOnWorldAtCustomDepth(objGuid.Value, array, fglParams.StartPosition, fglParams.DirectionToSelect, fglParams.InitialSearchDirection, fglParams.FacingMask, (uint)fglParams.BooleanConstraints, fglParams.RequiredRoomID, fglParams.RequiredPlatformRoomID, fglParams.PlacementCheckFunc, fglParams.OffsetScale, fglParams.MaximumSearchRadius, minDepth, maxDepth, ref outPos, ref outOrientation))
			{
				outFwd = Quaternion.MakeFromEulerAngles(0f, 0f - outOrientation, 0f).ToMatrix().TransformVector(Vector3.UnitZ);
				return true;
			}
		}
		return false;
	}

	public static bool FindPlaceOnRoad(IScriptProxy scriptHandle, Vector3 pos, uint option, ref Vector3 outPos, ref Quaternion outOrient)
	{
		if (gWorld != null)
		{
			return gWorld.FindPlaceOnRoad(scriptHandle, pos, option, ref outPos, ref outOrient);
		}
		return false;
	}

	public static bool FindPlacesOnRoad(IScriptProxy scriptHandle, ObjectGuid[] objIdsToIgnore, Vector3 pos, FindPlaceOnRoadOption option, uint requestCount, float stepSize, out Vector3[] posResults, out Quaternion[] orientResults)
	{
		float[] posArray = new float[3 * requestCount];
		float[] orientArray = new float[4 * requestCount];
		ulong[] array = null;
		if (objIdsToIgnore != null)
		{
			array = new ulong[objIdsToIgnore.Length];
			for (int i = 0; i < objIdsToIgnore.Length; i++)
			{
				array[i] = objIdsToIgnore[i].mValue;
			}
		}
		if (gWorld != null && gWorld.FindPlacesOnRoad(scriptHandle, array, pos, option, requestCount, stepSize, ref posArray, ref orientArray))
		{
			posResults = new Vector3[posArray.Length / 3];
			for (int j = 0; 3 * j + 2 < posArray.Length; j++)
			{
				posResults[j].x = posArray[3 * j];
				posResults[j].y = posArray[3 * j + 1];
				posResults[j].z = posArray[3 * j + 2];
			}
			orientResults = new Quaternion[orientArray.Length / 4];
			for (int k = 0; 4 * k + 3 < orientArray.Length; k++)
			{
				ref Quaternion reference = ref orientResults[k];
				reference = new Quaternion(orientArray[4 * k], orientArray[4 * k + 1], orientArray[4 * k + 2], orientArray[4 * k + 3]);
			}
			return true;
		}
		posResults = new Vector3[0];
		orientResults = new Quaternion[0];
		return false;
	}

	public static bool FindPlaceOnRoadOffScreen(IScriptProxy scriptHandle, Vector3 pos, FindPlaceOnRoadOption option, float distance, out Vector3[] posResults, out Quaternion[] orientResults)
	{
		float[] posArray = new float[3];
		float[] orientArray = new float[4];
		if (gWorld != null && gWorld.FindPlaceOnRoadOffScreen(scriptHandle, pos, option, distance, ref posArray, ref orientArray))
		{
			posResults = new Vector3[posArray.Length / 3];
			for (int i = 0; 3 * i + 2 < posArray.Length; i++)
			{
				posResults[i].x = posArray[3 * i];
				posResults[i].y = posArray[3 * i + 1];
				posResults[i].z = posArray[3 * i + 2];
			}
			orientResults = new Quaternion[orientArray.Length / 4];
			for (int j = 0; 4 * j + 3 < orientArray.Length; j++)
			{
				ref Quaternion reference = ref orientResults[j];
				reference = new Quaternion(orientArray[4 * j], orientArray[4 * j + 1], orientArray[4 * j + 2], orientArray[4 * j + 3]);
			}
			return true;
		}
		posResults = new Vector3[0];
		orientResults = new Quaternion[0];
		return false;
	}

	public static bool FindPointsOnRoofs(ulong lotId, uint requestCount, out Vector3[] posResults)
	{
		posResults = null;
		if (gWorld != null)
		{
			float[] posArray = new float[3 * requestCount];
			if (gWorld.FindPointsOnRoofs(lotId, requestCount, ref posArray))
			{
				posResults = new Vector3[posArray.Length / 3];
				for (int i = 0; 3 * i + 2 < posArray.Length; i++)
				{
					posResults[i].x = posArray[3 * i];
					posResults[i].y = posArray[3 * i + 1];
					posResults[i].z = posArray[3 * i + 2];
				}
				return true;
			}
		}
		return false;
	}

	public static bool FindPointsOnRoofsAbove(ulong lotId, ref Vector3[] seedArray, out Vector3[] posResults)
	{
		posResults = null;
		if (gWorld != null)
		{
			int num = seedArray.Length;
			float[] seedArray2 = new float[3 * num];
			float[] posArray = new float[3 * num];
			for (int i = 0; i < seedArray.Length; i++)
			{
				seedArray2[3 * i] = seedArray[i].x;
				seedArray2[3 * i + 1] = seedArray[i].y;
				seedArray2[3 * i + 2] = seedArray[i].z;
			}
			if (gWorld.FindPointsOnRoofsAbove(lotId, ref seedArray2, ref posArray))
			{
				posResults = new Vector3[posArray.Length / 3];
				for (int j = 0; 3 * j + 2 < posArray.Length; j++)
				{
					posResults[j].x = posArray[3 * j];
					posResults[j].y = posArray[3 * j + 1];
					posResults[j].z = posArray[3 * j + 2];
				}
				return true;
			}
		}
		return false;
	}

	public static bool FindPondRepresentativePositions(ulong lotId, out Vector3[] posResults)
	{
		float[] posArray = new float[3];
		posResults = null;
		if (gWorld != null && gWorld.FindPondRepresentativePositions(lotId, ref posArray))
		{
			posResults = new Vector3[posArray.Length / 3];
			for (int i = 0; 3 * i + 2 < posArray.Length; i++)
			{
				posResults[i].x = posArray[3 * i];
				posResults[i].y = posArray[3 * i + 1];
				posResults[i].z = posArray[3 * i + 2];
			}
			return true;
		}
		return false;
	}

	public static bool GetAllPondIds(ulong lotId, ref uint[] idArray)
	{
		if (gWorld != null)
		{
			return gWorld.GetAllPondIds(lotId, ref idArray);
		}
		return false;
	}

	public static bool GetPondInfo(uint pondId, ulong lotId, ref PondInfo pondInfo)
	{
		if (gWorld != null)
		{
			return gWorld.GetPondInfo(pondId, lotId, ref pondInfo);
		}
		return false;
	}

	public static uint GetPondAtPoint(ulong lotId, Vector3 worldPos)
	{
		if (gWorld != null)
		{
			return gWorld.GetPondAtPoint(lotId, worldPos);
		}
		return 0u;
	}

	public static uint GetNumPonds(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetNumPonds(lotId);
		}
		return 0u;
	}

	public static bool FindPlaceOutsideLot(ulong lotId, ref uint offsetHint, ref Vector3 outPos)
	{
		if (gWorld != null)
		{
			return gWorld.FindPlaceOutsideLot(lotId, ref offsetHint, ref outPos);
		}
		return false;
	}

	public static bool IsSimNearShoreline(IScriptProxy scriptHandle, Vector3 pointInWater)
	{
		if (gWorld != null)
		{
			return gWorld.IsSimNearShoreline(scriptHandle, pointInWater);
		}
		return false;
	}

	public static bool FindPlacesOnShoreline(IScriptProxy scriptHandle, Vector3 pos, uint requestCount, bool bAllowPointsAboveGroundLevel, out Vector3[] posResults, out Quaternion[] orientResults)
	{
		float[] posArray = null;
		float[] orientArray = null;
		if (gWorld != null && gWorld.FindPlacesOnShoreline(scriptHandle, pos, requestCount, bAllowPointsAboveGroundLevel, ref posArray, ref orientArray))
		{
			posResults = new Vector3[posArray.Length / 3];
			for (int i = 0; 3 * i + 2 < posArray.Length; i++)
			{
				posResults[i].x = posArray[3 * i];
				posResults[i].y = posArray[3 * i + 1];
				posResults[i].z = posArray[3 * i + 2];
			}
			orientResults = new Quaternion[orientArray.Length / 4];
			for (int j = 0; 4 * j + 3 < orientArray.Length; j++)
			{
				ref Quaternion reference = ref orientResults[j];
				reference = new Quaternion(orientArray[4 * j], orientArray[4 * j + 1], orientArray[4 * j + 2], orientArray[4 * j + 3]);
			}
			return true;
		}
		posResults = new Vector3[0];
		orientResults = new Quaternion[0];
		return false;
	}

	public static bool FindPlacesToDisembarkOnShoreline(IScriptProxy scriptHandle, Vector3 pos, uint requestCount, out Vector3[] posResults, out Quaternion[] orientResults)
	{
		float[] posArray = null;
		float[] orientArray = null;
		if (gWorld != null && gWorld.FindPlacesToDisembarkOnShoreline(scriptHandle, pos, requestCount, ref posArray, ref orientArray))
		{
			posResults = new Vector3[posArray.Length / 3];
			for (int i = 0; 3 * i + 2 < posArray.Length; i++)
			{
				posResults[i].x = posArray[3 * i];
				posResults[i].y = posArray[3 * i + 1];
				posResults[i].z = posArray[3 * i + 2];
			}
			orientResults = new Quaternion[orientArray.Length / 4];
			for (int j = 0; 4 * j + 3 < orientArray.Length; j++)
			{
				ref Quaternion reference = ref orientResults[j];
				reference = new Quaternion(orientArray[4 * j], orientArray[4 * j + 1], orientArray[4 * j + 2], orientArray[4 * j + 3]);
			}
			return true;
		}
		posResults = new Vector3[0];
		orientResults = new Quaternion[0];
		return false;
	}

	public static bool FindGoodLocationForSpecialLotObject(ulong objId, ulong refObjId, ulong lotId, ref Vector3 outPos, ref Quaternion outOrient)
	{
		if (gWorld != null)
		{
			return gWorld.FindGoodLocationForSpecialLotObject(objId, refObjId, lotId, ref outPos, ref outOrient);
		}
		return false;
	}

	public static bool PickWallAtWindowPoint(int x, int y, ref Vector3 outHitPt, ref Vector3 outOrig, ref Vector3 outDest)
	{
		if (gWorld != null)
		{
			return gWorld.PickWallAtWindowPoint(x, y, ref outHitPt, ref outOrig, ref outDest);
		}
		return false;
	}

	public static bool PickFloorAtWindowPoint(int x, int y, ref Vector3 outHitPt)
	{
		if (gWorld != null)
		{
			return gWorld.PickFloorAtWindowPoint(x, y, ref outHitPt);
		}
		return false;
	}

	public static bool ArePointsConnectedByLand(Vector3 pos1, Vector3 pos2)
	{
		if (gWorld != null)
		{
			return gWorld.ArePointsConnectedByLand(pos1, pos2);
		}
		return false;
	}

	public static bool ArePointsInSameBodyOfWater(Vector3 pos1, Vector3 pos2)
	{
		if (gWorld != null)
		{
			return gWorld.ArePointsInSameBodyOfWater(pos1, pos2);
		}
		return false;
	}

	public static ulong GetLotLocation(Vector3 worldPos, ref LotLocation location)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotLocation(worldPos, ref location, eRoomDefinition.PlacementBlocking);
		}
		return 0uL;
	}

	public static ulong GetLotLocation(Vector3 worldPos, ref LotLocation location, eRoomDefinition def)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotLocation(worldPos, ref location, def);
		}
		return 0uL;
	}

	public static ulong GetLotLocationAtFloor(Vector3 worldPos, ref LotLocation location)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotLocationAtFloor(worldPos, ref location, eRoomDefinition.PlacementBlocking);
		}
		return 0uL;
	}

	public static bool IsPositionOutside(Vector3 worldPos)
	{
		if (gWorld != null)
		{
			return gWorld.IsPositionOutside(worldPos);
		}
		return true;
	}

	public static bool IsOnRoof(ulong objId)
	{
		if (gWorld != null)
		{
			return gWorld.IsOnRoof(objId);
		}
		return false;
	}

	public static ulong GetLotLocationAtFloor(Vector3 worldPos, ref LotLocation location, eRoomDefinition def)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotLocationAtFloor(worldPos, ref location, def);
		}
		return 0uL;
	}

	public static Vector3 SnapToFloor(Vector3 position)
	{
		LotLocation location = LotLocation.Invalid;
		ulong lotLocationAtFloor = GetLotLocationAtFloor(position, ref location);
		if (lotLocationAtFloor != 0 && lotLocationAtFloor != ulong.MaxValue)
		{
			Vector3 worldPos = position;
			GetWorldPosition(lotLocationAtFloor, location, ref worldPos);
			if (IsOnPlatform(worldPos))
			{
				worldPos.y += 0.1875f;
			}
			position.y = worldPos.y;
		}
		else
		{
			position.y = GetTerrainHeight(position.x, position.z, considerBridges: true);
		}
		return position;
	}

	public static short GetObjectTombRoomId(ObjectGuid guid)
	{
		if (gWorld != null)
		{
			return gWorld.GetObjectTombRoomId(guid.Value);
		}
		return -1;
	}

	public static short GetRoomId(Vector3 position)
	{
		if (gWorld != null)
		{
			return gWorld.GetRoomIdAtPos(position, eRoomDefinition.PlacementBlocking);
		}
		return -1;
	}

	public static short GetRoomId(Vector3 position, eRoomDefinition roomDef)
	{
		if (gWorld != null)
		{
			return gWorld.GetRoomIdAtPos(position, roomDef);
		}
		return -1;
	}

	public static short GetRoomId(ulong lotId, Vector3 position, eRoomDefinition def)
	{
		if (gWorld != null)
		{
			return gWorld.GetRoomIdAtPosOnLot(lotId, position, def);
		}
		return -1;
	}

	public static short GetRoomId(ulong lotId, LotLocation location)
	{
		if (gWorld != null)
		{
			return gWorld.GetRoomId(lotId, location, eRoomDefinition.PlacementBlocking);
		}
		return 0;
	}

	public static short GetRoomId(ulong lotId, LotLocation location, eRoomDefinition def)
	{
		if (gWorld != null)
		{
			return gWorld.GetRoomId(lotId, location, def);
		}
		return 0;
	}

	public static void GetWorldPosition(ulong lotId, LotLocation location, ref Vector3 worldPos)
	{
		if (gWorld != null)
		{
			gWorld.GetWorldPosition(lotId, location, ref worldPos);
		}
	}

	public static ObjectGuid[] GetObjects(ulong lotId, LotLocation location)
	{
		if (gWorld != null)
		{
			return gWorld.GetObjects(lotId, location);
		}
		return null;
	}

	public static uint GetObjectCount(ulong lotId, LotLocation location)
	{
		if (gWorld != null)
		{
			return gWorld.GetObjectCount(lotId, location);
		}
		return 0u;
	}

	public static ResourceKey ObjectGetProductKey(ObjectGuid objId)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectGetProductKey(objId);
		}
		return default;
	}

	public static void ObjectSetModel(ObjectGuid objId, string modelName, uint groupId)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetModel(objId, modelName, groupId);
		}
	}

	public static void ObjectSetModel(ObjectGuid objId, ResourceKey modelKey)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetModel(objId, modelKey);
		}
	}

	public static void ObjectPreloadMaterial(ObjectGuid objId, string materialSetName)
	{
		if (gWorld != null)
		{
			gWorld.ObjectPreloadMaterial(objId, materialSetName);
		}
	}

	public static void ObjectSetMaterial(ObjectGuid objId, string materialSetName, float transitionTime, bool bTransitionToOverlay)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetMaterial(objId, materialSetName, transitionTime, bTransitionToOverlay);
		}
	}

	public static void ObjectSetGeometryVisibilityState(ObjectGuid objId, string geometryVisibilityState)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetGeometryVisibilityState(objId, geometryVisibilityState);
		}
	}

	public static void ObjectSetCustomLightRig(ObjectGuid objId, string lightRigName)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetCustomLightRig(objId, lightRigName);
		}
	}

	public static void ObjectSetOpacity(ObjectGuid objId, float opacity, float transitionTime)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetOpacity(objId, opacity, transitionTime);
		}
	}

	public static void ObjectSetOpacityTransition(ObjectGuid objId, float opacity1, float transitionTime, float opacity2)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetOpacityTransition(objId, opacity1, transitionTime, opacity2);
		}
	}

	public static void ObjectSetColorTint(ObjectGuid objId, float red, float green, float blue, float transitionTime)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetColorTint(objId, red, green, blue, transitionTime);
		}
	}

	public static void ObjectSetColorTintTransition(ObjectGuid objId, float red1, float green1, float blue1, float transitionTime, float red2, float green2, float blue2)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetColorTintTransition(objId, red1, green1, blue1, transitionTime, red2, green2, blue2);
		}
	}

	public static void ObjectSetHiddenFlags(ObjectGuid objId, uint hiddenFlags)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetHiddenFlags(objId, hiddenFlags);
		}
	}

	public static void ObjectSetHiddenFlagsWithWorldFootprint(ObjectGuid objId, uint hiddenFlags)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetHiddenFlagsWithWorldFootprint(objId, hiddenFlags);
		}
	}

	public static void ObjectSetGhostState(ObjectGuid objId, uint ghostType, uint ageGenderSpeciesFlags)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetGhostState(objId, ghostType, ageGenderSpeciesFlags);
		}
	}

	public static void ObjectSetSculptureType(ObjectGuid objId, uint sculptureType)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetSculptureType(objId, sculptureType);
		}
	}

	public static bool ObjectSetVisualOverride(ObjectGuid objId, eVisualOverrideTypes type, float[] parameters)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectSetVisualOverride(objId, (uint)type, parameters);
		}
		return false;
	}

	public static bool ObjectRemoveVisualOverride(ObjectGuid objId, eVisualOverrideTypes type)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectRemoveVisualOverride(objId, (uint)type);
		}
		return false;
	}

	public static void ObjectSetCurrentLotFlag(ObjectGuid objId, bool bVal)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetCurrentLotFlag(objId, bVal);
		}
	}

	public static void ObjectDetachAutoDestroyEffects(ObjectGuid objId, bool destroyEffects)
	{
		if (gWorld != null)
		{
			gWorld.ObjectDetachAutoDestroyEffects(objId, destroyEffects);
		}
	}

	public static void ObjectSetElevationOffset(ObjectGuid objId, float elevation)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetElevationOffset(objId, elevation);
		}
	}

	public static float ObjectGetElevationOffset(ObjectGuid objId)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectGetElevationOffset(objId);
		}
		return 0f;
	}

	public static void ObjectSetNeverFade(ObjectGuid objId, bool neverFade)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetNeverFade(objId, neverFade);
		}
	}

	public static void ObjectSetPropagateFade(ObjectGuid objId, bool propagateFade)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetPropagateFade(objId, propagateFade);
		}
	}

	public static void ObjectSetDoNotDrawModel(ObjectGuid objId, bool b)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetDoNotDrawModel(objId, b);
		}
	}

	public static uint ObjectGetHiddenFlags(ObjectGuid objId)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectGetHiddenFlags(objId);
		}
		return 0u;
	}

	public static void ObjectResetParentVisibilityFlags(ObjectGuid objId)
	{
		if (gWorld != null)
		{
			gWorld.ObjectResetParentVisibilityFlags(objId);
		}
	}

	public static void ObjectResetBindPoseWithRotation(ObjectGuid objID)
	{
		if (gWorld != null)
		{
			gWorld.ObjectResetBindPoseWithRotation(objID);
		}
	}

	public static void ObjectResetBindPose(ObjectGuid objID)
	{
		if (gWorld != null)
		{
			gWorld.ObjectResetBindPose(objID);
		}
	}

	public static bool ObjectEnableFootprint(ObjectGuid objId, uint footprintNameHash, bool enable)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectEnableFootprint(objId, footprintNameHash, enable);
		}
		return false;
	}

	public static bool ObjectIsFootprintEnabled(ObjectGuid objId, uint footprintNameHash)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectIsFootprintEnabled(objId, footprintNameHash);
		}
		return false;
	}

	public static bool ObjectResetFootprintState(ObjectGuid objId)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectResetFootprintState(objId);
		}
		return false;
	}

	public static bool ObjectGetFootprintExtents(ObjectGuid objId, uint footprintNameHash, out Vector2 v0, out Vector2 v1, out sbyte level)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectGetFootprintExtents(objId, footprintNameHash, out v0, out v1, out level);
		}
		v0 = (v1 = Vector2.Zero);
		level = 0;
		return false;
	}

	public static bool ObjectFootprintContainsPoint(ObjectGuid objId, uint footprintNameHash, Vector3 position)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectFootprintContainsPoint(objId, footprintNameHash, position);
		}
		return false;
	}

	public static bool ObjectFootprintContainsPoints(ObjectGuid objId, uint footprintNameHash, ulong[] objIdsToCompare, ref int[] results)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectFootprintContainsPoints(objId, footprintNameHash, objIdsToCompare, ref results);
		}
		return false;
	}

	public static uint[] ObjectGetFootprintNameHashes(ObjectGuid objId)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectGetFootprintNameHashes(objId);
		}
		return new uint[0];
	}

	public static void ObjectSetPosition(ObjectGuid objId, Vector3 pos, int level)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetPosition(objId, pos, level);
		}
	}

	public static void ObjectSetPlacementMode(ObjectGuid objId, uint mode)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetPlacementMode(objId, mode);
		}
	}

	public static uint ObjectGetPlacementMode(ObjectGuid objId)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectGetPlacementMode(objId);
		}
		return 0u;
	}

	public static bool ObjectCanBeMovedUpAndDownOnWall(ObjectGuid objId)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectCanBeMovedUpAndDownOnWall(objId);
		}
		return false;
	}

	public static void ObjectSetFogAreaEffect(ObjectGuid objId, float fogNearPlane, float fogFarPlane, float startRadius, float endRadius, float startTime, float endTime)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetFogAreaEffect(objId, fogNearPlane, fogFarPlane, startRadius, endRadius, startTime, endTime);
		}
	}

	public static uint ObjectPlayVideo(ObjectGuid objId, string videoName, bool bLoop, ProductVersion product)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectPlayVideo(objId, videoName, bLoop, product);
		}
		return 0u;
	}

	public static uint ObjectPlayVideo(ObjectGuid objId, string videoName, bool bLoop)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectPlayVideo(objId, videoName, bLoop);
		}
		return 0u;
	}

	public static uint ObjectPlayVideo(ObjectGuid objId, ResourceKey videoKey, bool bLoop)
	{
		if (gWorld != null)
		{
			return gWorld.ObjectPlayVideo(objId, videoKey, bLoop);
		}
		return 0u;
	}

	public static void ObjectStopVideo(ObjectGuid objId)
	{
		if (gWorld != null)
		{
			gWorld.ObjectStopVideo(objId);
		}
	}

	public static void ObjectSetPainting(ObjectGuid objId, ResourceKey paintingKey, uint levelToReveal)
	{
		if (gWorld != null)
		{
			gWorld.ObjectSetPainting(objId, paintingKey, levelToReveal);
		}
	}

	public static void StairsGetProductInformation(Vector3 worldPositionOfStairs, out ResourceKey stairProductKey, out ResourceKey presetKey)
	{
		stairProductKey = ResourceKey.kInvalidResourceKey;
		presetKey = ResourceKey.kInvalidResourceKey;
		if (gWorld != null)
		{
			gWorld.StairsGetProductInformation(worldPositionOfStairs, out stairProductKey, out presetKey);
		}
	}

	public static void SetRoomMarkerSeed(ObjectGuid objId, RoomMarkerTypes markerType)
	{
		if (gWorld != null)
		{
			gWorld.SetRoomMarkerSeed(objId, markerType);
		}
	}

	public static void ClearRoomMarkerSeed(ObjectGuid objId, RoomMarkerTypes markerType)
	{
		if (gWorld != null)
		{
			gWorld.ClearRoomMarkerSeed(objId, markerType);
		}
	}

	public static void SetRoomStrobeDelay(ulong lotId, int roomId, float delay)
	{
		if (gWorld != null)
		{
			gWorld.SetRoomStrobeDelay(lotId, roomId, delay);
		}
	}

	public static void StairsGetFloorCoverExtents(ObjectGuid objId, out Vector3 min, out Vector3 max)
	{
		min = (max = Vector3.Zero);
		if (gWorld != null)
		{
			gWorld.StairsGetFloorCoverExtents(objId, out min, out max);
		}
	}

	public static void FogOfExplorationSetFadeTime(float secondsToFade)
	{
		if (gWorld != null)
		{
			gWorld.FogOfExplorationSetFadeTime(secondsToFade);
		}
	}

	public static ResourceKey CapturePhoto(PaintingStyle style, ObjectGuid[] objIdsToFrame)
	{
		if (gWorld != null && Simulator.CheckYieldingContext(shouldThrowException: true))
		{
			return gWorld.CapturePhoto(style, objIdsToFrame);
		}
		return default;
	}

	public static ResourceKey CaptureSceneForMemoryOrPicture(PaintingStyle style, uint x, uint y, uint width, uint height, uint skill, bool bForMemory)
	{
		if (gWorld != null)
		{
			return gWorld.CaptureSceneForMemoryOrPicture((uint)style, x, y, width, height, skill, bForMemory);
		}
		return ResourceKey.kInvalidResourceKey;
	}

	public static ResourceKey CaptureMeshForSculpture(ObjectGuid objId)
	{
		if (gWorld != null)
		{
			return gWorld.CaptureMeshForSculpture(objId.Value);
		}
		return ResourceKey.kInvalidResourceKey;
	}

	public static void DeleteSculptureMesh(ResourceKey meshKey)
	{
		if (gWorld != null)
		{
			gWorld.DeleteSculptureMesh(meshKey);
		}
	}

	public static bool DeleteTravelDBResource(ResourceKey key)
	{
		if (gWorld != null)
		{
			return gWorld.DeleteTravelDBResource(key);
		}
		return false;
	}

	public static void SetIsPaintingTextureInUse(ResourceKey paintingKey, bool isInUse, bool bySim)
	{
		if (gWorld != null)
		{
			gWorld.SetIsPaintingTextureInUse(paintingKey, isInUse, bySim);
		}
	}

	public static bool HandToolAttach(ObjectGuid objId, bool dropOnMouseUp)
	{
		if (gWorld != null)
		{
			return gWorld.HandToolAttach(objId.mValue, dropOnMouseUp);
		}
		return false;
	}

	public static ObjectGuid HandToolDetach()
	{
		if (gWorld != null)
		{
			return new ObjectGuid(gWorld.HandToolDetach());
		}
		return ObjectGuid.InvalidObjectGuid;
	}

	public static ObjectGuid HandToolGetObjectHeld()
	{
		if (gWorld != null)
		{
			return new ObjectGuid(gWorld.HandToolGetObjectHeld());
		}
		return ObjectGuid.InvalidObjectGuid;
	}

	public static bool HandToolHide()
	{
		if (gWorld != null)
		{
			return gWorld.HandToolHide();
		}
		return false;
	}

	public static bool HandToolShow()
	{
		if (gWorld != null)
		{
			return gWorld.HandToolShow();
		}
		return false;
	}

	public static void ReplaceUndoableObject(ObjectGuid oldObjId, ObjectGuid newObjId)
	{
		gWorld.ReplaceUndoableObject(oldObjId.Value, newObjId.Value);
	}

	public static void WinAttachToObj(uint windowHandle, ObjectGuid scriptHandle, Vector3 effect3DOffset, Vector2 effect2DOffset, bool mapTag, bool simThread, bool stickToScreenBounds)
	{
		gWorld.WinAttachToObj(windowHandle, scriptHandle, effect3DOffset, effect2DOffset, mapTag, simThread, stickToScreenBounds);
	}

	public static void WinDetachFromObj(uint windowHandle, bool simThread, bool mapTag)
	{
		gWorld.WinDetachFromObj(windowHandle, simThread, mapTag);
	}

	public static void WinAttachToWorldPosition(uint windowHandle, Vector3 position, Vector2 effect2DOffset, bool mapTag, bool simThread, bool stickToScreenBounds, bool round)
	{
		gWorld.WinAttachToWorldPosition(windowHandle, position, effect2DOffset, mapTag, simThread, stickToScreenBounds, round);
	}

	public static void WinDetachFromWorldPosition(uint windowHandle, bool simThread, bool mapTag)
	{
		gWorld.WinDetachFromWorldPosition(windowHandle, simThread, mapTag);
	}

	public static void SetMapTagStickToScreenBounds(uint windowHandle, bool stickToScreenBounds)
	{
		gWorld.SetMapTagStickToScreenBounds(windowHandle, stickToScreenBounds);
	}

	public static void ForceMaptagTick(uint winHandle)
	{
		gWorld.ForceMaptagTick(winHandle);
	}

	public static EnvironmentRoomInfo GetInformationAboutRoom(ulong lotId, int roomID)
	{
		return gWorld.GetInformationAboutRoom(lotId, roomID, eRoomDefinition.PlacementBlocking);
	}

	public static EnvironmentRoomInfo GetInformationAboutRoom(ulong lotId, int roomID, eRoomDefinition def)
	{
		return gWorld.GetInformationAboutRoom(lotId, roomID, def);
	}

	public static float GetPercentageOfWallsCovered(ulong lotId, int roomID)
	{
		return gWorld.GetPercentageOfWallsCovered(lotId, roomID, eRoomDefinition.PlacementBlocking);
	}

	public static float GetPercentageOfWallsCovered(ulong lotId, int roomID, eRoomDefinition def)
	{
		return gWorld.GetPercentageOfWallsCovered(lotId, roomID, def);
	}

	public static LotType GetLotType(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotType(lotId);
		}
		return LotType.Residential;
	}

	public static void SetLotType(ulong lotId, LotType lotType)
	{
		if (gWorld != null)
		{
			gWorld.SetLotType(lotId, lotType);
		}
	}

	public static ResidentialLotSubType GetResidentialLotSubType(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetResidentialLotSubType(lotId);
		}
		return ResidentialLotSubType.kResidentialUndefined;
	}

	public static void SetResidentialLotSubType(ulong lotId, ResidentialLotSubType subType)
	{
		if (gWorld != null)
		{
			gWorld.SetResidentialLotSubType(lotId, subType);
		}
	}

	public static CommercialLotSubType GetCommercialLotSubType(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetCommercialLotSubType(lotId);
		}
		return CommercialLotSubType.kCommercialUndefined;
	}

	public static void SetCommercialLotSubType(ulong lotId, CommercialLotSubType subType)
	{
		if (gWorld != null)
		{
			gWorld.SetCommercialLotSubType(lotId, subType);
		}
	}

	public static float GetLotAdditionalPropertyValue(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotAdditionalPropertyValue(lotId);
		}
		return 0f;
	}

	public static float GetLotBeautifulVistaBuf(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotBeautifulVistaBuf(lotId);
		}
		return 0f;
	}

	public static float GetHighestPointOnLot(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetHighestPointOnLot(lotId);
		}
		return 0f;
	}

	public static bool GetLotIsPartiallyInSea(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotIsPartiallyInSea(lotId);
		}
		return false;
	}

	public static bool GetLotBuildBuyEnabledFlag(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotBuildBuyEnabledFlag(lotId);
		}
		return true;
	}

	public static void SetLotBuildBuyEnabledFlag(ulong lotId, bool b)
	{
		if (gWorld != null)
		{
			gWorld.SetLotBuildBuyEnabledFlag(lotId, b);
		}
	}

	public static void SetUnchartedLot(ulong lotId, float distance)
	{
		if (gWorld != null)
		{
			gWorld.SetUnchartedLot(lotId, distance);
		}
	}

	public static void MarkLotWorthDirty(ulong lotId)
	{
		if (gWorld != null)
		{
			gWorld.MarkLotWorthDirty(lotId);
		}
	}

	public static int GetLotWorth(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotWorth(lotId);
		}
		return 0;
	}

	public static int GetUnfurnishedLotWorth(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetUnfurnishedLotWorth(lotId);
		}
		return 0;
	}

	public static int GetEmptyLotWorth(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetEmptyLotWorth(lotId);
		}
		return 0;
	}

	public static string GetWorldNameKey()
	{
		if (gWorld != null)
		{
			return gWorld.GetWorldNameKey();
		}
		return string.Empty;
	}

	public static string GetWorldFileName()
	{
		if (gWorld != null)
		{
			return gWorld.GetWorldFileName();
		}
		return string.Empty;
	}

	public static string GetLotName(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotName(lotId);
		}
		return string.Empty;
	}

	public static string GetLotNameKey(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotNameKey(lotId);
		}
		return null;
	}

	public static string GetLotDescription(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotDescription(lotId);
		}
		return string.Empty;
	}

	public static string GetLotDescriptionKey(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotDescriptionKey(lotId);
		}
		return string.Empty;
	}

	public static string GetLotAddress(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotAddress(lotId);
		}
		return string.Empty;
	}

	public static string GetLotAddressKey(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotAddressKey(lotId);
		}
		return string.Empty;
	}

	public static void SetLotName(ulong lotId, string lotName)
	{
		if (gWorld != null)
		{
			gWorld.SetLotName(lotId, lotName);
		}
	}

	public static void SetLotDescription(ulong lotId, string lotDescription)
	{
		if (gWorld != null)
		{
			gWorld.SetLotDescription(lotId, lotDescription);
		}
	}

	public static string GetLotSaveFileName(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetLotSaveFileName(lotId);
		}
		return string.Empty;
	}

	public static byte[] GetGameObjTuningData(ulong objId)
	{
		return gWorld.GetGameObjTuningData(objId);
	}

	public static void SetGameObjTuningData(ObjectGuid objectId, byte[] data)
	{
		if (gWorld != null)
		{
			gWorld.SetGameObjTuningData(objectId, data);
		}
	}

	public static ulong[] GetObjectScreenCoverageData()
	{
		return gWorld.GetObjectScreenCoverageData();
	}

	public static void EnableObjectScreenCoverage(uint enable)
	{
		gWorld.EnableObjectScreenCoverage(enable);
	}

	public static void ForceVisibilityForPicture(bool bForce)
	{
		gWorld.ForceVisibilityForPicture(bForce);
	}

	public static int[] GetDoorRooms(ObjectGuid scriptHandle, eRoomDefinition roomDef)
	{
		return gWorld.GetDoorRooms(scriptHandle, roomDef);
	}

	public static void SetBurnt(ulong lotId, LotLocation location, bool burnt)
	{
		gWorld.SetFloorFeatures(lotId, location, FloorFeatureFlags.Burnt, burnt, ushort.MaxValue);
	}

	public static bool IsBurnt(ulong lotId, LotLocation location)
	{
		return gWorld.HasFloorFeatures(lotId, location, FloorFeatureFlags.Burnt, ushort.MaxValue);
	}

	public static LotLocation[] GetBurntTiles(ulong lotId, LotLocation location)
	{
		return gWorld.GetTilesWithFloorFeatures(lotId, eRoomDefinition.PlacementBlocking, FloorFeatureFlags.Burnt, ushort.MaxValue);
	}

	public static LotLocation[] GetBurntTiles(ulong lotId, LotLocation location, eRoomDefinition def)
	{
		return gWorld.GetTilesWithFloorFeatures(lotId, def, FloorFeatureFlags.Burnt, ushort.MaxValue);
	}

	public static void DropLeavesFromTrees(ulong lotId, float amount)
	{
		gWorld.DropLeavesFromTrees(lotId, amount);
	}

	public static void DecayLeaves(ulong lotId, float amount)
	{
		gWorld.DecayLeaves(lotId, amount);
	}

	public static void SetLeaves(ulong lotId, LotLocation location, bool enable)
	{
		gWorld.SetFloorFeatures(lotId, location, FloorFeatureFlags.Leaves, enable, ushort.MaxValue);
	}

	public static bool HasLeaves(ulong lotId, LotLocation location)
	{
		return gWorld.HasFloorFeatures(lotId, location, FloorFeatureFlags.Leaves, ushort.MaxValue);
	}

	public static LotLocation[] GetLeavesTiles(ulong lotId, LotLocation location)
	{
		return gWorld.GetTilesWithFloorFeatures(lotId, eRoomDefinition.PlacementBlocking, FloorFeatureFlags.Leaves, ushort.MaxValue);
	}

	public static LotLocation[] GetLeavesTiles(ulong lotId, LotLocation location, eRoomDefinition def)
	{
		return gWorld.GetTilesWithFloorFeatures(lotId, def, FloorFeatureFlags.Leaves, ushort.MaxValue);
	}

	public static void SetPuddle(ulong lotId, LotLocation location, bool puddle)
	{
		SetPuddle(lotId, location, puddle, allowDuringEditInGameMode: false, ushort.MaxValue);
	}

	public static ushort GetPuddleMask(ulong lotId, LotLocation location)
	{
		return gWorld.GetFloorFeatureMask(lotId, location, FloorFeatureFlags.Puddle);
	}

	public static void SetPuddle(ulong lotId, LotLocation location, bool puddle, bool allowDuringEditInGameMode)
	{
		SetPuddle(lotId, location, puddle, allowDuringEditInGameMode, ushort.MaxValue);
	}

	public static void SetPuddle(ulong lotId, LotLocation location, bool puddle, bool allowDuringEditInGameMode, ushort mask)
	{
		if (puddle && !allowDuringEditInGameMode && Environment.HasEditInGameModeSwitch)
		{
			return;
		}
		bool flag = HasPuddle(lotId, location, mask);
		if (flag != puddle || (flag && mask != GetPuddleMask(lotId, location)))
		{
			Vector3 worldPos = default;
			GetWorldPosition(lotId, location, ref worldPos);
			if (puddle)
			{
				Audio.StartSound("puddle_grow", worldPos);
			}
			else
			{
				Audio.StartSound("puddle_shrink", worldPos);
			}
			gWorld.SetFloorFeatures(lotId, location, FloorFeatureFlags.Puddle, puddle, mask);
		}
	}

	public static bool HasRainPuddle(ulong lotId, Vector3 worldPos)
	{
		return gWorld.HasFloorFeaturesWorldPos(worldPos, FloorFeatureFlags.RainPuddle, ushort.MaxValue);
	}

	public static bool HasAnyValidRainPuddlesOnLot(ulong lotId)
	{
		return gWorld.HasAnyValidRainPuddlesOnLot(lotId);
	}

	public static List<Vector3> GetRainPuddles(ulong lotId)
	{
		float[] posArray = new float[3];
		if (gWorld.GetRainPuddlesOnLot(lotId, ref posArray))
		{
			List<Vector3> list = new List<Vector3>();
			for (int i = 0; 3 * i + 2 < posArray.Length; i++)
			{
				list.Add(new Vector3(posArray[3 * i], posArray[3 * i + 1], posArray[3 * i + 2]));
			}
			return list;
		}
		return new List<Vector3>();
	}

	public static bool HasPuddle(ulong lotId, LotLocation location)
	{
		return gWorld.HasFloorFeatures(lotId, location, FloorFeatureFlags.Puddle, ushort.MaxValue);
	}

	public static bool HasPuddle(ulong lotId, LotLocation location, ushort mask)
	{
		return gWorld.HasFloorFeatures(lotId, location, FloorFeatureFlags.Puddle, mask);
	}

	public static LotLocation[] GetPuddles(ulong lotId, LotLocation location)
	{
		return gWorld.GetTilesWithFloorFeatures(lotId, eRoomDefinition.PlacementBlocking, FloorFeatureFlags.Puddle, ushort.MaxValue);
	}

	public static LotLocation[] GetPuddles(ulong lotId, LotLocation location, ushort mask)
	{
		return gWorld.GetTilesWithFloorFeatures(lotId, eRoomDefinition.PlacementBlocking, FloorFeatureFlags.Puddle, mask);
	}

	public static LotLocation[] GetPuddles(ulong lotId, LotLocation location, eRoomDefinition def)
	{
		return gWorld.GetTilesWithFloorFeatures(lotId, def, FloorFeatureFlags.Puddle, ushort.MaxValue);
	}

	public static LotLocation[] GetPuddles(ulong lotId, LotLocation location, eRoomDefinition def, ushort mask)
	{
		return gWorld.GetTilesWithFloorFeatures(lotId, def, FloorFeatureFlags.Puddle, mask);
	}

	public static bool HasSolidFloor(ulong lotId, LotLocation location)
	{
		return gWorld.HasSolidFloor(lotId, location);
	}

	public static string GetFloorSurfaceType(ulong lotId, Vector3 worldPos)
	{
		return gWorld.GetFloorSurfaceType(lotId, worldPos);
	}

	public static bool SurfaceIs(Vector3 worldPos, SurfaceClass surface)
	{
		LotLocation location = LotLocation.Invalid;
		ulong lotLocationAtFloor = GetLotLocationAtFloor(worldPos, ref location);
		string floorSurfaceType = GetFloorSurfaceType(lotLocationAtFloor, worldPos);
		if (string.IsNullOrEmpty(floorSurfaceType))
		{
			return false;
		}
		floorSurfaceType = floorSurfaceType.TrimEnd('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');
		floorSurfaceType = floorSurfaceType.ToLowerInvariant();
		return floorSurfaceType.Equals(Simulator.GetEnumSimpleName(typeof(SurfaceClass), (ulong)surface).ToLowerInvariant());
	}

	public static void ChangeStairState(ulong lotId, ObjectGuid objId, bool bHide)
	{
		gWorld.ChangeStairState(lotId, objId, bHide);
	}

	public static bool HasBasement(ulong lotId, LotLocation location)
	{
		return gWorld.HasBasement(lotId, location);
	}

	public static bool HasPool(ulong lotId, LotLocation location)
	{
		return gWorld.HasPool(lotId, location);
	}

	public static bool HasDiagonalWall(ulong lotId, LotLocation location)
	{
		return gWorld.HasDiagonalWall(lotId, location);
	}

	public static bool WallExistsBetween(ulong lotId, LotLocation a, LotLocation b)
	{
		return gWorld.WallExistsBetween(lotId, a, b);
	}

	public static bool WallExistsBetweenPoints(ulong lotId, Vector3 a, Vector3 b, eRoomDefinition roomDef)
	{
		return gWorld.WallExistsBetweenPoints(lotId, a, b, roomDef);
	}

	public static bool IsLiveDraggingEnabled(ObjectGuid objId)
	{
		return gWorld.IsLiveDraggingEnabled(objId);
	}

	public static bool StaysAfterEvict(ObjectGuid objId)
	{
		return gWorld.StaysAfterEvict(objId);
	}

	public static bool CanSeeObject(Vector3 start, ObjectGuid target, bool bIgnoreWindows)
	{
		return gWorld.CanSeeObject(start, target, bIgnoreWindows);
	}

	public static bool CanSeePoint(Vector3 start, Vector3 end, ObjectGuid endObjectId)
	{
		return gWorld.CanSeePoint(start, end, endObjectId);
	}

	public static bool IsEditInGameFromWBMode()
	{
		return gWorld.IsEditInGameFromWBMode();
	}

	public static bool IsSimRoutable(float worldX, float worldZ)
	{
		return gWorld.IsSimRoutable(worldX, worldZ);
	}

	public static bool IsCameraRoutable(float worldX, float worldZ)
	{
		return gWorld.IsCameraRoutable(worldX, worldZ);
	}

	public static void SetObjectHighlight(ObjectGuid objId, bool bTurnOn)
	{
		gWorld.SetObjectHighlight(objId, bTurnOn);
	}

	public static void SetWallCutoutStateForObject(ObjectGuid objId, bool bEnable)
	{
		gWorld.SetWallCutoutStateForObject(objId, bEnable);
	}

	public static void SetFloorCutoutStateForObject(ObjectGuid objId, bool bEnable)
	{
		gWorld.SetFloorCutoutStateForObject(objId, bEnable);
	}

	public static void DoorLockStateChanged(ObjectGuid objId, bool bLocked)
	{
		gWorld.DoorLockStateChanged(objId, bLocked);
	}

	public static void SetPagodaRoofCurveChoice(uint curveChoice)
	{
		gWorld.SetPagodaRoofCurveChoice(curveChoice);
	}

	public static uint GetPagodaRoofCurveChoice()
	{
		return gWorld.GetPagodaRoofCurveChoice();
	}

	public static void SetRoofSlopeAngle(uint slopeAngle)
	{
		gWorld.SetRoofSlopeAngle(slopeAngle);
	}

	public static uint GetRoofSlopeAngle()
	{
		return gWorld.GetRoofSlopeAngle();
	}

	public static bool HasRoofsWhoseSlopesCannotBeChanged()
	{
		return gWorld.HasRoofsWhoseSlopesCannotBeChanged();
	}

	public static bool HasPagodaRoofs()
	{
		return gWorld.HasPagodaRoofs();
	}

	public static void RebuildLotCompositors(ulong lotId)
	{
		gWorld.RebuildLotCompositors(lotId);
	}

	public static bool GetLotMainEntranceLocation(ulong lotId, out Vector3 worldPos)
	{
		worldPos = Vector3.Invalid;
		return gWorld.GetLotMainEntranceLocation(lotId, out worldPos);
	}

	public static ObjectGuid GetLotFrontDoor(ulong lotID, eFrontDoorType frontDoorType)
	{
		return gWorld.GetLotFrontDoor(lotID, frontDoorType);
	}

	public static bool SetLotFrontDoor(ulong lotID, ObjectGuid objectGuid, eFrontDoorType frontDoorType)
	{
		return gWorld.SetLotFrontDoor(lotID, objectGuid, frontDoorType);
	}

	public static void LotSetEntranceByTargetPoint(ulong lotId, bool bEnable, Vector3 targetPt)
	{
		gWorld.LotSetEntranceByTargetPoint(lotId, bEnable, targetPt);
	}

	public static bool LotIsEntranceFromTargetPoint(ulong lotId)
	{
		return gWorld.LotIsEntranceFromTargetPoint(lotId);
	}

	public static Vector3 LotGetEntraceTargetPoint(ulong lotId)
	{
		return gWorld.LotGetEntraceTargetPoint(lotId);
	}

	public static int[] GetConnectedRooms(ulong lotId, int roomId, int level)
	{
		return gWorld.GetConnectedRooms(lotId, roomId, level);
	}

	public static int[] GetInsideRoomsAtLevel(ulong lotId, int level, eRoomDefinition def)
	{
		return gWorld.GetInsideRoomsAtLevel(lotId, level, def);
	}

	public static int[] GetPoolRooms(ulong lotId)
	{
		return gWorld.GetPoolRooms(lotId);
	}

	public static bool IsInPool(Vector3 worldPos)
	{
		return gWorld.IsInPool(worldPos);
	}

	public static ObjectGuid GetPoolObjectIdForPoolBelowPosition(Vector3 worldPos)
	{
		return gWorld.GetPoolObjectIdForPoolBelowPosition(worldPos);
	}

	public static bool IsOnPlatform(Vector3 worldPos)
	{
		return gWorld.IsOnPlatform(worldPos);
	}

	public static void UpdateMoodState(uint reserved, bool bEnabled, float r, float g, float b, int val)
	{
		gWorld.UpdateMoodState(reserved, bEnabled, r, g, b, val);
	}

	public static void SetDarkLotRendering(ulong lotId, bool flag)
	{
		gWorld.SetDarkLotRendering(lotId, flag);
	}

	public static bool IsDarkLotRenderingEnabled(ulong lotId)
	{
		return gWorld.IsDarkLotRenderingEnabled(lotId);
	}

	public static void SetLunarCycle(int mooncycle)
	{
		gWorld.SetLunarCycle(mooncycle);
	}

	public static void SetLunarPhase(int moonphase)
	{
		gWorld.SetLunarPhase(moonphase);
	}

	public static void ForceLunarCycle(int mooncycle)
	{
		gWorld.ForceLunarCycle(mooncycle);
	}

	public static void ForceLunarPhase(int moonphase)
	{
		gWorld.ForceLunarPhase(moonphase);
	}

	public static int GetLunarCycle()
	{
		return gWorld.GetLunarCycle();
	}

	public static int GetLunarPhase()
	{
		return gWorld.GetLunarPhase();
	}

	public static int GetNumDaysUntilFullMoon()
	{
		return gWorld.GetNumDaysUntilFullMoon();
	}

	public static void SetLightingValues(LightTuning index)
	{
		gWorld.SetLightingValues((int)index);
	}

	public static void RandomizeCloudinessImmediately(float value)
	{
		gWorld.RandomizeCloudinessImmediately(value);
	}

	public static bool HasAnySnowAtPoint(Vector3 worldPos)
	{
		return gWorld.HasAnySnowAtPoint(worldPos);
	}

	public static ulong CreateHouseboatLot(uint width, uint height, LotType lotType, uint lotSubtype)
	{
		return gWorld.CreateHouseboatLot(width, height, lotType, lotSubtype);
	}

	public static bool DeleteHouseboatLot(ulong lotId)
	{
		return gWorld.DeleteHouseboatLot(lotId);
	}

	public static bool IsHouseboatLot(ulong lotId)
	{
		return gWorld.IsHouseboatLot(lotId);
	}

	public static void ParentLotToHouseboat(ulong lotId, ObjectGuid objectId)
	{
		gWorld.ParentLotToHouseboat(lotId, objectId);
	}

	public static ObjectGuid GetHouseboatParent(ulong lotId)
	{
		return gWorld.GetHouseboatParent(lotId);
	}

	public static bool GetWorldToHouseboatDisplayPosition(ulong lotId, Vector3 worldPos, out Vector3 outPos)
	{
		return gWorld.GetWorldToHouseboatDisplayPosition(lotId, worldPos, out outPos);
	}

	public static bool GetHouseboatDisplayToWorldPosition(ulong lotId, Vector3 houseboatPos, out Vector3 outPos)
	{
		return gWorld.GetHouseboatDisplayToWorldPosition(lotId, houseboatPos, out outPos);
	}

	public static bool GetWorldToHouseboatDisplayPositionAndForward(ulong lotId, Vector3 worldPos, Vector3 worldFwd, out Vector3 outPos, out Vector3 outFwd)
	{
		return gWorld.GetWorldToHouseboatDisplayPositionAndForward(lotId, worldPos, worldFwd, out outPos, out outFwd);
	}

	public static bool GetHouseboatDisplayToWorldPositionAndForward(ulong lotId, Vector3 houseboatPos, Vector3 houseboatFwd, out Vector3 outPos, out Vector3 outFwd)
	{
		return gWorld.GetHouseboatDisplayToWorldPositionAndForward(lotId, houseboatPos, houseboatFwd, out outPos, out outFwd);
	}

	public static uint GetNumSpeedTree(ObjectGuid objId)
	{
		if (gWorld != null)
		{
			return gWorld.GetNumSpeedTree(objId);
		}
		return 0u;
	}

	public static void SetVisualOverride(uint type)
	{
		gWorld.SetVisualOverride(type);
	}

	public static void LoadTick()
	{
		gWorld.LoadTick();
	}

	public static bool IsWallVertexACorner(ulong lotId, LotLocation location)
	{
		return gWorld.IsWallVertexACorner(lotId, location);
	}
}
