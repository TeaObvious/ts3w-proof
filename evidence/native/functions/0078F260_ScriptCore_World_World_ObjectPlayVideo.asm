# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078f260 (ScriptCore.World::World_ObjectPlayVideo)
Paired Ghidra pseudocode: 0078F260_ScriptCore_World_World_ObjectPlayVideo.c
Window: [0x0078f260, 0x0078f360) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078f360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078f260: 83 ec 20 53 55 56 57 e8 04 83 1a 00 33 ed 3b c5
0078f270: 0f 84 de 00 00 00 8b 7c 24 38 8b 5c 24 34 57 53
0078f280: 8b c8 e8 f9 8c 1a 00 85 c0 0f 84 c5 00 00 00 e8
0078f290: fc a0 fd ff 8b 4c 24 3c 3b cd 74 0e 8b 10 51 8b
0078f2a0: c8 8b 42 58 ff d0 8b f0 eb 02 33 f6 e8 cf 0b d2
0078f2b0: ff 55 68 f6 1a cc b1 89 6c 24 18 89 6c 24 1c 89
0078f2c0: 6c 24 20 89 6c 24 24 8b 10 8b 92 80 00 00 00 56
0078f2d0: 8d 4c 24 1c 51 8b c8 ff d2 8b 44 24 44 3b c5 75
0078f2e0: 2c 8d 44 24 10 50 8d 4c 24 24 51 e8 20 90 04 00
0078f2f0: 8b 10 89 54 24 18 8b 48 04 89 4c 24 1c 8b 50 08
0078f300: 89 54 24 20 8b 40 0c 89 44 24 24 eb 0b 8d 4c 24
0078f310: 1c 51 50 e8 48 85 04 00 8b 54 24 48 8b 4c 24 18
0078f320: 83 c4 08 55 55 52 8b 54 24 20 83 ec 10 8b c4 89
0078f330: 08 8b 4c 24 34 89 50 04 8b 54 24 38 57 89 48 08
0078f340: 53 89 50 0c e8 d7 f9 ff ff 83 c4 24 5f 5e 5d 5b
0078f350: 83 c4 20 c3 5f 5e 5d 33 c0 5b 83 c4 20 c3 cc cc

LINEAR DISASSEMBLY
0078f260 <.text+0x38e260>:
  78f260:	83 ec 20                                        	sub    esp,0x20
  78f263:	53                                              	push   ebx
  78f264:	55                                              	push   ebp
  78f265:	56                                              	push   esi
  78f266:	57                                              	push   edi
  78f267:	e8 04 83 1a 00                                  	call   0x937570
  78f26c:	33 ed                                           	xor    ebp,ebp
  78f26e:	3b c5                                           	cmp    eax,ebp
  78f270:	0f 84 de 00 00 00                               	je     0x78f354
  78f276:	8b 7c 24 38                                     	mov    edi,DWORD PTR [esp+0x38]
  78f27a:	8b 5c 24 34                                     	mov    ebx,DWORD PTR [esp+0x34]
  78f27e:	57                                              	push   edi
  78f27f:	53                                              	push   ebx
  78f280:	8b c8                                           	mov    ecx,eax
  78f282:	e8 f9 8c 1a 00                                  	call   0x937f80
  78f287:	85 c0                                           	test   eax,eax
  78f289:	0f 84 c5 00 00 00                               	je     0x78f354
  78f28f:	e8 fc a0 fd ff                                  	call   0x769390
  78f294:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  78f298:	3b cd                                           	cmp    ecx,ebp
  78f29a:	74 0e                                           	je     0x78f2aa
  78f29c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78f29e:	51                                              	push   ecx
  78f29f:	8b c8                                           	mov    ecx,eax
  78f2a1:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  78f2a4:	ff d0                                           	call   eax
  78f2a6:	8b f0                                           	mov    esi,eax
  78f2a8:	eb 02                                           	jmp    0x78f2ac
  78f2aa:	33 f6                                           	xor    esi,esi
  78f2ac:	e8 cf 0b d2 ff                                  	call   0x4afe80
  78f2b1:	55                                              	push   ebp
  78f2b2:	68 f6 1a cc b1                                  	push   0xb1cc1af6
  78f2b7:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
  78f2bb:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
  78f2bf:	89 6c 24 20                                     	mov    DWORD PTR [esp+0x20],ebp
  78f2c3:	89 6c 24 24                                     	mov    DWORD PTR [esp+0x24],ebp
  78f2c7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78f2c9:	8b 92 80 00 00 00                               	mov    edx,DWORD PTR [edx+0x80]
  78f2cf:	56                                              	push   esi
  78f2d0:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  78f2d4:	51                                              	push   ecx
  78f2d5:	8b c8                                           	mov    ecx,eax
  78f2d7:	ff d2                                           	call   edx
  78f2d9:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  78f2dd:	3b c5                                           	cmp    eax,ebp
  78f2df:	75 2c                                           	jne    0x78f30d
  78f2e1:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  78f2e5:	50                                              	push   eax
  78f2e6:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  78f2ea:	51                                              	push   ecx
  78f2eb:	e8 20 90 04 00                                  	call   0x7d8310
  78f2f0:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78f2f2:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  78f2f6:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  78f2f9:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  78f2fd:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  78f300:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  78f304:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  78f307:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  78f30b:	eb 0b                                           	jmp    0x78f318
  78f30d:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  78f311:	51                                              	push   ecx
  78f312:	50                                              	push   eax
  78f313:	e8 48 85 04 00                                  	call   0x7d7860
  78f318:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
  78f31c:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  78f320:	83 c4 08                                        	add    esp,0x8
  78f323:	55                                              	push   ebp
  78f324:	55                                              	push   ebp
  78f325:	52                                              	push   edx
  78f326:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  78f32a:	83 ec 10                                        	sub    esp,0x10
  78f32d:	8b c4                                           	mov    eax,esp
  78f32f:	89 08                                           	mov    DWORD PTR [eax],ecx
  78f331:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  78f335:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  78f338:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  78f33c:	57                                              	push   edi
  78f33d:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  78f340:	53                                              	push   ebx
  78f341:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  78f344:	e8 d7 f9 ff ff                                  	call   0x78ed20
  78f349:	83 c4 24                                        	add    esp,0x24
  78f34c:	5f                                              	pop    edi
  78f34d:	5e                                              	pop    esi
  78f34e:	5d                                              	pop    ebp
  78f34f:	5b                                              	pop    ebx
  78f350:	83 c4 20                                        	add    esp,0x20
  78f353:	c3                                              	ret
  78f354:	5f                                              	pop    edi
  78f355:	5e                                              	pop    esi
  78f356:	5d                                              	pop    ebp
  78f357:	33 c0                                           	xor    eax,eax
  78f359:	5b                                              	pop    ebx
  78f35a:	83 c4 20                                        	add    esp,0x20
  78f35d:	c3                                              	ret
  78f35e:	cc                                              	int3
  78f35f:	cc                                              	int3
