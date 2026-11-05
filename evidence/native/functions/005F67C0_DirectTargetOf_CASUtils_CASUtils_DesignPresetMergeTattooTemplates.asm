# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005f67c0 (DirectTargetOf_CASUtils_CASUtils_DesignPresetMergeTattooTemplates)
Paired Ghidra pseudocode: 005F67C0_DirectTargetOf_CASUtils_CASUtils_DesignPresetMergeTattooTemplates.c
Window: [0x005f67c0, 0x005f6a90) (720 bytes; stop exclusive)
Next defined Ghidra entry: 0x005f6a90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005f67c0: 81 ec ac 03 00 00 53 55 e8 c3 2b 17 00 8b 8c 24
005f67d0: b8 03 00 00 8b d8 8b 03 8b 50 58 51 8b cb ff d2
005f67e0: 8b e8 85 ed 75 09 5d 5b 81 c4 ac 03 00 00 c3 56
005f67f0: 57 bf 04 00 00 00 8d b4 24 bc 01 00 00 8d 49 00
005f6800: 8b ce e8 b9 92 fc ff 83 c6 68 83 ef 01 79 f1 8b
005f6810: 84 24 c4 03 00 00 85 c0 75 09 89 84 24 b4 01 00
005f6820: 00 eb 1a 8b 13 50 8b 42 58 8b cb ff d0 85 c0 89
005f6830: 84 24 b4 01 00 00 0f 95 c0 84 c0 75 23 68 40 5b
005f6840: 5f 00 6a 05 6a 68 8d 8c 24 c0 01 00 00 51 e8 8d
005f6850: fe e4 ff 5f 5e 5d 33 c0 5b 81 c4 ac 03 00 00 c3
005f6860: 8b 94 24 c8 03 00 00 52 8d 84 24 20 02 00 00 50
005f6870: 53 e8 8a f2 ff ff 83 c4 0c 84 c0 74 53 8b 8c 24
005f6880: cc 03 00 00 51 8d 94 24 88 02 00 00 52 53 e8 6d
005f6890: f2 ff ff 83 c4 0c 84 c0 74 36 8b 84 24 d0 03 00
005f68a0: 00 50 8d 8c 24 f0 02 00 00 51 53 e8 50 f2 ff ff
005f68b0: 83 c4 0c 84 c0 74 19 8b 94 24 d4 03 00 00 52 8d
005f68c0: 84 24 58 03 00 00 50 53 e8 33 f2 ff ff 83 c4 0c
005f68d0: 8d 4c 24 44 e8 e7 91 fc ff 55 8d 4c 24 48 e8 7d
005f68e0: 97 fc ff bf 01 00 00 00 8d ac 24 bc 01 00 00 90
005f68f0: 8b 45 f8 85 c0 0f 84 b3 00 00 00 50 8b cd e8 5d
005f6900: 97 fc ff 8d 4c 24 44 51 55 57 6a 01 6a 03 68 0c
005f6910: 70 fe 00 e8 58 f9 ff ff 83 c4 18 33 f6 8d 49 00
005f6920: 8b 86 40 8d 15 01 8d 54 24 44 52 55 57 6a 01 6a
005f6930: 02 50 e8 39 f9 ff ff 83 c6 04 83 c4 18 83 fe 10
005f6940: 72 de 8d 8c 24 b4 00 00 00 8b d1 57 89 8c 24 ac
005f6950: 00 00 00 8d 8c 24 a8 00 00 00 8d 84 24 b8 01 00
005f6960: 00 68 18 70 fe 00 51 89 94 24 b0 00 00 00 89 84
005f6970: 24 b8 00 00 00 c6 84 24 c0 00 00 00 00 e8 ce f8
005f6980: ff ff 8b 94 24 b0 00 00 00 83 c4 0c 6a 00 6a 01
005f6990: 6a 07 52 8d 4c 24 54 e8 54 89 fc ff 83 c7 01 8d
005f69a0: 47 ff 83 c5 68 83 f8 05 0f 82 42 ff ff ff 8d 4c
005f69b0: 24 14 b8 54 8e 1c 01 51 8d 4c 24 48 c7 44 24 24
005f69c0: 0c f9 fd 00 89 44 24 18 89 44 24 1c c7 44 24 20
005f69d0: 56 8e 1c 01 e8 47 93 fc ff 6a 01 6a 10 8d 54 24
005f69e0: 1c 52 6a 09 6a 13 8d 4c 24 38 c7 44 24 38 6c 88
005f69f0: 00 01 66 c7 44 24 42 13 00 66 c7 44 24 40 0b 00
005f6a00: e8 bb ef ef ff 8b 03 8b 40 50 8d 4c 24 10 51 8d
005f6a10: 54 24 28 52 8b cb ff d0 f6 44 24 2c 04 8b 6c 24
005f6a20: 10 c7 44 24 24 f4 a6 fb 00 74 0b 6a 00 8d 4c 24
005f6a30: 28 e8 2a ed ef ff 8b 4c 24 1c 8b 44 24 14 2b c8
005f6a40: 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 8e da
005f6a50: ee ff 83 c4 04 8d 4c 24 44 e8 82 92 fc ff bf 04
005f6a60: 00 00 00 8d b4 24 c4 03 00 00 8d 9b 00 00 00 00
005f6a70: 83 ee 68 8b ce e8 66 92 fc ff 83 ef 01 79 f1 5f
005f6a80: 5e 8b c5 5d 5b 81 c4 ac 03 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
005f67c0 <.text+0x1f57c0>:
  5f67c0:	81 ec ac 03 00 00                               	sub    esp,0x3ac
  5f67c6:	53                                              	push   ebx
  5f67c7:	55                                              	push   ebp
  5f67c8:	e8 c3 2b 17 00                                  	call   0x769390
  5f67cd:	8b 8c 24 b8 03 00 00                            	mov    ecx,DWORD PTR [esp+0x3b8]
  5f67d4:	8b d8                                           	mov    ebx,eax
  5f67d6:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  5f67d8:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5f67db:	51                                              	push   ecx
  5f67dc:	8b cb                                           	mov    ecx,ebx
  5f67de:	ff d2                                           	call   edx
  5f67e0:	8b e8                                           	mov    ebp,eax
  5f67e2:	85 ed                                           	test   ebp,ebp
  5f67e4:	75 09                                           	jne    0x5f67ef
  5f67e6:	5d                                              	pop    ebp
  5f67e7:	5b                                              	pop    ebx
  5f67e8:	81 c4 ac 03 00 00                               	add    esp,0x3ac
  5f67ee:	c3                                              	ret
  5f67ef:	56                                              	push   esi
  5f67f0:	57                                              	push   edi
  5f67f1:	bf 04 00 00 00                                  	mov    edi,0x4
  5f67f6:	8d b4 24 bc 01 00 00                            	lea    esi,[esp+0x1bc]
  5f67fd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  5f6800:	8b ce                                           	mov    ecx,esi
  5f6802:	e8 b9 92 fc ff                                  	call   0x5bfac0
  5f6807:	83 c6 68                                        	add    esi,0x68
  5f680a:	83 ef 01                                        	sub    edi,0x1
  5f680d:	79 f1                                           	jns    0x5f6800
  5f680f:	8b 84 24 c4 03 00 00                            	mov    eax,DWORD PTR [esp+0x3c4]
  5f6816:	85 c0                                           	test   eax,eax
  5f6818:	75 09                                           	jne    0x5f6823
  5f681a:	89 84 24 b4 01 00 00                            	mov    DWORD PTR [esp+0x1b4],eax
  5f6821:	eb 1a                                           	jmp    0x5f683d
  5f6823:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  5f6825:	50                                              	push   eax
  5f6826:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  5f6829:	8b cb                                           	mov    ecx,ebx
  5f682b:	ff d0                                           	call   eax
  5f682d:	85 c0                                           	test   eax,eax
  5f682f:	89 84 24 b4 01 00 00                            	mov    DWORD PTR [esp+0x1b4],eax
  5f6836:	0f 95 c0                                        	setne  al
  5f6839:	84 c0                                           	test   al,al
  5f683b:	75 23                                           	jne    0x5f6860
  5f683d:	68 40 5b 5f 00                                  	push   0x5f5b40
  5f6842:	6a 05                                           	push   0x5
  5f6844:	6a 68                                           	push   0x68
  5f6846:	8d 8c 24 c0 01 00 00                            	lea    ecx,[esp+0x1c0]
  5f684d:	51                                              	push   ecx
  5f684e:	e8 8d fe e4 ff                                  	call   0x4466e0
  5f6853:	5f                                              	pop    edi
  5f6854:	5e                                              	pop    esi
  5f6855:	5d                                              	pop    ebp
  5f6856:	33 c0                                           	xor    eax,eax
  5f6858:	5b                                              	pop    ebx
  5f6859:	81 c4 ac 03 00 00                               	add    esp,0x3ac
  5f685f:	c3                                              	ret
  5f6860:	8b 94 24 c8 03 00 00                            	mov    edx,DWORD PTR [esp+0x3c8]
  5f6867:	52                                              	push   edx
  5f6868:	8d 84 24 20 02 00 00                            	lea    eax,[esp+0x220]
  5f686f:	50                                              	push   eax
  5f6870:	53                                              	push   ebx
  5f6871:	e8 8a f2 ff ff                                  	call   0x5f5b00
  5f6876:	83 c4 0c                                        	add    esp,0xc
  5f6879:	84 c0                                           	test   al,al
  5f687b:	74 53                                           	je     0x5f68d0
  5f687d:	8b 8c 24 cc 03 00 00                            	mov    ecx,DWORD PTR [esp+0x3cc]
  5f6884:	51                                              	push   ecx
  5f6885:	8d 94 24 88 02 00 00                            	lea    edx,[esp+0x288]
  5f688c:	52                                              	push   edx
  5f688d:	53                                              	push   ebx
  5f688e:	e8 6d f2 ff ff                                  	call   0x5f5b00
  5f6893:	83 c4 0c                                        	add    esp,0xc
  5f6896:	84 c0                                           	test   al,al
  5f6898:	74 36                                           	je     0x5f68d0
  5f689a:	8b 84 24 d0 03 00 00                            	mov    eax,DWORD PTR [esp+0x3d0]
  5f68a1:	50                                              	push   eax
  5f68a2:	8d 8c 24 f0 02 00 00                            	lea    ecx,[esp+0x2f0]
  5f68a9:	51                                              	push   ecx
  5f68aa:	53                                              	push   ebx
  5f68ab:	e8 50 f2 ff ff                                  	call   0x5f5b00
  5f68b0:	83 c4 0c                                        	add    esp,0xc
  5f68b3:	84 c0                                           	test   al,al
  5f68b5:	74 19                                           	je     0x5f68d0
  5f68b7:	8b 94 24 d4 03 00 00                            	mov    edx,DWORD PTR [esp+0x3d4]
  5f68be:	52                                              	push   edx
  5f68bf:	8d 84 24 58 03 00 00                            	lea    eax,[esp+0x358]
  5f68c6:	50                                              	push   eax
  5f68c7:	53                                              	push   ebx
  5f68c8:	e8 33 f2 ff ff                                  	call   0x5f5b00
  5f68cd:	83 c4 0c                                        	add    esp,0xc
  5f68d0:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5f68d4:	e8 e7 91 fc ff                                  	call   0x5bfac0
  5f68d9:	55                                              	push   ebp
  5f68da:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  5f68de:	e8 7d 97 fc ff                                  	call   0x5c0060
  5f68e3:	bf 01 00 00 00                                  	mov    edi,0x1
  5f68e8:	8d ac 24 bc 01 00 00                            	lea    ebp,[esp+0x1bc]
  5f68ef:	90                                              	nop
  5f68f0:	8b 45 f8                                        	mov    eax,DWORD PTR [ebp-0x8]
  5f68f3:	85 c0                                           	test   eax,eax
  5f68f5:	0f 84 b3 00 00 00                               	je     0x5f69ae
  5f68fb:	50                                              	push   eax
  5f68fc:	8b cd                                           	mov    ecx,ebp
  5f68fe:	e8 5d 97 fc ff                                  	call   0x5c0060
  5f6903:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5f6907:	51                                              	push   ecx
  5f6908:	55                                              	push   ebp
  5f6909:	57                                              	push   edi
  5f690a:	6a 01                                           	push   0x1
  5f690c:	6a 03                                           	push   0x3
  5f690e:	68 0c 70 fe 00                                  	push   0xfe700c
  5f6913:	e8 58 f9 ff ff                                  	call   0x5f6270
  5f6918:	83 c4 18                                        	add    esp,0x18
  5f691b:	33 f6                                           	xor    esi,esi
  5f691d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  5f6920:	8b 86 40 8d 15 01                               	mov    eax,DWORD PTR [esi+0x1158d40]
  5f6926:	8d 54 24 44                                     	lea    edx,[esp+0x44]
  5f692a:	52                                              	push   edx
  5f692b:	55                                              	push   ebp
  5f692c:	57                                              	push   edi
  5f692d:	6a 01                                           	push   0x1
  5f692f:	6a 02                                           	push   0x2
  5f6931:	50                                              	push   eax
  5f6932:	e8 39 f9 ff ff                                  	call   0x5f6270
  5f6937:	83 c6 04                                        	add    esi,0x4
  5f693a:	83 c4 18                                        	add    esp,0x18
  5f693d:	83 fe 10                                        	cmp    esi,0x10
  5f6940:	72 de                                           	jb     0x5f6920
  5f6942:	8d 8c 24 b4 00 00 00                            	lea    ecx,[esp+0xb4]
  5f6949:	8b d1                                           	mov    edx,ecx
  5f694b:	57                                              	push   edi
  5f694c:	89 8c 24 ac 00 00 00                            	mov    DWORD PTR [esp+0xac],ecx
  5f6953:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
  5f695a:	8d 84 24 b8 01 00 00                            	lea    eax,[esp+0x1b8]
  5f6961:	68 18 70 fe 00                                  	push   0xfe7018
  5f6966:	51                                              	push   ecx
  5f6967:	89 94 24 b0 00 00 00                            	mov    DWORD PTR [esp+0xb0],edx
  5f696e:	89 84 24 b8 00 00 00                            	mov    DWORD PTR [esp+0xb8],eax
  5f6975:	c6 84 24 c0 00 00 00 00                         	mov    BYTE PTR [esp+0xc0],0x0
  5f697d:	e8 ce f8 ff ff                                  	call   0x5f6250
  5f6982:	8b 94 24 b0 00 00 00                            	mov    edx,DWORD PTR [esp+0xb0]
  5f6989:	83 c4 0c                                        	add    esp,0xc
  5f698c:	6a 00                                           	push   0x0
  5f698e:	6a 01                                           	push   0x1
  5f6990:	6a 07                                           	push   0x7
  5f6992:	52                                              	push   edx
  5f6993:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  5f6997:	e8 54 89 fc ff                                  	call   0x5bf2f0
  5f699c:	83 c7 01                                        	add    edi,0x1
  5f699f:	8d 47 ff                                        	lea    eax,[edi-0x1]
  5f69a2:	83 c5 68                                        	add    ebp,0x68
  5f69a5:	83 f8 05                                        	cmp    eax,0x5
  5f69a8:	0f 82 42 ff ff ff                               	jb     0x5f68f0
  5f69ae:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5f69b2:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  5f69b7:	51                                              	push   ecx
  5f69b8:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  5f69bc:	c7 44 24 24 0c f9 fd 00                         	mov    DWORD PTR [esp+0x24],0xfdf90c
  5f69c4:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  5f69c8:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  5f69cc:	c7 44 24 20 56 8e 1c 01                         	mov    DWORD PTR [esp+0x20],0x11c8e56
  5f69d4:	e8 47 93 fc ff                                  	call   0x5bfd20
  5f69d9:	6a 01                                           	push   0x1
  5f69db:	6a 10                                           	push   0x10
  5f69dd:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  5f69e1:	52                                              	push   edx
  5f69e2:	6a 09                                           	push   0x9
  5f69e4:	6a 13                                           	push   0x13
  5f69e6:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  5f69ea:	c7 44 24 38 6c 88 00 01                         	mov    DWORD PTR [esp+0x38],0x100886c
  5f69f2:	66 c7 44 24 42 13 00                            	mov    WORD PTR [esp+0x42],0x13
  5f69f9:	66 c7 44 24 40 0b 00                            	mov    WORD PTR [esp+0x40],0xb
  5f6a00:	e8 bb ef ef ff                                  	call   0x4f59c0
  5f6a05:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  5f6a07:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  5f6a0a:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5f6a0e:	51                                              	push   ecx
  5f6a0f:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  5f6a13:	52                                              	push   edx
  5f6a14:	8b cb                                           	mov    ecx,ebx
  5f6a16:	ff d0                                           	call   eax
  5f6a18:	f6 44 24 2c 04                                  	test   BYTE PTR [esp+0x2c],0x4
  5f6a1d:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
  5f6a21:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  5f6a29:	74 0b                                           	je     0x5f6a36
  5f6a2b:	6a 00                                           	push   0x0
  5f6a2d:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  5f6a31:	e8 2a ed ef ff                                  	call   0x4f5760
  5f6a36:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5f6a3a:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  5f6a3e:	2b c8                                           	sub    ecx,eax
  5f6a40:	83 e1 fe                                        	and    ecx,0xfffffffe
  5f6a43:	83 f9 02                                        	cmp    ecx,0x2
  5f6a46:	7e 0d                                           	jle    0x5f6a55
  5f6a48:	85 c0                                           	test   eax,eax
  5f6a4a:	74 09                                           	je     0x5f6a55
  5f6a4c:	50                                              	push   eax
  5f6a4d:	e8 8e da ee ff                                  	call   0x4e44e0
  5f6a52:	83 c4 04                                        	add    esp,0x4
  5f6a55:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5f6a59:	e8 82 92 fc ff                                  	call   0x5bfce0
  5f6a5e:	bf 04 00 00 00                                  	mov    edi,0x4
  5f6a63:	8d b4 24 c4 03 00 00                            	lea    esi,[esp+0x3c4]
  5f6a6a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  5f6a70:	83 ee 68                                        	sub    esi,0x68
  5f6a73:	8b ce                                           	mov    ecx,esi
  5f6a75:	e8 66 92 fc ff                                  	call   0x5bfce0
  5f6a7a:	83 ef 01                                        	sub    edi,0x1
  5f6a7d:	79 f1                                           	jns    0x5f6a70
  5f6a7f:	5f                                              	pop    edi
  5f6a80:	5e                                              	pop    esi
  5f6a81:	8b c5                                           	mov    eax,ebp
  5f6a83:	5d                                              	pop    ebp
  5f6a84:	5b                                              	pop    ebx
  5f6a85:	81 c4 ac 03 00 00                               	add    esp,0x3ac
  5f6a8b:	c3                                              	ret
  5f6a8c:	cc                                              	int3
  5f6a8d:	cc                                              	int3
  5f6a8e:	cc                                              	int3
  5f6a8f:	cc                                              	int3
