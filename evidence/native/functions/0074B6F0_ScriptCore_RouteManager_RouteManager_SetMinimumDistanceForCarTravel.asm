# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074b6f0 (ScriptCore.RouteManager::RouteManager_SetMinimumDistanceForCarTravel)
Paired Ghidra pseudocode: 0074B6F0_ScriptCore_RouteManager_RouteManager_SetMinimumDistanceForCarTravel.c
Window: [0x0074b6f0, 0x0074b710) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074b710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074b6f0: e8 fb d5 0d 00 85 c0 74 0f d9 44 24 04 51 8b c8
0074b700: d9 1c 24 e8 88 e8 0d 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074b6f0 <.text+0x34a6f0>:
  74b6f0:	e8 fb d5 0d 00                                  	call   0x828cf0
  74b6f5:	85 c0                                           	test   eax,eax
  74b6f7:	74 0f                                           	je     0x74b708
  74b6f9:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
  74b6fd:	51                                              	push   ecx
  74b6fe:	8b c8                                           	mov    ecx,eax
  74b700:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  74b703:	e8 88 e8 0d 00                                  	call   0x829f90
  74b708:	c3                                              	ret
  74b709:	cc                                              	int3
  74b70a:	cc                                              	int3
  74b70b:	cc                                              	int3
  74b70c:	cc                                              	int3
  74b70d:	cc                                              	int3
  74b70e:	cc                                              	int3
  74b70f:	cc                                              	int3
