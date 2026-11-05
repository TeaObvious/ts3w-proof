# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007976e0 (ScriptCore.World::World_CapturePhoto)
Paired Ghidra pseudocode: 007976E0_ScriptCore_World_World_CapturePhoto.c
Window: [0x007976e0, 0x00797890) (432 bytes; stop exclusive)
Next defined Ghidra entry: 0x00797890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007976e0: 55 8b ec 83 e4 f0 81 ec 84 00 00 00 53 56 57 e8
007976f0: 2c 8a 24 00 8b d8 89 5c 24 1c e8 91 1c fd ff 33
00797700: ff 3b df 8b f0 0f 84 72 01 00 00 3b f7 0f 84 6a
00797710: 01 00 00 8b 45 0c 3b c7 89 7c 24 20 89 7c 24 24
00797720: 89 7c 24 28 c7 44 24 2c bc 1c 01 01 74 55 8b 16
00797730: 8b 52 68 8d 4c 24 10 51 8d 4c 24 18 51 50 8b ce
00797740: 89 7c 24 20 89 7c 24 1c ff d2 8b 44 24 10 50 8d
00797750: 4c 24 24 e8 c8 7a e0 ff 33 c0 39 7c 24 10 7e 23
00797760: 8b 4c 24 14 8b 14 c1 8b 7c 24 20 89 14 c7 8b 4c
00797770: c1 04 8b 54 24 20 89 4c c2 04 83 c0 01 3b 44 24
00797780: 10 7c dd 8b 06 8b 90 18 01 00 00 8b ce ff d2 8b
00797790: 4d 10 6a 00 51 8b da 6a ff 8b f8 8b 06 8b 90 20
007977a0: 01 00 00 53 57 8b ce ff d2 8d 44 24 30 50 8d 4c
007977b0: 24 1c 51 8d 54 24 48 52 8d 44 24 5c 50 8d 4c 24
007977c0: 30 51 e8 39 6e 1e 00 d9 44 24 2c 83 c4 14 53 57
007977d0: 8d 54 24 38 52 8b 55 08 51 d9 1c 24 8d 44 24 50
007977e0: 50 8d 4c 24 64 51 8b 4c 24 34 52 8d 44 24 3c 50
007977f0: e8 3b 3e 24 00 84 c0 74 0e 8b 16 8b 82 1c 01 00
00797800: 00 8b ce ff d0 eb 65 6a 01 6a 10 33 c0 8d 4c 24
00797810: 68 51 50 68 87 00 00 00 8d 8c 24 84 00 00 00 c7
00797820: 84 24 84 00 00 00 f4 a6 fb 00 66 89 84 24 8c 00
00797830: 00 00 66 89 84 24 8e 00 00 00 e8 81 e1 d5 ff 8b
00797840: 16 8b 92 24 01 00 00 8d 44 24 70 50 53 57 8b ce
00797850: ff d2 f6 44 24 78 04 c7 44 24 70 f4 a6 fb 00 74
00797860: 0b 6a 00 8d 4c 24 74 e8 f4 de d5 ff 8b 44 24 20
00797870: 85 c0 74 09 50 e8 66 cc d4 ff 83 c4 04 5f 5e 5b
00797880: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007976e0 <.text+0x3966e0>:
  7976e0:	55                                              	push   ebp
  7976e1:	8b ec                                           	mov    ebp,esp
  7976e3:	83 e4 f0                                        	and    esp,0xfffffff0
  7976e6:	81 ec 84 00 00 00                               	sub    esp,0x84
  7976ec:	53                                              	push   ebx
  7976ed:	56                                              	push   esi
  7976ee:	57                                              	push   edi
  7976ef:	e8 2c 8a 24 00                                  	call   0x9e0120
  7976f4:	8b d8                                           	mov    ebx,eax
  7976f6:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  7976fa:	e8 91 1c fd ff                                  	call   0x769390
  7976ff:	33 ff                                           	xor    edi,edi
  797701:	3b df                                           	cmp    ebx,edi
  797703:	8b f0                                           	mov    esi,eax
  797705:	0f 84 72 01 00 00                               	je     0x79787d
  79770b:	3b f7                                           	cmp    esi,edi
  79770d:	0f 84 6a 01 00 00                               	je     0x79787d
  797713:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  797716:	3b c7                                           	cmp    eax,edi
  797718:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  79771c:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  797720:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
  797724:	c7 44 24 2c bc 1c 01 01                         	mov    DWORD PTR [esp+0x2c],0x1011cbc
  79772c:	74 55                                           	je     0x797783
  79772e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  797730:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
  797733:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  797737:	51                                              	push   ecx
  797738:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  79773c:	51                                              	push   ecx
  79773d:	50                                              	push   eax
  79773e:	8b ce                                           	mov    ecx,esi
  797740:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  797744:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  797748:	ff d2                                           	call   edx
  79774a:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  79774e:	50                                              	push   eax
  79774f:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  797753:	e8 c8 7a e0 ff                                  	call   0x59f220
  797758:	33 c0                                           	xor    eax,eax
  79775a:	39 7c 24 10                                     	cmp    DWORD PTR [esp+0x10],edi
  79775e:	7e 23                                           	jle    0x797783
  797760:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  797764:	8b 14 c1                                        	mov    edx,DWORD PTR [ecx+eax*8]
  797767:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  79776b:	89 14 c7                                        	mov    DWORD PTR [edi+eax*8],edx
  79776e:	8b 4c c1 04                                     	mov    ecx,DWORD PTR [ecx+eax*8+0x4]
  797772:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  797776:	89 4c c2 04                                     	mov    DWORD PTR [edx+eax*8+0x4],ecx
  79777a:	83 c0 01                                        	add    eax,0x1
  79777d:	3b 44 24 10                                     	cmp    eax,DWORD PTR [esp+0x10]
  797781:	7c dd                                           	jl     0x797760
  797783:	8b 06                                           	mov    eax,DWORD PTR [esi]
  797785:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  79778b:	8b ce                                           	mov    ecx,esi
  79778d:	ff d2                                           	call   edx
  79778f:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  797792:	6a 00                                           	push   0x0
  797794:	51                                              	push   ecx
  797795:	8b da                                           	mov    ebx,edx
  797797:	6a ff                                           	push   0xffffffff
  797799:	8b f8                                           	mov    edi,eax
  79779b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  79779d:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
  7977a3:	53                                              	push   ebx
  7977a4:	57                                              	push   edi
  7977a5:	8b ce                                           	mov    ecx,esi
  7977a7:	ff d2                                           	call   edx
  7977a9:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  7977ad:	50                                              	push   eax
  7977ae:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  7977b2:	51                                              	push   ecx
  7977b3:	8d 54 24 48                                     	lea    edx,[esp+0x48]
  7977b7:	52                                              	push   edx
  7977b8:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
  7977bc:	50                                              	push   eax
  7977bd:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7977c1:	51                                              	push   ecx
  7977c2:	e8 39 6e 1e 00                                  	call   0x97e600
  7977c7:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  7977cb:	83 c4 14                                        	add    esp,0x14
  7977ce:	53                                              	push   ebx
  7977cf:	57                                              	push   edi
  7977d0:	8d 54 24 38                                     	lea    edx,[esp+0x38]
  7977d4:	52                                              	push   edx
  7977d5:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  7977d8:	51                                              	push   ecx
  7977d9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7977dc:	8d 44 24 50                                     	lea    eax,[esp+0x50]
  7977e0:	50                                              	push   eax
  7977e1:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  7977e5:	51                                              	push   ecx
  7977e6:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  7977ea:	52                                              	push   edx
  7977eb:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  7977ef:	50                                              	push   eax
  7977f0:	e8 3b 3e 24 00                                  	call   0x9db630
  7977f5:	84 c0                                           	test   al,al
  7977f7:	74 0e                                           	je     0x797807
  7977f9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7977fb:	8b 82 1c 01 00 00                               	mov    eax,DWORD PTR [edx+0x11c]
  797801:	8b ce                                           	mov    ecx,esi
  797803:	ff d0                                           	call   eax
  797805:	eb 65                                           	jmp    0x79786c
  797807:	6a 01                                           	push   0x1
  797809:	6a 10                                           	push   0x10
  79780b:	33 c0                                           	xor    eax,eax
  79780d:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  797811:	51                                              	push   ecx
  797812:	50                                              	push   eax
  797813:	68 87 00 00 00                                  	push   0x87
  797818:	8d 8c 24 84 00 00 00                            	lea    ecx,[esp+0x84]
  79781f:	c7 84 24 84 00 00 00 f4 a6 fb 00                	mov    DWORD PTR [esp+0x84],0xfba6f4
  79782a:	66 89 84 24 8c 00 00 00                         	mov    WORD PTR [esp+0x8c],ax
  797832:	66 89 84 24 8e 00 00 00                         	mov    WORD PTR [esp+0x8e],ax
  79783a:	e8 81 e1 d5 ff                                  	call   0x4f59c0
  79783f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  797841:	8b 92 24 01 00 00                               	mov    edx,DWORD PTR [edx+0x124]
  797847:	8d 44 24 70                                     	lea    eax,[esp+0x70]
  79784b:	50                                              	push   eax
  79784c:	53                                              	push   ebx
  79784d:	57                                              	push   edi
  79784e:	8b ce                                           	mov    ecx,esi
  797850:	ff d2                                           	call   edx
  797852:	f6 44 24 78 04                                  	test   BYTE PTR [esp+0x78],0x4
  797857:	c7 44 24 70 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x70],0xfba6f4
  79785f:	74 0b                                           	je     0x79786c
  797861:	6a 00                                           	push   0x0
  797863:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
  797867:	e8 f4 de d5 ff                                  	call   0x4f5760
  79786c:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  797870:	85 c0                                           	test   eax,eax
  797872:	74 09                                           	je     0x79787d
  797874:	50                                              	push   eax
  797875:	e8 66 cc d4 ff                                  	call   0x4e44e0
  79787a:	83 c4 04                                        	add    esp,0x4
  79787d:	5f                                              	pop    edi
  79787e:	5e                                              	pop    esi
  79787f:	5b                                              	pop    ebx
  797880:	8b e5                                           	mov    esp,ebp
  797882:	5d                                              	pop    ebp
  797883:	c3                                              	ret
  797884:	cc                                              	int3
  797885:	cc                                              	int3
  797886:	cc                                              	int3
  797887:	cc                                              	int3
  797888:	cc                                              	int3
  797889:	cc                                              	int3
  79788a:	cc                                              	int3
  79788b:	cc                                              	int3
  79788c:	cc                                              	int3
  79788d:	cc                                              	int3
  79788e:	cc                                              	int3
  79788f:	cc                                              	int3
