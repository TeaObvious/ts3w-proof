# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073d910 (ScriptCore.CameraController::Camera_RequestLerpToTarget)
Paired Ghidra pseudocode: 0073D910_ScriptCore_CameraController_Camera_RequestLerpToTarget.c
Window: [0x0073d910, 0x0073da20) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073da20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073d910: 55 8b ec 83 e4 f0 83 ec 14 f3 0f 10 4d 10 f3 0f
0073d920: 10 45 08 f3 0f 11 4c 24 0c f3 0f 10 4d 0c 53 f3
0073d930: 0f 11 44 24 14 f3 0f 11 4c 24 0c f3 0f 11 44 24
0073d940: 08 0f 28 44 24 08 56 57 0f 29 44 24 10 e8 7e c2
0073d950: 22 00 85 c0 0f 84 b2 00 00 00 8b c8 e8 8f 46 7e
0073d960: 00 85 c0 0f 84 a3 00 00 00 8b c8 e8 70 64 dd ff
0073d970: 8b f0 85 f6 0f 84 92 00 00 00 8b 06 8b 50 0c 68
0073d980: 89 dd 0f 11 8b ce ff d2 8b f8 8b 06 8b 50 0c 68
0073d990: db 4e 39 4d 8b ce ff d2 8b d8 8b 06 8b 50 0c 68
0073d9a0: 9b 61 bc 14 8b ce ff d2 85 ff 74 24 8b 45 18 d9
0073d9b0: 45 14 6a 01 6a 00 6a 01 50 51 8d 4c 24 24 d9 1c
0073d9c0: 24 51 8b cf e8 17 6d 23 00 5f 5e 5b 8b e5 5d c3
0073d9d0: 85 db 74 21 8b cb e8 d5 c3 23 00 d9 45 14 51 8d
0073d9e0: 54 24 14 d9 1c 24 52 8b cb e8 02 c6 23 00 5f 5e
0073d9f0: 5b 8b e5 5d c3 85 c0 74 13 d9 45 14 51 8d 4c 24
0073da00: 14 d9 1c 24 51 8b c8 e8 54 9d 22 00 5f 5e 5b 8b
0073da10: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073d910 <.text+0x33c910>:
  73d910:	55                                              	push   ebp
  73d911:	8b ec                                           	mov    ebp,esp
  73d913:	83 e4 f0                                        	and    esp,0xfffffff0
  73d916:	83 ec 14                                        	sub    esp,0x14
  73d919:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  73d91e:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  73d923:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  73d929:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  73d92e:	53                                              	push   ebx
  73d92f:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  73d935:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  73d93b:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  73d941:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
  73d946:	56                                              	push   esi
  73d947:	57                                              	push   edi
  73d948:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  73d94d:	e8 7e c2 22 00                                  	call   0x969bd0
  73d952:	85 c0                                           	test   eax,eax
  73d954:	0f 84 b2 00 00 00                               	je     0x73da0c
  73d95a:	8b c8                                           	mov    ecx,eax
  73d95c:	e8 8f 46 7e 00                                  	call   0xf21ff0
  73d961:	85 c0                                           	test   eax,eax
  73d963:	0f 84 a3 00 00 00                               	je     0x73da0c
  73d969:	8b c8                                           	mov    ecx,eax
  73d96b:	e8 70 64 dd ff                                  	call   0x513de0
  73d970:	8b f0                                           	mov    esi,eax
  73d972:	85 f6                                           	test   esi,esi
  73d974:	0f 84 92 00 00 00                               	je     0x73da0c
  73d97a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73d97c:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  73d97f:	68 89 dd 0f 11                                  	push   0x110fdd89
  73d984:	8b ce                                           	mov    ecx,esi
  73d986:	ff d2                                           	call   edx
  73d988:	8b f8                                           	mov    edi,eax
  73d98a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73d98c:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  73d98f:	68 db 4e 39 4d                                  	push   0x4d394edb
  73d994:	8b ce                                           	mov    ecx,esi
  73d996:	ff d2                                           	call   edx
  73d998:	8b d8                                           	mov    ebx,eax
  73d99a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73d99c:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  73d99f:	68 9b 61 bc 14                                  	push   0x14bc619b
  73d9a4:	8b ce                                           	mov    ecx,esi
  73d9a6:	ff d2                                           	call   edx
  73d9a8:	85 ff                                           	test   edi,edi
  73d9aa:	74 24                                           	je     0x73d9d0
  73d9ac:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
  73d9af:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
  73d9b2:	6a 01                                           	push   0x1
  73d9b4:	6a 00                                           	push   0x0
  73d9b6:	6a 01                                           	push   0x1
  73d9b8:	50                                              	push   eax
  73d9b9:	51                                              	push   ecx
  73d9ba:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  73d9be:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73d9c1:	51                                              	push   ecx
  73d9c2:	8b cf                                           	mov    ecx,edi
  73d9c4:	e8 17 6d 23 00                                  	call   0x9746e0
  73d9c9:	5f                                              	pop    edi
  73d9ca:	5e                                              	pop    esi
  73d9cb:	5b                                              	pop    ebx
  73d9cc:	8b e5                                           	mov    esp,ebp
  73d9ce:	5d                                              	pop    ebp
  73d9cf:	c3                                              	ret
  73d9d0:	85 db                                           	test   ebx,ebx
  73d9d2:	74 21                                           	je     0x73d9f5
  73d9d4:	8b cb                                           	mov    ecx,ebx
  73d9d6:	e8 d5 c3 23 00                                  	call   0x979db0
  73d9db:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
  73d9de:	51                                              	push   ecx
  73d9df:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  73d9e3:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73d9e6:	52                                              	push   edx
  73d9e7:	8b cb                                           	mov    ecx,ebx
  73d9e9:	e8 02 c6 23 00                                  	call   0x979ff0
  73d9ee:	5f                                              	pop    edi
  73d9ef:	5e                                              	pop    esi
  73d9f0:	5b                                              	pop    ebx
  73d9f1:	8b e5                                           	mov    esp,ebp
  73d9f3:	5d                                              	pop    ebp
  73d9f4:	c3                                              	ret
  73d9f5:	85 c0                                           	test   eax,eax
  73d9f7:	74 13                                           	je     0x73da0c
  73d9f9:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
  73d9fc:	51                                              	push   ecx
  73d9fd:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  73da01:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73da04:	51                                              	push   ecx
  73da05:	8b c8                                           	mov    ecx,eax
  73da07:	e8 54 9d 22 00                                  	call   0x967760
  73da0c:	5f                                              	pop    edi
  73da0d:	5e                                              	pop    esi
  73da0e:	5b                                              	pop    ebx
  73da0f:	8b e5                                           	mov    esp,ebp
  73da11:	5d                                              	pop    ebp
  73da12:	c3                                              	ret
  73da13:	cc                                              	int3
  73da14:	cc                                              	int3
  73da15:	cc                                              	int3
  73da16:	cc                                              	int3
  73da17:	cc                                              	int3
  73da18:	cc                                              	int3
  73da19:	cc                                              	int3
  73da1a:	cc                                              	int3
  73da1b:	cc                                              	int3
  73da1c:	cc                                              	int3
  73da1d:	cc                                              	int3
  73da1e:	cc                                              	int3
  73da1f:	cc                                              	int3
