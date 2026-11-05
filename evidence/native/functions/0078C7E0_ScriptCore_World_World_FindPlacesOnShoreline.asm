# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078c7e0 (ScriptCore.World::World_FindPlacesOnShoreline)
Paired Ghidra pseudocode: 0078C7E0_ScriptCore_World_World_FindPlacesOnShoreline.c
Window: [0x0078c7e0, 0x0078c9c0) (480 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078c9c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078c7e0: 55 8b ec 83 e4 f0 83 ec 34 53 56 57 e8 7f ad 1a
0078c7f0: 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 80 b7 1a 00
0078c800: 85 c0 89 44 24 18 0f 84 a1 01 00 00 8d 48 04 8b
0078c810: d1 be 01 00 00 00 f0 0f c1 32 8b 7d 10 85 ff 0f
0078c820: 84 6b 01 00 00 8b 15 c4 db 1e 01 85 d2 89 54 24
0078c830: 1c 0f 84 59 01 00 00 e8 54 cb fd ff f3 0f 10 4f
0078c840: 08 f3 0f 10 07 f3 0f 11 4c 24 28 f3 0f 10 4f 04
0078c850: 8b 7d 14 8b f0 33 c9 8d 04 7f ba 04 00 00 00 f7
0078c860: e2 6a 00 0f 90 c1 6a 00 6a 00 6a 00 f3 0f 11 44
0078c870: 24 3c f3 0f 11 4c 24 34 f3 0f 11 44 24 30 0f 28
0078c880: 44 24 30 68 a8 18 01 01 f7 d9 0b c8 51 0f 29 44
0078c890: 24 48 c7 44 24 28 00 00 00 00 e8 61 7c d5 ff 8b
0078c8a0: d8 33 c9 8d 04 bd 00 00 00 00 ba 04 00 00 00 f7
0078c8b0: e2 6a 00 0f 90 c1 6a 00 6a 00 6a 00 68 a8 18 01
0078c8c0: 01 f7 d9 0b c8 51 e8 35 7c d5 ff 8b 4d 18 50 53
0078c8d0: 89 44 24 4c 8d 44 24 48 50 8b 44 24 54 51 8b 4c
0078c8e0: 24 5c 57 8d 54 24 74 52 50 51 e8 01 8f 4e 00 83
0078c8f0: c4 50 84 c0 88 44 24 0f 74 6f 8b 44 24 10 8b 16
0078c900: 8b 7d 1c 8b 92 90 00 00 00 8d 04 40 50 57 8b ce
0078c910: ff d2 8b 4c 24 10 8b 06 8d 14 8d 00 00 00 00 8b
0078c920: 4d 20 52 8b 90 90 00 00 00 51 8b ce ff d2 8b 44
0078c930: 24 10 8b 16 8b 92 a8 00 00 00 8d 04 40 50 6a 00
0078c940: 53 57 8b ce ff d2 8b 4c 24 10 8b 06 8b 80 a8 00
0078c950: 00 00 8d 14 8d 00 00 00 00 8b 4c 24 14 52 8b 55
0078c960: 20 6a 00 51 52 8b ce ff d0 53 e8 71 7b d5 ff 8b
0078c970: 4c 24 18 51 e8 67 7b d5 ff 83 c4 08 8d 4c 24 18
0078c980: e8 5b 99 fb ff 8a 44 24 0f 5f 5e 5b 8b e5 5d c3
0078c990: 8b d1 83 ce ff f0 0f c1 32 4e 75 11 ba 01 00 00
0078c9a0: 00 87 11 8b 10 8b c8 8b 02 6a 01 ff d0 5f 5e 32
0078c9b0: c0 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078c7e0 <.text+0x38b7e0>:
  78c7e0:	55                                              	push   ebp
  78c7e1:	8b ec                                           	mov    ebp,esp
  78c7e3:	83 e4 f0                                        	and    esp,0xfffffff0
  78c7e6:	83 ec 34                                        	sub    esp,0x34
  78c7e9:	53                                              	push   ebx
  78c7ea:	56                                              	push   esi
  78c7eb:	57                                              	push   edi
  78c7ec:	e8 7f ad 1a 00                                  	call   0x937570
  78c7f1:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  78c7f4:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  78c7f7:	51                                              	push   ecx
  78c7f8:	52                                              	push   edx
  78c7f9:	8b c8                                           	mov    ecx,eax
  78c7fb:	e8 80 b7 1a 00                                  	call   0x937f80
  78c800:	85 c0                                           	test   eax,eax
  78c802:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  78c806:	0f 84 a1 01 00 00                               	je     0x78c9ad
  78c80c:	8d 48 04                                        	lea    ecx,[eax+0x4]
  78c80f:	8b d1                                           	mov    edx,ecx
  78c811:	be 01 00 00 00                                  	mov    esi,0x1
  78c816:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  78c81a:	8b 7d 10                                        	mov    edi,DWORD PTR [ebp+0x10]
  78c81d:	85 ff                                           	test   edi,edi
  78c81f:	0f 84 6b 01 00 00                               	je     0x78c990
  78c825:	8b 15 c4 db 1e 01                               	mov    edx,DWORD PTR ds:0x11edbc4
  78c82b:	85 d2                                           	test   edx,edx
  78c82d:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  78c831:	0f 84 59 01 00 00                               	je     0x78c990
  78c837:	e8 54 cb fd ff                                  	call   0x769390
  78c83c:	f3 0f 10 4f 08                                  	movss  xmm1,DWORD PTR [edi+0x8]
  78c841:	f3 0f 10 07                                     	movss  xmm0,DWORD PTR [edi]
  78c845:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [esp+0x28],xmm1
  78c84b:	f3 0f 10 4f 04                                  	movss  xmm1,DWORD PTR [edi+0x4]
  78c850:	8b 7d 14                                        	mov    edi,DWORD PTR [ebp+0x14]
  78c853:	8b f0                                           	mov    esi,eax
  78c855:	33 c9                                           	xor    ecx,ecx
  78c857:	8d 04 7f                                        	lea    eax,[edi+edi*2]
  78c85a:	ba 04 00 00 00                                  	mov    edx,0x4
  78c85f:	f7 e2                                           	mul    edx
  78c861:	6a 00                                           	push   0x0
  78c863:	0f 90 c1                                        	seto   cl
  78c866:	6a 00                                           	push   0x0
  78c868:	6a 00                                           	push   0x0
  78c86a:	6a 00                                           	push   0x0
  78c86c:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  78c872:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
  78c878:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  78c87e:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
  78c883:	68 a8 18 01 01                                  	push   0x10118a8
  78c888:	f7 d9                                           	neg    ecx
  78c88a:	0b c8                                           	or     ecx,eax
  78c88c:	51                                              	push   ecx
  78c88d:	0f 29 44 24 48                                  	movaps XMMWORD PTR [esp+0x48],xmm0
  78c892:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
  78c89a:	e8 61 7c d5 ff                                  	call   0x4e4500
  78c89f:	8b d8                                           	mov    ebx,eax
  78c8a1:	33 c9                                           	xor    ecx,ecx
  78c8a3:	8d 04 bd 00 00 00 00                            	lea    eax,[edi*4+0x0]
  78c8aa:	ba 04 00 00 00                                  	mov    edx,0x4
  78c8af:	f7 e2                                           	mul    edx
  78c8b1:	6a 00                                           	push   0x0
  78c8b3:	0f 90 c1                                        	seto   cl
  78c8b6:	6a 00                                           	push   0x0
  78c8b8:	6a 00                                           	push   0x0
  78c8ba:	6a 00                                           	push   0x0
  78c8bc:	68 a8 18 01 01                                  	push   0x10118a8
  78c8c1:	f7 d9                                           	neg    ecx
  78c8c3:	0b c8                                           	or     ecx,eax
  78c8c5:	51                                              	push   ecx
  78c8c6:	e8 35 7c d5 ff                                  	call   0x4e4500
  78c8cb:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
  78c8ce:	50                                              	push   eax
  78c8cf:	53                                              	push   ebx
  78c8d0:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
  78c8d4:	8d 44 24 48                                     	lea    eax,[esp+0x48]
  78c8d8:	50                                              	push   eax
  78c8d9:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
  78c8dd:	51                                              	push   ecx
  78c8de:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
  78c8e2:	57                                              	push   edi
  78c8e3:	8d 54 24 74                                     	lea    edx,[esp+0x74]
  78c8e7:	52                                              	push   edx
  78c8e8:	50                                              	push   eax
  78c8e9:	51                                              	push   ecx
  78c8ea:	e8 01 8f 4e 00                                  	call   0xc757f0
  78c8ef:	83 c4 50                                        	add    esp,0x50
  78c8f2:	84 c0                                           	test   al,al
  78c8f4:	88 44 24 0f                                     	mov    BYTE PTR [esp+0xf],al
  78c8f8:	74 6f                                           	je     0x78c969
  78c8fa:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  78c8fe:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78c900:	8b 7d 1c                                        	mov    edi,DWORD PTR [ebp+0x1c]
  78c903:	8b 92 90 00 00 00                               	mov    edx,DWORD PTR [edx+0x90]
  78c909:	8d 04 40                                        	lea    eax,[eax+eax*2]
  78c90c:	50                                              	push   eax
  78c90d:	57                                              	push   edi
  78c90e:	8b ce                                           	mov    ecx,esi
  78c910:	ff d2                                           	call   edx
  78c912:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78c916:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78c918:	8d 14 8d 00 00 00 00                            	lea    edx,[ecx*4+0x0]
  78c91f:	8b 4d 20                                        	mov    ecx,DWORD PTR [ebp+0x20]
  78c922:	52                                              	push   edx
  78c923:	8b 90 90 00 00 00                               	mov    edx,DWORD PTR [eax+0x90]
  78c929:	51                                              	push   ecx
  78c92a:	8b ce                                           	mov    ecx,esi
  78c92c:	ff d2                                           	call   edx
  78c92e:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  78c932:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78c934:	8b 92 a8 00 00 00                               	mov    edx,DWORD PTR [edx+0xa8]
  78c93a:	8d 04 40                                        	lea    eax,[eax+eax*2]
  78c93d:	50                                              	push   eax
  78c93e:	6a 00                                           	push   0x0
  78c940:	53                                              	push   ebx
  78c941:	57                                              	push   edi
  78c942:	8b ce                                           	mov    ecx,esi
  78c944:	ff d2                                           	call   edx
  78c946:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78c94a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78c94c:	8b 80 a8 00 00 00                               	mov    eax,DWORD PTR [eax+0xa8]
  78c952:	8d 14 8d 00 00 00 00                            	lea    edx,[ecx*4+0x0]
  78c959:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  78c95d:	52                                              	push   edx
  78c95e:	8b 55 20                                        	mov    edx,DWORD PTR [ebp+0x20]
  78c961:	6a 00                                           	push   0x0
  78c963:	51                                              	push   ecx
  78c964:	52                                              	push   edx
  78c965:	8b ce                                           	mov    ecx,esi
  78c967:	ff d0                                           	call   eax
  78c969:	53                                              	push   ebx
  78c96a:	e8 71 7b d5 ff                                  	call   0x4e44e0
  78c96f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  78c973:	51                                              	push   ecx
  78c974:	e8 67 7b d5 ff                                  	call   0x4e44e0
  78c979:	83 c4 08                                        	add    esp,0x8
  78c97c:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  78c980:	e8 5b 99 fb ff                                  	call   0x7462e0
  78c985:	8a 44 24 0f                                     	mov    al,BYTE PTR [esp+0xf]
  78c989:	5f                                              	pop    edi
  78c98a:	5e                                              	pop    esi
  78c98b:	5b                                              	pop    ebx
  78c98c:	8b e5                                           	mov    esp,ebp
  78c98e:	5d                                              	pop    ebp
  78c98f:	c3                                              	ret
  78c990:	8b d1                                           	mov    edx,ecx
  78c992:	83 ce ff                                        	or     esi,0xffffffff
  78c995:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  78c999:	4e                                              	dec    esi
  78c99a:	75 11                                           	jne    0x78c9ad
  78c99c:	ba 01 00 00 00                                  	mov    edx,0x1
  78c9a1:	87 11                                           	xchg   DWORD PTR [ecx],edx
  78c9a3:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78c9a5:	8b c8                                           	mov    ecx,eax
  78c9a7:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78c9a9:	6a 01                                           	push   0x1
  78c9ab:	ff d0                                           	call   eax
  78c9ad:	5f                                              	pop    edi
  78c9ae:	5e                                              	pop    esi
  78c9af:	32 c0                                           	xor    al,al
  78c9b1:	5b                                              	pop    ebx
  78c9b2:	8b e5                                           	mov    esp,ebp
  78c9b4:	5d                                              	pop    ebp
  78c9b5:	c3                                              	ret
  78c9b6:	cc                                              	int3
  78c9b7:	cc                                              	int3
  78c9b8:	cc                                              	int3
  78c9b9:	cc                                              	int3
  78c9ba:	cc                                              	int3
  78c9bb:	cc                                              	int3
  78c9bc:	cc                                              	int3
  78c9bd:	cc                                              	int3
  78c9be:	cc                                              	int3
  78c9bf:	cc                                              	int3
