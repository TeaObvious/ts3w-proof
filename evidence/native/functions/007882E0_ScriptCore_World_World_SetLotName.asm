# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007882e0 (ScriptCore.World::World_SetLotName)
Paired Ghidra pseudocode: 007882E0_ScriptCore_World_World_SetLotName.c
Window: [0x007882e0, 0x00788330) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788330
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007882e0: 8b 0d c4 db 1e 01 85 c9 56 74 15 8b 44 24 0c 8b
007882f0: 54 24 08 6a 00 50 52 e8 14 a5 4d 00 8b f0 eb 02
00788300: 33 f6 e8 89 10 fe ff 85 f6 74 1a 85 c0 74 16 8b
00788310: 4c 24 10 8b 10 8b 52 58 51 8b c8 ff d2 50 8b ce
00788320: e8 9b 4d 33 00 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007882e0 <.text+0x3872e0>:
  7882e0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7882e6:	85 c9                                           	test   ecx,ecx
  7882e8:	56                                              	push   esi
  7882e9:	74 15                                           	je     0x788300
  7882eb:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7882ef:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  7882f3:	6a 00                                           	push   0x0
  7882f5:	50                                              	push   eax
  7882f6:	52                                              	push   edx
  7882f7:	e8 14 a5 4d 00                                  	call   0xc62810
  7882fc:	8b f0                                           	mov    esi,eax
  7882fe:	eb 02                                           	jmp    0x788302
  788300:	33 f6                                           	xor    esi,esi
  788302:	e8 89 10 fe ff                                  	call   0x769390
  788307:	85 f6                                           	test   esi,esi
  788309:	74 1a                                           	je     0x788325
  78830b:	85 c0                                           	test   eax,eax
  78830d:	74 16                                           	je     0x788325
  78830f:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  788313:	8b 10                                           	mov    edx,DWORD PTR [eax]
  788315:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  788318:	51                                              	push   ecx
  788319:	8b c8                                           	mov    ecx,eax
  78831b:	ff d2                                           	call   edx
  78831d:	50                                              	push   eax
  78831e:	8b ce                                           	mov    ecx,esi
  788320:	e8 9b 4d 33 00                                  	call   0xabd0c0
  788325:	5e                                              	pop    esi
  788326:	c3                                              	ret
  788327:	cc                                              	int3
  788328:	cc                                              	int3
  788329:	cc                                              	int3
  78832a:	cc                                              	int3
  78832b:	cc                                              	int3
  78832c:	cc                                              	int3
  78832d:	cc                                              	int3
  78832e:	cc                                              	int3
  78832f:	cc                                              	int3
