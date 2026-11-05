# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078b840 (ScriptCore.World::World_FindPlacesOnRoad)
Paired Ghidra pseudocode: 0078B840_ScriptCore_World_World_FindPlacesOnRoad.c
Window: [0x0078b840, 0x0078ba20) (480 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078ba20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078b840: 55 8b ec 83 e4 f0 83 ec 44 53 56 57 e8 1f bd 1a
0078b850: 00 33 db 3b c3 0f 84 bb 01 00 00 8b 4d 0c 8b 55
0078b860: 08 51 52 8b c8 e8 16 c7 1a 00 3b c3 89 44 24 28
0078b870: 74 0c 8d 48 04 ba 01 00 00 00 f0 0f c1 11 8b 75
0078b880: 14 3b f3 0f 84 69 01 00 00 8b 0d c4 db 1e 01 3b
0078b890: cb 89 4c 24 2c 0f 84 57 01 00 00 e8 f0 da fd ff
0078b8a0: f3 0f 10 4e 08 f3 0f 10 06 f3 0f 11 4c 24 38 f3
0078b8b0: 0f 10 4e 04 8b f8 8b 45 10 3b c3 f3 0f 11 44 24
0078b8c0: 3c f3 0f 11 4c 24 34 f3 0f 11 44 24 30 0f 28 44
0078b8d0: 24 30 0f 29 44 24 40 89 5c 24 20 89 5c 24 1c 74
0078b8e0: 14 8b 17 8b 52 68 8d 4c 24 1c 51 8d 4c 24 24 51
0078b8f0: 50 8b cf ff d2 8b 75 1c 33 c9 8d 04 76 ba 04 00
0078b900: 00 00 f7 e2 53 0f 90 c1 53 53 53 68 a8 18 01 01
0078b910: 89 5c 24 2c f7 d9 0b c8 51 e8 e2 8b d5 ff 8b d8
0078b920: 33 c9 8d 04 b5 00 00 00 00 ba 04 00 00 00 f7 e2
0078b930: 6a 00 0f 90 c1 6a 00 6a 00 6a 00 68 a8 18 01 01
0078b940: f7 d9 0b c8 51 e8 b6 8b d5 ff d9 45 20 83 c4 30
0078b950: 50 53 89 44 24 2c 8d 44 24 20 50 8b 44 24 28 51
0078b960: 8b 4d 18 d9 1c 24 56 51 8b 4c 24 38 8d 54 24 58
0078b970: 52 8b 54 24 44 50 8b 44 24 4c 51 52 50 e8 0e fb
0078b980: 4e 00 83 c4 2c 84 c0 88 44 24 17 74 3e 8b 44 24
0078b990: 18 8b 4d 24 8b 17 8b 92 a8 00 00 00 8d 04 40 50
0078b9a0: 6a 00 53 51 8b cf ff d2 8b 4c 24 18 8b 07 8b 80
0078b9b0: a8 00 00 00 8d 14 8d 00 00 00 00 8b 4c 24 24 52
0078b9c0: 8b 55 28 6a 00 51 52 8b cf ff d0 53 e8 0f 8b d5
0078b9d0: ff 8b 4c 24 28 51 e8 05 8b d5 ff 83 c4 08 8d 4c
0078b9e0: 24 28 e8 f9 a8 fb ff 8a 44 24 17 5f 5e 5b 8b e5
0078b9f0: 5d c3 3b c3 74 20 8d 48 04 8b d1 83 ce ff f0 0f
0078ba00: c1 32 4e 75 11 ba 01 00 00 00 87 11 8b 10 8b c8
0078ba10: 8b 02 6a 01 ff d0 5f 5e 32 c0 5b 8b e5 5d c3 cc

LINEAR DISASSEMBLY
0078b840 <.text+0x38a840>:
  78b840:	55                                              	push   ebp
  78b841:	8b ec                                           	mov    ebp,esp
  78b843:	83 e4 f0                                        	and    esp,0xfffffff0
  78b846:	83 ec 44                                        	sub    esp,0x44
  78b849:	53                                              	push   ebx
  78b84a:	56                                              	push   esi
  78b84b:	57                                              	push   edi
  78b84c:	e8 1f bd 1a 00                                  	call   0x937570
  78b851:	33 db                                           	xor    ebx,ebx
  78b853:	3b c3                                           	cmp    eax,ebx
  78b855:	0f 84 bb 01 00 00                               	je     0x78ba16
  78b85b:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  78b85e:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  78b861:	51                                              	push   ecx
  78b862:	52                                              	push   edx
  78b863:	8b c8                                           	mov    ecx,eax
  78b865:	e8 16 c7 1a 00                                  	call   0x937f80
  78b86a:	3b c3                                           	cmp    eax,ebx
  78b86c:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  78b870:	74 0c                                           	je     0x78b87e
  78b872:	8d 48 04                                        	lea    ecx,[eax+0x4]
  78b875:	ba 01 00 00 00                                  	mov    edx,0x1
  78b87a:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  78b87e:	8b 75 14                                        	mov    esi,DWORD PTR [ebp+0x14]
  78b881:	3b f3                                           	cmp    esi,ebx
  78b883:	0f 84 69 01 00 00                               	je     0x78b9f2
  78b889:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78b88f:	3b cb                                           	cmp    ecx,ebx
  78b891:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
  78b895:	0f 84 57 01 00 00                               	je     0x78b9f2
  78b89b:	e8 f0 da fd ff                                  	call   0x769390
  78b8a0:	f3 0f 10 4e 08                                  	movss  xmm1,DWORD PTR [esi+0x8]
  78b8a5:	f3 0f 10 06                                     	movss  xmm0,DWORD PTR [esi]
  78b8a9:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
  78b8af:	f3 0f 10 4e 04                                  	movss  xmm1,DWORD PTR [esi+0x4]
  78b8b4:	8b f8                                           	mov    edi,eax
  78b8b6:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  78b8b9:	3b c3                                           	cmp    eax,ebx
  78b8bb:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  78b8c1:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
  78b8c7:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  78b8cd:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
  78b8d2:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  78b8d7:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  78b8db:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  78b8df:	74 14                                           	je     0x78b8f5
  78b8e1:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78b8e3:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
  78b8e6:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  78b8ea:	51                                              	push   ecx
  78b8eb:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  78b8ef:	51                                              	push   ecx
  78b8f0:	50                                              	push   eax
  78b8f1:	8b cf                                           	mov    ecx,edi
  78b8f3:	ff d2                                           	call   edx
  78b8f5:	8b 75 1c                                        	mov    esi,DWORD PTR [ebp+0x1c]
  78b8f8:	33 c9                                           	xor    ecx,ecx
  78b8fa:	8d 04 76                                        	lea    eax,[esi+esi*2]
  78b8fd:	ba 04 00 00 00                                  	mov    edx,0x4
  78b902:	f7 e2                                           	mul    edx
  78b904:	53                                              	push   ebx
  78b905:	0f 90 c1                                        	seto   cl
  78b908:	53                                              	push   ebx
  78b909:	53                                              	push   ebx
  78b90a:	53                                              	push   ebx
  78b90b:	68 a8 18 01 01                                  	push   0x10118a8
  78b910:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  78b914:	f7 d9                                           	neg    ecx
  78b916:	0b c8                                           	or     ecx,eax
  78b918:	51                                              	push   ecx
  78b919:	e8 e2 8b d5 ff                                  	call   0x4e4500
  78b91e:	8b d8                                           	mov    ebx,eax
  78b920:	33 c9                                           	xor    ecx,ecx
  78b922:	8d 04 b5 00 00 00 00                            	lea    eax,[esi*4+0x0]
  78b929:	ba 04 00 00 00                                  	mov    edx,0x4
  78b92e:	f7 e2                                           	mul    edx
  78b930:	6a 00                                           	push   0x0
  78b932:	0f 90 c1                                        	seto   cl
  78b935:	6a 00                                           	push   0x0
  78b937:	6a 00                                           	push   0x0
  78b939:	6a 00                                           	push   0x0
  78b93b:	68 a8 18 01 01                                  	push   0x10118a8
  78b940:	f7 d9                                           	neg    ecx
  78b942:	0b c8                                           	or     ecx,eax
  78b944:	51                                              	push   ecx
  78b945:	e8 b6 8b d5 ff                                  	call   0x4e4500
  78b94a:	d9 45 20                                        	fld    DWORD PTR [ebp+0x20]
  78b94d:	83 c4 30                                        	add    esp,0x30
  78b950:	50                                              	push   eax
  78b951:	53                                              	push   ebx
  78b952:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  78b956:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  78b95a:	50                                              	push   eax
  78b95b:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  78b95f:	51                                              	push   ecx
  78b960:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
  78b963:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78b966:	56                                              	push   esi
  78b967:	51                                              	push   ecx
  78b968:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  78b96c:	8d 54 24 58                                     	lea    edx,[esp+0x58]
  78b970:	52                                              	push   edx
  78b971:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  78b975:	50                                              	push   eax
  78b976:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  78b97a:	51                                              	push   ecx
  78b97b:	52                                              	push   edx
  78b97c:	50                                              	push   eax
  78b97d:	e8 0e fb 4e 00                                  	call   0xc7b490
  78b982:	83 c4 2c                                        	add    esp,0x2c
  78b985:	84 c0                                           	test   al,al
  78b987:	88 44 24 17                                     	mov    BYTE PTR [esp+0x17],al
  78b98b:	74 3e                                           	je     0x78b9cb
  78b98d:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  78b991:	8b 4d 24                                        	mov    ecx,DWORD PTR [ebp+0x24]
  78b994:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78b996:	8b 92 a8 00 00 00                               	mov    edx,DWORD PTR [edx+0xa8]
  78b99c:	8d 04 40                                        	lea    eax,[eax+eax*2]
  78b99f:	50                                              	push   eax
  78b9a0:	6a 00                                           	push   0x0
  78b9a2:	53                                              	push   ebx
  78b9a3:	51                                              	push   ecx
  78b9a4:	8b cf                                           	mov    ecx,edi
  78b9a6:	ff d2                                           	call   edx
  78b9a8:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  78b9ac:	8b 07                                           	mov    eax,DWORD PTR [edi]
  78b9ae:	8b 80 a8 00 00 00                               	mov    eax,DWORD PTR [eax+0xa8]
  78b9b4:	8d 14 8d 00 00 00 00                            	lea    edx,[ecx*4+0x0]
  78b9bb:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  78b9bf:	52                                              	push   edx
  78b9c0:	8b 55 28                                        	mov    edx,DWORD PTR [ebp+0x28]
  78b9c3:	6a 00                                           	push   0x0
  78b9c5:	51                                              	push   ecx
  78b9c6:	52                                              	push   edx
  78b9c7:	8b cf                                           	mov    ecx,edi
  78b9c9:	ff d0                                           	call   eax
  78b9cb:	53                                              	push   ebx
  78b9cc:	e8 0f 8b d5 ff                                  	call   0x4e44e0
  78b9d1:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  78b9d5:	51                                              	push   ecx
  78b9d6:	e8 05 8b d5 ff                                  	call   0x4e44e0
  78b9db:	83 c4 08                                        	add    esp,0x8
  78b9de:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  78b9e2:	e8 f9 a8 fb ff                                  	call   0x7462e0
  78b9e7:	8a 44 24 17                                     	mov    al,BYTE PTR [esp+0x17]
  78b9eb:	5f                                              	pop    edi
  78b9ec:	5e                                              	pop    esi
  78b9ed:	5b                                              	pop    ebx
  78b9ee:	8b e5                                           	mov    esp,ebp
  78b9f0:	5d                                              	pop    ebp
  78b9f1:	c3                                              	ret
  78b9f2:	3b c3                                           	cmp    eax,ebx
  78b9f4:	74 20                                           	je     0x78ba16
  78b9f6:	8d 48 04                                        	lea    ecx,[eax+0x4]
  78b9f9:	8b d1                                           	mov    edx,ecx
  78b9fb:	83 ce ff                                        	or     esi,0xffffffff
  78b9fe:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  78ba02:	4e                                              	dec    esi
  78ba03:	75 11                                           	jne    0x78ba16
  78ba05:	ba 01 00 00 00                                  	mov    edx,0x1
  78ba0a:	87 11                                           	xchg   DWORD PTR [ecx],edx
  78ba0c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78ba0e:	8b c8                                           	mov    ecx,eax
  78ba10:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78ba12:	6a 01                                           	push   0x1
  78ba14:	ff d0                                           	call   eax
  78ba16:	5f                                              	pop    edi
  78ba17:	5e                                              	pop    esi
  78ba18:	32 c0                                           	xor    al,al
  78ba1a:	5b                                              	pop    ebx
  78ba1b:	8b e5                                           	mov    esp,ebp
  78ba1d:	5d                                              	pop    ebp
  78ba1e:	c3                                              	ret
  78ba1f:	cc                                              	int3
