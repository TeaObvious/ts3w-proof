using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class CommandSystem : ICommandSystem
{
	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Command_RegisterCommandImpl([MarshalAs(UnmanagedType.LPWStr)] string cmdName, [MarshalAs(UnmanagedType.LPWStr)] string cmdDesc, [MarshalAs(UnmanagedType.Interface)] Delegate eventHandler, bool bHidden);

	[DllImport("Sims3Common.dll")]
	private static extern void Command_UnregisterCommandImpl([MarshalAs(UnmanagedType.LPWStr)] string cmdName);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Command_ExecuteCommandStringImpl([MarshalAs(UnmanagedType.LPWStr)] string cmdStr);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string Command_GetCommandListImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string Command_GetCommandHelpImpl([MarshalAs(UnmanagedType.LPWStr)] string cmdStr);

	public CommandSystem()
	{
		AppDomain.CurrentDomain.SetData("CommandSystem", this);
	}

	public bool RegisterCommand(string commandName, string commandDesc, CommandHandler commandHandler, bool bHidden)
	{
		return Command_RegisterCommandImpl(commandName, commandDesc, commandHandler, bHidden);
	}

	public void UnregisterCommand(string commandName)
	{
		Command_UnregisterCommandImpl(commandName);
	}

	public bool ExecuteCommandString(string commandStr)
	{
		return Command_ExecuteCommandStringImpl(commandStr);
	}

	public string GetCommandList()
	{
		return Command_GetCommandListImpl();
	}

	public string GetCommandHelp(string commandStr)
	{
		return Command_GetCommandHelpImpl(commandStr);
	}
}
