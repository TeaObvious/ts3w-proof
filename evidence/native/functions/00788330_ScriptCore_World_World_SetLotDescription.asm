# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788330 (ScriptCore.World::World_SetLotDescription)
Paired Ghidra pseudocode: 00788330_ScriptCore_World_World_SetLotDescription.c
Window: [0x00788330, 0x00788380) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788380
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788330: 8b 0d c4 db 1e 01 85 c9 56 74 15 8b 44 24 0c 8b
00788340: 54 24 08 6a 00 50 52 e8 c4 a4 4d 00 8b f0 eb 02
00788350: 33 f6 e8 39 10 fe ff 85 f6 74 1a 85 c0 74 16 8b
00788360: 4c 24 10 8b 10 8b 52 58 51 8b c8 ff d2 50 8b ce
00788370: e8 2b 4f 33 00 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788330 <.text+0x387330>:
  788330:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788336:	85 c9                                           	test   ecx,ecx
  788338:	56                                              	push   esi
  788339:	74 15                                           	je     0x788350
  78833b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  78833f:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  788343:	6a 00                                           	push   0x0
  788345:	50                                              	push   eax
  788346:	52                                              	push   edx
  788347:	e8 c4 a4 4d 00                                  	call   0xc62810
  78834c:	8b f0                                           	mov    esi,eax
  78834e:	eb 02                                           	jmp    0x788352
  788350:	33 f6                                           	xor    esi,esi
  788352:	e8 39 10 fe ff                                  	call   0x769390
  788357:	85 f6                                           	test   esi,esi
  788359:	74 1a                                           	je     0x788375
  78835b:	85 c0                                           	test   eax,eax
  78835d:	74 16                                           	je     0x788375
  78835f:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  788363:	8b 10                                           	mov    edx,DWORD PTR [eax]
  788365:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  788368:	51                                              	push   ecx
  788369:	8b c8                                           	mov    ecx,eax
  78836b:	ff d2                                           	call   edx
  78836d:	50                                              	push   eax
  78836e:	8b ce                                           	mov    ecx,esi
  788370:	e8 2b 4f 33 00                                  	call   0xabd2a0
  788375:	5e                                              	pop    esi
  788376:	c3                                              	ret
  788377:	cc                                              	int3
  788378:	cc                                              	int3
  788379:	cc                                              	int3
  78837a:	cc                                              	int3
  78837b:	cc                                              	int3
  78837c:	cc                                              	int3
  78837d:	cc                                              	int3
  78837e:	cc                                              	int3
  78837f:	cc                                              	int3
