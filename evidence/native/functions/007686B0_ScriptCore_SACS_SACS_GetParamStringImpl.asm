# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007686b0 (ScriptCore.SACS::SACS_GetParamStringImpl)
Paired Ghidra pseudocode: 007686B0_ScriptCore_SACS_SACS_GetParamStringImpl.c
Window: [0x007686b0, 0x007687f0) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x007687f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007686b0: 83 ec 34 56 e8 d7 0c 00 00 8b 4c 24 3c 8b f0 8b
007686c0: 06 8b 90 cc 00 00 00 51 8b ce ff d2 85 c0 b9 54
007686d0: 8e 1c 01 c7 44 24 14 2c 7e 00 01 89 4c 24 08 89
007686e0: 4c 24 0c c7 44 24 10 56 8e 1c 01 74 54 8b 4c 24
007686f0: 40 6a 00 51 8b c8 e8 45 79 09 00 85 c0 74 1c 66
00768700: 83 38 00 8b c8 74 09 83 c1 02 66 83 39 00 75 f7
00768710: 2b c8 d1 f9 8d 14 48 52 50 eb 48 8b 4c 24 10 8b
00768720: 44 24 08 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74
00768730: 09 50 e8 a9 bd d7 ff 83 c4 04 33 c0 5e 83 c4 34
00768740: c3 b8 80 7f 00 01 83 c0 02 66 83 38 00 75 f7 2d
00768750: 80 7f 00 01 d1 f8 8d 14 45 80 7f 00 01 52 68 80
00768760: 7f 00 01 8d 4c 24 10 e8 f4 05 ca ff 6a 01 6a 10
00768770: 8d 44 24 10 50 6a 09 6a 13 8d 4c 24 2c c7 44 24
00768780: 2c 6c 88 00 01 66 c7 44 24 36 13 00 66 c7 44 24
00768790: 34 0b 00 e8 28 d2 d8 ff 8b 16 8b 52 50 8d 44 24
007687a0: 04 50 8d 4c 24 1c 51 8b ce ff d2 f6 44 24 20 04
007687b0: 8b 74 24 04 c7 44 24 18 f4 a6 fb 00 74 0b 6a 00
007687c0: 8d 4c 24 1c e8 97 cf d8 ff 8b 4c 24 10 8b 44 24
007687d0: 08 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50
007687e0: e8 fb bc d7 ff 83 c4 04 8b c6 5e 83 c4 34 c3 cc

LINEAR DISASSEMBLY
007686b0 <.text+0x3676b0>:
  7686b0:	83 ec 34                                        	sub    esp,0x34
  7686b3:	56                                              	push   esi
  7686b4:	e8 d7 0c 00 00                                  	call   0x769390
  7686b9:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  7686bd:	8b f0                                           	mov    esi,eax
  7686bf:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7686c1:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
  7686c7:	51                                              	push   ecx
  7686c8:	8b ce                                           	mov    ecx,esi
  7686ca:	ff d2                                           	call   edx
  7686cc:	85 c0                                           	test   eax,eax
  7686ce:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  7686d3:	c7 44 24 14 2c 7e 00 01                         	mov    DWORD PTR [esp+0x14],0x1007e2c
  7686db:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  7686df:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  7686e3:	c7 44 24 10 56 8e 1c 01                         	mov    DWORD PTR [esp+0x10],0x11c8e56
  7686eb:	74 54                                           	je     0x768741
  7686ed:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  7686f1:	6a 00                                           	push   0x0
  7686f3:	51                                              	push   ecx
  7686f4:	8b c8                                           	mov    ecx,eax
  7686f6:	e8 45 79 09 00                                  	call   0x800040
  7686fb:	85 c0                                           	test   eax,eax
  7686fd:	74 1c                                           	je     0x76871b
  7686ff:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  768703:	8b c8                                           	mov    ecx,eax
  768705:	74 09                                           	je     0x768710
  768707:	83 c1 02                                        	add    ecx,0x2
  76870a:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
  76870e:	75 f7                                           	jne    0x768707
  768710:	2b c8                                           	sub    ecx,eax
  768712:	d1 f9                                           	sar    ecx,1
  768714:	8d 14 48                                        	lea    edx,[eax+ecx*2]
  768717:	52                                              	push   edx
  768718:	50                                              	push   eax
  768719:	eb 48                                           	jmp    0x768763
  76871b:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  76871f:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  768723:	2b c8                                           	sub    ecx,eax
  768725:	83 e1 fe                                        	and    ecx,0xfffffffe
  768728:	83 f9 02                                        	cmp    ecx,0x2
  76872b:	7e 0d                                           	jle    0x76873a
  76872d:	85 c0                                           	test   eax,eax
  76872f:	74 09                                           	je     0x76873a
  768731:	50                                              	push   eax
  768732:	e8 a9 bd d7 ff                                  	call   0x4e44e0
  768737:	83 c4 04                                        	add    esp,0x4
  76873a:	33 c0                                           	xor    eax,eax
  76873c:	5e                                              	pop    esi
  76873d:	83 c4 34                                        	add    esp,0x34
  768740:	c3                                              	ret
  768741:	b8 80 7f 00 01                                  	mov    eax,0x1007f80
  768746:	83 c0 02                                        	add    eax,0x2
  768749:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  76874d:	75 f7                                           	jne    0x768746
  76874f:	2d 80 7f 00 01                                  	sub    eax,0x1007f80
  768754:	d1 f8                                           	sar    eax,1
  768756:	8d 14 45 80 7f 00 01                            	lea    edx,[eax*2+0x1007f80]
  76875d:	52                                              	push   edx
  76875e:	68 80 7f 00 01                                  	push   0x1007f80
  768763:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  768767:	e8 f4 05 ca ff                                  	call   0x408d60
  76876c:	6a 01                                           	push   0x1
  76876e:	6a 10                                           	push   0x10
  768770:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  768774:	50                                              	push   eax
  768775:	6a 09                                           	push   0x9
  768777:	6a 13                                           	push   0x13
  768779:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  76877d:	c7 44 24 2c 6c 88 00 01                         	mov    DWORD PTR [esp+0x2c],0x100886c
  768785:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
  76878c:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
  768793:	e8 28 d2 d8 ff                                  	call   0x4f59c0
  768798:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76879a:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  76879d:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  7687a1:	50                                              	push   eax
  7687a2:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  7687a6:	51                                              	push   ecx
  7687a7:	8b ce                                           	mov    ecx,esi
  7687a9:	ff d2                                           	call   edx
  7687ab:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  7687b0:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  7687b4:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  7687bc:	74 0b                                           	je     0x7687c9
  7687be:	6a 00                                           	push   0x0
  7687c0:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  7687c4:	e8 97 cf d8 ff                                  	call   0x4f5760
  7687c9:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7687cd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7687d1:	2b c8                                           	sub    ecx,eax
  7687d3:	83 e1 fe                                        	and    ecx,0xfffffffe
  7687d6:	83 f9 02                                        	cmp    ecx,0x2
  7687d9:	7e 0d                                           	jle    0x7687e8
  7687db:	85 c0                                           	test   eax,eax
  7687dd:	74 09                                           	je     0x7687e8
  7687df:	50                                              	push   eax
  7687e0:	e8 fb bc d7 ff                                  	call   0x4e44e0
  7687e5:	83 c4 04                                        	add    esp,0x4
  7687e8:	8b c6                                           	mov    eax,esi
  7687ea:	5e                                              	pop    esi
  7687eb:	83 c4 34                                        	add    esp,0x34
  7687ee:	c3                                              	ret
  7687ef:	cc                                              	int3
