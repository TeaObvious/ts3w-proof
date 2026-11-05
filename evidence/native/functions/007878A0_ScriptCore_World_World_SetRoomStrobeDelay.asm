# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007878a0 (ScriptCore.World::World_SetRoomStrobeDelay)
Paired Ghidra pseudocode: 007878A0_ScriptCore_World_World_SetRoomStrobeDelay.c
Window: [0x007878a0, 0x007878f0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x007878f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007878a0: e8 eb 1a fe ff 8b 0d c4 db 1e 01 85 c9 74 33 8b
007878b0: 44 24 08 8b 54 24 04 6a 00 50 52 e8 50 af 4d 00
007878c0: 85 c0 74 1e 8b 80 98 02 00 00 85 c0 74 14 d9 44
007878d0: 24 10 51 8b 4c 24 10 d9 1c 24 51 8b c8 e8 2e 28
007878e0: 3c 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007878a0 <.text+0x3868a0>:
  7878a0:	e8 eb 1a fe ff                                  	call   0x769390
  7878a5:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7878ab:	85 c9                                           	test   ecx,ecx
  7878ad:	74 33                                           	je     0x7878e2
  7878af:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7878b3:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7878b7:	6a 00                                           	push   0x0
  7878b9:	50                                              	push   eax
  7878ba:	52                                              	push   edx
  7878bb:	e8 50 af 4d 00                                  	call   0xc62810
  7878c0:	85 c0                                           	test   eax,eax
  7878c2:	74 1e                                           	je     0x7878e2
  7878c4:	8b 80 98 02 00 00                               	mov    eax,DWORD PTR [eax+0x298]
  7878ca:	85 c0                                           	test   eax,eax
  7878cc:	74 14                                           	je     0x7878e2
  7878ce:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  7878d2:	51                                              	push   ecx
  7878d3:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7878d7:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7878da:	51                                              	push   ecx
  7878db:	8b c8                                           	mov    ecx,eax
  7878dd:	e8 2e 28 3c 00                                  	call   0xb4a110
  7878e2:	c3                                              	ret
  7878e3:	cc                                              	int3
  7878e4:	cc                                              	int3
  7878e5:	cc                                              	int3
  7878e6:	cc                                              	int3
  7878e7:	cc                                              	int3
  7878e8:	cc                                              	int3
  7878e9:	cc                                              	int3
  7878ea:	cc                                              	int3
  7878eb:	cc                                              	int3
  7878ec:	cc                                              	int3
  7878ed:	cc                                              	int3
  7878ee:	cc                                              	int3
  7878ef:	cc                                              	int3
