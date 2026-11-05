# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005ab680 (ScriptCore.CASUtils::CASUtils_SimBuilderSavePartPresetImpl)
Paired Ghidra pseudocode: 005AB680_ScriptCore_CASUtils_CASUtils_SimBuilderSavePartPresetImpl.c
Window: [0x005ab680, 0x005ab870) (496 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ab870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005ab680: 83 ec 50 56 57 e8 06 dd 1b 00 8b 4c 24 6c 8b 54
005ab690: 24 60 8b f0 8b 44 24 68 89 4c 24 3c 8d 4c 24 38
005ab6a0: 89 54 24 40 89 44 24 38 8b 44 24 64 51 8d 54 24
005ab6b0: 64 52 89 44 24 4c e8 b5 e0 22 00 50 8d 44 24 34
005ab6c0: 50 e8 ca 85 f4 ff 8b 4c 24 78 8b 44 24 70 2b c8
005ab6d0: 83 c4 10 33 ff 83 f9 01 7e 0d 3b c7 74 09 50 e8
005ab6e0: fc 8d f3 ff 83 c4 04 3b f7 0f 84 52 01 00 00 8b
005ab6f0: 54 24 2c 8b 44 24 28 2b d0 d1 fa 0f 84 44 01 00
005ab700: 00 8b 4c 24 70 8b 06 8b 50 58 51 8b ce ff d2 50
005ab710: 8d 4c 24 1c 89 7c 24 1c 89 7c 24 20 89 7c 24 24
005ab720: c7 44 24 28 4c f9 fd 00 e8 63 fe e5 ff 8b 4c 24
005ab730: 74 8b 06 8b 50 58 51 8b ce ff d2 50 8d 4c 24 0c
005ab740: 89 7c 24 0c 89 7c 24 10 89 7c 24 14 c7 44 24 18
005ab750: 4c f9 fd 00 e8 37 fe e5 ff 8d 44 24 08 50 8d 4c
005ab760: 24 4c 51 e8 88 86 f4 ff 8b 00 83 c4 08 50 8d 4c
005ab770: 24 64 89 7c 24 64 89 7c 24 68 89 7c 24 6c c7 44
005ab780: 24 70 4c f9 fd 00 e8 45 a3 e5 ff 8b 54 24 50 8b
005ab790: 44 24 48 2b d0 83 fa 01 7e 0d 3b c7 74 09 50 e8
005ab7a0: 3c 8d f3 ff 83 c4 04 8b 44 24 5c 8b c8 81 e1 00
005ab7b0: 00 00 ff 81 f9 00 00 00 35 75 2c 8b 16 50 8b 82
005ab7c0: cc 00 00 00 8b ce ff d0 3b c7 74 1b 8d 4c 24 60
005ab7d0: 51 8d 54 24 1c 52 8d 4c 24 30 51 8d 54 24 44 52
005ab7e0: 8b c8 e8 49 f7 5e 00 8b 4c 24 68 8b 44 24 60 2b
005ab7f0: c8 83 f9 01 7e 0d 3b c7 74 09 50 e8 e0 8c f3 ff
005ab800: 83 c4 04 8b 54 24 10 8b 44 24 08 2b d0 83 e2 fe
005ab810: 83 fa 02 7e 0d 3b c7 74 09 50 e8 c1 8c f3 ff 83
005ab820: c4 04 8b 4c 24 20 8b 44 24 18 2b c8 83 e1 fe 83
005ab830: f9 02 7e 0d 3b c7 74 09 50 e8 a2 8c f3 ff 83 c4
005ab840: 04 8b 44 24 28 8b 54 24 30 2b d0 83 e2 fe 83 fa
005ab850: 02 7e 0d 3b c7 74 09 50 e8 83 8c f3 ff 83 c4 04
005ab860: 5f 5e 83 c4 50 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005ab680 <.text+0x1aa680>:
  5ab680:	83 ec 50                                        	sub    esp,0x50
  5ab683:	56                                              	push   esi
  5ab684:	57                                              	push   edi
  5ab685:	e8 06 dd 1b 00                                  	call   0x769390
  5ab68a:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
  5ab68e:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
  5ab692:	8b f0                                           	mov    esi,eax
  5ab694:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
  5ab698:	89 4c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ecx
  5ab69c:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  5ab6a0:	89 54 24 40                                     	mov    DWORD PTR [esp+0x40],edx
  5ab6a4:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
  5ab6a8:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  5ab6ac:	51                                              	push   ecx
  5ab6ad:	8d 54 24 64                                     	lea    edx,[esp+0x64]
  5ab6b1:	52                                              	push   edx
  5ab6b2:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
  5ab6b6:	e8 b5 e0 22 00                                  	call   0x7d9770
  5ab6bb:	50                                              	push   eax
  5ab6bc:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  5ab6c0:	50                                              	push   eax
  5ab6c1:	e8 ca 85 f4 ff                                  	call   0x4f3c90
  5ab6c6:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
  5ab6ca:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
  5ab6ce:	2b c8                                           	sub    ecx,eax
  5ab6d0:	83 c4 10                                        	add    esp,0x10
  5ab6d3:	33 ff                                           	xor    edi,edi
  5ab6d5:	83 f9 01                                        	cmp    ecx,0x1
  5ab6d8:	7e 0d                                           	jle    0x5ab6e7
  5ab6da:	3b c7                                           	cmp    eax,edi
  5ab6dc:	74 09                                           	je     0x5ab6e7
  5ab6de:	50                                              	push   eax
  5ab6df:	e8 fc 8d f3 ff                                  	call   0x4e44e0
  5ab6e4:	83 c4 04                                        	add    esp,0x4
  5ab6e7:	3b f7                                           	cmp    esi,edi
  5ab6e9:	0f 84 52 01 00 00                               	je     0x5ab841
  5ab6ef:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  5ab6f3:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  5ab6f7:	2b d0                                           	sub    edx,eax
  5ab6f9:	d1 fa                                           	sar    edx,1
  5ab6fb:	0f 84 44 01 00 00                               	je     0x5ab845
  5ab701:	8b 4c 24 70                                     	mov    ecx,DWORD PTR [esp+0x70]
  5ab705:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5ab707:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5ab70a:	51                                              	push   ecx
  5ab70b:	8b ce                                           	mov    ecx,esi
  5ab70d:	ff d2                                           	call   edx
  5ab70f:	50                                              	push   eax
  5ab710:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5ab714:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  5ab718:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  5ab71c:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  5ab720:	c7 44 24 28 4c f9 fd 00                         	mov    DWORD PTR [esp+0x28],0xfdf94c
  5ab728:	e8 63 fe e5 ff                                  	call   0x40b590
  5ab72d:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
  5ab731:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5ab733:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5ab736:	51                                              	push   ecx
  5ab737:	8b ce                                           	mov    ecx,esi
  5ab739:	ff d2                                           	call   edx
  5ab73b:	50                                              	push   eax
  5ab73c:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5ab740:	89 7c 24 0c                                     	mov    DWORD PTR [esp+0xc],edi
  5ab744:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  5ab748:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  5ab74c:	c7 44 24 18 4c f9 fd 00                         	mov    DWORD PTR [esp+0x18],0xfdf94c
  5ab754:	e8 37 fe e5 ff                                  	call   0x40b590
  5ab759:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  5ab75d:	50                                              	push   eax
  5ab75e:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  5ab762:	51                                              	push   ecx
  5ab763:	e8 88 86 f4 ff                                  	call   0x4f3df0
  5ab768:	8b 00                                           	mov    eax,DWORD PTR [eax]
  5ab76a:	83 c4 08                                        	add    esp,0x8
  5ab76d:	50                                              	push   eax
  5ab76e:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  5ab772:	89 7c 24 64                                     	mov    DWORD PTR [esp+0x64],edi
  5ab776:	89 7c 24 68                                     	mov    DWORD PTR [esp+0x68],edi
  5ab77a:	89 7c 24 6c                                     	mov    DWORD PTR [esp+0x6c],edi
  5ab77e:	c7 44 24 70 4c f9 fd 00                         	mov    DWORD PTR [esp+0x70],0xfdf94c
  5ab786:	e8 45 a3 e5 ff                                  	call   0x405ad0
  5ab78b:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
  5ab78f:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  5ab793:	2b d0                                           	sub    edx,eax
  5ab795:	83 fa 01                                        	cmp    edx,0x1
  5ab798:	7e 0d                                           	jle    0x5ab7a7
  5ab79a:	3b c7                                           	cmp    eax,edi
  5ab79c:	74 09                                           	je     0x5ab7a7
  5ab79e:	50                                              	push   eax
  5ab79f:	e8 3c 8d f3 ff                                  	call   0x4e44e0
  5ab7a4:	83 c4 04                                        	add    esp,0x4
  5ab7a7:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  5ab7ab:	8b c8                                           	mov    ecx,eax
  5ab7ad:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  5ab7b3:	81 f9 00 00 00 35                               	cmp    ecx,0x35000000
  5ab7b9:	75 2c                                           	jne    0x5ab7e7
  5ab7bb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5ab7bd:	50                                              	push   eax
  5ab7be:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5ab7c4:	8b ce                                           	mov    ecx,esi
  5ab7c6:	ff d0                                           	call   eax
  5ab7c8:	3b c7                                           	cmp    eax,edi
  5ab7ca:	74 1b                                           	je     0x5ab7e7
  5ab7cc:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  5ab7d0:	51                                              	push   ecx
  5ab7d1:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  5ab7d5:	52                                              	push   edx
  5ab7d6:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  5ab7da:	51                                              	push   ecx
  5ab7db:	8d 54 24 44                                     	lea    edx,[esp+0x44]
  5ab7df:	52                                              	push   edx
  5ab7e0:	8b c8                                           	mov    ecx,eax
  5ab7e2:	e8 49 f7 5e 00                                  	call   0xb9af30
  5ab7e7:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
  5ab7eb:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
  5ab7ef:	2b c8                                           	sub    ecx,eax
  5ab7f1:	83 f9 01                                        	cmp    ecx,0x1
  5ab7f4:	7e 0d                                           	jle    0x5ab803
  5ab7f6:	3b c7                                           	cmp    eax,edi
  5ab7f8:	74 09                                           	je     0x5ab803
  5ab7fa:	50                                              	push   eax
  5ab7fb:	e8 e0 8c f3 ff                                  	call   0x4e44e0
  5ab800:	83 c4 04                                        	add    esp,0x4
  5ab803:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  5ab807:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5ab80b:	2b d0                                           	sub    edx,eax
  5ab80d:	83 e2 fe                                        	and    edx,0xfffffffe
  5ab810:	83 fa 02                                        	cmp    edx,0x2
  5ab813:	7e 0d                                           	jle    0x5ab822
  5ab815:	3b c7                                           	cmp    eax,edi
  5ab817:	74 09                                           	je     0x5ab822
  5ab819:	50                                              	push   eax
  5ab81a:	e8 c1 8c f3 ff                                  	call   0x4e44e0
  5ab81f:	83 c4 04                                        	add    esp,0x4
  5ab822:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5ab826:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  5ab82a:	2b c8                                           	sub    ecx,eax
  5ab82c:	83 e1 fe                                        	and    ecx,0xfffffffe
  5ab82f:	83 f9 02                                        	cmp    ecx,0x2
  5ab832:	7e 0d                                           	jle    0x5ab841
  5ab834:	3b c7                                           	cmp    eax,edi
  5ab836:	74 09                                           	je     0x5ab841
  5ab838:	50                                              	push   eax
  5ab839:	e8 a2 8c f3 ff                                  	call   0x4e44e0
  5ab83e:	83 c4 04                                        	add    esp,0x4
  5ab841:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  5ab845:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  5ab849:	2b d0                                           	sub    edx,eax
  5ab84b:	83 e2 fe                                        	and    edx,0xfffffffe
  5ab84e:	83 fa 02                                        	cmp    edx,0x2
  5ab851:	7e 0d                                           	jle    0x5ab860
  5ab853:	3b c7                                           	cmp    eax,edi
  5ab855:	74 09                                           	je     0x5ab860
  5ab857:	50                                              	push   eax
  5ab858:	e8 83 8c f3 ff                                  	call   0x4e44e0
  5ab85d:	83 c4 04                                        	add    esp,0x4
  5ab860:	5f                                              	pop    edi
  5ab861:	5e                                              	pop    esi
  5ab862:	83 c4 50                                        	add    esp,0x50
  5ab865:	c3                                              	ret
  5ab866:	cc                                              	int3
  5ab867:	cc                                              	int3
  5ab868:	cc                                              	int3
  5ab869:	cc                                              	int3
  5ab86a:	cc                                              	int3
  5ab86b:	cc                                              	int3
  5ab86c:	cc                                              	int3
  5ab86d:	cc                                              	int3
  5ab86e:	cc                                              	int3
  5ab86f:	cc                                              	int3
