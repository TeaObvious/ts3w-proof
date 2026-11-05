# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007876f0 (ScriptCore.World::World_ObjectGetPlacementMode)
Paired Ghidra pseudocode: 007876F0_ScriptCore_World_World_ObjectGetPlacementMode.c
Window: [0x007876f0, 0x00787720) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787720
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007876f0: e8 7b fe 1a 00 85 c0 74 1b 8b 4c 24 08 8b 54 24
00787700: 04 51 52 8b c8 e8 76 08 1b 00 50 e8 20 94 37 00
00787710: 83 c4 04 c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007876f0 <.text+0x3866f0>:
  7876f0:	e8 7b fe 1a 00                                  	call   0x937570
  7876f5:	85 c0                                           	test   eax,eax
  7876f7:	74 1b                                           	je     0x787714
  7876f9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7876fd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  787701:	51                                              	push   ecx
  787702:	52                                              	push   edx
  787703:	8b c8                                           	mov    ecx,eax
  787705:	e8 76 08 1b 00                                  	call   0x937f80
  78770a:	50                                              	push   eax
  78770b:	e8 20 94 37 00                                  	call   0xb00b30
  787710:	83 c4 04                                        	add    esp,0x4
  787713:	c3                                              	ret
  787714:	33 c0                                           	xor    eax,eax
  787716:	c3                                              	ret
  787717:	cc                                              	int3
  787718:	cc                                              	int3
  787719:	cc                                              	int3
  78771a:	cc                                              	int3
  78771b:	cc                                              	int3
  78771c:	cc                                              	int3
  78771d:	cc                                              	int3
  78771e:	cc                                              	int3
  78771f:	cc                                              	int3
