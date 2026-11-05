using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;
using Sims3.SimIFace.Enums;
using Sims3.SimIFace.Weather;

namespace ScriptCore;

public sealed class WeatherControl : IWeatherControl
{
	private WeatherSettings mSettings;

	public PrecipitationType PrecipitationType
	{
		get
		{
			return mSettings.PrecipitationType;
		}
		set
		{
			mSettings.PrecipitationType = value;
		}
	}

	public float PrecipitationStrength
	{
		get
		{
			return mSettings.PrecipitationStrength;
		}
		set
		{
			mSettings.PrecipitationStrength = value;
		}
	}

	public int PrecipitationIntensityAudioIndex
	{
		get
		{
			return mSettings.PrecipitationIntensityAudioIndex;
		}
		set
		{
			mSettings.PrecipitationIntensityAudioIndex = value;
		}
	}

	public float WindStrength
	{
		get
		{
			return mSettings.WindStrength;
		}
		set
		{
			mSettings.WindStrength = value;
		}
	}

	public int WindIntensityAudioIndex
	{
		get
		{
			return mSettings.WindIntensityAudioIndex;
		}
		set
		{
			mSettings.WindIntensityAudioIndex = value;
		}
	}

	public WeatherTerrainType WeatherTerrain
	{
		get
		{
			return mSettings.WeatherTerrain;
		}
		set
		{
			mSettings.WeatherTerrain = value;
		}
	}

	public float FrostAmount
	{
		get
		{
			return mSettings.FrostAmount;
		}
		set
		{
			mSettings.FrostAmount = value;
		}
	}

	public float PondFreezeAmount
	{
		get
		{
			return mSettings.PondFreezeAmount;
		}
		set
		{
			mSettings.PondFreezeAmount = value;
		}
	}

	public float SnowThicknessAmount
	{
		get
		{
			return mSettings.SnowThicknessAmount;
		}
		set
		{
			mSettings.SnowThicknessAmount = value;
		}
	}

	public bool IsSnowMelting
	{
		get
		{
			return mSettings.IsSnowMelting;
		}
		set
		{
			mSettings.IsSnowMelting = value;
		}
	}

	public float SnowRoadTrackDepthAmount
	{
		get
		{
			return mSettings.SnowRoadTrackDepthAmount;
		}
		set
		{
			mSettings.SnowRoadTrackDepthAmount = value;
		}
	}

	public float WetAmount
	{
		get
		{
			return mSettings.WetAmount;
		}
		set
		{
			mSettings.WetAmount = value;
		}
	}

	public Season CurrentSeason
	{
		get
		{
			return mSettings.CurrentSeason;
		}
		set
		{
			mSettings.CurrentSeason = value;
		}
	}

	public float PrecipitationFogStrength
	{
		get
		{
			return mSettings.PrecipitationFogStrength;
		}
		set
		{
			mSettings.PrecipitationFogStrength = value;
		}
	}

	public float NormalFogStrength
	{
		get
		{
			return mSettings.NormalFogStrength;
		}
		set
		{
			mSettings.NormalFogStrength = value;
		}
	}

	public float HeatShimmerDistance
	{
		get
		{
			return mSettings.HeatShimmerDistance;
		}
		set
		{
			mSettings.HeatShimmerDistance = value;
		}
	}

	public float WorldLeavesAmount
	{
		get
		{
			return mSettings.WorldLeavesAmount;
		}
		set
		{
			mSettings.WorldLeavesAmount = value;
		}
	}

	public float CloudinessTarget
	{
		get
		{
			return mSettings.CloudinessTarget;
		}
		set
		{
			mSettings.CloudinessTarget = value;
		}
	}

