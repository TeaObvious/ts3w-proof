# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00864300 (ScriptCore.Audio::Audio_UpdateSoundArrayImpl)
Paired Ghidra pseudocode: 00864300_ScriptCore_Audio_Audio_UpdateSoundArrayImpl.c
Window: [0x00864300, 0x00864420) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x00864420
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00864300: a1 40 9c 1d 01 83 ec 18 53 55 33 ed 3b c5 56 57
00864310: 74 08 8d b0 30 84 fd ff eb 02 33 f6 e8 4f 32 0d
00864320: 00 8b d8 e8 68 50 f0 ff 3b f5 8b f8 0f 84 b4 00
00864330: 00 00 3b dd 0f 84 ac 00 00 00 3b fd 0f 84 a4 00
00864340: 00 00 8b 4c 24 30 8b 07 8b 50 58 51 8b cf ff d2
00864350: 50 8d 4c 24 1c 89 6c 24 1c 89 6c 24 20 89 6c 24
00864360: 24 c7 44 24 28 90 8f 02 01 e8 22 72 ba ff 8b 07
00864370: 8d 4c 24 14 51 8b 4c 24 38 8d 54 24 14 52 8b 50
00864380: 68 51 8b cf 89 6c 24 1c 89 6c 24 20 ff d2 8b 06
00864390: 8b 50 44 68 e6 e8 29 0a 8b ce ff d2 8b 44 24 10
008643a0: 8b 54 24 14 53 56 50 8b 44 24 38 8d 4c 24 24 51
008643b0: 52 50 e8 c9 f9 ff ff 8b 16 83 c4 18 84 c0 8b ce
008643c0: 75 2e 8b 42 6c ff d0 8b 4c 24 20 8b 44 24 18 2b
008643d0: c8 83 e1 fe 83 f9 02 7e 0d 3b c5 74 09 50 e8 fd
008643e0: 00 c8 ff 83 c4 04 5f 5e 5d 32 c0 5b 83 c4 18 c3
008643f0: 8b 42 68 ff d0 8b 4c 24 20 8b 44 24 18 2b c8 83
00864400: e1 fe 83 f9 02 7e 0d 3b c5 74 09 50 e8 cf 00 c8
00864410: ff 83 c4 04 5f 5e 5d b0 01 5b 83 c4 18 c3 cc cc

