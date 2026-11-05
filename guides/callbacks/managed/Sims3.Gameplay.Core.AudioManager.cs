// Analyst original managed contract: selected AudioManager MethodDefs from pristine PC1.67
// Sims3GameplaySystems. Exact token/RVA/CIL coverage and reused Init/Shutdown bodies are in
// ../../audio/managed/AudioManager.methods.tsv. Method bodies govern; C# is explanatory.
// This file retains the actual ILSpy missing-UI-reference warnings. They do not establish
// invalid original IL; selected offsets/opcodes/branches were independently checked.
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.SimIFace;

namespace Sims3.Gameplay.Core;

internal class AudioManager
{
	// Analyst .cctor 0x060077DB, RVA002072D4, 87 CIL bytes: initial state and FOUR original modifier delegate targets.
	private static bool mIsPaused = false;

	private static uint mMusicHandle = 0u;

	private static MusicMode mMusicMode = MusicMode.None;

	private static AudioEventSimModifier mSimModifier = Sim.AudioEventModifier;

	private static AudioEventSkillModifier mSkillModifier = Sim.AudioEventSkillModifier;

	private static AudioEventQualityModifier mQualityModifier = GameObject.AudioEventQualityModifier;

	private static AudioEventMaterialModifier mMaterialModifier = GameObject.AudioEventMaterialModifier;

	private static Sound.SoundFinished mSongFinishedCallback;

	public static MusicMode MusicMode
	{
		// Analyst getter 0x060077CF, RVA00206E51, 6 CIL bytes: read mMusicMode.
		get
		{
			return mMusicMode;
		}
		// Analyst setter 0x060077D0, RVA00206E58, 7 CIL bytes: delegate to SetMusicMode.
		set
		{
			SetMusicMode(value);
		}
	}

	// Analyst 0x060077D1, RVA00206E60, 83 CIL bytes: create retained finished delegate; subscribe speed/camera; install FOUR modifiers; select Theme.
	public static void Init()
	{
		//IL_0018: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Expected Obj, but got Unknown
		mSongFinishedCallback = SongComplete;
		Gameflow.GameSpeedChanged += GameSpeedChangedCallback;
		CameraController.OnCameraMapViewEnabledCallback += OnCameraMapViewEnabledEvent;
		Audio.SetEventModifiers(mSimModifier, mSkillModifier, mQualityModifier, mMaterialModifier);
		SetMusicMode(MusicMode.Theme);
	}

	// Analyst 0x060077D2, RVA00206EBF, 50 CIL bytes: select None, unsubscribe speed/camera, clear four modifiers. No backend drain is implied.
	public static void Shutdown()
	{
		//IL_000d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0017: Expected Obj, but got Unknown
		SetMusicMode(MusicMode.None);
		Gameflow.GameSpeedChanged -= GameSpeedChangedCallback;
		CameraController.OnCameraMapViewEnabledCallback -= OnCameraMapViewEnabledEvent;
		Audio.SetEventModifiers(null, null, null, null);
	}

	// Analyst 0x060077D3, RVA00206EF2, 14 CIL bytes: select Load only when not travelling.
	public static void LoadWorld()
	{
		if (!GameStates.IsTravelling)
		{
			SetMusicMode(MusicMode.Load);
		}
	}

	// Analyst 0x060077D4, RVA00206F01, 20 CIL bytes: nontravel None precedes InitWorld; returned native bool is ignored by this managed wrapper.
	public static void EnterWorld()
	{
		if (!GameStates.IsTravelling)
		{
			SetMusicMode(MusicMode.None);
		}
		Audio.InitWorld();
	}

	// Analyst 0x060077D5, RVA00206F16, 63 CIL bytes: hard-stop four exact groups, optional nontravel Theme, then ShutdownWorld.
	public static void ExitWorld()
	{
		Audio.StopGroup(393239870u, hardStop: true);
		Audio.StopGroup(1470391838u, hardStop: true);
		Audio.StopGroup(543694036u, hardStop: true);
		Audio.StopGroup(671786287u, hardStop: true);
		if (!GameStates.IsTravelling)
		{
			SetMusicMode(MusicMode.Theme);
		}
		Audio.ShutdownWorld();
	}