	public WeatherSettings Settings
	{
		get
		{
			return mSettings;
		}
		set
		{
			mSettings = value;
		}
	}

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)]
	private static extern float[] WeatherControl_GetSettings();

	[DllImport("Sims3Common")]
	private static extern void WeatherControl_SetSettings([MarshalAs(UnmanagedType.SafeArray)] float[] settings);

	public WeatherControl()
	{
		AppDomain.CurrentDomain.SetData("WeatherControl", this);
		mSettings = default;
		mSettings.PrecipitationType = PrecipitationType.NoPrecipitation;
		mSettings.PrecipitationStrength = 1f;
	}

	public void SetTreeLeafCover(float fallColorAmount, float leafLossAmount, bool isLosingLeaves)
	{
		mSettings.TreeFallColorAmount = fallColorAmount;
		mSettings.TreeLeafLossAmount = leafLossAmount;
		mSettings.UseFallSetForTreeLeafLoss = isLosingLeaves;
	}

	public void SetSunriseAndSunsetTimeOffsets(float sunriseOffset, float sunsetOffset)
	{
		mSettings.SunriseOffsetTime = sunriseOffset;
		mSettings.SunsetOffsetTime = sunsetOffset;
	}

	public void SendSettings()
	{
		SendSettingsToWeatherControlHost();
	}

	private void SendSettingsToWeatherControlHost()
	{
		float[] settings = new float[23]
		{
			(float)mSettings.PrecipitationType,
			mSettings.PrecipitationStrength,
			(int)mSettings.CurrentSeason,
			mSettings.SunriseOffsetTime,
			mSettings.SunsetOffsetTime,
			mSettings.PrecipitationIntensityAudioIndex,
			mSettings.WindIntensityAudioIndex,
			(int)mSettings.WeatherTerrain,
			mSettings.FrostAmount,
			mSettings.SnowThicknessAmount,
			mSettings.SnowRoadTrackDepthAmount,
			mSettings.WetAmount,
			mSettings.TreeLeafLossAmount,
			mSettings.UseFallSetForTreeLeafLoss ? 1f : 0f,
			mSettings.TreeFallColorAmount,
			mSettings.PrecipitationFogStrength,
			mSettings.PondFreezeAmount,
			mSettings.HeatShimmerDistance,
			mSettings.WorldLeavesAmount,
			mSettings.IsSnowMelting ? 1f : 0f,
			mSettings.CloudinessTarget,
			mSettings.WindStrength,
			mSettings.NormalFogStrength
		};
		WeatherControl_SetSettings(settings);
	}

	private void GetSettingsFromWeatherControlHost()
	{
		float[] array = WeatherControl_GetSettings();
		if (array != null && array.Length >= 23)
		{
			mSettings.PrecipitationType = (PrecipitationType)Math.Floor(array[0]);
			mSettings.PrecipitationStrength = array[1];
			mSettings.CurrentSeason = (Season)array[2];
			mSettings.SunriseOffsetTime = array[3];
			mSettings.SunsetOffsetTime = array[4];
			mSettings.PrecipitationIntensityAudioIndex = (int)array[5];
			mSettings.WindIntensityAudioIndex = (int)array[6];
			mSettings.WeatherTerrain = (WeatherTerrainType)array[7];
			mSettings.FrostAmount = array[8];
			mSettings.SnowThicknessAmount = array[9];
			mSettings.SnowRoadTrackDepthAmount = array[10];
			mSettings.WetAmount = array[11];
			mSettings.TreeLeafLossAmount = array[12];
			mSettings.UseFallSetForTreeLeafLoss = !MathUtils.IsSimilar(array[13], 0f);
			mSettings.TreeFallColorAmount = array[14];
			mSettings.PrecipitationFogStrength = array[15];
			mSettings.PondFreezeAmount = array[16];
			mSettings.HeatShimmerDistance = array[17];
			mSettings.WorldLeavesAmount = array[18];
			mSettings.IsSnowMelting = !MathUtils.IsSimilar(array[19], 0f);
			mSettings.CloudinessTarget = array[20];
			mSettings.WindStrength = array[21];
			mSettings.NormalFogStrength = array[22];
		}
	}
}
