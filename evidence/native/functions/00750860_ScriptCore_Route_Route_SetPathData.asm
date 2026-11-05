# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00750860 (ScriptCore.Route::Route_SetPathData)
Paired Ghidra pseudocode: 00750860_ScriptCore_Route_Route_SetPathData.c
Window: [0x00750860, 0x00750920) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00750920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00750860: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 34 85
00750870: c9 53 56 57 0f 84 9b 00 00 00 8b 45 08 50 e8 2d
00750880: ac ff ff 8b d8 85 db 0f 84 88 00 00 00 8b 13 8b
00750890: 42 10 8b cb ff d0 8b 45 0c 8b 48 08 8b 50 0c 0f
007508a0: 57 c0 89 4c 24 28 8b 08 89 54 24 2c 8d 54 24 10
007508b0: f3 0f 11 44 24 1c f3 0f 11 44 24 18 f3 0f 11 44
007508c0: 24 14 f3 0f 11 44 24 10 0f 28 44 24 10 89 4c 24
007508d0: 20 52 8d 48 10 0f 29 44 24 34 e8 71 b7 01 00 8b
007508e0: b3 e0 00 00 00 0f 28 00 8d bb e0 00 00 00 3b f7
007508f0: 0f 29 44 24 30 74 15 8b 4e 08 8b 01 8b 40 34 8d
00750900: 54 24 20 52 ff d0 8b 36 3b f7 75 eb 8b 13 8b 42
00750910: 14 8b cb ff d0 5f 5e 5b 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
00750860 <.text+0x34f860>:
  750860:	55                                              	push   ebp
  750861:	8b ec                                           	mov    ebp,esp
  750863:	83 e4 f0                                        	and    esp,0xfffffff0
  750866:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75086c:	83 ec 34                                        	sub    esp,0x34
  75086f:	85 c9                                           	test   ecx,ecx
  750871:	53                                              	push   ebx
  750872:	56                                              	push   esi
  750873:	57                                              	push   edi
  750874:	0f 84 9b 00 00 00                               	je     0x750915
  75087a:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  75087d:	50                                              	push   eax
  75087e:	e8 2d ac ff ff                                  	call   0x74b4b0
  750883:	8b d8                                           	mov    ebx,eax
  750885:	85 db                                           	test   ebx,ebx
  750887:	0f 84 88 00 00 00                               	je     0x750915
  75088d:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  75088f:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  750892:	8b cb                                           	mov    ecx,ebx
  750894:	ff d0                                           	call   eax
  750896:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  750899:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  75089c:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  75089f:	0f 57 c0                                        	xorps  xmm0,xmm0
  7508a2:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
  7508a6:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  7508a8:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  7508ac:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  7508b0:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  7508b6:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  7508bc:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  7508c2:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  7508c8:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  7508cd:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  7508d1:	52                                              	push   edx
  7508d2:	8d 48 10                                        	lea    ecx,[eax+0x10]
  7508d5:	0f 29 44 24 34                                  	movaps XMMWORD PTR [esp+0x34],xmm0
  7508da:	e8 71 b7 01 00                                  	call   0x76c050
  7508df:	8b b3 e0 00 00 00                               	mov    esi,DWORD PTR [ebx+0xe0]
  7508e5:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  7508e8:	8d bb e0 00 00 00                               	lea    edi,[ebx+0xe0]
  7508ee:	3b f7                                           	cmp    esi,edi
  7508f0:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  7508f5:	74 15                                           	je     0x75090c
  7508f7:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  7508fa:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  7508fc:	8b 40 34                                        	mov    eax,DWORD PTR [eax+0x34]
  7508ff:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  750903:	52                                              	push   edx
  750904:	ff d0                                           	call   eax
  750906:	8b 36                                           	mov    esi,DWORD PTR [esi]
  750908:	3b f7                                           	cmp    esi,edi
  75090a:	75 eb                                           	jne    0x7508f7
  75090c:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  75090e:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  750911:	8b cb                                           	mov    ecx,ebx
  750913:	ff d0                                           	call   eax
  750915:	5f                                              	pop    edi
  750916:	5e                                              	pop    esi
  750917:	5b                                              	pop    ebx
  750918:	8b e5                                           	mov    esp,ebp
  75091a:	5d                                              	pop    ebp
  75091b:	c3                                              	ret
  75091c:	cc                                              	int3
  75091d:	cc                                              	int3
  75091e:	cc                                              	int3
  75091f:	cc                                              	int3
