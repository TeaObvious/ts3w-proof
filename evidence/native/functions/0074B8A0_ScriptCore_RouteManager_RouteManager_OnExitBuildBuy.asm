# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074b8a0 (ScriptCore.RouteManager::RouteManager_OnExitBuildBuy)
Paired Ghidra pseudocode: 0074B8A0_ScriptCore_RouteManager_RouteManager_OnExitBuildBuy.c
Window: [0x0074b8a0, 0x0074b8c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074b8c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074b8a0: e8 4b d4 0d 00 85 c0 74 07 8b c8 e9 d0 94 0e 00
0074b8b0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074b8a0 <.text+0x34a8a0>:
  74b8a0:	e8 4b d4 0d 00                                  	call   0x828cf0
  74b8a5:	85 c0                                           	test   eax,eax
  74b8a7:	74 07                                           	je     0x74b8b0
  74b8a9:	8b c8                                           	mov    ecx,eax
  74b8ab:	e9 d0 94 0e 00                                  	jmp    0x834d80
  74b8b0:	c3                                              	ret
  74b8b1:	cc                                              	int3
  74b8b2:	cc                                              	int3
  74b8b3:	cc                                              	int3
  74b8b4:	cc                                              	int3
  74b8b5:	cc                                              	int3
  74b8b6:	cc                                              	int3
  74b8b7:	cc                                              	int3
  74b8b8:	cc                                              	int3
  74b8b9:	cc                                              	int3
  74b8ba:	cc                                              	int3
  74b8bb:	cc                                              	int3
  74b8bc:	cc                                              	int3
  74b8bd:	cc                                              	int3
  74b8be:	cc                                              	int3
  74b8bf:	cc                                              	int3
