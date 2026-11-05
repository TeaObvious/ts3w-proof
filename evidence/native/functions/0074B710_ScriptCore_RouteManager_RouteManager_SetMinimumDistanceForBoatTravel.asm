# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074b710 (ScriptCore.RouteManager::RouteManager_SetMinimumDistanceForBoatTravel)
Paired Ghidra pseudocode: 0074B710_ScriptCore_RouteManager_RouteManager_SetMinimumDistanceForBoatTravel.c
Window: [0x0074b710, 0x0074b730) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074b730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074b710: e8 db d5 0d 00 85 c0 74 0e f3 0f 10 44 24 04 f3
0074b720: 0f 11 80 6c 09 00 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074b710 <.text+0x34a710>:
  74b710:	e8 db d5 0d 00                                  	call   0x828cf0
  74b715:	85 c0                                           	test   eax,eax
  74b717:	74 0e                                           	je     0x74b727
  74b719:	f3 0f 10 44 24 04                               	movss  xmm0,DWORD PTR [esp+0x4]
  74b71f:	f3 0f 11 80 6c 09 00 00                         	movss  DWORD PTR [eax+0x96c],xmm0
  74b727:	c3                                              	ret
  74b728:	cc                                              	int3
  74b729:	cc                                              	int3
  74b72a:	cc                                              	int3
  74b72b:	cc                                              	int3
  74b72c:	cc                                              	int3
  74b72d:	cc                                              	int3
  74b72e:	cc                                              	int3
  74b72f:	cc                                              	int3
