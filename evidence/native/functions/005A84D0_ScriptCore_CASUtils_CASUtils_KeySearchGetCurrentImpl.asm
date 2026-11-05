# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a84d0 (ScriptCore.CASUtils::CASUtils_KeySearchGetCurrentImpl)
Paired Ghidra pseudocode: 005A84D0_ScriptCore_CASUtils_CASUtils_KeySearchGetCurrentImpl.c
Window: [0x005a84d0, 0x005a8550) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8550
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a84d0: 56 8b 74 24 0c 8b c6 25 00 00 00 ff 3d 00 00 00
005a84e0: 35 75 16 e8 a8 0e 1c 00 8b 10 8b c8 8b 82 cc 00
005a84f0: 00 00 56 ff d0 85 c0 75 13 8b 44 24 08 33 c9 89
005a8500: 08 89 48 04 89 48 08 89 48 0c 5e c3 33 c9 39 48
005a8510: 14 57 8b d1 8b f1 8b f9 74 18 53 8b 58 10 3b 58
005a8520: 04 5b 74 0e 8b 40 10 8b 50 0c 8b 30 8b 78 04 8b
005a8530: 48 08 8b 44 24 0c 89 08 89 50 04 89 70 08 89 78
005a8540: 0c 5f 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a84d0 <.text+0x1a74d0>:
  5a84d0:	56                                              	push   esi
  5a84d1:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  5a84d5:	8b c6                                           	mov    eax,esi
  5a84d7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a84dc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a84e1:	75 16                                           	jne    0x5a84f9
  5a84e3:	e8 a8 0e 1c 00                                  	call   0x769390
  5a84e8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a84ea:	8b c8                                           	mov    ecx,eax
  5a84ec:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a84f2:	56                                              	push   esi
  5a84f3:	ff d0                                           	call   eax
  5a84f5:	85 c0                                           	test   eax,eax
  5a84f7:	75 13                                           	jne    0x5a850c
  5a84f9:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5a84fd:	33 c9                                           	xor    ecx,ecx
  5a84ff:	89 08                                           	mov    DWORD PTR [eax],ecx
  5a8501:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  5a8504:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  5a8507:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  5a850a:	5e                                              	pop    esi
  5a850b:	c3                                              	ret
  5a850c:	33 c9                                           	xor    ecx,ecx
  5a850e:	39 48 14                                        	cmp    DWORD PTR [eax+0x14],ecx
  5a8511:	57                                              	push   edi
  5a8512:	8b d1                                           	mov    edx,ecx
  5a8514:	8b f1                                           	mov    esi,ecx
  5a8516:	8b f9                                           	mov    edi,ecx
  5a8518:	74 18                                           	je     0x5a8532
  5a851a:	53                                              	push   ebx
  5a851b:	8b 58 10                                        	mov    ebx,DWORD PTR [eax+0x10]
  5a851e:	3b 58 04                                        	cmp    ebx,DWORD PTR [eax+0x4]
  5a8521:	5b                                              	pop    ebx
  5a8522:	74 0e                                           	je     0x5a8532
  5a8524:	8b 40 10                                        	mov    eax,DWORD PTR [eax+0x10]
  5a8527:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  5a852a:	8b 30                                           	mov    esi,DWORD PTR [eax]
  5a852c:	8b 78 04                                        	mov    edi,DWORD PTR [eax+0x4]
  5a852f:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  5a8532:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  5a8536:	89 08                                           	mov    DWORD PTR [eax],ecx
  5a8538:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  5a853b:	89 70 08                                        	mov    DWORD PTR [eax+0x8],esi
  5a853e:	89 78 0c                                        	mov    DWORD PTR [eax+0xc],edi
  5a8541:	5f                                              	pop    edi
  5a8542:	5e                                              	pop    esi
  5a8543:	c3                                              	ret
  5a8544:	cc                                              	int3
  5a8545:	cc                                              	int3
  5a8546:	cc                                              	int3
  5a8547:	cc                                              	int3
  5a8548:	cc                                              	int3
  5a8549:	cc                                              	int3
  5a854a:	cc                                              	int3
  5a854b:	cc                                              	int3
  5a854c:	cc                                              	int3
  5a854d:	cc                                              	int3
  5a854e:	cc                                              	int3
  5a854f:	cc                                              	int3
