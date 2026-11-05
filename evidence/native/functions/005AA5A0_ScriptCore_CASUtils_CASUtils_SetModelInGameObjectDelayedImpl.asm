# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005aa5a0 (ScriptCore.CASUtils::CASUtils_SetModelInGameObjectDelayedImpl)
Paired Ghidra pseudocode: 005AA5A0_ScriptCore_CASUtils_CASUtils_SetModelInGameObjectDelayedImpl.c
Window: [0x005aa5a0, 0x005aa6d0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x005aa6d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005aa5a0: 55 8b ec 83 e4 f0 83 ec 54 53 56 8b 75 08 85 f6
005aa5b0: 57 0f 84 01 01 00 00 e8 d4 ed 1b 00 8b 10 8b c8
005aa5c0: 8b 82 cc 00 00 00 56 ff d0 8b 7d 0c 8b 5d 10 8b
005aa5d0: f0 33 c0 3b f0 c7 44 24 10 75 e3 bb 85 89 7c 24
005aa5e0: 18 89 5c 24 1c c7 44 24 14 6c 68 15 01 89 44 24
005aa5f0: 20 89 44 24 24 89 44 24 28 74 23 8b 16 8b 02 8b
005aa600: ce ff d0 8b 4c 24 24 85 c9 89 74 24 20 74 0f c7
005aa610: 44 24 24 00 00 00 00 8b 11 8b 42 04 ff d0 6a 00
005aa620: 6a 00 6a 00 6a 00 68 b8 f8 fd 00 6a 18 e8 ce 9e
005aa630: f3 ff 83 c4 18 85 c0 0f 84 82 00 00 00 c7 00 74
005aa640: f8 fd 00 33 c9 8d 50 04 87 0a 8b 4d 14 89 48 08
005aa650: c7 00 a0 f8 fd 00 89 78 10 89 58 14 8b 10 8b f0
005aa660: 8b c8 8b 02 ff d0 8b 7c 24 28 3b f7 74 1d 85 f6
005aa670: 74 08 8b 16 8b 02 8b ce ff d0 85 ff 89 74 24 28
005aa680: 74 09 8b 17 8b 42 04 8b cf ff d0 8d 4c 24 10 51
005aa690: e8 eb 8c 0e 00 83 c4 04 85 f6 74 09 8b 16 8b 42
005aa6a0: 04 8b ce ff d0 8b 4c 24 14 85 c9 74 0b 8b 11 8b
005aa6b0: 12 8d 44 24 20 50 ff d2 5f 5e 5b 8b e5 5d c3 33
005aa6c0: f6 eb a3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005aa5a0 <.text+0x1a95a0>:
  5aa5a0:	55                                              	push   ebp
  5aa5a1:	8b ec                                           	mov    ebp,esp
  5aa5a3:	83 e4 f0                                        	and    esp,0xfffffff0
  5aa5a6:	83 ec 54                                        	sub    esp,0x54
  5aa5a9:	53                                              	push   ebx
  5aa5aa:	56                                              	push   esi
  5aa5ab:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  5aa5ae:	85 f6                                           	test   esi,esi
  5aa5b0:	57                                              	push   edi
  5aa5b1:	0f 84 01 01 00 00                               	je     0x5aa6b8
  5aa5b7:	e8 d4 ed 1b 00                                  	call   0x769390
  5aa5bc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5aa5be:	8b c8                                           	mov    ecx,eax
  5aa5c0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5aa5c6:	56                                              	push   esi
  5aa5c7:	ff d0                                           	call   eax
  5aa5c9:	8b 7d 0c                                        	mov    edi,DWORD PTR [ebp+0xc]
  5aa5cc:	8b 5d 10                                        	mov    ebx,DWORD PTR [ebp+0x10]
  5aa5cf:	8b f0                                           	mov    esi,eax
  5aa5d1:	33 c0                                           	xor    eax,eax
  5aa5d3:	3b f0                                           	cmp    esi,eax
  5aa5d5:	c7 44 24 10 75 e3 bb 85                         	mov    DWORD PTR [esp+0x10],0x85bbe375
  5aa5dd:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  5aa5e1:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  5aa5e5:	c7 44 24 14 6c 68 15 01                         	mov    DWORD PTR [esp+0x14],0x115686c
  5aa5ed:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  5aa5f1:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  5aa5f5:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  5aa5f9:	74 23                                           	je     0x5aa61e
  5aa5fb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5aa5fd:	8b 02                                           	mov    eax,DWORD PTR [edx]
  5aa5ff:	8b ce                                           	mov    ecx,esi
  5aa601:	ff d0                                           	call   eax
  5aa603:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5aa607:	85 c9                                           	test   ecx,ecx
  5aa609:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  5aa60d:	74 0f                                           	je     0x5aa61e
  5aa60f:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
  5aa617:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  5aa619:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5aa61c:	ff d0                                           	call   eax
  5aa61e:	6a 00                                           	push   0x0
  5aa620:	6a 00                                           	push   0x0
  5aa622:	6a 00                                           	push   0x0
  5aa624:	6a 00                                           	push   0x0
  5aa626:	68 b8 f8 fd 00                                  	push   0xfdf8b8
  5aa62b:	6a 18                                           	push   0x18
  5aa62d:	e8 ce 9e f3 ff                                  	call   0x4e4500
  5aa632:	83 c4 18                                        	add    esp,0x18
  5aa635:	85 c0                                           	test   eax,eax
  5aa637:	0f 84 82 00 00 00                               	je     0x5aa6bf
  5aa63d:	c7 00 74 f8 fd 00                               	mov    DWORD PTR [eax],0xfdf874
  5aa643:	33 c9                                           	xor    ecx,ecx
  5aa645:	8d 50 04                                        	lea    edx,[eax+0x4]
  5aa648:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  5aa64a:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  5aa64d:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  5aa650:	c7 00 a0 f8 fd 00                               	mov    DWORD PTR [eax],0xfdf8a0
  5aa656:	89 78 10                                        	mov    DWORD PTR [eax+0x10],edi
  5aa659:	89 58 14                                        	mov    DWORD PTR [eax+0x14],ebx
  5aa65c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5aa65e:	8b f0                                           	mov    esi,eax
  5aa660:	8b c8                                           	mov    ecx,eax
  5aa662:	8b 02                                           	mov    eax,DWORD PTR [edx]
  5aa664:	ff d0                                           	call   eax
  5aa666:	8b 7c 24 28                                     	mov    edi,DWORD PTR [esp+0x28]
  5aa66a:	3b f7                                           	cmp    esi,edi
  5aa66c:	74 1d                                           	je     0x5aa68b
  5aa66e:	85 f6                                           	test   esi,esi
  5aa670:	74 08                                           	je     0x5aa67a
  5aa672:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5aa674:	8b 02                                           	mov    eax,DWORD PTR [edx]
  5aa676:	8b ce                                           	mov    ecx,esi
  5aa678:	ff d0                                           	call   eax
  5aa67a:	85 ff                                           	test   edi,edi
  5aa67c:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  5aa680:	74 09                                           	je     0x5aa68b
  5aa682:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5aa684:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5aa687:	8b cf                                           	mov    ecx,edi
  5aa689:	ff d0                                           	call   eax
  5aa68b:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5aa68f:	51                                              	push   ecx
  5aa690:	e8 eb 8c 0e 00                                  	call   0x693380
  5aa695:	83 c4 04                                        	add    esp,0x4
  5aa698:	85 f6                                           	test   esi,esi
  5aa69a:	74 09                                           	je     0x5aa6a5
  5aa69c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5aa69e:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5aa6a1:	8b ce                                           	mov    ecx,esi
  5aa6a3:	ff d0                                           	call   eax
  5aa6a5:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5aa6a9:	85 c9                                           	test   ecx,ecx
  5aa6ab:	74 0b                                           	je     0x5aa6b8
  5aa6ad:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  5aa6af:	8b 12                                           	mov    edx,DWORD PTR [edx]
  5aa6b1:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  5aa6b5:	50                                              	push   eax
  5aa6b6:	ff d2                                           	call   edx
  5aa6b8:	5f                                              	pop    edi
  5aa6b9:	5e                                              	pop    esi
  5aa6ba:	5b                                              	pop    ebx
  5aa6bb:	8b e5                                           	mov    esp,ebp
  5aa6bd:	5d                                              	pop    ebp
  5aa6be:	c3                                              	ret
  5aa6bf:	33 f6                                           	xor    esi,esi
  5aa6c1:	eb a3                                           	jmp    0x5aa666
  5aa6c3:	cc                                              	int3
  5aa6c4:	cc                                              	int3
  5aa6c5:	cc                                              	int3
  5aa6c6:	cc                                              	int3
  5aa6c7:	cc                                              	int3
  5aa6c8:	cc                                              	int3
  5aa6c9:	cc                                              	int3
  5aa6ca:	cc                                              	int3
  5aa6cb:	cc                                              	int3
  5aa6cc:	cc                                              	int3
  5aa6cd:	cc                                              	int3
  5aa6ce:	cc                                              	int3
  5aa6cf:	cc                                              	int3
