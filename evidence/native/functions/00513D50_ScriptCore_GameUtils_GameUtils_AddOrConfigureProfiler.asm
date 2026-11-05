# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00513d50 (ScriptCore.GameUtils::GameUtils_AddOrConfigureProfiler)
Paired Ghidra pseudocode: 00513D50_ScriptCore_GameUtils_GameUtils_AddOrConfigureProfiler.c
Window: [0x00513d50, 0x00513d60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00513d60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00513d50: b0 01 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00513d50 <.text+0x112d50>:
  513d50:	b0 01                                           	mov    al,0x1
  513d52:	c3                                              	ret
  513d53:	cc                                              	int3
  513d54:	cc                                              	int3
  513d55:	cc                                              	int3
  513d56:	cc                                              	int3
  513d57:	cc                                              	int3
  513d58:	cc                                              	int3
  513d59:	cc                                              	int3
  513d5a:	cc                                              	int3
  513d5b:	cc                                              	int3
  513d5c:	cc                                              	int3
  513d5d:	cc                                              	int3
  513d5e:	cc                                              	int3
  513d5f:	cc                                              	int3
