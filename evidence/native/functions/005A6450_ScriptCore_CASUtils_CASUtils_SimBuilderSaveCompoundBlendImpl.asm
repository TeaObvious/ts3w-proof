# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6450 (ScriptCore.CASUtils::CASUtils_SimBuilderSaveCompoundBlendImpl)
Paired Ghidra pseudocode: 005A6450_ScriptCore_CASUtils_CASUtils_SimBuilderSaveCompoundBlendImpl.c
Window: [0x005a6450, 0x005a64f0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a64f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6450: 83 ec 10 56 57 e8 36 2f 1c 00 8b 74 24 1c 8b f8
005a6460: 33 c0 85 ff 89 06 89 46 04 89 46 08 89 46 0c 74
005a6470: 6c 8b 4c 24 28 8b 07 8b 50 58 53 51 8b cf ff d2
005a6480: 8b d8 8b 44 24 24 8b c8 81 e1 00 00 00 ff 81 f9
005a6490: 00 00 00 35 75 3e 8b 17 50 8b 82 cc 00 00 00 8b
005a64a0: cf ff d0 85 c0 74 2d 8b 4c 24 28 53 51 8d 54 24
005a64b0: 14 52 8b c8 e8 87 a1 03 00 8b 44 24 14 8b 4c 24
005a64c0: 18 8b 54 24 0c 89 06 8b 44 24 10 89 4e 04 89 56
005a64d0: 08 89 46 0c 5b 5f 8b c6 5e 83 c4 10 c3 5f 8b c6
005a64e0: 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6450 <.text+0x1a5450>:
  5a6450:	83 ec 10                                        	sub    esp,0x10
  5a6453:	56                                              	push   esi
  5a6454:	57                                              	push   edi
  5a6455:	e8 36 2f 1c 00                                  	call   0x769390
  5a645a:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  5a645e:	8b f8                                           	mov    edi,eax
  5a6460:	33 c0                                           	xor    eax,eax
  5a6462:	85 ff                                           	test   edi,edi
  5a6464:	89 06                                           	mov    DWORD PTR [esi],eax
  5a6466:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  5a6469:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a646c:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  5a646f:	74 6c                                           	je     0x5a64dd
  5a6471:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  5a6475:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5a6477:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5a647a:	53                                              	push   ebx
  5a647b:	51                                              	push   ecx
  5a647c:	8b cf                                           	mov    ecx,edi
  5a647e:	ff d2                                           	call   edx
  5a6480:	8b d8                                           	mov    ebx,eax
  5a6482:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  5a6486:	8b c8                                           	mov    ecx,eax
  5a6488:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  5a648e:	81 f9 00 00 00 35                               	cmp    ecx,0x35000000
  5a6494:	75 3e                                           	jne    0x5a64d4
  5a6496:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5a6498:	50                                              	push   eax
  5a6499:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a649f:	8b cf                                           	mov    ecx,edi
  5a64a1:	ff d0                                           	call   eax
  5a64a3:	85 c0                                           	test   eax,eax
  5a64a5:	74 2d                                           	je     0x5a64d4
  5a64a7:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  5a64ab:	53                                              	push   ebx
  5a64ac:	51                                              	push   ecx
  5a64ad:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  5a64b1:	52                                              	push   edx
  5a64b2:	8b c8                                           	mov    ecx,eax
  5a64b4:	e8 87 a1 03 00                                  	call   0x5e0640
  5a64b9:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  5a64bd:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5a64c1:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  5a64c5:	89 06                                           	mov    DWORD PTR [esi],eax
  5a64c7:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  5a64cb:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  5a64ce:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  5a64d1:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  5a64d4:	5b                                              	pop    ebx
  5a64d5:	5f                                              	pop    edi
  5a64d6:	8b c6                                           	mov    eax,esi
  5a64d8:	5e                                              	pop    esi
  5a64d9:	83 c4 10                                        	add    esp,0x10
  5a64dc:	c3                                              	ret
  5a64dd:	5f                                              	pop    edi
  5a64de:	8b c6                                           	mov    eax,esi
  5a64e0:	5e                                              	pop    esi
  5a64e1:	83 c4 10                                        	add    esp,0x10
  5a64e4:	c3                                              	ret
  5a64e5:	cc                                              	int3
  5a64e6:	cc                                              	int3
  5a64e7:	cc                                              	int3
  5a64e8:	cc                                              	int3
  5a64e9:	cc                                              	int3
  5a64ea:	cc                                              	int3
  5a64eb:	cc                                              	int3
  5a64ec:	cc                                              	int3
  5a64ed:	cc                                              	int3
  5a64ee:	cc                                              	int3
  5a64ef:	cc                                              	int3
