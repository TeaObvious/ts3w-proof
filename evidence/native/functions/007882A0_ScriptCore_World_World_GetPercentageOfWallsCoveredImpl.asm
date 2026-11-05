# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007882a0 (ScriptCore.World::World_GetPercentageOfWallsCoveredImpl)
Paired Ghidra pseudocode: 007882A0_ScriptCore_World_World_GetPercentageOfWallsCoveredImpl.c
Window: [0x007882a0, 0x007882e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007882e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007882a0: e8 eb 10 fe ff 8b 0d c4 db 1e 01 85 c9 74 29 8b
007882b0: 44 24 08 8b 54 24 04 6a 00 50 52 e8 50 a5 4d 00
007882c0: 85 c0 74 14 8b 4c 24 10 8b 54 24 0c 51 52 50 e8
007882d0: bc eb 37 00 83 c4 0c c3 d9 05 18 b2 fa 00 c3 cc

LINEAR DISASSEMBLY
007882a0 <.text+0x3872a0>:
  7882a0:	e8 eb 10 fe ff                                  	call   0x769390
  7882a5:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7882ab:	85 c9                                           	test   ecx,ecx
  7882ad:	74 29                                           	je     0x7882d8
  7882af:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7882b3:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7882b7:	6a 00                                           	push   0x0
  7882b9:	50                                              	push   eax
  7882ba:	52                                              	push   edx
  7882bb:	e8 50 a5 4d 00                                  	call   0xc62810
  7882c0:	85 c0                                           	test   eax,eax
  7882c2:	74 14                                           	je     0x7882d8
  7882c4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7882c8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  7882cc:	51                                              	push   ecx
  7882cd:	52                                              	push   edx
  7882ce:	50                                              	push   eax
  7882cf:	e8 bc eb 37 00                                  	call   0xb06e90
  7882d4:	83 c4 0c                                        	add    esp,0xc
  7882d7:	c3                                              	ret
  7882d8:	d9 05 18 b2 fa 00                               	fld    DWORD PTR ds:0xfab218
  7882de:	c3                                              	ret
  7882df:	cc                                              	int3
