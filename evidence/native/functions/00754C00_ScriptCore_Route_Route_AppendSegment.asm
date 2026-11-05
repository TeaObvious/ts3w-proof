# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00754c00 (ScriptCore.Route::Route_AppendSegment)
Paired Ghidra pseudocode: 00754C00_ScriptCore_Route_Route_AppendSegment.c
Window: [0x00754c00, 0x00754d00) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00754d00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00754c00: 55 8b ec 83 e4 f0 8b 45 08 8b 0d c4 50 1d 01 83
00754c10: ec 24 53 56 57 50 e8 95 68 ff ff 8b d8 85 db 0f
00754c20: 84 c3 00 00 00 8b 13 8b 42 10 8b cb ff d0 80 bb
00754c30: f4 00 00 00 00 74 08 8b b3 ec 00 00 00 eb 13 8d
00754c40: 83 e0 00 00 00 39 00 0f 84 92 00 00 00 8b 08 8b
00754c50: 71 08 85 f6 0f 84 85 00 00 00 8d 7e 04 8b d7 b8
00754c60: 01 00 00 00 f0 0f c1 02 f3 0f 10 4d 14 f3 0f 10
00754c70: 45 0c 8b 16 8b 92 fc 00 00 00 f3 0f 11 4c 24 28
00754c80: f3 0f 10 4d 10 f3 0f 11 44 24 2c f3 0f 11 4c 24
00754c90: 24 f3 0f 11 44 24 20 0f 28 44 24 20 8d 44 24 20
00754ca0: 50 8b ce 0f 29 44 24 24 ff d2 89 44 24 18 8b c7
00754cb0: 83 c9 ff f0 0f c1 08 49 75 11 ba 01 00 00 00 87
00754cc0: 17 8b 06 8b 10 6a 01 8b ce ff d2 8b 03 8b 50 14
00754cd0: 8b cb ff d2 8b 44 24 18 5f 5e 5b 8b e5 5d c3 8b
00754ce0: 03 8b 50 14 8b cb ff d2 5f 5e 33 c0 5b 8b e5 5d
00754cf0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00754c00 <.text+0x353c00>:
  754c00:	55                                              	push   ebp
  754c01:	8b ec                                           	mov    ebp,esp
  754c03:	83 e4 f0                                        	and    esp,0xfffffff0
  754c06:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  754c09:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  754c0f:	83 ec 24                                        	sub    esp,0x24
  754c12:	53                                              	push   ebx
  754c13:	56                                              	push   esi
  754c14:	57                                              	push   edi
  754c15:	50                                              	push   eax
  754c16:	e8 95 68 ff ff                                  	call   0x74b4b0
  754c1b:	8b d8                                           	mov    ebx,eax
  754c1d:	85 db                                           	test   ebx,ebx
  754c1f:	0f 84 c3 00 00 00                               	je     0x754ce8
  754c25:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  754c27:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  754c2a:	8b cb                                           	mov    ecx,ebx
  754c2c:	ff d0                                           	call   eax
  754c2e:	80 bb f4 00 00 00 00                            	cmp    BYTE PTR [ebx+0xf4],0x0
  754c35:	74 08                                           	je     0x754c3f
  754c37:	8b b3 ec 00 00 00                               	mov    esi,DWORD PTR [ebx+0xec]
  754c3d:	eb 13                                           	jmp    0x754c52
  754c3f:	8d 83 e0 00 00 00                               	lea    eax,[ebx+0xe0]
  754c45:	39 00                                           	cmp    DWORD PTR [eax],eax
  754c47:	0f 84 92 00 00 00                               	je     0x754cdf
  754c4d:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  754c4f:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  754c52:	85 f6                                           	test   esi,esi
  754c54:	0f 84 85 00 00 00                               	je     0x754cdf
  754c5a:	8d 7e 04                                        	lea    edi,[esi+0x4]
  754c5d:	8b d7                                           	mov    edx,edi
  754c5f:	b8 01 00 00 00                                  	mov    eax,0x1
  754c64:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  754c68:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  754c6d:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  754c72:	8b 16                                           	mov    edx,DWORD PTR [esi]
  754c74:	8b 92 fc 00 00 00                               	mov    edx,DWORD PTR [edx+0xfc]
  754c7a:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [esp+0x28],xmm1
  754c80:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  754c85:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  754c8b:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
  754c91:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  754c97:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  754c9c:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  754ca0:	50                                              	push   eax
  754ca1:	8b ce                                           	mov    ecx,esi
  754ca3:	0f 29 44 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm0
  754ca8:	ff d2                                           	call   edx
  754caa:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  754cae:	8b c7                                           	mov    eax,edi
  754cb0:	83 c9 ff                                        	or     ecx,0xffffffff
  754cb3:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  754cb7:	49                                              	dec    ecx
  754cb8:	75 11                                           	jne    0x754ccb
  754cba:	ba 01 00 00 00                                  	mov    edx,0x1
  754cbf:	87 17                                           	xchg   DWORD PTR [edi],edx
  754cc1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  754cc3:	8b 10                                           	mov    edx,DWORD PTR [eax]
  754cc5:	6a 01                                           	push   0x1
  754cc7:	8b ce                                           	mov    ecx,esi
  754cc9:	ff d2                                           	call   edx
  754ccb:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  754ccd:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  754cd0:	8b cb                                           	mov    ecx,ebx
  754cd2:	ff d2                                           	call   edx
  754cd4:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  754cd8:	5f                                              	pop    edi
  754cd9:	5e                                              	pop    esi
  754cda:	5b                                              	pop    ebx
  754cdb:	8b e5                                           	mov    esp,ebp
  754cdd:	5d                                              	pop    ebp
  754cde:	c3                                              	ret
  754cdf:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  754ce1:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  754ce4:	8b cb                                           	mov    ecx,ebx
  754ce6:	ff d2                                           	call   edx
  754ce8:	5f                                              	pop    edi
  754ce9:	5e                                              	pop    esi
  754cea:	33 c0                                           	xor    eax,eax
  754cec:	5b                                              	pop    ebx
  754ced:	8b e5                                           	mov    esp,ebp
  754cef:	5d                                              	pop    ebp
  754cf0:	c3                                              	ret
  754cf1:	cc                                              	int3
  754cf2:	cc                                              	int3
  754cf3:	cc                                              	int3
  754cf4:	cc                                              	int3
  754cf5:	cc                                              	int3
  754cf6:	cc                                              	int3
  754cf7:	cc                                              	int3
  754cf8:	cc                                              	int3
  754cf9:	cc                                              	int3
  754cfa:	cc                                              	int3
  754cfb:	cc                                              	int3
  754cfc:	cc                                              	int3
  754cfd:	cc                                              	int3
  754cfe:	cc                                              	int3
  754cff:	cc                                              	int3
