/* Analyst: PC1.67 original managed evidence. Eight input/output lanes. Connected pins only for aggregate logic. XOR is exactly one asserted input. Byte counter wraps with conv.u1; cycler uses signed rem so wrap from255 to0 yields no asserted lane. Active outputs activate on every tick.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System;
using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;

namespace Sims3.Gameplay.Objects.TombObjects;

public class LogicGate : GameObject, IHasWorldBuilderData, ICanHasTombObjectComponent, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent, IBuildBuyListener
{
	private enum LogicMode
	{
		AND = 146171540,
		OR = 146171541,
		NAND = 146171542,
		NOR = 146171543,
		XOR = 146171544,
		NXOR = 146171545,
		NOT = 146171559,
		Toggle = 146846266,
		Counter = 146171560,
		Cycler = 146171561,
		RandomByte = 146588973,
		RandomBit = 146589724
	}

	private enum ClockMode
	{
		Auto,
		Enabled,
		Disabled
	}

	[Flags]
	private enum Option
	{
		DeactivateOutputsOnTick = 1,
		DeactivateOutputsOnReset = 2,
		ClearInputsOnDeactivate = 4,
		ClearInputsOnTick = 8,
		ClearInputsOnReset = 0x10
	}

	private struct ImportData
	{
		public uint version;

		public uint logicMode;

		public float period;

		public float jitter;

		public uint clockMode;

		public uint options;
	}

	private sealed class SetOption : ImmediateInteraction<Sim, LogicGate>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, LogicGate, SetOption>
		{
			public Option Option;

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { LocalizeString("SetOption") };
			}

			protected override string GetInteractionName(Sim a, LogicGate target, InteractionObjectPair interaction)
			{
				return LocalizeString("SetOption" + Option, LocalizeString(target.OptionIsEnabled(Option) ? "SetOptionEnabled" : "SetOptionDisabled"));
			}

			protected override bool Test(Sim a, LogicGate target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, LogicGate target, List<InteractionObjectPair> results)
			{
				foreach (Option value in Enum.GetValues(typeof(Option)))
				{
					Definition definition = new Definition();
					definition.Option = value;
					results.Add(new InteractionObjectPair(definition, target));
				}
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.ToggleOption((InteractionDefinition as Definition).Option);
			return true;
		}
	}

	private sealed class SetLogicMode : ImmediateInteraction<Sim, LogicGate>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, LogicGate, SetLogicMode>
		{
			public LogicMode Mode;

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { LocalizeString("SetLogicMode") };
			}

			protected override string GetInteractionName(Sim a, LogicGate target, InteractionObjectPair interaction)
			{
				return LocalizeString("SetLogicMode" + Mode);
			}

			protected override bool Test(Sim a, LogicGate target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.mMode == Mode)
				{
					greyedOutTooltipCallback = CurrentSettingTooltip;
					return false;
				}
				return true;
			}

			private string CurrentSettingTooltip()
			{
				return LocalizeString("CurrentSetting");
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, LogicGate target, List<InteractionObjectPair> results)
			{
				foreach (LogicMode value in Enum.GetValues(typeof(LogicMode)))
				{
					Definition definition = new Definition();
					definition.Mode = value;
					results.Add(new InteractionObjectPair(definition, target));
				}
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			LogicMode mode = (InteractionDefinition as Definition).Mode;
			Target.SetLogicModeTo(mode);
			if (mode == LogicMode.Toggle && !Target.OptionIsEnabled(Option.ClearInputsOnTick))
			{
				Target.ToggleOption(Option.ClearInputsOnTick);
				StyledNotification.Format format = new StyledNotification.Format(LocalizeString("SetLogicModeToggleTNS"), Target.ObjectId, StyledNotification.NotificationStyle.kGameMessagePositive);
				StyledNotification.Show(format);
			}
			return true;
		}
	}

	private sealed class SetClockMode : ImmediateInteraction<Sim, LogicGate>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, LogicGate, SetClockMode>
		{
			public ClockMode Mode;

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { LocalizeString("SetClockMode") };
			}

			protected override string GetInteractionName(Sim a, LogicGate target, InteractionObjectPair interaction)
			{
				return LocalizeString("SetClockMode" + Mode);
			}

			protected override bool Test(Sim a, LogicGate target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.mClockMode == Mode)
				{
					greyedOutTooltipCallback = CurrentSettingTooltip;
					return false;
				}
				return true;
			}

			private string CurrentSettingTooltip()
			{
				return LocalizeString("CurrentSetting");
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, LogicGate target, List<InteractionObjectPair> results)
			{
				foreach (ClockMode value in Enum.GetValues(typeof(ClockMode)))
				{
					Definition definition = new Definition();
					definition.Mode = value;
					results.Add(new InteractionObjectPair(definition, target));
				}
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			ClockMode mode = (InteractionDefinition as Definition).Mode;
			Target.SetClockModeTo(mode);
			Target.mClockModeOnReset = mode;
			return true;
		}
	}

	private sealed class SetClockPeriod : ImmediateInteraction<Sim, LogicGate>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, LogicGate, SetClockPeriod>
		{
			protected override string GetInteractionName(Sim a, LogicGate target, InteractionObjectPair interaction)
			{
				return LocalizeString("SetClockPeriod");
			}

			protected override bool Test(Sim a, LogicGate target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			try
			{
				string s = StringInputDialog.Show(LocalizeString("LogicGate"), LocalizeString("SetClockPeriodInSimSeconds"), Target.mClockPeriod.ToString(), numbersOnly: true);
				Target.SetClockPeriodTo(float.Parse(s));
			}
			catch
			{
			}
			return true;
		}
	}

	private sealed class SetClockJitter : ImmediateInteraction<Sim, LogicGate>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, LogicGate, SetClockJitter>
		{
			protected override string GetInteractionName(Sim a, LogicGate target, InteractionObjectPair interaction)
			{
				return LocalizeString("SetClockJitter");
			}

			protected override bool Test(Sim a, LogicGate target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			try
			{
				string s = StringInputDialog.Show(LocalizeString("LogicGate"), LocalizeString("SetClockJitterInSimSeconds"), Target.mClockJitter.ToString(), numbersOnly: true);
				Target.SetClockJitterTo(float.Parse(s));
			}
			catch
			{
			}
			return true;
		}
	}

	private sealed class DEBUG_ToggleHud : ImmediateInteraction<Sim, LogicGate>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, LogicGate, DEBUG_ToggleHud>
		{
			protected override string GetInteractionName(Sim a, LogicGate target, InteractionObjectPair interaction)
			{
				return LocalizeString("Hud" + (sShowHud ? "Disable" : "Enable"));
			}

			protected override bool Test(Sim a, LogicGate target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			ToggleHud();
			return true;
		}
	}

	private const string sLocalizationKey = "Gameplay/Objects/TombObjects/LogicGate";

	private const LogicMode kDefaultLogicMode = LogicMode.AND;

	private const ClockMode kDefaultClockMode = ClockMode.Auto;

	private const float kDefaultClockPeriod = 60f;

	private const float kDefaultClockJitter = 0f;

	private const Option kDefaultOptions = Option.DeactivateOutputsOnTick | Option.DeactivateOutputsOnReset | Option.ClearInputsOnDeactivate | Option.ClearInputsOnReset;

	private const uint kKeyLogicMode = 146176295u;

	private const uint kKeyClockMode = 146176296u;

	private const uint kKeyClockModeOnReset = 145127720u;

	private const uint kKeyClockPeriod = 146176297u;

	private const uint kKeyClockJitter = 146589118u;

	private const uint kKeyOptions = 146931510u;

	private const uint kKeyVersion = 146931511u;

	private const uint kVersion = 1u;

	private const uint kVersionOptionsAdded = 1u;

	private uint mVersion;

	private Option mOptions = Option.DeactivateOutputsOnTick | Option.DeactivateOutputsOnReset | Option.ClearInputsOnDeactivate | Option.ClearInputsOnReset;

	private LogicMode mMode = LogicMode.AND;

	private byte mCount;

	private bool[] mOutputStates = new bool[8];

	private bool[] mInputStates = new bool[8];

	private ClockMode mClockMode;

	private ClockMode mClockModeOnReset;

	private float mClockPeriod = 60f;

	private float mClockJitter;

	private AlarmHandle mClockHandle;

	private bool[] mInputPinIsConnected;

	private static readonly string[] kWorldBuilderDataKeyRemap = new string[6]
	{
		146176295u.ToString(),
		"LogicMode",
		146176296u.ToString(),
		"ClockMode",
		146176297u.ToString(),
		"ClockPeriod"
	};

	private static bool sShowHud;

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/Objects/TombObjects/LogicGate:" + name, parameters);
	}

	public override void OnCreation()
	{
		mVersion = 1u;
		base.OnCreation();
	}

	public override void OnStartup()
	{
		AddComponent<TombObjectStaticComponent>(new object[0]);
		AddComponent<AdventureComponent>(new object[0]);
		Fixup(mVersion);
		UpdateVisualState();
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		base.AddBuildBuyInteractions(buildBuyInteractions);
		buildBuyInteractions.Add(SetLogicMode.Singleton);
		buildBuyInteractions.Add(SetClockMode.Singleton);
		buildBuyInteractions.Add(SetClockPeriod.Singleton);
		buildBuyInteractions.Add(SetClockJitter.Singleton);
		buildBuyInteractions.Add(SetOption.Singleton);
		buildBuyInteractions.Add(DEBUG_ToggleHud.Singleton);
	}

	public void OnAddTombObjectComponent(ITombObjectComponent TombObjectComponent)
	{
		TombObjectComponent.RegisterOnTombObjectComponentChangedCallback(TombObjectComponentChanged);
		TombObjectComponent.RegisterTrigger(Trigger.Out0);
		TombObjectComponent.RegisterTrigger(Trigger.Out1);
		TombObjectComponent.RegisterTrigger(Trigger.Out2);
		TombObjectComponent.RegisterTrigger(Trigger.Out3);
		TombObjectComponent.RegisterTrigger(Trigger.Out4);
		TombObjectComponent.RegisterTrigger(Trigger.Out5);
		TombObjectComponent.RegisterTrigger(Trigger.Out6);
		TombObjectComponent.RegisterTrigger(Trigger.Out7);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.Arm, Clock_Enable);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.Disarm, Clock_Disable);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.Tick, Tick);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.Reset, Reset);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In0, In0);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In1, In1);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In2, In2);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In3, In3);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In4, In4);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In5, In5);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In6, In6);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In7, In7);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In0_Reset, In0_Reset);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In1_Reset, In1_Reset);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In2_Reset, In2_Reset);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In3_Reset, In3_Reset);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In4_Reset, In4_Reset);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In5_Reset, In5_Reset);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In6_Reset, In6_Reset);
		TombObjectComponent.RegisterBehavior(ActivatedBehavior.In7_Reset, In7_Reset);
	}

	private void Fixup(uint version)
	{
		if (version < 1)
		{
			mOptions = Option.DeactivateOutputsOnTick | Option.DeactivateOutputsOnReset | Option.ClearInputsOnDeactivate | Option.ClearInputsOnReset;
			if (mMode == LogicMode.Toggle)
			{
				ToggleOption(Option.ClearInputsOnTick);
			}
		}
		mVersion = 1u;
	}

	public void SaveWorldBuilderData()
	{
		WorldBuilderData.Set("LogicGate", ObjectId, "Version", 1u, 0u);
		WorldBuilderData.Set("LogicGate", ObjectId, "LogicMode", mMode, LogicMode.AND);
		WorldBuilderData.Set("LogicGate", ObjectId, "ClockMode", mClockMode, ClockMode.Auto);
		WorldBuilderData.Set("LogicGate", ObjectId, "ClockPeriod", mClockPeriod, 60f);
		WorldBuilderData.Set("LogicGate", ObjectId, "ClockJitter", mClockJitter, 0f);
		WorldBuilderData.Set("LogicGate", ObjectId, "Options", mOptions, Option.DeactivateOutputsOnTick | Option.DeactivateOutputsOnReset | Option.ClearInputsOnDeactivate | Option.ClearInputsOnReset);
	}

	public void LoadWorldBuilderData()
	{
		uint value = 0u;
		WorldBuilderData.SetKeyRemap(kWorldBuilderDataKeyRemap);
		WorldBuilderData.Get("LogicGate", ObjectId, "Version", ref value);
		SetLogicModeTo(WorldBuilderData.Get("LogicGate", ObjectId, "LogicMode", LogicMode.AND));
		SetClockPeriodTo(WorldBuilderData.Get("LogicGate", ObjectId, "ClockPeriod", 60f));
		SetClockJitterTo(WorldBuilderData.Get("LogicGate", ObjectId, "ClockJitter", 0f));
		SetClockModeTo(WorldBuilderData.Get("LogicGate", ObjectId, "ClockMode", ClockMode.Auto));
		mOptions = WorldBuilderData.Get("LogicGate", ObjectId, "Options", Option.DeactivateOutputsOnTick | Option.DeactivateOutputsOnReset | Option.ClearInputsOnDeactivate | Option.ClearInputsOnReset);
		mClockModeOnReset = mClockMode;
		Fixup(value);
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		writer.WriteUint32(146931511u, mVersion);
		writer.WriteUint32(146176295u, (uint)mMode);
		writer.WriteUint32(146176296u, (uint)mClockModeOnReset);
		writer.WriteFloat(146176297u, mClockPeriod);
		writer.WriteFloat(146589118u, mClockJitter);
		writer.WriteUint32(146931510u, (uint)mOptions);
		return base.ExportContent(resKeyTable, objIdTable, writer);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		ImportData importData = default;
		reader.ReadUint32(146931511u, out importData.version, 0u);
		reader.ReadUint32(146176295u, out importData.logicMode, 146171540u);
		reader.ReadFloat(146176297u, out importData.period, 60f);
		reader.ReadFloat(146589118u, out importData.jitter, 0f);
		reader.ReadUint32(146176296u, out importData.clockMode, 0u);
		reader.ReadUint32(146931510u, out importData.options, 23u);
		objIdTable.AddPostImportCallback(PostImportCallback, importData);
		return base.ImportContent(resKeyTable, objIdTable, reader);
	}

	public void PostImportCallback(object context)
	{
		ImportData importData = (ImportData)context;
		if (mInputPinIsConnected != null)
		{
			mInputPinIsConnected = null;
		}
		SetLogicModeTo((LogicMode)importData.logicMode);
		SetClockPeriodTo(importData.period);
		SetClockJitterTo(importData.jitter);
		SetClockModeTo((ClockMode)importData.clockMode);
		mOptions = (Option)importData.options;
		mClockModeOnReset = mClockMode;
		Fixup(importData.version);
	}

	internal static void ToggleHud()
	{
		sShowHud = !sShowHud;
		LogicGate[] objects = Queries.GetObjects<LogicGate>();
		foreach (LogicGate logicGate in objects)
		{
			logicGate.UpdateHud();
		}
	}

	private void UpdateVisualState()
	{
		UpdateVisualState(GameStates.IsBuildBuyLikeState);
	}

	private void UpdateVisualState(bool inBuildBuy)
	{
		if (sShowHud)
		{
			SetHiddenFlags(HiddenFlags.Footprint);
			if (inBuildBuy)
			{
				SetOpacity(1f, 0.2f);
			}
			else
			{
				SetOpacity(0.4f, 0.2f);
			}
		}
		else
		{
			SetOpacity(1f, 0.2f);
			if (inBuildBuy)
			{
				SetHiddenFlags(HiddenFlags.Footprint);
			}
			else
			{
				SetHiddenFlags(HiddenFlags.Everything);
			}
		}
	}

	private void UpdateHud()
	{
		UpdateVisualState();
	}

	public override Tooltip CreateTooltip(Vector2 mousePosition, WindowBase mousedOverWindow, ref Vector2 tooltipPosition)
	{
		Tooltip result = base.CreateTooltip(mousePosition, mousedOverWindow, ref tooltipPosition);
		if (sShowHud)
		{
			return new SimpleTextTooltip(GetHudString());
		}
		return result;
	}

	private string GetHudString()
	{
		string text = "";
		switch (mMode)
		{
		case LogicMode.AND:
		case LogicMode.OR:
		case LogicMode.NAND:
		case LogicMode.NOR:
		case LogicMode.XOR:
		case LogicMode.NXOR:
			text = ((!mOutputStates[0]) ? (text + LocalizeString("HudOutputLineOneBitFalse")) : (text + LocalizeString("HudOutputLineOneBitTrue")));
			break;
		default:
		{
			string text2 = "";
			for (int num = mOutputStates.Length - 1; num >= 0; num--)
			{
				bool flag = mOutputStates[num];
				text2 += (flag ? "1" : "0");
			}
			text += LocalizeString("HudOutputLineAllBits", text2);
			break;
		}
		}
		text += "\n";
		text = text + LocalizeString("HudLogicModeLine", LocalizeString("Hud" + mMode)) + "\n";
		text = text + LocalizeString("HudClockModeLine", LocalizeString("Hud" + mClockMode), mClockPeriod, mClockJitter) + "\n";
		text = text + LocalizeString("HudCountLine", mCount) + "\n";
		string text3 = "";
		for (int num2 = mInputStates.Length - 1; num2 >= 0; num2--)
		{
			text3 = ((!PinIsConnected(num2)) ? (text3 + "-") : (text3 + (mInputStates[num2] ? "1" : "0")));
		}
		return text + LocalizeString("HudInputLine", text3) + "\n";
	}

	private void TombObjectComponentChanged()
	{
		bool[] array = ((mInputPinIsConnected == null) ? new bool[8] : (mInputPinIsConnected.Clone() as bool[]));
		mInputPinIsConnected = null;
		UpdateHud();
		for (int i = 0; i < 8; i++)
		{
			if (array[i] && !PinIsConnected(i))
			{
				InputStateChanged();
				break;
			}
		}
	}

	private bool OptionIsEnabled(Option options)
	{
		return options == (mOptions & options);
	}

	private void ToggleOption(Option option)
	{
		mOptions ^= option;
	}

	private void SetLogicModeTo(LogicMode mode)
	{
		mMode = mode;
		if (GameStates.IsBuildBuyLikeState)
		{
			Reset(null);
		}
		switch (mMode)
		{
		case LogicMode.AND:
		case LogicMode.OR:
		case LogicMode.NAND:
		case LogicMode.NOR:
		case LogicMode.XOR:
		case LogicMode.NXOR:
		case LogicMode.NOT:
			Tick();
			break;
		default:
			UpdateHud();
			break;
		}
	}

	private void SetClockModeTo(ClockMode mode)
	{
		mClockMode = (ClockMode)(-1);
		Clock_Disable(null);
		switch (mode)
		{
		case ClockMode.Enabled:
			Clock_Enable(null);
			break;
		}
		mClockMode = mode;
		UpdateHud();
	}

	private void SetClockPeriodTo(float period)
	{
		if (period < 2f)
		{
			period = 2f;
		}
		mClockPeriod = period;
		if (mClockPeriod - mClockJitter < 2f)
		{
			mClockJitter = mClockPeriod - 2f;
		}
		if (mClockJitter < 2f)
		{
			mClockJitter = 0f;
		}
		ClockMode clockModeTo = mClockMode;
		SetClockModeTo(ClockMode.Disabled);
		SetClockModeTo(clockModeTo);
	}

	private void SetClockJitterTo(float jitter)
	{
		mClockJitter = jitter;
		SetClockPeriodTo(mClockPeriod);
	}

	private bool Clock_Enable(Sim sim)
	{
		if (mClockMode == ClockMode.Auto || mClockMode == ClockMode.Enabled)
		{
			return false;
		}
		mClockMode = ClockMode.Enabled;
		float time = mClockPeriod;
		if (mClockJitter > 2f)
		{
			time = RandomUtil.RandomFloatGaussianDistribution(2f, mClockJitter);
		}
		mClockHandle = AddAlarmRepeating(time, TimeUnit.Seconds, ClockTick, mClockPeriod, TimeUnit.Seconds, "Clock: " + AdventureKey, AlarmType.AlwaysPersisted);
		UpdateHud();
		return true;
	}

	private bool Clock_Disable(Sim sim)
	{
		if (mClockMode == ClockMode.Auto || mClockMode == ClockMode.Disabled)
		{
			return false;
		}
		mClockMode = ClockMode.Disabled;
		RemoveAlarm(mClockHandle);
		mClockHandle = AlarmHandle.kInvalidHandle;
		UpdateHud();
		return true;
	}

	private bool Reset(Sim sim)
	{
		SetClockModeTo(ClockMode.Disabled);
		mCount = 0;
		for (int i = 0; i < mOutputStates.Length; i++)
		{
			SetOutputState(i, p: false, fromReset: true);
		}
		if (OptionIsEnabled(Option.ClearInputsOnReset))
		{
			for (int j = 0; j < mInputStates.Length; j++)
			{
				mInputStates[j] = false;
			}
		}
		SetClockModeTo(mClockModeOnReset);
		return true;
	}

	private void InputStateChanged()
	{
		UpdateHud();
		if (mClockMode == ClockMode.Auto && !PinIsConnected(ActivatedBehavior.Tick))
		{
			Tick();
		}
	}

	private bool PinIsConnected(ActivatedBehavior input)
	{
		int num = (int)(input - 146171252);
		if (num >= 0 && num < 8)
		{
			return PinIsConnected((int)(input - 146171252));
		}
		return TombObjectComponent.IsActivatedBehaviorLinkedFromObjectType<ICanHasTombObjectComponent>(new ActivatedBehavior[1] { input });
	}

	private bool PinIsConnected(int i)
	{
		if (mInputPinIsConnected == null)
		{
			mInputPinIsConnected = new bool[8];
			List<ActivatedBehavior> linkedActivatedBehaviors = TombObjectComponent.GetLinkedActivatedBehaviors();
			for (int j = 0; j < 8; j++)
			{
				ActivatedBehavior item = (ActivatedBehavior)(146171252 + j);
				mInputPinIsConnected[j] = linkedActivatedBehaviors.Contains(item);
			}
		}
		return mInputPinIsConnected[i];
	}

	private bool PinIsConnected(Trigger output)
	{
		return TombObjectComponent.IsTriggerLinkedToAnyActivatedBehavior(output);
	}

	private void ClockTick()
	{
		if (mClockJitter < 2f)
		{
			Tick();
		}
		else
		{
			AddAlarm(RandomUtil.RandomFloatGaussianDistribution(2f, mClockJitter), TimeUnit.Seconds, JitterTick, "Jitter Tick", AlarmType.NeverPersisted);
		}
	}

	private void JitterTick()
	{
		Tick();
	}

	private bool Tick()
	{
		return Tick(null);
	}

	private bool Tick(Sim sim)
	{
		bool flag = false;
		if (mMode == LogicMode.RandomBit || mMode == LogicMode.RandomByte)
		{
			mCount = (byte)RandomUtil.GetInt(255);
		}
		switch (mMode)
		{
		case LogicMode.NOT:
		{
			for (int j = 0; j < mInputStates.Length; j++)
			{
				flag |= Tick_SetOutputState(j, !mInputStates[j]);
			}
			break;
		}
		case LogicMode.AND:
		case LogicMode.OR:
		case LogicMode.NAND:
		case LogicMode.NOR:
		case LogicMode.XOR:
		case LogicMode.NXOR:
			flag |= Tick_SetOutputState(0, Tick_ApplyLogic());
			break;
		case LogicMode.Toggle:
		{
			for (int l = 0; l < 8; l++)
			{
				if (mInputStates[l])
				{
					flag |= Tick_SetOutputState(l, !mOutputStates[l]);
				}
			}
			break;
		}
		case LogicMode.Counter:
		case LogicMode.RandomByte:
		{
			mCount++;
			for (int k = 0; k < 8; k++)
			{
				flag |= Tick_SetOutputState(k, 0 != ((mCount >> k) & 1));
			}
			break;
		}
		case LogicMode.Cycler:
		case LogicMode.RandomBit:
		{
			mCount++;
			for (int i = 0; i < 8; i++)
			{
				flag |= Tick_SetOutputState(i, (mCount - 1) % 8 == i);
			}
			break;
		}
		}
		for (int m = 0; m < mOutputStates.Length; m++)
		{
			Trigger trigger = (Trigger)(146171217 + m);
			if (mOutputStates[m])
			{
				flag |= TombObjectComponent.ActivateTrigger(trigger, null);
			}
		}
		if (OptionIsEnabled(Option.ClearInputsOnTick))
		{
			for (int n = 0; n < mInputStates.Length; n++)
			{
				mInputStates[n] = false;
			}
		}
		UpdateHud();
		return flag;
	}

	private bool Tick_ApplyLogic()
	{
		int num = 0;
		int num2 = 0;
		for (int i = 0; i < mInputStates.Length; i++)
		{
			if (!PinIsConnected(i))
			{
				continue;
			}
			bool flag = mInputStates[i];
			if (mMode == LogicMode.AND)
			{
				if (!flag)
				{
					return false;
				}
			}
			else if (mMode == LogicMode.OR)
			{
				if (flag)
				{
					return true;
				}
			}
			else if (mMode == LogicMode.NOR)
			{
				if (flag)
				{
					return false;
				}
			}
			else if (flag)
			{
				num++;
				if (mMode == LogicMode.XOR && num > 1)
				{
					return false;
				}
				if (mMode == LogicMode.NXOR && num > 1)
				{
					return true;
				}
			}
			else
			{
				num2++;
			}
		}
		switch (mMode)
		{
		case LogicMode.AND:
		case LogicMode.NOR:
			return true;
		case LogicMode.OR:
			return false;
		case LogicMode.NAND:
			return num2 > 0;
		case LogicMode.XOR:
			return num == 1;
		case LogicMode.NXOR:
			return num != 1;
		default:
			return false;
		}
	}

	private bool Tick_SetOutputState(int i, bool p)
	{
		return SetOutputState(i, p, fromReset: false);
	}

	private bool SetOutputState(int i, bool p, bool fromReset)
	{
		bool flag = false;
		bool flag2 = false;
		if ((!fromReset) ? (OptionIsEnabled(Option.DeactivateOutputsOnTick) && mOutputStates[i] && !p) : OptionIsEnabled(Option.DeactivateOutputsOnReset))
		{
			Trigger trigger = (Trigger)(146171217 + i);
			flag |= TombObjectComponent.DeactivateTrigger(trigger, null);
		}
		mOutputStates[i] = p;
		return flag;
	}

	private bool In(int i, bool b)
	{
		if (!b && !OptionIsEnabled(Option.ClearInputsOnDeactivate) && !PinIsConnected((ActivatedBehavior)(146171284 + i)))
		{
			return false;
		}
		if (mInputStates[i] != b)
		{
			mInputStates[i] = b;
			InputStateChanged();
			return true;
		}
		return false;
	}

	private bool In0(Sim sim)
	{
		return In(0, b: true);
	}

	private bool In1(Sim sim)
	{
		return In(1, b: true);
	}

	private bool In2(Sim sim)
	{
		return In(2, b: true);
	}

	private bool In3(Sim sim)
	{
		return In(3, b: true);
	}

	private bool In4(Sim sim)
	{
		return In(4, b: true);
	}

	private bool In5(Sim sim)
	{
		return In(5, b: true);
	}

	private bool In6(Sim sim)
	{
		return In(6, b: true);
	}

	private bool In7(Sim sim)
	{
		return In(7, b: true);
	}

	private bool In0_Reset(Sim sim)
	{
		return In(0, b: false);
	}

	private bool In1_Reset(Sim sim)
	{
		return In(1, b: false);
	}

	private bool In2_Reset(Sim sim)
	{
		return In(2, b: false);
	}

	private bool In3_Reset(Sim sim)
	{
		return In(3, b: false);
	}

	private bool In4_Reset(Sim sim)
	{
		return In(4, b: false);
	}

	private bool In5_Reset(Sim sim)
	{
		return In(5, b: false);
	}

	private bool In6_Reset(Sim sim)
	{
		return In(6, b: false);
	}

	private bool In7_Reset(Sim sim)
	{
		return In(7, b: false);
	}

	public void OnEnterBuildBuyMode()
	{
		SetHiddenFlags(~HiddenFlags.Model);
	}

	public void OnExitBuildBuyMode()
	{
		SetHiddenFlags(HiddenFlags.Model);
	}
}
