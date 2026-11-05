using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;
using Sims3.SimIFace.VideoRecording;

namespace ScriptCore;

public sealed class VideoRecorder : IVideoRecorder
{
	private Settings mSettings;

	private bool mSettingsInitialized;

	public Status Status => (Status)VideoRecorder_GetStatus();

	public Settings Settings
	{
		get
		{
			if (!mSettingsInitialized)
			{
				int[] array = VideoRecorder_GetSettings();
				mSettings.Quality = (Quality)array[0];
				mSettings.FrameSize = (FrameSize)array[1];
				mSettings.ContainerFormat = (ContainerFormat)array[2];
				mSettings.Content = (Content)array[3];
				mSettings.TimeLimitSeconds = array[4];
				mSettings.AudioEnabled = array[5] != 0;
				mSettings.VirtualTimingEnabled = array[6] != 0;
				mSettings.RecordToDatabase = array[7] != 0;
				mSettingsInitialized = true;
			}
			return mSettings;
		}
		set
		{
			mSettings = value;
			mSettingsInitialized = true;
			uint[] settings = new uint[8]
			{
				(uint)mSettings.Quality,
				(uint)mSettings.FrameSize,
				(uint)mSettings.ContainerFormat,
				(uint)mSettings.Content,
				(uint)mSettings.TimeLimitSeconds,
				mSettings.AudioEnabled ? 1u : 0u,
				mSettings.VirtualTimingEnabled ? 1u : 0u,
				mSettings.RecordToDatabase ? 1u : 0u
			};
			VideoRecorder_SetSettings(settings);
		}
	}

	public string FileName
	{
		set
		{
			VideoRecorder_SetFileName(value);
		}
	}

	public string SnapshotFileName
	{
		set
		{
			VideoRecorder_SetSnapshotFileName(value);
		}
	}

	public string LastPath => VideoRecorder_GetLastPath();

	public string LastSnapshotPath => VideoRecorder_GetLastSnapshotPath();

	public ResourceKey LastVideoKey => VideoRecorder_GetLastVideoKey();

	[DllImport("Sims3Common")]
	private static extern uint VideoRecorder_GetStatus();

	[DllImport("Sims3Common")]
	private static extern void VideoRecorder_Pause();

	[DllImport("Sims3Common")]
	private static extern void VideoRecorder_Start();

	[DllImport("Sims3Common")]
	private static extern void VideoRecorder_Stop();

	[DllImport("Sims3Common")]
	private static extern void VideoRecorder_TakeSnapshot();

	[DllImport("Sims3Common")]
	private static extern void VideoRecorder_TakeSnapshotWithUI();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_I4)]
	private static extern int[] VideoRecorder_GetSettings();

	[DllImport("Sims3Common")]
	private static extern void VideoRecorder_SetSettings([MarshalAs(UnmanagedType.SafeArray)] uint[] settings);

	[DllImport("Sims3Common")]
	private static extern void VideoRecorder_SetFileName([MarshalAs(UnmanagedType.LPWStr)] string fileName);

	[DllImport("Sims3Common")]
	private static extern void VideoRecorder_SetSnapshotFileName([MarshalAs(UnmanagedType.LPWStr)] string fileName);

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string VideoRecorder_GetLastPath();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string VideoRecorder_GetLastSnapshotPath();

	[DllImport("Sims3Common")]
	private static extern ResourceKey VideoRecorder_GetLastVideoKey();

	public VideoRecorder()
	{
		AppDomain.CurrentDomain.SetData("VideoRecorder", this);
	}

	private static void StatusChanged()
	{
		Sims3.SimIFace.VideoRecording.VideoRecorder.TriggerStatusChanged();
	}

	public void Pause()
	{
		VideoRecorder_Pause();
	}

	public void Start()
	{
		VideoRecorder_Start();
	}

	public void Stop()
	{
		VideoRecorder_Stop();
	}

	public void TakeSnapshot()
	{
		VideoRecorder_TakeSnapshot();
	}

	public void TakeSnapshotWithUI()
	{
		VideoRecorder_TakeSnapshotWithUI();
	}
}