	// Analyst 0x060077D6, RVA00206F58, 244 CIL bytes: pause-edge state and exact two-group pitch updates. locked argument is unused.
	private static void GameSpeedChangedCallback(Sims3.SimIFace.Gameflow.GameSpeed newSpeed, bool locked)
	{
		if (mIsPaused && newSpeed != Sims3.SimIFace.Gameflow.GameSpeed.Pause)
		{
			mIsPaused = false;
			Audio.PauseGroup(671786287u, pause: false);
			Audio.PauseGroup(543694036u, pause: false);
		}
		else if (!mIsPaused && newSpeed == Sims3.SimIFace.Gameflow.GameSpeed.Pause)
		{
			mIsPaused = true;
			Audio.PauseGroup(671786287u, pause: true);
			Audio.PauseGroup(543694036u, pause: true);
		}
		if (!mIsPaused)
		{
			switch (newSpeed)
			{
			case Sims3.SimIFace.Gameflow.GameSpeed.Normal:
				Audio.SetSoundProperty(543694036u, 1908158473u, 1f);
				Audio.SetSoundProperty(393239870u, 1908158473u, 1f);
				break;
			case Sims3.SimIFace.Gameflow.GameSpeed.Double:
				Audio.SetSoundProperty(543694036u, 1908158473u, 1.07f);
				Audio.SetSoundProperty(393239870u, 1908158473u, 1.07f);
				break;
			case Sims3.SimIFace.Gameflow.GameSpeed.Triple:
			case Sims3.SimIFace.Gameflow.GameSpeed.Skip:
				Audio.SetSoundProperty(543694036u, 1908158473u, 1.2f);
				Audio.SetSoundProperty(393239870u, 1908158473u, 1.2f);
				break;
			}
		}
	}

	// Analyst 0x060077D7, RVA00207058, 40 CIL bytes: IsPlayFlowState returns early; map mode changes only None/Map branches.
	private static void OnCameraMapViewEnabledEvent(bool enabled)
	{
		if (GameStates.IsPlayFlowState)
		{
			return;
		}
		if (enabled)
		{
			if (mMusicMode == MusicMode.None)
			{
				SetMusicMode(MusicMode.Map);
			}
		}
		else if (mMusicMode == MusicMode.Map)
		{
			SetMusicMode(MusicMode.None);
		}
	}

	// Analyst 0x060077D8, RVA00207084, 69 CIL bytes: stopReason==0 and current-handle guard; restart only Buy/Build. objId is unused.
	private static void SongComplete(uint soundHandle, ulong objId, uint stopReason)
	{
		if (stopReason == 0 && soundHandle == mMusicHandle)
		{
			if (mMusicMode == MusicMode.Buy)
			{
				mMusicHandle = Audio.StartSound("music_mode_buy", mSongFinishedCallback);
			}
			else if (mMusicMode == MusicMode.Build)
			{
				mMusicHandle = Audio.StartSound("music_mode_build", mSongFinishedCallback);
			}
		}
	}

	// Analyst 0x060077D9, RVA002070D8, 496 CIL bytes: equal-mode return; Build/Buy mutual transitions preserve track; stores requested mode after optional stop/start.
	private static void SetMusicMode(MusicMode mode)
	{
		if (mode == mMusicMode)
		{
			return;
		}
		string text = "";
		bool flag = true;
		switch (mode)
		{
		case MusicMode.Theme:
			text = "music_theme";
			break;
		case MusicMode.Load:
			text = "music_load";
			break;
		case MusicMode.TravelChina:
			text = "load_loop_china";
			break;
		case MusicMode.TravelEgypt:
			text = "load_loop_egypt";
			break;
		case MusicMode.TravelFrance:
			text = "load_loop_france";
			break;
		case MusicMode.TravelUniversity:
			text = "sims3_ep9_load_loop";
			break;
		case MusicMode.TravelFuture:
			text = "sims3_ep11_load_loop";
			break;
		case MusicMode.CAS:
			text = "music_mode_cas";
			break;
		case MusicMode.Map:
			text = GameUtils.GetCurrentWorld() switch
			{
				WorldName.China => "music_mode_map_china", 
				WorldName.Egypt => "music_mode_map_egypt", 
				WorldName.France => "music_mode_map_france", 
				_ => "music_mode_map", 
			};
			break;
		case MusicMode.EditTown:
			text = "music_mode_edit_town";
			break;
		case MusicMode.InGameStore:
			text = "music_mode_ingame_store";
			break;
		case MusicMode.Build:
			if (mMusicMode == MusicMode.Buy)
			{
				flag = false;
			}
			else
			{
				text = "music_mode_build";
			}
			break;
		case MusicMode.Buy:
			if (mMusicMode == MusicMode.Build)
			{
				flag = false;
			}
			else
			{
				text = "music_mode_buy";
			}
			break;
		case MusicMode.Flyby:
			text = GameUtils.GetCurrentWorld() switch
			{
				WorldName.China => "flyby_china", 
				WorldName.Egypt => "flyby_egypt", 
				WorldName.France => "flyby_france", 
				WorldName.University => "sting_ep9_flyby_arrive", 
				WorldName.FutureWorld => "sting_ep11_portal_flyby", 
				_ => "music_mode_map", 
			};
			break;
		}
		if (mMusicHandle != 0 && flag)
		{
			Audio.StopSound(mMusicHandle);
			mMusicHandle = 0u;
		}
		if (text != "")
		{
			mMusicHandle = Audio.StartSound(text, mSongFinishedCallback);
		}
		mMusicMode = mode;
	}
}
