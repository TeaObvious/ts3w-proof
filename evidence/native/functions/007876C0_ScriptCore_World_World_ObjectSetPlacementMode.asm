# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007876c0 (ScriptCore.World::World_ObjectSetPlacementMode)
Paired Ghidra pseudocode: 007876C0_ScriptCore_World_World_ObjectSetPlacementMode.c
Window: [0x007876c0, 0x007876f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007876f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007876c0: e8 ab fe 1a 00 85 c0 74 1f 8b 4c 24 08 8b 54 24
007876d0: 04 51 52 8b c8 e8 a6 08 1b 00 8b 4c 24 0c 51 50
007876e0: e8 0b 94 37 00 83 c4 08 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007876c0 <.text+0x3866c0>:
  7876c0:	e8 ab fe 1a 00                                  	call   0x937570
  7876c5:	85 c0                                           	test   eax,eax
  7876c7:	74 1f                                           	je     0x7876e8
  7876c9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7876cd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7876d1:	51                                              	push   ecx
  7876d2:	52                                              	push   edx
  7876d3:	8b c8                                           	mov    ecx,eax
  7876d5:	e8 a6 08 1b 00                                  	call   0x937f80
  7876da:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7876de:	51                                              	push   ecx
  7876df:	50                                              	push   eax
  7876e0:	e8 0b 94 37 00                                  	call   0xb00af0
  7876e5:	83 c4 08                                        	add    esp,0x8
  7876e8:	c3                                              	ret
  7876e9:	cc                                              	int3
  7876ea:	cc                                              	int3
  7876eb:	cc                                              	int3
  7876ec:	cc                                              	int3
  7876ed:	cc                                              	int3
  7876ee:	cc                                              	int3
  7876ef:	cc                                              	int3
