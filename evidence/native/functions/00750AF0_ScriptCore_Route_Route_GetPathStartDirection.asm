# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00750af0 (ScriptCore.Route::Route_GetPathStartDirection)
Paired Ghidra pseudocode: 00750AF0_ScriptCore_Route_Route_GetPathStartDirection.c
Window: [0x00750af0, 0x00750ba0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00750ba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00750af0: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 1c 85
00750b00: c9 56 74 6f 8b 45 08 50 e8 a3 a9 ff ff 8b f0 85
00750b10: f6 74 62 8b 16 8b 42 10 8b ce ff d0 8b 86 e0 00
00750b20: 00 00 8b 55 0c 8d 8e e0 00 00 00 3b c1 74 46 90
00750b30: 85 d2 74 09 8b 00 83 ea 01 3b c1 75 f3 3b c1 74
00750b40: 34 8b 40 08 85 c0 74 2d 8b 10 8b 52 64 8d 4c 24
00750b50: 10 51 6a 00 8b c8 ff d2 8b 4d 10 8d 44 24 10 50
00750b60: e8 9b b5 01 00 8b 16 8b 42 14 8b ce ff d0 5e 8b
00750b70: e5 5d c3 33 f6 d9 ee 8b 4d 10 83 ec 0c d9 54 24
00750b80: 08 d9 54 24 04 d9 1c 24 e8 e3 b3 01 00 85 f6 74
00750b90: 09 8b 16 8b 42 14 8b ce ff d0 5e 8b e5 5d c3 cc

LINEAR DISASSEMBLY
00750af0 <.text+0x34faf0>:
  750af0:	55                                              	push   ebp
  750af1:	8b ec                                           	mov    ebp,esp
  750af3:	83 e4 f0                                        	and    esp,0xfffffff0
  750af6:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  750afc:	83 ec 1c                                        	sub    esp,0x1c
  750aff:	85 c9                                           	test   ecx,ecx
  750b01:	56                                              	push   esi
  750b02:	74 6f                                           	je     0x750b73
  750b04:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  750b07:	50                                              	push   eax
  750b08:	e8 a3 a9 ff ff                                  	call   0x74b4b0
  750b0d:	8b f0                                           	mov    esi,eax
  750b0f:	85 f6                                           	test   esi,esi
  750b11:	74 62                                           	je     0x750b75
  750b13:	8b 16                                           	mov    edx,DWORD PTR [esi]
  750b15:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  750b18:	8b ce                                           	mov    ecx,esi
  750b1a:	ff d0                                           	call   eax
  750b1c:	8b 86 e0 00 00 00                               	mov    eax,DWORD PTR [esi+0xe0]
  750b22:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  750b25:	8d 8e e0 00 00 00                               	lea    ecx,[esi+0xe0]
  750b2b:	3b c1                                           	cmp    eax,ecx
  750b2d:	74 46                                           	je     0x750b75
  750b2f:	90                                              	nop
  750b30:	85 d2                                           	test   edx,edx
  750b32:	74 09                                           	je     0x750b3d
  750b34:	8b 00                                           	mov    eax,DWORD PTR [eax]
  750b36:	83 ea 01                                        	sub    edx,0x1
  750b39:	3b c1                                           	cmp    eax,ecx
  750b3b:	75 f3                                           	jne    0x750b30
  750b3d:	3b c1                                           	cmp    eax,ecx
  750b3f:	74 34                                           	je     0x750b75
  750b41:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  750b44:	85 c0                                           	test   eax,eax
  750b46:	74 2d                                           	je     0x750b75
  750b48:	8b 10                                           	mov    edx,DWORD PTR [eax]
  750b4a:	8b 52 64                                        	mov    edx,DWORD PTR [edx+0x64]
  750b4d:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  750b51:	51                                              	push   ecx
  750b52:	6a 00                                           	push   0x0
  750b54:	8b c8                                           	mov    ecx,eax
  750b56:	ff d2                                           	call   edx
  750b58:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  750b5b:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  750b5f:	50                                              	push   eax
  750b60:	e8 9b b5 01 00                                  	call   0x76c100
  750b65:	8b 16                                           	mov    edx,DWORD PTR [esi]
  750b67:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  750b6a:	8b ce                                           	mov    ecx,esi
  750b6c:	ff d0                                           	call   eax
  750b6e:	5e                                              	pop    esi
  750b6f:	8b e5                                           	mov    esp,ebp
  750b71:	5d                                              	pop    ebp
  750b72:	c3                                              	ret
  750b73:	33 f6                                           	xor    esi,esi
  750b75:	d9 ee                                           	fldz
  750b77:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  750b7a:	83 ec 0c                                        	sub    esp,0xc
  750b7d:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  750b81:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  750b85:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  750b88:	e8 e3 b3 01 00                                  	call   0x76bf70
  750b8d:	85 f6                                           	test   esi,esi
  750b8f:	74 09                                           	je     0x750b9a
  750b91:	8b 16                                           	mov    edx,DWORD PTR [esi]
  750b93:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  750b96:	8b ce                                           	mov    ecx,esi
  750b98:	ff d0                                           	call   eax
  750b9a:	5e                                              	pop    esi
  750b9b:	8b e5                                           	mov    esp,ebp
  750b9d:	5d                                              	pop    ebp
  750b9e:	c3                                              	ret
  750b9f:	cc                                              	int3
