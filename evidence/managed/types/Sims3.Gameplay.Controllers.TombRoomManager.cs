/* Analyst: PC1.67 original managed evidence. Per-household room discovery, fog seeds/opacity, restricted local portals and final-room completion. Room IDs use LightBlocking geometry. BuildBuy/import/export hooks rebuild marker ownership and current fog.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System;
using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.EventSystem;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.Moving;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Objects;
using Sims3.Gameplay.Situations;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.UI;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.UI;

namespace Sims3.Gameplay.Controllers;

[Persistable]
public class TombRoomManager
{
	private enum MusicType : uint
	{
		None = uint.MaxValue,
		Default = 0u,
		LockedDoors = 1u,
		Secrets = 2u,
		ArmedTraps = 3u
	}

	private const string sLocalizationKey = "Gameplay/Controllers/TombRoomManager";

	private const string kTombCompletionSoundName = "sting_tomb_complete";

	private static readonly string[] kFranceTombMusicNames = new string[4] { "tomb_room_amb_franced", "tomb_room_amb_francec", "tomb_room_amb_franceb", "tomb_room_amb_francea" };

	private static readonly string[] kEgyptTombMusicNames = new string[4] { "tomb_room_amb_egyptd", "tomb_room_amb_egyptc", "tomb_room_amb_egyptb", "tomb_room_amb_egypta" };

	private static readonly string[] kChinaTombMusicNames = new string[4] { "tomb_room_amb_chinad", "tomb_room_amb_chinac", "tomb_room_amb_chinab", "tomb_room_amb_chinaa" };

	private static readonly string[] kFranceTombEntrySoundNames = new string[4] { "tomb_room_entry_franced", "tomb_room_entry_francec", "tomb_room_entry_franceb", "tomb_room_entry_francea" };

	private static readonly string[] kEgyptTombEntrySoundNames = new string[4] { "tomb_room_entry_egyptd", "tomb_room_entry_egyptc", "tomb_room_entry_egyptb", "tomb_room_entry_egypta" };

	private static readonly string[] kChinaTombEntrySoundNames = new string[4] { "tomb_room_entry_chinad", "tomb_room_entry_chinac", "tomb_room_entry_chinab", "tomb_room_entry_chinaa" };

	private static readonly string[] kFranceTombPlaylistNames = new string[4] { "tomb_room_plist_franced", "tomb_room_plist_francec", "tomb_room_plist_franceb", "tomb_room_plist_francea" };

	private static readonly string[] kEgyptTombPlaylistNames = new string[4] { "tomb_room_plist_egyptd", "tomb_room_plist_egyptc", "tomb_room_plist_egyptb", "tomb_room_plist_egypta" };

	private static readonly string[] kChinaTombPlaylistNames = new string[4] { "tomb_room_plist_chinad", "tomb_room_plist_chinac", "tomb_room_plist_chinab", "tomb_room_plist_chinaa" };

	private Dictionary<short, TombRoomInfo> mTombRoomInfoTable = new Dictionary<short, TombRoomInfo>();

	private Dictionary<ObjectGuid, float> mDesiredOpacities = new Dictionary<ObjectGuid, float>();

	private ulong mLotId;

	private static uint sTombMusicHandle = 0u;

	private static uint sTombPlaylistHandle = 0u;

	private static MusicType sMusicType = MusicType.None;

	private static EventListener sOnSimSelectedEventListener = null;

	[Tunable]
	private static float kSecondsToFadeFoggedRoom = 1f;

	[TunableComment("This is the size of the room in 'quadrants' to be considered a medium room.")]
	[Tunable]
	private static int kMediumTombRoomSize = 75;

	[TunableComment("This is the size of the room in 'quadrants' to be considered a large room.")]
	[Tunable]
	private static int kLargeTombRoomSize = 150;

	[TunableComment("0-1 chance of playing the awe animation the first time entering a small room")]
	[Tunable]
	private static float kSmallRoomChance = 0.5f;

	[TunableComment("0-1 chance of playing the awe animation the first time entering a medium room")]
	[Tunable]
	private static float kMediumRoomChance = 0.7f;

	[TunableComment("0-1 chance of playing the awe animation the first time entering a large room")]
	[Tunable]
	private static float kLargeRoomChance = 1f;

	private Lot Lot => LotManager.GetLot(mLotId);

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/Controllers/TombRoomManager:" + name, parameters);
	}

	private TombRoomManager()
	{
	}

	public TombRoomManager(ulong lotId)
	{
		mLotId = lotId;
	}

	private static void LoadWorldBuilderData()
	{
		if (!WorldBuilderData.HasData)
		{
			return;
		}
		TombRoomMarker[] objects = Queries.GetObjects<TombRoomMarker>();
		foreach (TombRoomMarker tombRoomMarker in objects)
		{
			tombRoomMarker.LoadWorldBuilderData();
		}
		foreach (Lot lot in LotManager.Lots)
		{
			if (CreateOrRemoveTombRoomManagerFromLotAsNecessary(lot))
			{
				lot.TombRoomManager.RetrieveTombRoomInfoFromTombRoomMarkers();
			}
		}
	}

	private bool AreThereArmedTrapsInRoom(short roomId)
	{
		Lot lot = Lot;
		ITombTrap[] objects = lot.GetObjects<ITombTrap>();
		foreach (ITombTrap tombTrap in objects)
		{
			if (GetRoomId(tombTrap) == roomId && tombTrap.IsArmed())
			{
				return true;
			}
		}
		return false;
	}

	private bool AreThereSecretsInRoom(short roomId)
	{
		Lot lot = Lot;
		ISecretObject[] objects = lot.GetObjects<ISecretObject>();
		foreach (ISecretObject secretObject in objects)
		{
			if (secretObject is RoomConnectionObject)
			{
				RoomConnectionObject roomConnectionObject = secretObject as RoomConnectionObject;
				if (!roomConnectionObject.ConnectsToRoom(roomId, eRoomDefinition.LightBlocking))
				{
					continue;
				}
			}
			else if (secretObject is Stairs)
			{
				Stairs stairs = secretObject as Stairs;
				if (GetRoomId(stairs.GetPositionOfSlot(Stairs.RoutingSlots.Stairs_Bottom0)) != roomId && GetRoomId(stairs.GetPositionOfSlot(Stairs.RoutingSlots.Stairs_Top0)) != roomId)
				{
					continue;
				}
			}
			else if (GetRoomId(secretObject) != roomId)
			{
				continue;
			}
			if (!secretObject.IsDiscovered)
			{
				return true;
			}
		}
		return false;
	}

	private bool AreThereLockedDoorsInRoom(short roomId)
	{
		Lot lot = Lot;
		CommonDoor[] objects = lot.GetObjects<CommonDoor>();
		foreach (CommonDoor commonDoor in objects)
		{
			if (commonDoor.ConnectsToRoom(roomId, eRoomDefinition.LightBlocking) && commonDoor.IsLocked)
			{
				return true;
			}
		}
		return false;
	}

	private static MusicType GetNewMusicType()
	{
		if (PlumbBob.SelectedActor == null)
		{
			return MusicType.None;
		}
		if (GameStates.NextInWorldStateId != InWorldState.SubState.LiveMode)
		{
			return MusicType.None;
		}
		Lot lotCurrent = PlumbBob.SelectedActor.LotCurrent;
		if (lotCurrent == null || lotCurrent.TombRoomManager == null)
		{
			return MusicType.None;
		}
		short roomId = GetRoomId(PlumbBob.SelectedActor);
		if (!lotCurrent.TombRoomManager.IsRoomInTomb(roomId))
		{
			return MusicType.None;
		}
		if (lotCurrent.TombRoomManager.AreThereArmedTrapsInRoom(roomId))
		{
			return MusicType.ArmedTraps;
		}
		if (lotCurrent.TombRoomManager.AreThereSecretsInRoom(roomId))
		{
			return MusicType.Secrets;
		}
		if (lotCurrent.TombRoomManager.AreThereLockedDoorsInRoom(roomId))
		{
			return MusicType.LockedDoors;
		}
		return MusicType.Default;
	}

	public static void UpdateTombMusic()
	{
		MusicType newMusicType = GetNewMusicType();
		TombRoomManager tombRoomManager = null;
		TombRoomMarker tombRoomMarker = null;
		Vector3 position = Vector3.OutOfWorld;
		if (newMusicType != MusicType.None && PlumbBob.SelectedActor != null)
		{
			tombRoomManager = PlumbBob.SelectedActor.LotCurrent.TombRoomManager;
			tombRoomMarker = tombRoomManager.GetTombRoomMarkerInRoom(GetRoomId(PlumbBob.SelectedActor));
			position = tombRoomMarker?.Position ?? Vector3.OutOfWorld;
		}
		if (newMusicType == sMusicType)
		{
			if (tombRoomMarker != null && sMusicType != MusicType.None)
			{
				Audio.SetSoundProperty(sTombMusicHandle, 84696423u, position.x);
				Audio.SetSoundProperty(sTombMusicHandle, 84696422u, position.y);
				Audio.SetSoundProperty(sTombMusicHandle, 84696421u, position.z);
				Audio.SetSoundProperty(sTombPlaylistHandle, 84696423u, position.x);
				Audio.SetSoundProperty(sTombPlaylistHandle, 84696422u, position.y);
				Audio.SetSoundProperty(sTombPlaylistHandle, 84696421u, position.z);
			}
			return;
		}
		if (sMusicType != MusicType.None)
		{
			if (sTombMusicHandle != 0)
			{
				Audio.StopSound(sTombMusicHandle);
				sTombMusicHandle = 0u;
			}
			if (sTombPlaylistHandle != 0)
			{
				Audio.StopSound(sTombPlaylistHandle);
				sTombPlaylistHandle = 0u;
			}
		}
		if (newMusicType != MusicType.None)
		{
			WorldName currentWorld = GameUtils.GetCurrentWorld();
			string text = null;
			string text2 = null;
			switch (currentWorld)
			{
			case WorldName.China:
				text = kChinaTombMusicNames[(uint)newMusicType];
				text2 = kChinaTombPlaylistNames[(uint)newMusicType];
				break;
			default:
				text = kEgyptTombMusicNames[(uint)newMusicType];
				text2 = kEgyptTombPlaylistNames[(uint)newMusicType];
				break;
			case WorldName.France:
				text = kFranceTombMusicNames[(uint)newMusicType];
				text2 = kFranceTombPlaylistNames[(uint)newMusicType];
				break;
			}
			if (tombRoomMarker != null)
			{
				if (!string.IsNullOrEmpty(text))
				{
					sTombMusicHandle = Audio.StartSound(text, position);
				}
				if (!string.IsNullOrEmpty(text2))
				{
					sTombPlaylistHandle = Audio.StartSound(text2, position);
				}
			}
		}
		sMusicType = newMusicType;
	}

	private static void PlayTombEntrySound()
	{
		MusicType newMusicType = GetNewMusicType();
		if (newMusicType == MusicType.None)
		{
			return;
		}
		WorldName currentWorld = GameUtils.GetCurrentWorld();
		string text = null;
		text = currentWorld switch
		{
			WorldName.China => kChinaTombEntrySoundNames[(uint)newMusicType], 
			WorldName.France => kFranceTombEntrySoundNames[(uint)newMusicType], 
			_ => kEgyptTombEntrySoundNames[(uint)newMusicType], 
		};
		if (!string.IsNullOrEmpty(text))
		{
			TombRoomManager tombRoomManager = PlumbBob.SelectedActor.LotCurrent.TombRoomManager;
			TombRoomMarker tombRoomMarkerInRoom = tombRoomManager.GetTombRoomMarkerInRoom(GetRoomId(PlumbBob.SelectedActor));
			if (tombRoomMarkerInRoom != null)
			{
				Audio.StartObjectSound(tombRoomMarkerInRoom.ObjectId, text, loop: false);
			}
		}
	}

	public static ListenerAction OnSimSelected(Event e)
	{
		UpdateTombMusic();
		return ListenerAction.Keep;
	}

	private static short GetRoomId(Vector3 point)
	{
		return World.GetRoomId(point, eRoomDefinition.LightBlocking);
	}

	private static short GetRoomId(IGameObject gameObject)
	{
		if (gameObject == null)
		{
			return -1;
		}
		if (gameObject is IOverridePositionOnFloor)
		{
			return World.GetRoomId(gameObject.PositionOnFloor, eRoomDefinition.LightBlocking);
		}
		return World.GetObjectTombRoomId(gameObject.ObjectId);
	}

	public bool HasAnyTombOrHiddenRooms()
	{
		return mTombRoomInfoTable.Count > 0;
	}

	public bool HasAnyTombRooms()
	{
		foreach (KeyValuePair<short, TombRoomInfo> item in mTombRoomInfoTable)
		{
			if (item.Value.TombType != TombType.NonTomb)
			{
				return true;
			}
		}
		return false;
	}

	private void SendTombRoomInfoToTombRoomMarkers()
	{
		Lot lot = Lot;
		TombRoomMarker[] objects = lot.GetObjects<TombRoomMarker>();
		foreach (TombRoomMarker tombRoomMarker in objects)
		{
			short roomId = GetRoomId(tombRoomMarker);
			if (mTombRoomInfoTable.ContainsKey(roomId))
			{
				tombRoomMarker.TombRoomInfo = mTombRoomInfoTable[roomId];
			}
			else
			{
				tombRoomMarker.TombRoomInfo = new TombRoomInfo(tombRoomMarker);
			}
		}
	}

	private void RetrieveTombRoomInfoFromTombRoomMarkers()
	{
		Lot lot = Lot;
		mTombRoomInfoTable.Clear();
		TombRoomMarker[] objects = lot.GetObjects<TombRoomMarker>();
		foreach (TombRoomMarker tombRoomMarker in objects)
		{
			TombRoomInfo tombRoomInfo = tombRoomMarker.TombRoomInfo;
			if (tombRoomMarker is HiddenRoomMarker && tombRoomInfo.TombType != TombType.NonTomb)
			{
				tombRoomInfo.TombType = TombType.NonTomb;
			}
			short roomId = GetRoomId(tombRoomMarker);
			if (mTombRoomInfoTable.ContainsKey(roomId))
			{
				if (tombRoomInfo.TombType == TombType.NonTomb)
				{
					mTombRoomInfoTable[roomId] = tombRoomInfo;
				}
			}
			else
			{
				mTombRoomInfoTable.Add(roomId, tombRoomInfo);
			}
		}
	}

	private TombRoomMarker GetTombRoomMarkerInRoom(short roomId)
	{
		TombRoomMarker[] objects = Lot.GetObjects<TombRoomMarker>();
		foreach (TombRoomMarker tombRoomMarker in objects)
		{
			if (roomId == GetRoomId(tombRoomMarker))
			{
				return tombRoomMarker;
			}
		}
		return null;
	}

	private bool IsRoomFogged(short roomId, bool useCachedValues)
	{
		if (!mTombRoomInfoTable.ContainsKey(roomId))
		{
			return false;
		}
		if (LotManager.RoomIdIsOutside(roomId))
		{
			return false;
		}
		TombRoomInfo tombRoomInfo = mTombRoomInfoTable[roomId];
		if (tombRoomInfo.FogStatus == FogStatus.EnabledAndDrawing)
		{
			Sim selectedActor = PlumbBob.SelectedActor;
			if (selectedActor != null)
			{
				List<ulong> householdMembers = ((useCachedValues && selectedActor.Autonomy.CachedSimHouseholdMembers != null) ? selectedActor.Autonomy.CachedSimHouseholdMembers : selectedActor.SimDescription.HouseholdMembers);
				return !tombRoomInfo.HasHouseholdBeenToThisRoom(householdMembers);
			}
		}
		return false;
	}

	private bool IsRoomFogged(short roomId)
	{
		return IsRoomFogged(roomId, useCachedValues: false);
	}

	private bool IsRoomInTombOrHidden(short roomId)
	{
		return mTombRoomInfoTable.ContainsKey(roomId);
	}

	private bool IsRoomInTomb(short roomId)
	{
		if (mTombRoomInfoTable.TryGetValue(roomId, out var value))
		{
			return value.TombType != TombType.NonTomb;
		}
		return false;
	}

	private bool DoesObjectConnectOnlyFoggedRooms(RoomConnectionObject roomConnectionObject)
	{
		int[] roomConnections = roomConnectionObject.GetRoomConnections(eRoomDefinition.LightBlocking);
		for (int i = 0; i < roomConnections.Length; i++)
		{
			short roomId = (short)roomConnections[i];
			if (!IsRoomFogged(roomId))
			{
				return false;
			}
		}
		return true;
	}

	private bool DoesObjectConnectOnlyFoggedRooms(Stairs stairs)
	{
		short roomId = GetRoomId(stairs.GetPositionOfSlot(Stairs.RoutingSlots.Stairs_Bottom0));
		if (!IsRoomFogged(roomId))
		{
			return false;
		}
		short roomId2 = GetRoomId(stairs.GetPositionOfSlot(Stairs.RoutingSlots.Stairs_Top0));
		if (!IsRoomFogged(roomId2))
		{
			return false;
		}
		return true;
	}

	private bool DoesObjectConnectAtLeastOneFoggedRoom(RoomConnectionObject roomConnectionObject)
	{
		int[] roomConnections = roomConnectionObject.GetRoomConnections(eRoomDefinition.LightBlocking);
		for (int i = 0; i < roomConnections.Length; i++)
		{
			short roomId = (short)roomConnections[i];
			if (IsRoomFogged(roomId))
			{
				return true;
			}
		}
		return false;
	}

	private bool DoesObjectConnectAtLeastOneFoggedRoom(Stairs stairs)
	{
		short roomId = GetRoomId(stairs.GetPositionOfSlot(Stairs.RoutingSlots.Stairs_Bottom0));
		if (IsRoomFogged(roomId))
		{
			return true;
		}
		short roomId2 = GetRoomId(stairs.GetPositionOfSlot(Stairs.RoutingSlots.Stairs_Top0));
		if (IsRoomFogged(roomId2))
		{
			return true;
		}
		return false;
	}

	private static IGameObject GetObjectWhoseRoomWeCareAbout(IGameObject gameObject)
	{
		IGameObject gameObject2 = gameObject;
		for (IGameObject parent = gameObject2.Parent; parent != null; parent = gameObject2.Parent)
		{
			gameObject2 = parent;
		}
		return gameObject2;
	}

	private void FogObject(GameObject gameObject)
	{
		World.ObjectSetOpacity(gameObject.ObjectId, 0f, kSecondsToFadeFoggedRoom);
	}

	private void UnfogObject(GameObject gameObject)
	{
		if (mDesiredOpacities.TryGetValue(gameObject.ObjectId, out var value))
		{
			mDesiredOpacities.Remove(gameObject.ObjectId);
		}
		else
		{
			value = 1f;
		}
		World.ObjectSetOpacity(gameObject.ObjectId, value, kSecondsToFadeFoggedRoom);
	}

	private static void AddForbiddenPortalsToRouteForLot(Route r, Lot lot, RoomConnectionObject doorException, Stairs stairsException)
	{
		if (lot == null || lot.TombRoomManager == null)
		{
			return;
		}
		RoomConnectionObject[] objects = lot.GetObjects<RoomConnectionObject>();
		foreach (RoomConnectionObject roomConnectionObject in objects)
		{
			if (roomConnectionObject != doorException && lot.TombRoomManager.DoesObjectConnectAtLeastOneFoggedRoom(roomConnectionObject))
			{
				r.AddObjectToForbiddenPortalList(roomConnectionObject.ObjectId);
			}
		}
		Stairs[] objects2 = lot.GetObjects<Stairs>();
		foreach (Stairs stairs in objects2)
		{
			if (stairs != stairsException && lot.TombRoomManager.DoesObjectConnectAtLeastOneFoggedRoom(stairs))
			{
				r.AddObjectToForbiddenPortalList(stairs.ObjectId);
			}
		}
	}

	private static void AboutToPlanRouteCallback(Route r, string routeType, Vector3 point)
	{
		if (r.Follower != null && r.Follower.Target is Sim sim)
		{
			CommonDoor.EnterDoor enterDoor = sim.CurrentInteraction as CommonDoor.EnterDoor;
			CommonDoor doorException = null;
			if (enterDoor != null)
			{
				doorException = enterDoor.Target;
			}
			Stairs.ClimbStairs climbStairs = sim.CurrentInteraction as Stairs.ClimbStairs;
			Stairs stairsException = null;
			if (climbStairs != null)
			{
				stairsException = climbStairs.Target;
			}
			Lot lotCurrent = sim.LotCurrent;
			if (lotCurrent != null && lotCurrent.TombRoomManager != null)
			{
				AddForbiddenPortalsToRouteForLot(r, lotCurrent, doorException, stairsException);
			}
			LotLocation location = LotLocation.Invalid;
			ulong lotLocation = World.GetLotLocation(point, ref location);
			Lot lot = LotManager.GetLot(lotLocation);
			if (lot != lotCurrent && lot != null && lot.TombRoomManager != null)
			{
				AddForbiddenPortalsToRouteForLot(r, lot, doorException, stairsException);
			}
		}
	}

	private void FogRoomWithTombRoomMarker(TombRoomMarker marker)
	{
		short roomId = GetRoomId(marker);
		if (roomId == 0 || !mTombRoomInfoTable.ContainsKey(roomId))
		{
			return;
		}
		Lot lot = Lot;
		World.FogOfExplorationSetFadeTime(kSecondsToFadeFoggedRoom);
		World.SetRoomMarkerSeed(marker.ObjectId, RoomMarkerTypes.FogOfExploration);
		GameObject[] objects = lot.GetObjects<GameObject>();
		foreach (GameObject gameObject in objects)
		{
			if (!IsObjectFoggable(gameObject))
			{
				continue;
			}
			IGameObject objectWhoseRoomWeCareAbout = GetObjectWhoseRoomWeCareAbout(gameObject);
			if (objectWhoseRoomWeCareAbout is RoomConnectionObject)
			{
				RoomConnectionObject roomConnectionObject = objectWhoseRoomWeCareAbout as RoomConnectionObject;
				if (!roomConnectionObject.ConnectsToRoom(roomId, eRoomDefinition.LightBlocking) || DoesObjectConnectAFoggedRoomToAnUnfoggedRoom(roomConnectionObject, allowHiddenRooms: true))
				{
					continue;
				}
			}
			else if (GetRoomId(objectWhoseRoomWeCareAbout) != roomId)
			{
				continue;
			}
			FogObject(gameObject);
		}
	}

	public void UnfogRoomWithTombRoomMarker(TombRoomMarker marker)
	{
		short roomId = GetRoomId(marker);
		if (roomId == 0 || !mTombRoomInfoTable.ContainsKey(roomId))
		{
			return;
		}
		Lot lot = Lot;
		GameObject[] objects = lot.GetObjects<GameObject>();
		foreach (GameObject gameObject in objects)
		{
			IGameObject objectWhoseRoomWeCareAbout = GetObjectWhoseRoomWeCareAbout(gameObject);
			if (objectWhoseRoomWeCareAbout is RoomConnectionObject)
			{
				RoomConnectionObject roomConnectionObject = objectWhoseRoomWeCareAbout as RoomConnectionObject;
				if (!roomConnectionObject.ConnectsToRoom(roomId, eRoomDefinition.LightBlocking))
				{
					continue;
				}
			}
			else if (GetRoomId(objectWhoseRoomWeCareAbout) != roomId)
			{
				continue;
			}
			if (gameObject is TombRoomMarker)
			{
				World.FogOfExplorationSetFadeTime(kSecondsToFadeFoggedRoom);
				World.ClearRoomMarkerSeed(gameObject.ObjectId, RoomMarkerTypes.FogOfExploration);
			}
			if (IsObjectFoggable(gameObject) || gameObject is HiddenRoomMarker)
			{
				UnfogObject(gameObject);
			}
		}
	}

	private void UnfogRoom(short roomId)
	{
		if (roomId != 0 && mTombRoomInfoTable.ContainsKey(roomId))
		{
			TombRoomMarker tombRoomMarkerInRoom = GetTombRoomMarkerInRoom(roomId);
			if (tombRoomMarkerInRoom != null)
			{
				UnfogRoomWithTombRoomMarker(tombRoomMarkerInRoom);
			}
		}
	}

	private void UnfogAllRooms()
	{
		TombRoomMarker[] objects = Lot.GetObjects<TombRoomMarker>();
		foreach (TombRoomMarker tombRoomMarker in objects)
		{
			short roomId = GetRoomId(tombRoomMarker);
			if (mTombRoomInfoTable.ContainsKey(roomId))
			{
				UnfogRoomWithTombRoomMarker(tombRoomMarker);
			}
		}
	}

	private void UnfogAllTombRooms()
	{
		TombRoomMarker[] objects = Lot.GetObjects<TombRoomMarker>();
		foreach (TombRoomMarker tombRoomMarker in objects)
		{
			short roomId = GetRoomId(tombRoomMarker);
			TombRoomInfo value = null;
			if (mTombRoomInfoTable.TryGetValue(roomId, out value) && value.TombType != TombType.NonTomb)
			{
				UnfogRoomWithTombRoomMarker(tombRoomMarker);
			}
		}
	}

	private void FogAppropriateRooms()
	{
		TombRoomMarker[] objects = Lot.GetObjects<TombRoomMarker>();
		foreach (TombRoomMarker tombRoomMarker in objects)
		{
			short roomId = GetRoomId(tombRoomMarker);
			if (mTombRoomInfoTable.ContainsKey(roomId) && IsRoomFogged(roomId))
			{
				FogRoomWithTombRoomMarker(tombRoomMarker);
			}
		}
	}

	private void RefogAppropriateRooms()
	{
		PairedListDictionary<short, bool> pairedListDictionary = new PairedListDictionary<short, bool>();
		Lot lot = Lot;
		TombRoomMarker[] objects = lot.GetObjects<TombRoomMarker>();
		foreach (TombRoomMarker tombRoomMarker in objects)
		{
			short roomId = World.GetRoomId(tombRoomMarker.PositionOnFloor, eRoomDefinition.LightBlocking);
			if (mTombRoomInfoTable.ContainsKey(roomId))
			{
				World.FogOfExplorationSetFadeTime(kSecondsToFadeFoggedRoom);
				if (IsRoomFogged(roomId))
				{
					World.SetRoomMarkerSeed(tombRoomMarker.ObjectId, RoomMarkerTypes.FogOfExploration);
					pairedListDictionary[roomId] = true;
				}
				else
				{
					World.ClearRoomMarkerSeed(tombRoomMarker.ObjectId, RoomMarkerTypes.FogOfExploration);
				}
			}
		}
		GameObject[] objects2 = lot.GetObjects<GameObject>();
		foreach (GameObject gameObject in objects2)
		{
			bool flag = false;
			if (!IsObjectFoggable(gameObject))
			{
				continue;
			}
			IGameObject objectWhoseRoomWeCareAbout = GetObjectWhoseRoomWeCareAbout(gameObject);
			if (objectWhoseRoomWeCareAbout is RoomConnectionObject)
			{
				RoomConnectionObject roomConnectionObject = objectWhoseRoomWeCareAbout as RoomConnectionObject;
				flag = true;
				int[] roomConnections = roomConnectionObject.GetRoomConnections(eRoomDefinition.LightBlocking);
				foreach (int num in roomConnections)
				{
					if (!pairedListDictionary.ContainsKey((short)num))
					{
						flag = false;
						break;
					}
				}
			}
			else
			{
				flag = pairedListDictionary.ContainsKey(World.GetRoomId(objectWhoseRoomWeCareAbout.PositionOnFloor, eRoomDefinition.LightBlocking));
			}
			if (flag)
			{
				FogObject(gameObject);
			}
			else
			{
				UnfogObject(gameObject);
			}
		}
	}

	private static bool ShouldAdjacentRoomsUnfogIfDoorIsAdjacentToUnfoggedRoom(CommonDoor door)
	{
		if (door is DoorSingleArch || door is DoorDoubleArch)
		{
			return true;
		}
		if (door is NonAnimatedDoor { IsOpen: not false })
		{
			return true;
		}
		return false;
	}

	private void UnfogAdjacentRooms(Sim actor, short roomId, Lot lot)
	{
		CommonDoor[] objects = lot.GetObjects<CommonDoor>();
		foreach (CommonDoor commonDoor in objects)
		{
			if (commonDoor.ConnectsToRoom(roomId, eRoomDefinition.LightBlocking) && ShouldAdjacentRoomsUnfogIfDoorIsAdjacentToUnfoggedRoom(commonDoor))
			{
				short num = (short)commonDoor.GetAdjoiningRoom(roomId, eRoomDefinition.LightBlocking);
				if (mTombRoomInfoTable.TryGetValue(num, out var _))
				{
					UnfogRoom(num, actor);
				}
			}
		}
	}

	private void DeleteExtraneousDesiredOpacityEntries()
	{
		List<ObjectGuid> list = new List<ObjectGuid>();
		foreach (KeyValuePair<ObjectGuid, float> mDesiredOpacity in mDesiredOpacities)
		{
			GameObject gameObject = mDesiredOpacity.Key.ObjectFromId<GameObject>();
			if (gameObject == null || gameObject.HasBeenDestroyed)
			{
				list.Add(mDesiredOpacity.Key);
			}
		}
		foreach (ObjectGuid item in list)
		{
			mDesiredOpacities.Remove(item);
		}
	}

	private static void PostWorldLoadFixup()
	{
		foreach (Lot lot in LotManager.Lots)
		{
			if (lot.TombRoomManager != null)
			{
				lot.TombRoomManager.DeleteExtraneousDesiredOpacityEntries();
			}
		}
	}

	private void AddTombRoomBuff(Sim sim, TombType tombType)
	{
		RemoveTombRoomBuff(sim);
		switch (tombType)
		{
		case TombType.Death:
			sim.BuffManager.AddElement(BuffNames.TombTypeDeath, Origin.FromTombRoom);
			break;
		case TombType.Fire:
			sim.BuffManager.AddElement(BuffNames.TombTypeFire, Origin.FromTombRoom);
			break;
		case TombType.Magic:
			sim.BuffManager.AddElement(BuffNames.TombTypeMagic, Origin.FromTombRoom);
			break;
		case TombType.Water:
			sim.BuffManager.AddElement(BuffNames.TombTypeWater, Origin.FromTombRoom);
			break;
		}
	}

	private void RemoveTombRoomBuff(Sim sim)
	{
		sim.BuffManager.RemoveElement(BuffNames.TombTypeDeath);
		sim.BuffManager.RemoveElement(BuffNames.TombTypeFire);
		sim.BuffManager.RemoveElement(BuffNames.TombTypeMagic);
		sim.BuffManager.RemoveElement(BuffNames.TombTypeWater);
	}

	private void PlayAwedOverlay(TombRoomInfo tombRoomInfo, Sim sim, ulong lotID, int roomID)
	{
		if (PlumbBob.SelectedActor != null && !tombRoomInfo.HasHouseholdBeenToThisRoom(PlumbBob.SelectedActor.SimDescription.HouseholdMembers))
		{
			uint sizeInTileQuadrants = World.GetInformationAboutRoom(lotID, roomID).roomData.sizeInTileQuadrants;
			float num = 0.5f;
			if (sizeInTileQuadrants < kMediumTombRoomSize)
			{
				num = kSmallRoomChance;
			}
			else
			{
				num = ((sizeInTileQuadrants >= kLargeTombRoomSize) ? kLargeRoomChance : kMediumRoomChance);
			}
			if (RandomUtil.RandomChance01(num))
			{
				sim.PlayReaction(ReactionTypes.Awe, ReactionSpeed.NowOrLater);
			}
		}
	}

	public void OnEnterBuildBuyMode()
	{
		if (GameStates.PrevInWorldStateId != InWorldState.SubState.BuildMode && GameStates.PrevInWorldStateId != InWorldState.SubState.BuyMode)
		{
			if (!Commands.sRestrictBuildBuyInBuildings || BuyController.IsBuyDebugEnabled())
			{
				UnfogAllRooms();
			}
			else
			{
				UnfogAllTombRooms();
			}
		}
		SendTombRoomInfoToTombRoomMarkers();
		UpdateTombMusic();
	}

	public void OnExitBuildBuyMode()
	{
		RetrieveTombRoomInfoFromTombRoomMarkers();
		FogAppropriateRooms();
		UpdateTombMusic();
	}

	public void OnPreExport()
	{
		SendTombRoomInfoToTombRoomMarkers();
		UnfogAllRooms();
	}

	public void OnPostExport()
	{
		FogAppropriateRooms();
	}

	public void OnPostImport()
	{
		RetrieveTombRoomInfoFromTombRoomMarkers();
		FogAppropriateRooms();
	}

	public static void OnChangeHousehold(Household household)
	{
		if (household == null || GameplayMovingModel.MovingCurrentlyInProgress)
		{
			return;
		}
		foreach (Lot lot in LotManager.Lots)
		{
			if (lot != null && lot.TombRoomManager != null)
			{
				lot.TombRoomManager.RefogAppropriateRooms();
			}
		}
	}

	public bool CanChangeLotCameraLevel(int newLotLevel)
	{
		Lot lot = Lot;
		if (newLotLevel == 0 || lot == null)
		{
			return true;
		}
		int[] insideRoomsAtLevel = World.GetInsideRoomsAtLevel(mLotId, newLotLevel, eRoomDefinition.LightBlocking);
		if (insideRoomsAtLevel.Length == 0)
		{
			return true;
		}
		int[] array = insideRoomsAtLevel;
		foreach (int num in array)
		{
			if (!IsRoomFogged((short)num))
			{
				return true;
			}
		}
		return false;
	}

	public static void Startup()
	{
		Route.AboutToPlanCallback = (Route.AboutToPlanDelegate)Delegate.Combine(Route.AboutToPlanCallback, new Route.AboutToPlanDelegate(AboutToPlanRouteCallback));
	}

	public static void Shutdown()
	{
		Route.AboutToPlanCallback = (Route.AboutToPlanDelegate)Delegate.Remove(Route.AboutToPlanCallback, new Route.AboutToPlanDelegate(AboutToPlanRouteCallback));
	}

	public static void PostWorldStartup()
	{
		LoadWorldBuilderData();
		PostWorldLoadFixup();
		if (sOnSimSelectedEventListener != null)
		{
			EventTracker.RemoveListener(sOnSimSelectedEventListener);
			sOnSimSelectedEventListener = null;
		}
		sOnSimSelectedEventListener = EventTracker.AddListener(EventTypeId.kEventSimSelected, OnSimSelected);
		foreach (Lot allLot in LotManager.AllLots)
		{
			if (allLot.TombRoomManager != null)
			{
				allLot.TombRoomManager.FogAppropriateRooms();
			}
		}
	}

	public void SetWhetherOrNotHouseholdHasBeenToThisLot(List<ulong> householdMembers, bool hasBeenToLot)
	{
		foreach (TombRoomInfo value in mTombRoomInfoTable.Values)
		{
			value.SetWhetherOrNotHouseholdHasBeenToThisRoom(householdMembers, hasBeenToLot);
		}
		RefogAppropriateRooms();
	}

	public void CheckForAndDrawConflictingTombRoomMarkers()
	{
		Lot lot = Lot;
		Dictionary<short, List<TombRoomMarker>> dictionary = new Dictionary<short, List<TombRoomMarker>>();
		TombRoomMarker[] objects = lot.GetObjects<TombRoomMarker>();
		foreach (TombRoomMarker tombRoomMarker in objects)
		{
			short roomId = GetRoomId(tombRoomMarker);
			if (!dictionary.TryGetValue(roomId, out var value))
			{
				value = new List<TombRoomMarker>();
				dictionary.Add(roomId, value);
			}
			value.Add(tombRoomMarker);
		}
		bool flag = false;
		foreach (KeyValuePair<short, List<TombRoomMarker>> item in dictionary)
		{
			if (item.Value.Count <= 1)
			{
				continue;
			}
			flag = true;
			foreach (TombRoomMarker item2 in item.Value)
			{
				StyledNotification.Format format = new StyledNotification.Format(LocalizeString("DuplicateMarkersFoundTNS", item.Key, item2.RoomId, item2.Level), StyledNotification.NotificationStyle.kDebugAlert);
				StyledNotification.Show(format);
				BoundingBox boundingBox = default;
				Quaternion q = Quaternion.MakeFromForwardVector(item2.ForwardVector);
				boundingBox.min = Quaternion.VRotate(q, item2.BoundingBox.min) + item2.Position;
				boundingBox.max = Quaternion.VRotate(q, item2.BoundingBox.max) + item2.Position;
				DebugDraw.DrawBoxTimed(boundingBox, Color.Preset.OpaqueRed, 3f);
			}
		}
		if (!flag)
		{
			StyledNotification.Format format2 = new StyledNotification.Format(LocalizeString("NoDuplicateMarkersTNS"), StyledNotification.NotificationStyle.kDebugAlert);
			StyledNotification.Show(format2);
		}
	}

	public static bool IsObjectFoggable(IGameObject gameObject)
	{
		for (IGameObject gameObject2 = gameObject; gameObject2 != null; gameObject2 = gameObject2.Parent)
		{
			if (gameObject2 is IDoNotGetFogged)
			{
				return false;
			}
		}
		return true;
	}

	public TombRoomInfo GetTombRoomInfo(int roomId)
	{
		TombRoomInfo value = null;
		mTombRoomInfoTable.TryGetValue((short)roomId, out value);
		return value;
	}

	public static bool IsObjectInATombOrHiddenRoom(IGameObject gameObject)
	{
		return IsObjectInATombOrHiddenRoom(gameObject, allowHidden: true);
	}

	public static bool IsObjectInATombRoom(IGameObject gameObject)
	{
		return IsObjectInATombOrHiddenRoom(gameObject, allowHidden: false);
	}

	public static bool IsObjectInATombOrHiddenRoom(IGameObject gameObject, bool allowHidden)
	{
		if (gameObject == null)
		{
			return false;
		}
		IGameObject objectWhoseRoomWeCareAbout = GetObjectWhoseRoomWeCareAbout(gameObject);
		Lot lotCurrent = objectWhoseRoomWeCareAbout.LotCurrent;
		if (lotCurrent == null)
		{
			return false;
		}
		short num = short.MinValue;
		TombRoomManager tombRoomManager = lotCurrent.TombRoomManager;
		if (tombRoomManager != null && tombRoomManager.HasAnyTombOrHiddenRooms())
		{
			num = GetRoomId(objectWhoseRoomWeCareAbout);
			if (!tombRoomManager.mTombRoomInfoTable.TryGetValue(num, out var value))
			{
				return false;
			}
			if (allowHidden)
			{
				return true;
			}
			return value.TombType != TombType.NonTomb;
		}
		if (!GameStates.IsLiveState)
		{
			if (num == short.MinValue)
			{
				num = GetRoomId(objectWhoseRoomWeCareAbout);
			}
			TombRoomMarker[] objects = lotCurrent.GetObjects<TombRoomMarker>();
			foreach (TombRoomMarker tombRoomMarker in objects)
			{
				if ((allowHidden || !(tombRoomMarker is HiddenRoomMarker)) && GetRoomId(tombRoomMarker) == num)
				{
					return true;
				}
			}
		}
		return false;
	}

	public bool IsObjectInATombRoom(LotLocation ll)
	{
		return IsRoomInTomb(World.GetRoomId(Lot.LotId, ll, eRoomDefinition.LightBlocking));
	}

	public static bool IsPointInATombOrHiddenRoom(Vector3 point)
	{
		Lot lotAtPoint = LotManager.GetLotAtPoint(point);
		if (lotAtPoint == null || lotAtPoint.TombRoomManager == null || !lotAtPoint.TombRoomManager.HasAnyTombOrHiddenRooms())
		{
			return false;
		}
		short roomId = GetRoomId(point);
		return lotAtPoint.TombRoomManager.IsRoomInTombOrHidden(roomId);
	}

	public static bool IsPointInATombRoom(Vector3 point)
	{
		Lot lotAtPoint = LotManager.GetLotAtPoint(point);
		if (lotAtPoint == null || lotAtPoint.TombRoomManager == null || !lotAtPoint.TombRoomManager.HasAnyTombRooms())
		{
			return false;
		}
		short roomId = GetRoomId(point);
		return lotAtPoint.TombRoomManager.IsRoomInTomb(roomId);
	}

	public static bool IsObjectInAFoggedRoom(IGameObject gameObject, bool useCachedValues)
	{
		if (gameObject == null || gameObject is Lot)
		{
			return false;
		}
		IGameObject objectWhoseRoomWeCareAbout = GetObjectWhoseRoomWeCareAbout(gameObject);
		Lot lotCurrent = objectWhoseRoomWeCareAbout.LotCurrent;
		if (lotCurrent == null || lotCurrent.TombRoomManager == null || !lotCurrent.TombRoomManager.HasAnyTombOrHiddenRooms())
		{
			return false;
		}
		if (objectWhoseRoomWeCareAbout is RoomConnectionObject roomConnectionObject)
		{
			return lotCurrent.TombRoomManager.DoesObjectConnectOnlyFoggedRooms(roomConnectionObject);
		}
		if (objectWhoseRoomWeCareAbout is Stairs stairs)
		{
			return lotCurrent.TombRoomManager.DoesObjectConnectOnlyFoggedRooms(stairs);
		}
		short roomId = GetRoomId(objectWhoseRoomWeCareAbout);
		return lotCurrent.TombRoomManager.IsRoomFogged(roomId, useCachedValues);
	}

	public static bool IsObjectInAFoggedRoom(IGameObject gameObject)
	{
		return IsObjectInAFoggedRoom(gameObject, useCachedValues: false);
	}

	public static bool IsPointInAFoggedRoom(Vector3 point)
	{
		Lot lotAtPoint = LotManager.GetLotAtPoint(point);
		if (lotAtPoint == null || lotAtPoint.TombRoomManager == null || !lotAtPoint.TombRoomManager.HasAnyTombOrHiddenRooms())
		{
			return false;
		}
		short roomId = GetRoomId(point);
		return lotAtPoint.TombRoomManager.IsRoomFogged(roomId);
	}

	private static bool AskPermissionToSetOpacity(GameObject gameObject, float opacity)
	{
		if (gameObject == null)
		{
			return false;
		}
		if (!IsObjectFoggable(gameObject))
		{
			return true;
		}
		Lot lotCurrent = gameObject.LotCurrent;
		if (lotCurrent == null)
		{
			return true;
		}
		TombRoomManager tombRoomManager = lotCurrent.TombRoomManager;
		if (tombRoomManager == null)
		{
			return true;
		}
		short roomId = GetRoomId(gameObject);
		if (opacity == 1f)
		{
			tombRoomManager.mDesiredOpacities.Remove(gameObject.ObjectId);
		}
		else
		{
			tombRoomManager.mDesiredOpacities[gameObject.ObjectId] = opacity;
		}
		if (tombRoomManager.IsRoomFogged(roomId))
		{
			return GameStates.IsBuildBuyLikeState;
		}
		return true;
	}

	public static void SetOpacity(GameObject gameObject, float opacity, float transitionTime)
	{
		if (AskPermissionToSetOpacity(gameObject, opacity))
		{
			World.ObjectSetOpacity(gameObject.ObjectId, opacity, transitionTime);
		}
	}

	public static void SetOpacityTransition(GameObject gameObject, float opacity1, float transitionTime, float opacity2)
	{
		if (AskPermissionToSetOpacity(gameObject, opacity2))
		{
			World.ObjectSetOpacityTransition(gameObject.ObjectId, opacity1, transitionTime, opacity2);
		}
	}

	public void OnSimsRoomChanged(Sim actor, int previousRoomId, Lot previousLot)
	{
		short roomId = GetRoomId(actor);
		_ = actor.SimDescription.HouseholdMembers;
		Lot lot = Lot;
		UnfogAdjacentRooms(actor, roomId, lot);
		if (actor.IsActiveSim)
		{
			UpdateTombMusic();
			PlayTombEntrySound();
		}
		if (!mTombRoomInfoTable.TryGetValue(roomId, out var value))
		{
			SneakOntoLotSituation.LeaveTombRoom(actor);
			RemoveTombRoomBuff(actor);
			actor.BuffManager.RemoveElement(BuffNames.Adventuring);
		}
		else
		{
			if (value.TombType == TombType.NonTomb)
			{
				return;
			}
			SneakOntoLotSituation.EnterTombRoom(actor);
			AddTombRoomBuff(actor, value.TombType);
			if (actor.HasTrait(TraitNames.Adventurous))
			{
				actor.BuffManager.AddElement(BuffNames.Adventuring, -1f, Origin.FromTombRoom);
			}
			PlayAwedOverlay(value, actor, actor.LotCurrent.LotId, actor.RoomId);
			UnfogRoom(roomId, actor);
			Tutorialette.TriggerLesson(Lessons.TombTech, actor);
			EventTracker.SendEvent(new StringEvent(EventTypeId.kSimEnterSpecificTombRoom, actor, null, value.Owner.AdventureKey));
			EventTracker.SendEvent(new StringEvent(EventTypeId.kSimEnterTombRoomOnSpecificLot, actor, null, lot.AddressLocalizationKey));
			if (previousLot != actor.LotCurrent || !mTombRoomInfoTable.TryGetValue((short)previousRoomId, out var value2) || value2.TombType == TombType.NonTomb)
			{
				EventTracker.SendEvent(new StringEvent(EventTypeId.kSimEnteredTomb, actor, Lot, value.Owner.AdventureKey));
			}
			if (!value.IsFinalRoom)
			{
				return;
			}
			foreach (Sim sim in actor.Household.Sims)
			{
				if (sim.LotCurrent != actor.LotCurrent)
				{
					continue;
				}
				if (value.GiveCompletionCredit(sim))
				{
					sim.SimDescription.TombStats.AddExploredTomb();
					EventTracker.SendEvent(new Event(EventTypeId.kSimFullyExploredTombForFirstTime, sim));
					if (sim == actor)
					{
						string text = value.TnsText;
						if (Localization.HasLocalizationString(value.TnsText))
						{
							text = Localization.LocalizeString(value.TnsText);
						}
						actor.ShowTNSAndPlayStingIfSelectable(Localization.LocalizeString(actor.IsFemale, "Gameplay/Objects/TombText/Completion:Description", text, actor), StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, actor.ObjectId, "sting_tomb_complete");
					}
				}
				EventTracker.SendEvent(new StringEvent(EventTypeId.kSimCompletedTomb, actor, Lot, value.Owner.AdventureKey));
			}
		}
	}

	public bool DoesObjectConnectAFoggedRoomToAnUnfoggedRoom(RoomConnectionObject roomConnectionObject, bool allowHiddenRooms)
	{
		bool flag = false;
		bool flag2 = false;
		int[] roomConnections = roomConnectionObject.GetRoomConnections(eRoomDefinition.LightBlocking);
		for (int i = 0; i < roomConnections.Length; i++)
		{
			short roomId = (short)roomConnections[i];
			if (IsRoomFogged(roomId) && (IsRoomInTomb(roomId) || allowHiddenRooms))
			{
				flag2 = true;
			}
			else
			{
				flag = true;
			}
			if (flag2 && flag)
			{
				return true;
			}
		}
		return false;
	}

	public bool DoesObjectConnectAFoggedTombRoomToAnUnfoggedRoom(RoomConnectionObject roomConnectionObject)
	{
		bool flag = false;
		bool flag2 = false;
		int[] roomConnections = roomConnectionObject.GetRoomConnections(eRoomDefinition.LightBlocking);
		for (int i = 0; i < roomConnections.Length; i++)
		{
			short roomId = (short)roomConnections[i];
			if (IsRoomFogged(roomId) && IsRoomInTomb(roomId))
			{
				flag2 = true;
			}
			else
			{
				flag = true;
			}
			if (flag2 && flag)
			{
				return true;
			}
		}
		return false;
	}

	public int GetFoggedRoutingRoomIdConnectedToThisObject(RoomConnectionObject roomConnectionObject)
	{
		int[] roomConnections = roomConnectionObject.GetRoomConnections(eRoomDefinition.LightBlocking);
		for (int i = 0; i < roomConnections.Length; i++)
		{
			if (IsRoomFogged((short)roomConnections[i]))
			{
				return roomConnectionObject.GetRoomConnections()[i];
			}
		}
		return 36863;
	}

	public static bool CreateOrRemoveTombRoomManagerFromLotAsNecessary(Lot lot)
	{
		if (lot == null)
		{
			return false;
		}
		bool flag = lot.CountObjects<TombRoomMarker>() != 0;
		if (flag && lot.TombRoomManager == null)
		{
			lot.TombRoomManager = new TombRoomManager(lot.LotId);
		}
		else if (!flag && lot.TombRoomManager != null)
		{
			lot.TombRoomManager = null;
		}
		return flag;
	}

	public bool DoesObjectConnectAnyTombRooms(RoomConnectionObject roomConnectionObject)
	{
		int[] roomConnections = roomConnectionObject.GetRoomConnections(eRoomDefinition.LightBlocking);
		for (int i = 0; i < roomConnections.Length; i++)
		{
			short roomId = (short)roomConnections[i];
			if (IsRoomInTomb(roomId))
			{
				return true;
			}
		}
		return false;
	}

	public static ulong GetTombMarkerLotId(string markerName)
	{
		if (!AdventureComponent.AdventureKeys.TryGetValue(markerName, out var value))
		{
			return 0uL;
		}
		return value.ObjectFromId<TombRoomMarker>()?.LotCurrent.LotId ?? 0;
	}

	public bool UnfogRoom(short roomId, Sim sim)
	{
		if (IsRoomFogged(roomId))
		{
			UnfogRoom(roomId);
			sim.SimDescription.TombStats.IncrementTombRoomsExplored();
			mTombRoomInfoTable[roomId].SetWhetherOrNotHouseholdHasBeenToThisRoom(sim.SimDescription.HouseholdMembers, hasBeenToRoom: true);
			if (Sims3.UI.Responder.Instance.HudModel is HudModel hudModel)
			{
				hudModel.OnLotLevelInfoChange(null, new World.LotLevelInfoChangeEventArgs(Lot.LotId));
			}
			return true;
		}
		mTombRoomInfoTable[roomId].SetWhetherOrNotHouseholdHasBeenToThisRoom(sim.SimDescription.HouseholdMembers, hasBeenToRoom: true);
		return false;
	}

	public bool UnfogRoomContainingObject(IGameObject gameObject)
	{
		return UnfogRoom(GetRoomId(gameObject), PlumbBob.SelectedActor);
	}

	public void NotifyDoorChanged(CommonDoor door)
	{
		if (!ShouldAdjacentRoomsUnfogIfDoorIsAdjacentToUnfoggedRoom(door) || !DoesObjectConnectAFoggedRoomToAnUnfoggedRoom(door, allowHiddenRooms: true))
		{
			return;
		}
		int[] roomConnections = door.GetRoomConnections(eRoomDefinition.LightBlocking);
		foreach (Sim sim in door.LotCurrent.GetSims())
		{
			short roomId = GetRoomId(sim);
			for (int i = 0; i < roomConnections.Length; i++)
			{
				if (roomId == (short)roomConnections[i])
				{
					UnfogAdjacentRooms(sim, roomId, door.LotCurrent);
					break;
				}
			}
		}
	}
}
