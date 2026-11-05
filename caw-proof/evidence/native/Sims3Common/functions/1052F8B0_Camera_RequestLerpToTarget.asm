# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f8b0 (Camera_RequestLerpToTarget)
Paired Ghidra pseudocode: 1052F8B0_Camera_RequestLerpToTarget.c
Window: [0x1052f8b0, 0x1052f9c0) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f9c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f8b0: 55 8b ec 83 e4 f0 83 ec 14 f3 0f 10 4d 10 f3 0f
1052f8c0: 10 45 08 f3 0f 11 4c 24 0c f3 0f 10 4d 0c 53 f3
1052f8d0: 0f 11 44 24 14 f3 0f 11 4c 24 0c f3 0f 11 44 24
1052f8e0: 08 0f 28 44 24 08 56 57 0f 29 44 24 10 e8 3e cd
1052f8f0: 22 00 85 c0 0f 84 b2 00 00 00 8b c8 e8 7f 81 40
1052f900: 00 85 c0 0f 84 a3 00 00 00 8b c8 e8 40 d0 22 00
1052f910: 8b f0 85 f6 0f 84 92 00 00 00 8b 06 8b 50 0c 68
1052f920: 89 dd 0f 11 8b ce ff d2 8b f8 8b 06 8b 50 0c 68
1052f930: db 4e 39 4d 8b ce ff d2 8b d8 8b 06 8b 50 0c 68
1052f940: 9b 61 bc 14 8b ce ff d2 85 ff 74 24 8b 45 18 d9
1052f950: 45 14 6a 01 6a 00 6a 01 50 51 8d 4c 24 24 d9 1c
1052f960: 24 51 8b cf e8 c7 76 23 00 5f 5e 5b 8b e5 5d c3
1052f970: 85 db 74 21 8b cb e8 65 cd 23 00 d9 45 14 51 8d
1052f980: 54 24 14 d9 1c 24 52 8b cb e8 92 cf 23 00 5f 5e
1052f990: 5b 8b e5 5d c3 85 c0 74 13 d9 45 14 51 8d 4c 24
1052f9a0: 14 d9 1c 24 51 8b c8 e8 34 a7 22 00 5f 5e 5b 8b
1052f9b0: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052f8b0 <.text+0x52e8b0>:
1052f8b0:	55                                              	push   ebp
1052f8b1:	8b ec                                           	mov    ebp,esp
1052f8b3:	83 e4 f0                                        	and    esp,0xfffffff0
1052f8b6:	83 ec 14                                        	sub    esp,0x14
1052f8b9:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
1052f8be:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
1052f8c3:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1052f8c9:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
1052f8ce:	53                                              	push   ebx
1052f8cf:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1052f8d5:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1052f8db:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1052f8e1:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
1052f8e6:	56                                              	push   esi
1052f8e7:	57                                              	push   edi
1052f8e8:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1052f8ed:	e8 3e cd 22 00                                  	call   0x1075c630
1052f8f2:	85 c0                                           	test   eax,eax
1052f8f4:	0f 84 b2 00 00 00                               	je     0x1052f9ac
1052f8fa:	8b c8                                           	mov    ecx,eax
1052f8fc:	e8 7f 81 40 00                                  	call   0x10937a80
1052f901:	85 c0                                           	test   eax,eax
1052f903:	0f 84 a3 00 00 00                               	je     0x1052f9ac
1052f909:	8b c8                                           	mov    ecx,eax
1052f90b:	e8 40 d0 22 00                                  	call   0x1075c950
1052f910:	8b f0                                           	mov    esi,eax
1052f912:	85 f6                                           	test   esi,esi
1052f914:	0f 84 92 00 00 00                               	je     0x1052f9ac
1052f91a:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052f91c:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1052f91f:	68 89 dd 0f 11                                  	push   0x110fdd89
1052f924:	8b ce                                           	mov    ecx,esi
1052f926:	ff d2                                           	call   edx
1052f928:	8b f8                                           	mov    edi,eax
1052f92a:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052f92c:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1052f92f:	68 db 4e 39 4d                                  	push   0x4d394edb
1052f934:	8b ce                                           	mov    ecx,esi
1052f936:	ff d2                                           	call   edx
1052f938:	8b d8                                           	mov    ebx,eax
1052f93a:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052f93c:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1052f93f:	68 9b 61 bc 14                                  	push   0x14bc619b
1052f944:	8b ce                                           	mov    ecx,esi
1052f946:	ff d2                                           	call   edx
1052f948:	85 ff                                           	test   edi,edi
1052f94a:	74 24                                           	je     0x1052f970
1052f94c:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
1052f94f:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
1052f952:	6a 01                                           	push   0x1
1052f954:	6a 00                                           	push   0x0
1052f956:	6a 01                                           	push   0x1
1052f958:	50                                              	push   eax
1052f959:	51                                              	push   ecx
1052f95a:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1052f95e:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052f961:	51                                              	push   ecx
1052f962:	8b cf                                           	mov    ecx,edi
1052f964:	e8 c7 76 23 00                                  	call   0x10767030
1052f969:	5f                                              	pop    edi
1052f96a:	5e                                              	pop    esi
1052f96b:	5b                                              	pop    ebx
1052f96c:	8b e5                                           	mov    esp,ebp
1052f96e:	5d                                              	pop    ebp
1052f96f:	c3                                              	ret
1052f970:	85 db                                           	test   ebx,ebx
1052f972:	74 21                                           	je     0x1052f995
1052f974:	8b cb                                           	mov    ecx,ebx
1052f976:	e8 65 cd 23 00                                  	call   0x1076c6e0
1052f97b:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
1052f97e:	51                                              	push   ecx
1052f97f:	8d 54 24 14                                     	lea    edx,[esp+0x14]
1052f983:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052f986:	52                                              	push   edx
1052f987:	8b cb                                           	mov    ecx,ebx
1052f989:	e8 92 cf 23 00                                  	call   0x1076c920
1052f98e:	5f                                              	pop    edi
1052f98f:	5e                                              	pop    esi
1052f990:	5b                                              	pop    ebx
1052f991:	8b e5                                           	mov    esp,ebp
1052f993:	5d                                              	pop    ebp
1052f994:	c3                                              	ret
1052f995:	85 c0                                           	test   eax,eax
1052f997:	74 13                                           	je     0x1052f9ac
1052f999:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
1052f99c:	51                                              	push   ecx
1052f99d:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1052f9a1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052f9a4:	51                                              	push   ecx
1052f9a5:	8b c8                                           	mov    ecx,eax
1052f9a7:	e8 34 a7 22 00                                  	call   0x1075a0e0
1052f9ac:	5f                                              	pop    edi
1052f9ad:	5e                                              	pop    esi
1052f9ae:	5b                                              	pop    ebx
1052f9af:	8b e5                                           	mov    esp,ebp
1052f9b1:	5d                                              	pop    ebp
1052f9b2:	c3                                              	ret
1052f9b3:	cc                                              	int3
1052f9b4:	cc                                              	int3
1052f9b5:	cc                                              	int3
1052f9b6:	cc                                              	int3
1052f9b7:	cc                                              	int3
1052f9b8:	cc                                              	int3
1052f9b9:	cc                                              	int3
1052f9ba:	cc                                              	int3
1052f9bb:	cc                                              	int3
1052f9bc:	cc                                              	int3
1052f9bd:	cc                                              	int3
1052f9be:	cc                                              	int3
1052f9bf:	cc                                              	int3
