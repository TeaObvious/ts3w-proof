# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073c4e0 (ScriptCore.AutomationUtils::Automation_TakeSnapShot)
Paired Ghidra pseudocode: 0073C4E0_ScriptCore_AutomationUtils_Automation_TakeSnapShot.c
Window: [0x0073c4e0, 0x0073c5d0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073c5d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073c4e0: 83 ec 40 56 8b 74 24 48 57 33 ff 3b f7 0f 84 d2
0073c4f0: 00 00 00 e8 98 ce 02 00 3b c7 0f 84 c5 00 00 00
0073c500: 8b 10 8b c8 8b 42 58 56 ff d0 66 39 38 b9 54 8e
0073c510: 1c 01 89 4c 24 08 89 4c 24 0c c7 44 24 14 b8 05
0073c520: 00 01 c7 44 24 10 56 8e 1c 01 8b c8 74 0a 8b ff
0073c530: 83 c1 02 66 39 39 75 f8 2b c8 d1 f9 55 8d 0c 48
0073c540: 51 50 8d 4c 24 14 e8 15 c8 cc ff e8 40 3a 2a 00
0073c550: 8b 6c 24 0c 8b f0 3b f7 74 4f 8b 16 8b 42 14 6a
0073c560: 01 55 8b ce ff d0 8b 16 8b 52 34 8d 44 24 1c 50
0073c570: 8b ce c7 44 24 20 01 00 00 00 89 7c 24 24 89 7c
0073c580: 24 28 c6 44 24 2c 01 89 7c 24 30 89 7c 24 34 89
0073c590: 7c 24 38 89 7c 24 3c 89 7c 24 40 89 7c 24 44 89
0073c5a0: 7c 24 48 89 7c 24 4c ff d2 8b 44 24 14 2b c5 83
0073c5b0: e0 fe 83 f8 02 7e 0d 3b ef 74 09 55 e8 1f 7f da
0073c5c0: ff 83 c4 04 5d 5f 5e 83 c4 40 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0073c4e0 <.text+0x33b4e0>:
  73c4e0:	83 ec 40                                        	sub    esp,0x40
  73c4e3:	56                                              	push   esi
  73c4e4:	8b 74 24 48                                     	mov    esi,DWORD PTR [esp+0x48]
  73c4e8:	57                                              	push   edi
  73c4e9:	33 ff                                           	xor    edi,edi
  73c4eb:	3b f7                                           	cmp    esi,edi
  73c4ed:	0f 84 d2 00 00 00                               	je     0x73c5c5
  73c4f3:	e8 98 ce 02 00                                  	call   0x769390
  73c4f8:	3b c7                                           	cmp    eax,edi
  73c4fa:	0f 84 c5 00 00 00                               	je     0x73c5c5
  73c500:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73c502:	8b c8                                           	mov    ecx,eax
  73c504:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  73c507:	56                                              	push   esi
  73c508:	ff d0                                           	call   eax
  73c50a:	66 39 38                                        	cmp    WORD PTR [eax],di
  73c50d:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  73c512:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  73c516:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  73c51a:	c7 44 24 14 b8 05 00 01                         	mov    DWORD PTR [esp+0x14],0x10005b8
  73c522:	c7 44 24 10 56 8e 1c 01                         	mov    DWORD PTR [esp+0x10],0x11c8e56
  73c52a:	8b c8                                           	mov    ecx,eax
  73c52c:	74 0a                                           	je     0x73c538
  73c52e:	8b ff                                           	mov    edi,edi
  73c530:	83 c1 02                                        	add    ecx,0x2
  73c533:	66 39 39                                        	cmp    WORD PTR [ecx],di
  73c536:	75 f8                                           	jne    0x73c530
  73c538:	2b c8                                           	sub    ecx,eax
  73c53a:	d1 f9                                           	sar    ecx,1
  73c53c:	55                                              	push   ebp
  73c53d:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
  73c540:	51                                              	push   ecx
  73c541:	50                                              	push   eax
  73c542:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  73c546:	e8 15 c8 cc ff                                  	call   0x408d60
  73c54b:	e8 40 3a 2a 00                                  	call   0x9dff90
  73c550:	8b 6c 24 0c                                     	mov    ebp,DWORD PTR [esp+0xc]
  73c554:	8b f0                                           	mov    esi,eax
  73c556:	3b f7                                           	cmp    esi,edi
  73c558:	74 4f                                           	je     0x73c5a9
  73c55a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73c55c:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  73c55f:	6a 01                                           	push   0x1
  73c561:	55                                              	push   ebp
  73c562:	8b ce                                           	mov    ecx,esi
  73c564:	ff d0                                           	call   eax
  73c566:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73c568:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
  73c56b:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  73c56f:	50                                              	push   eax
  73c570:	8b ce                                           	mov    ecx,esi
  73c572:	c7 44 24 20 01 00 00 00                         	mov    DWORD PTR [esp+0x20],0x1
  73c57a:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  73c57e:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
  73c582:	c6 44 24 2c 01                                  	mov    BYTE PTR [esp+0x2c],0x1
  73c587:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
  73c58b:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
  73c58f:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
  73c593:	89 7c 24 3c                                     	mov    DWORD PTR [esp+0x3c],edi
  73c597:	89 7c 24 40                                     	mov    DWORD PTR [esp+0x40],edi
  73c59b:	89 7c 24 44                                     	mov    DWORD PTR [esp+0x44],edi
  73c59f:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
  73c5a3:	89 7c 24 4c                                     	mov    DWORD PTR [esp+0x4c],edi
  73c5a7:	ff d2                                           	call   edx
  73c5a9:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  73c5ad:	2b c5                                           	sub    eax,ebp
  73c5af:	83 e0 fe                                        	and    eax,0xfffffffe
  73c5b2:	83 f8 02                                        	cmp    eax,0x2
  73c5b5:	7e 0d                                           	jle    0x73c5c4
  73c5b7:	3b ef                                           	cmp    ebp,edi
  73c5b9:	74 09                                           	je     0x73c5c4
  73c5bb:	55                                              	push   ebp
  73c5bc:	e8 1f 7f da ff                                  	call   0x4e44e0
  73c5c1:	83 c4 04                                        	add    esp,0x4
  73c5c4:	5d                                              	pop    ebp
  73c5c5:	5f                                              	pop    edi
  73c5c6:	5e                                              	pop    esi
  73c5c7:	83 c4 40                                        	add    esp,0x40
  73c5ca:	c3                                              	ret
  73c5cb:	cc                                              	int3
  73c5cc:	cc                                              	int3
  73c5cd:	cc                                              	int3
  73c5ce:	cc                                              	int3
  73c5cf:	cc                                              	int3
