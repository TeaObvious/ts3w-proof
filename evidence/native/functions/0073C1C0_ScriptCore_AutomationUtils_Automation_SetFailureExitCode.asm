# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073c1c0 (ScriptCore.AutomationUtils::Automation_SetFailureExitCode)
Paired Ghidra pseudocode: 0073C1C0_ScriptCore_AutomationUtils_Automation_SetFailureExitCode.c
Window: [0x0073c1c0, 0x0073c1d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073c1d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073c1c0: e9 7b ca e4 ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073c1c0 <.text+0x33b1c0>:
  73c1c0:	e9 7b ca e4 ff                                  	jmp    0x588c40
  73c1c5:	cc                                              	int3
  73c1c6:	cc                                              	int3
  73c1c7:	cc                                              	int3
  73c1c8:	cc                                              	int3
  73c1c9:	cc                                              	int3
  73c1ca:	cc                                              	int3
  73c1cb:	cc                                              	int3
  73c1cc:	cc                                              	int3
  73c1cd:	cc                                              	int3
  73c1ce:	cc                                              	int3
  73c1cf:	cc                                              	int3
