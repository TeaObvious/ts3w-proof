# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0056c050 (ScriptCore.RouteManager::RouteManager_GetSteeringObjectRadius)
Paired Ghidra pseudocode: 0056C050_ScriptCore_RouteManager_RouteManager_GetSteeringObjectRadius.c
Window: [0x0056c050, 0x0056c070) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0056c070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0056c050: d9 ee c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
0056c060: d9 05 04 2e fc 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0056c050 <.text+0x16b050>:
  56c050:	d9 ee                                           	fldz
  56c052:	c3                                              	ret
  56c053:	cc                                              	int3
  56c054:	cc                                              	int3
  56c055:	cc                                              	int3
  56c056:	cc                                              	int3
  56c057:	cc                                              	int3
  56c058:	cc                                              	int3
  56c059:	cc                                              	int3
  56c05a:	cc                                              	int3
  56c05b:	cc                                              	int3
  56c05c:	cc                                              	int3
  56c05d:	cc                                              	int3
  56c05e:	cc                                              	int3
  56c05f:	cc                                              	int3
  56c060:	d9 05 04 2e fc 00                               	fld    DWORD PTR ds:0xfc2e04
  56c066:	c3                                              	ret
  56c067:	cc                                              	int3
  56c068:	cc                                              	int3
  56c069:	cc                                              	int3
  56c06a:	cc                                              	int3
  56c06b:	cc                                              	int3
  56c06c:	cc                                              	int3
  56c06d:	cc                                              	int3
  56c06e:	cc                                              	int3
  56c06f:	cc                                              	int3