LINEAR DISASSEMBLY
00864300 <.text+0x463300>:
  864300:	a1 40 9c 1d 01                                  	mov    eax,ds:0x11d9c40
  864305:	83 ec 18                                        	sub    esp,0x18
  864308:	53                                              	push   ebx
  864309:	55                                              	push   ebp
  86430a:	33 ed                                           	xor    ebp,ebp
  86430c:	3b c5                                           	cmp    eax,ebp
  86430e:	56                                              	push   esi
  86430f:	57                                              	push   edi
  864310:	74 08                                           	je     0x86431a
  864312:	8d b0 30 84 fd ff                               	lea    esi,[eax-0x27bd0]
  864318:	eb 02                                           	jmp    0x86431c
  86431a:	33 f6                                           	xor    esi,esi
  86431c:	e8 4f 32 0d 00                                  	call   0x937570
  864321:	8b d8                                           	mov    ebx,eax
  864323:	e8 68 50 f0 ff                                  	call   0x769390
  864328:	3b f5                                           	cmp    esi,ebp
  86432a:	8b f8                                           	mov    edi,eax
  86432c:	0f 84 b4 00 00 00                               	je     0x8643e6
  864332:	3b dd                                           	cmp    ebx,ebp
  864334:	0f 84 ac 00 00 00                               	je     0x8643e6
  86433a:	3b fd                                           	cmp    edi,ebp
  86433c:	0f 84 a4 00 00 00                               	je     0x8643e6
  864342:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  864346:	8b 07                                           	mov    eax,DWORD PTR [edi]
  864348:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  86434b:	51                                              	push   ecx
  86434c:	8b cf                                           	mov    ecx,edi
  86434e:	ff d2                                           	call   edx
  864350:	50                                              	push   eax
  864351:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  864355:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
  864359:	89 6c 24 20                                     	mov    DWORD PTR [esp+0x20],ebp
  86435d:	89 6c 24 24                                     	mov    DWORD PTR [esp+0x24],ebp
  864361:	c7 44 24 28 90 8f 02 01                         	mov    DWORD PTR [esp+0x28],0x1028f90
  864369:	e8 22 72 ba ff                                  	call   0x40b590
  86436e:	8b 07                                           	mov    eax,DWORD PTR [edi]
  864370:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  864374:	51                                              	push   ecx
  864375:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  864379:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  86437d:	52                                              	push   edx
  86437e:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  864381:	51                                              	push   ecx
  864382:	8b cf                                           	mov    ecx,edi
  864384:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
  864388:	89 6c 24 20                                     	mov    DWORD PTR [esp+0x20],ebp
  86438c:	ff d2                                           	call   edx
  86438e:	8b 06                                           	mov    eax,DWORD PTR [esi]
  864390:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  864393:	68 e6 e8 29 0a                                  	push   0xa29e8e6
  864398:	8b ce                                           	mov    ecx,esi
  86439a:	ff d2                                           	call   edx
  86439c:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  8643a0:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  8643a4:	53                                              	push   ebx
  8643a5:	56                                              	push   esi
  8643a6:	50                                              	push   eax
  8643a7:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  8643ab:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  8643af:	51                                              	push   ecx
  8643b0:	52                                              	push   edx
  8643b1:	50                                              	push   eax
  8643b2:	e8 c9 f9 ff ff                                  	call   0x863d80
  8643b7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8643b9:	83 c4 18                                        	add    esp,0x18
  8643bc:	84 c0                                           	test   al,al
  8643be:	8b ce                                           	mov    ecx,esi
  8643c0:	75 2e                                           	jne    0x8643f0
  8643c2:	8b 42 6c                                        	mov    eax,DWORD PTR [edx+0x6c]
  8643c5:	ff d0                                           	call   eax
  8643c7:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  8643cb:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  8643cf:	2b c8                                           	sub    ecx,eax
  8643d1:	83 e1 fe                                        	and    ecx,0xfffffffe
  8643d4:	83 f9 02                                        	cmp    ecx,0x2
  8643d7:	7e 0d                                           	jle    0x8643e6
  8643d9:	3b c5                                           	cmp    eax,ebp
  8643db:	74 09                                           	je     0x8643e6
  8643dd:	50                                              	push   eax
  8643de:	e8 fd 00 c8 ff                                  	call   0x4e44e0
  8643e3:	83 c4 04                                        	add    esp,0x4
  8643e6:	5f                                              	pop    edi
  8643e7:	5e                                              	pop    esi
  8643e8:	5d                                              	pop    ebp
  8643e9:	32 c0                                           	xor    al,al
  8643eb:	5b                                              	pop    ebx
  8643ec:	83 c4 18                                        	add    esp,0x18
  8643ef:	c3                                              	ret
  8643f0:	8b 42 68                                        	mov    eax,DWORD PTR [edx+0x68]
  8643f3:	ff d0                                           	call   eax
  8643f5:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  8643f9:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  8643fd:	2b c8                                           	sub    ecx,eax
  8643ff:	83 e1 fe                                        	and    ecx,0xfffffffe
  864402:	83 f9 02                                        	cmp    ecx,0x2
  864405:	7e 0d                                           	jle    0x864414
  864407:	3b c5                                           	cmp    eax,ebp
  864409:	74 09                                           	je     0x864414
  86440b:	50                                              	push   eax
  86440c:	e8 cf 00 c8 ff                                  	call   0x4e44e0
  864411:	83 c4 04                                        	add    esp,0x4
  864414:	5f                                              	pop    edi
  864415:	5e                                              	pop    esi
  864416:	5d                                              	pop    ebp
  864417:	b0 01                                           	mov    al,0x1
  864419:	5b                                              	pop    ebx
  86441a:	83 c4 18                                        	add    esp,0x18
  86441d:	c3                                              	ret
  86441e:	cc                                              	int3
  86441f:	cc                                              	int3
