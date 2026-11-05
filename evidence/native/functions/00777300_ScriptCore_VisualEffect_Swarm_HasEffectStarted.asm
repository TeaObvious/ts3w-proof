# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777300 (ScriptCore.VisualEffect::Swarm_HasEffectStarted)
Paired Ghidra pseudocode: 00777300_ScriptCore_VisualEffect_Swarm_HasEffectStarted.c
Window: [0x00777300, 0x007773a0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x007773a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777300: 51 56 57 e8 68 02 1c 00 85 c0 0f 84 82 00 00 00
00777310: 8b 4c 24 14 8b 54 24 10 51 52 8b c8 e8 5f 0c 1c
00777320: 00 8b f0 85 f6 74 6b 8d 7e 04 8b c7 b9 01 00 00
00777330: 00 f0 0f c1 08 8b 15 90 9e 1e 01 52 8b ce e8 1d
00777340: cf 1b 00 85 c0 74 2e 53 8b c8 e8 d1 c3 1c 00 8a
00777350: d8 8b c7 83 c9 ff f0 0f c1 08 49 75 11 ba 01 00
00777360: 00 00 87 17 8b 06 8b 10 6a 01 8b ce ff d2 8a c3
00777370: 5b 5f 5e 59 c3 8b c7 83 c9 ff f0 0f c1 08 49 75
00777380: 11 ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b ce
00777390: ff d2 5f 32 c0 5e 59 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00777300 <.text+0x376300>:
  777300:	51                                              	push   ecx
  777301:	56                                              	push   esi
  777302:	57                                              	push   edi
  777303:	e8 68 02 1c 00                                  	call   0x937570
  777308:	85 c0                                           	test   eax,eax
  77730a:	0f 84 82 00 00 00                               	je     0x777392
  777310:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  777314:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  777318:	51                                              	push   ecx
  777319:	52                                              	push   edx
  77731a:	8b c8                                           	mov    ecx,eax
  77731c:	e8 5f 0c 1c 00                                  	call   0x937f80
  777321:	8b f0                                           	mov    esi,eax
  777323:	85 f6                                           	test   esi,esi
  777325:	74 6b                                           	je     0x777392
  777327:	8d 7e 04                                        	lea    edi,[esi+0x4]
  77732a:	8b c7                                           	mov    eax,edi
  77732c:	b9 01 00 00 00                                  	mov    ecx,0x1
  777331:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  777335:	8b 15 90 9e 1e 01                               	mov    edx,DWORD PTR ds:0x11e9e90
  77733b:	52                                              	push   edx
  77733c:	8b ce                                           	mov    ecx,esi
  77733e:	e8 1d cf 1b 00                                  	call   0x934260
  777343:	85 c0                                           	test   eax,eax
  777345:	74 2e                                           	je     0x777375
  777347:	53                                              	push   ebx
  777348:	8b c8                                           	mov    ecx,eax
  77734a:	e8 d1 c3 1c 00                                  	call   0x943720
  77734f:	8a d8                                           	mov    bl,al
  777351:	8b c7                                           	mov    eax,edi
  777353:	83 c9 ff                                        	or     ecx,0xffffffff
  777356:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  77735a:	49                                              	dec    ecx
  77735b:	75 11                                           	jne    0x77736e
  77735d:	ba 01 00 00 00                                  	mov    edx,0x1
  777362:	87 17                                           	xchg   DWORD PTR [edi],edx
  777364:	8b 06                                           	mov    eax,DWORD PTR [esi]
  777366:	8b 10                                           	mov    edx,DWORD PTR [eax]
  777368:	6a 01                                           	push   0x1
  77736a:	8b ce                                           	mov    ecx,esi
  77736c:	ff d2                                           	call   edx
  77736e:	8a c3                                           	mov    al,bl
  777370:	5b                                              	pop    ebx
  777371:	5f                                              	pop    edi
  777372:	5e                                              	pop    esi
  777373:	59                                              	pop    ecx
  777374:	c3                                              	ret
  777375:	8b c7                                           	mov    eax,edi
  777377:	83 c9 ff                                        	or     ecx,0xffffffff
  77737a:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  77737e:	49                                              	dec    ecx
  77737f:	75 11                                           	jne    0x777392
  777381:	ba 01 00 00 00                                  	mov    edx,0x1
  777386:	87 17                                           	xchg   DWORD PTR [edi],edx
  777388:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77738a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77738c:	6a 01                                           	push   0x1
  77738e:	8b ce                                           	mov    ecx,esi
  777390:	ff d2                                           	call   edx
  777392:	5f                                              	pop    edi
  777393:	32 c0                                           	xor    al,al
  777395:	5e                                              	pop    esi
  777396:	59                                              	pop    ecx
  777397:	c3                                              	ret
  777398:	cc                                              	int3
  777399:	cc                                              	int3
  77739a:	cc                                              	int3
  77739b:	cc                                              	int3
  77739c:	cc                                              	int3
  77739d:	cc                                              	int3
  77739e:	cc                                              	int3
  77739f:	cc                                              	int3
