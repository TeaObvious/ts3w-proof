# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00779720 (ScriptCore.UIManager::UIManager_LoadUIHitMaskImpl)
Paired Ghidra pseudocode: 00779720_ScriptCore_UIManager_UIManager_LoadUIHitMaskImpl.c
Window: [0x00779720, 0x007797f0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007797f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00779720: 83 ec 24 56 e8 57 67 d3 ff 8b f0 85 f6 0f 84 a7
00779730: 00 00 00 8b 44 24 2c 8b 54 24 34 8b 4c 24 30 89
00779740: 44 24 08 8b 44 24 38 89 54 24 14 8b 16 68 76 ef
00779750: 9a 01 89 4c 24 10 89 44 24 14 50 8b 42 2c 8b ce
00779760: ff d0 85 c0 74 74 8b 4c 24 08 8b 54 24 0c 89 4c
00779770: 24 18 8b 4c 24 10 89 4c 24 20 8d 4c 24 18 51 50
00779780: 6a 00 89 54 24 28 8b 54 24 20 6a 00 8d 44 24 14
00779790: 89 54 24 34 8b 16 8b 52 0c 50 8d 4c 24 1c 51 8b
007797a0: ce c7 44 24 38 76 ef 9a 01 c7 44 24 1c 00 00 00
007797b0: 00 ff d2 84 c0 74 23 8b 44 24 04 85 c0 8b f0 74
007797c0: 19 e8 ca fb fe ff 8b 10 6a 30 8b c8 8b 82 c8 00
007797d0: 00 00 56 ff d0 5e 83 c4 24 c3 33 c0 5e 83 c4 24
007797e0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00779720 <.text+0x378720>:
  779720:	83 ec 24                                        	sub    esp,0x24
  779723:	56                                              	push   esi
  779724:	e8 57 67 d3 ff                                  	call   0x4afe80
  779729:	8b f0                                           	mov    esi,eax
  77972b:	85 f6                                           	test   esi,esi
  77972d:	0f 84 a7 00 00 00                               	je     0x7797da
  779733:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  779737:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  77973b:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  77973f:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  779743:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  779747:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  77974b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77974d:	68 76 ef 9a 01                                  	push   0x19aef76
  779752:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  779756:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  77975a:	50                                              	push   eax
  77975b:	8b 42 2c                                        	mov    eax,DWORD PTR [edx+0x2c]
  77975e:	8b ce                                           	mov    ecx,esi
  779760:	ff d0                                           	call   eax
  779762:	85 c0                                           	test   eax,eax
  779764:	74 74                                           	je     0x7797da
  779766:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  77976a:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  77976e:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  779772:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  779776:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  77977a:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  77977e:	51                                              	push   ecx
  77977f:	50                                              	push   eax
  779780:	6a 00                                           	push   0x0
  779782:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  779786:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  77978a:	6a 00                                           	push   0x0
  77978c:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  779790:	89 54 24 34                                     	mov    DWORD PTR [esp+0x34],edx
  779794:	8b 16                                           	mov    edx,DWORD PTR [esi]
  779796:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  779799:	50                                              	push   eax
  77979a:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  77979e:	51                                              	push   ecx
  77979f:	8b ce                                           	mov    ecx,esi
  7797a1:	c7 44 24 38 76 ef 9a 01                         	mov    DWORD PTR [esp+0x38],0x19aef76
  7797a9:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
  7797b1:	ff d2                                           	call   edx
  7797b3:	84 c0                                           	test   al,al
  7797b5:	74 23                                           	je     0x7797da
  7797b7:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7797bb:	85 c0                                           	test   eax,eax
  7797bd:	8b f0                                           	mov    esi,eax
  7797bf:	74 19                                           	je     0x7797da
  7797c1:	e8 ca fb fe ff                                  	call   0x769390
  7797c6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7797c8:	6a 30                                           	push   0x30
  7797ca:	8b c8                                           	mov    ecx,eax
  7797cc:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  7797d2:	56                                              	push   esi
  7797d3:	ff d0                                           	call   eax
  7797d5:	5e                                              	pop    esi
  7797d6:	83 c4 24                                        	add    esp,0x24
  7797d9:	c3                                              	ret
  7797da:	33 c0                                           	xor    eax,eax
  7797dc:	5e                                              	pop    esi
  7797dd:	83 c4 24                                        	add    esp,0x24
  7797e0:	c3                                              	ret
  7797e1:	cc                                              	int3
  7797e2:	cc                                              	int3
  7797e3:	cc                                              	int3
  7797e4:	cc                                              	int3
  7797e5:	cc                                              	int3
  7797e6:	cc                                              	int3
  7797e7:	cc                                              	int3
  7797e8:	cc                                              	int3
  7797e9:	cc                                              	int3
  7797ea:	cc                                              	int3
  7797eb:	cc                                              	int3
  7797ec:	cc                                              	int3
  7797ed:	cc                                              	int3
  7797ee:	cc                                              	int3
  7797ef:	cc                                              	int3
