# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00756b10 (ScriptCore.Route::Route_AddLotDestination)
Paired Ghidra pseudocode: 00756B10_ScriptCore_Route_Route_AddLotDestination.c
Window: [0x00756b10, 0x00756c50) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x00756c50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00756b10: 8b 0d c4 50 1d 01 83 ec 08 53 55 33 ed 3b cd 56
00756b20: 57 0f 84 17 01 00 00 8b 44 24 1c 50 e8 7f 49 ff
00756b30: ff 8b d8 3b dd 0f 84 03 01 00 00 8b 13 8b 42 10
00756b40: 8b cb ff d0 8b cb e8 b5 b7 ff ff 8b f8 3b fd 0f
00756b50: 84 e0 00 00 00 8b 17 8b 02 8b cf ff d0 55 55 55
00756b60: 55 68 b0 55 00 01 6a 38 e8 93 d9 d8 ff 8b f0 83
00756b70: c4 18 3b f5 0f 84 b2 00 00 00 39 6c 24 28 0f 57
00756b80: c0 8b 4c 24 2c 8b 54 24 30 8b 44 24 20 f3 0f 11
00756b90: 46 0c f3 0f 11 46 10 f3 0f 11 46 14 f3 0f 11 46
00756ba0: 18 f3 0f 11 46 1c f3 0f 11 46 20 f3 0f 11 46 24
00756bb0: f3 0f 10 44 24 24 89 6e 04 89 6e 08 c7 06 cc 52
00756bc0: 00 01 89 4e 30 89 56 34 89 46 28 f3 0f 11 46 2c
00756bd0: 74 36 e8 b9 27 01 00 8d 4c 24 10 51 8d 4c 24 18
00756be0: 51 8b 4c 24 30 89 6c 24 1c 89 6c 24 18 8b 10 8b
00756bf0: 52 78 51 8b c8 ff d2 8b 44 24 10 8b 4c 24 14 50
00756c00: 51 8b ce e8 38 51 ff ff 56 8b cf e8 f0 84 ff ff
00756c10: 8b 17 8b 42 04 8b cf ff d0 8b 13 8b 42 14 8b cb
00756c20: ff d0 5f 5e 5d b0 01 5b 83 c4 08 c3 8b 17 8b 42
00756c30: 04 8b cf ff d0 8b 13 8b 42 14 8b cb ff d0 5f 5e
00756c40: 5d 32 c0 5b 83 c4 08 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00756b10 <.text+0x355b10>:
  756b10:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  756b16:	83 ec 08                                        	sub    esp,0x8
  756b19:	53                                              	push   ebx
  756b1a:	55                                              	push   ebp
  756b1b:	33 ed                                           	xor    ebp,ebp
  756b1d:	3b cd                                           	cmp    ecx,ebp
  756b1f:	56                                              	push   esi
  756b20:	57                                              	push   edi
  756b21:	0f 84 17 01 00 00                               	je     0x756c3e
  756b27:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  756b2b:	50                                              	push   eax
  756b2c:	e8 7f 49 ff ff                                  	call   0x74b4b0
  756b31:	8b d8                                           	mov    ebx,eax
  756b33:	3b dd                                           	cmp    ebx,ebp
  756b35:	0f 84 03 01 00 00                               	je     0x756c3e
  756b3b:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  756b3d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  756b40:	8b cb                                           	mov    ecx,ebx
  756b42:	ff d0                                           	call   eax
  756b44:	8b cb                                           	mov    ecx,ebx
  756b46:	e8 b5 b7 ff ff                                  	call   0x752300
  756b4b:	8b f8                                           	mov    edi,eax
  756b4d:	3b fd                                           	cmp    edi,ebp
  756b4f:	0f 84 e0 00 00 00                               	je     0x756c35
  756b55:	8b 17                                           	mov    edx,DWORD PTR [edi]
  756b57:	8b 02                                           	mov    eax,DWORD PTR [edx]
  756b59:	8b cf                                           	mov    ecx,edi
  756b5b:	ff d0                                           	call   eax
  756b5d:	55                                              	push   ebp
  756b5e:	55                                              	push   ebp
  756b5f:	55                                              	push   ebp
  756b60:	55                                              	push   ebp
  756b61:	68 b0 55 00 01                                  	push   0x10055b0
  756b66:	6a 38                                           	push   0x38
  756b68:	e8 93 d9 d8 ff                                  	call   0x4e4500
  756b6d:	8b f0                                           	mov    esi,eax
  756b6f:	83 c4 18                                        	add    esp,0x18
  756b72:	3b f5                                           	cmp    esi,ebp
  756b74:	0f 84 b2 00 00 00                               	je     0x756c2c
  756b7a:	39 6c 24 28                                     	cmp    DWORD PTR [esp+0x28],ebp
  756b7e:	0f 57 c0                                        	xorps  xmm0,xmm0
  756b81:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  756b85:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  756b89:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  756b8d:	f3 0f 11 46 0c                                  	movss  DWORD PTR [esi+0xc],xmm0
  756b92:	f3 0f 11 46 10                                  	movss  DWORD PTR [esi+0x10],xmm0
  756b97:	f3 0f 11 46 14                                  	movss  DWORD PTR [esi+0x14],xmm0
  756b9c:	f3 0f 11 46 18                                  	movss  DWORD PTR [esi+0x18],xmm0
  756ba1:	f3 0f 11 46 1c                                  	movss  DWORD PTR [esi+0x1c],xmm0
  756ba6:	f3 0f 11 46 20                                  	movss  DWORD PTR [esi+0x20],xmm0
  756bab:	f3 0f 11 46 24                                  	movss  DWORD PTR [esi+0x24],xmm0
  756bb0:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [esp+0x24]
  756bb6:	89 6e 04                                        	mov    DWORD PTR [esi+0x4],ebp
  756bb9:	89 6e 08                                        	mov    DWORD PTR [esi+0x8],ebp
  756bbc:	c7 06 cc 52 00 01                               	mov    DWORD PTR [esi],0x10052cc
  756bc2:	89 4e 30                                        	mov    DWORD PTR [esi+0x30],ecx
  756bc5:	89 56 34                                        	mov    DWORD PTR [esi+0x34],edx
  756bc8:	89 46 28                                        	mov    DWORD PTR [esi+0x28],eax
  756bcb:	f3 0f 11 46 2c                                  	movss  DWORD PTR [esi+0x2c],xmm0
  756bd0:	74 36                                           	je     0x756c08
  756bd2:	e8 b9 27 01 00                                  	call   0x769390
  756bd7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  756bdb:	51                                              	push   ecx
  756bdc:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  756be0:	51                                              	push   ecx
  756be1:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  756be5:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
  756be9:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
  756bed:	8b 10                                           	mov    edx,DWORD PTR [eax]
  756bef:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
  756bf2:	51                                              	push   ecx
  756bf3:	8b c8                                           	mov    ecx,eax
  756bf5:	ff d2                                           	call   edx
  756bf7:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  756bfb:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  756bff:	50                                              	push   eax
  756c00:	51                                              	push   ecx
  756c01:	8b ce                                           	mov    ecx,esi
  756c03:	e8 38 51 ff ff                                  	call   0x74bd40
  756c08:	56                                              	push   esi
  756c09:	8b cf                                           	mov    ecx,edi
  756c0b:	e8 f0 84 ff ff                                  	call   0x74f100
  756c10:	8b 17                                           	mov    edx,DWORD PTR [edi]
  756c12:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  756c15:	8b cf                                           	mov    ecx,edi
  756c17:	ff d0                                           	call   eax
  756c19:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  756c1b:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  756c1e:	8b cb                                           	mov    ecx,ebx
  756c20:	ff d0                                           	call   eax
  756c22:	5f                                              	pop    edi
  756c23:	5e                                              	pop    esi
  756c24:	5d                                              	pop    ebp
  756c25:	b0 01                                           	mov    al,0x1
  756c27:	5b                                              	pop    ebx
  756c28:	83 c4 08                                        	add    esp,0x8
  756c2b:	c3                                              	ret
  756c2c:	8b 17                                           	mov    edx,DWORD PTR [edi]
  756c2e:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  756c31:	8b cf                                           	mov    ecx,edi
  756c33:	ff d0                                           	call   eax
  756c35:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  756c37:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  756c3a:	8b cb                                           	mov    ecx,ebx
  756c3c:	ff d0                                           	call   eax
  756c3e:	5f                                              	pop    edi
  756c3f:	5e                                              	pop    esi
  756c40:	5d                                              	pop    ebp
  756c41:	32 c0                                           	xor    al,al
  756c43:	5b                                              	pop    ebx
  756c44:	83 c4 08                                        	add    esp,0x8
  756c47:	c3                                              	ret
  756c48:	cc                                              	int3
  756c49:	cc                                              	int3
  756c4a:	cc                                              	int3
  756c4b:	cc                                              	int3
  756c4c:	cc                                              	int3
  756c4d:	cc                                              	int3
  756c4e:	cc                                              	int3
  756c4f:	cc                                              	int3
