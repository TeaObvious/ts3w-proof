# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00750ba0 (ScriptCore.Route::Route_GetPathEndDirection)
Paired Ghidra pseudocode: 00750BA0_ScriptCore_Route_Route_GetPathEndDirection.c
Window: [0x00750ba0, 0x00750d40) (416 bytes; stop exclusive)
Next defined Ghidra entry: 0x00750d40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00750ba0: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 38 85
00750bb0: c9 56 57 0f 84 25 01 00 00 8b 45 08 50 e8 ee a8
00750bc0: ff ff 8b f8 85 ff 0f 84 14 01 00 00 8b 17 8b 42
00750bd0: 10 8b cf ff d0 8b 87 e0 00 00 00 8b 55 0c 8d 8f
00750be0: e0 00 00 00 3b c1 0f 84 f4 00 00 00 8d 64 24 00
00750bf0: 85 d2 74 09 8b 00 83 ea 01 3b c1 75 f3 3b c1 0f
00750c00: 84 db 00 00 00 8b 70 08 85 f6 0f 84 d0 00 00 00
00750c10: 8b 16 8b 82 3c 01 00 00 8b ce ff d0 84 c0 8b ce
00750c20: 0f 84 e5 00 00 00 8b 16 8b 92 40 01 00 00 8d 44
00750c30: 24 30 50 ff d2 0f 57 c0 0f 28 54 24 30 f3 0f 10
00750c40: 0d f8 98 f9 00 8b 4d 10 f3 0f 11 44 24 1c f3 0f
00750c50: 11 44 24 14 f3 0f 11 44 24 10 f3 0f 11 4c 24 18
00750c60: 0f 28 4c 24 10 0f 28 da 0f c6 da 09 0f 28 e2 0f
00750c70: c6 e2 12 0f 28 e9 0f c6 e9 09 0f 59 ec 0f 28 c1
00750c80: 0f c6 c1 12 0f 59 c3 0f 5c c5 0f 28 ea 0f c6 ea
00750c90: ff 0f 59 e9 0f 58 c5 0f 28 d0 0f c6 d0 09 0f 59
00750ca0: d4 0f 28 e0 0f c6 e0 12 f3 0f 10 05 88 fd 03 01
00750cb0: 0f 59 e3 0f 5c e2 0f c6 c0 00 8d 44 24 20 0f 59
00750cc0: e0 0f 58 e1 50 0f 29 64 24 24 e8 31 b4 01 00 8b
00750cd0: 17 8b 42 14 8b cf ff d0 5f 5e 8b e5 5d c3 33 ff
00750ce0: d9 ee 8b 4d 10 83 ec 0c d9 54 24 08 d9 54 24 04
00750cf0: d9 1c 24 e8 78 b2 01 00 85 ff 74 09 8b 17 8b 42
00750d00: 14 8b cf ff d0 5f 5e 8b e5 5d c3 8b 06 8b 50 4c
00750d10: ff d2 8b 16 8b 52 68 8d 4c 24 20 51 83 c0 ff 50
00750d20: 8b ce ff d2 8b 4d 10 8d 44 24 20 50 e8 cf b3 01
00750d30: 00 8b 17 8b 42 14 8b cf ff d0 5f 5e 8b e5 5d c3

LINEAR DISASSEMBLY
00750ba0 <.text+0x34fba0>:
  750ba0:	55                                              	push   ebp
  750ba1:	8b ec                                           	mov    ebp,esp
  750ba3:	83 e4 f0                                        	and    esp,0xfffffff0
  750ba6:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  750bac:	83 ec 38                                        	sub    esp,0x38
  750baf:	85 c9                                           	test   ecx,ecx
  750bb1:	56                                              	push   esi
  750bb2:	57                                              	push   edi
  750bb3:	0f 84 25 01 00 00                               	je     0x750cde
  750bb9:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  750bbc:	50                                              	push   eax
  750bbd:	e8 ee a8 ff ff                                  	call   0x74b4b0
  750bc2:	8b f8                                           	mov    edi,eax
  750bc4:	85 ff                                           	test   edi,edi
  750bc6:	0f 84 14 01 00 00                               	je     0x750ce0
  750bcc:	8b 17                                           	mov    edx,DWORD PTR [edi]
  750bce:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  750bd1:	8b cf                                           	mov    ecx,edi
  750bd3:	ff d0                                           	call   eax
  750bd5:	8b 87 e0 00 00 00                               	mov    eax,DWORD PTR [edi+0xe0]
  750bdb:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  750bde:	8d 8f e0 00 00 00                               	lea    ecx,[edi+0xe0]
  750be4:	3b c1                                           	cmp    eax,ecx
  750be6:	0f 84 f4 00 00 00                               	je     0x750ce0
  750bec:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  750bf0:	85 d2                                           	test   edx,edx
  750bf2:	74 09                                           	je     0x750bfd
  750bf4:	8b 00                                           	mov    eax,DWORD PTR [eax]
  750bf6:	83 ea 01                                        	sub    edx,0x1
  750bf9:	3b c1                                           	cmp    eax,ecx
  750bfb:	75 f3                                           	jne    0x750bf0
  750bfd:	3b c1                                           	cmp    eax,ecx
  750bff:	0f 84 db 00 00 00                               	je     0x750ce0
  750c05:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  750c08:	85 f6                                           	test   esi,esi
  750c0a:	0f 84 d0 00 00 00                               	je     0x750ce0
  750c10:	8b 16                                           	mov    edx,DWORD PTR [esi]
  750c12:	8b 82 3c 01 00 00                               	mov    eax,DWORD PTR [edx+0x13c]
  750c18:	8b ce                                           	mov    ecx,esi
  750c1a:	ff d0                                           	call   eax
  750c1c:	84 c0                                           	test   al,al
  750c1e:	8b ce                                           	mov    ecx,esi
  750c20:	0f 84 e5 00 00 00                               	je     0x750d0b
  750c26:	8b 16                                           	mov    edx,DWORD PTR [esi]
  750c28:	8b 92 40 01 00 00                               	mov    edx,DWORD PTR [edx+0x140]
  750c2e:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  750c32:	50                                              	push   eax
  750c33:	ff d2                                           	call   edx
  750c35:	0f 57 c0                                        	xorps  xmm0,xmm0
  750c38:	0f 28 54 24 30                                  	movaps xmm2,XMMWORD PTR [esp+0x30]
  750c3d:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  750c45:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  750c48:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  750c4e:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  750c54:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  750c5a:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  750c60:	0f 28 4c 24 10                                  	movaps xmm1,XMMWORD PTR [esp+0x10]
  750c65:	0f 28 da                                        	movaps xmm3,xmm2
  750c68:	0f c6 da 09                                     	shufps xmm3,xmm2,0x9
  750c6c:	0f 28 e2                                        	movaps xmm4,xmm2
  750c6f:	0f c6 e2 12                                     	shufps xmm4,xmm2,0x12
  750c73:	0f 28 e9                                        	movaps xmm5,xmm1
  750c76:	0f c6 e9 09                                     	shufps xmm5,xmm1,0x9
  750c7a:	0f 59 ec                                        	mulps  xmm5,xmm4
  750c7d:	0f 28 c1                                        	movaps xmm0,xmm1
  750c80:	0f c6 c1 12                                     	shufps xmm0,xmm1,0x12
  750c84:	0f 59 c3                                        	mulps  xmm0,xmm3
  750c87:	0f 5c c5                                        	subps  xmm0,xmm5
  750c8a:	0f 28 ea                                        	movaps xmm5,xmm2
  750c8d:	0f c6 ea ff                                     	shufps xmm5,xmm2,0xff
  750c91:	0f 59 e9                                        	mulps  xmm5,xmm1
  750c94:	0f 58 c5                                        	addps  xmm0,xmm5
  750c97:	0f 28 d0                                        	movaps xmm2,xmm0
  750c9a:	0f c6 d0 09                                     	shufps xmm2,xmm0,0x9
  750c9e:	0f 59 d4                                        	mulps  xmm2,xmm4
  750ca1:	0f 28 e0                                        	movaps xmm4,xmm0
  750ca4:	0f c6 e0 12                                     	shufps xmm4,xmm0,0x12
  750ca8:	f3 0f 10 05 88 fd 03 01                         	movss  xmm0,DWORD PTR ds:0x103fd88
  750cb0:	0f 59 e3                                        	mulps  xmm4,xmm3
  750cb3:	0f 5c e2                                        	subps  xmm4,xmm2
  750cb6:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  750cba:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  750cbe:	0f 59 e0                                        	mulps  xmm4,xmm0
  750cc1:	0f 58 e1                                        	addps  xmm4,xmm1
  750cc4:	50                                              	push   eax
  750cc5:	0f 29 64 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm4
  750cca:	e8 31 b4 01 00                                  	call   0x76c100
  750ccf:	8b 17                                           	mov    edx,DWORD PTR [edi]
  750cd1:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  750cd4:	8b cf                                           	mov    ecx,edi
  750cd6:	ff d0                                           	call   eax
  750cd8:	5f                                              	pop    edi
  750cd9:	5e                                              	pop    esi
  750cda:	8b e5                                           	mov    esp,ebp
  750cdc:	5d                                              	pop    ebp
  750cdd:	c3                                              	ret
  750cde:	33 ff                                           	xor    edi,edi
  750ce0:	d9 ee                                           	fldz
  750ce2:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  750ce5:	83 ec 0c                                        	sub    esp,0xc
  750ce8:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  750cec:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  750cf0:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  750cf3:	e8 78 b2 01 00                                  	call   0x76bf70
  750cf8:	85 ff                                           	test   edi,edi
  750cfa:	74 09                                           	je     0x750d05
  750cfc:	8b 17                                           	mov    edx,DWORD PTR [edi]
  750cfe:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  750d01:	8b cf                                           	mov    ecx,edi
  750d03:	ff d0                                           	call   eax
  750d05:	5f                                              	pop    edi
  750d06:	5e                                              	pop    esi
  750d07:	8b e5                                           	mov    esp,ebp
  750d09:	5d                                              	pop    ebp
  750d0a:	c3                                              	ret
  750d0b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  750d0d:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  750d10:	ff d2                                           	call   edx
  750d12:	8b 16                                           	mov    edx,DWORD PTR [esi]
  750d14:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
  750d17:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  750d1b:	51                                              	push   ecx
  750d1c:	83 c0 ff                                        	add    eax,0xffffffff
  750d1f:	50                                              	push   eax
  750d20:	8b ce                                           	mov    ecx,esi
  750d22:	ff d2                                           	call   edx
  750d24:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  750d27:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  750d2b:	50                                              	push   eax
  750d2c:	e8 cf b3 01 00                                  	call   0x76c100
  750d31:	8b 17                                           	mov    edx,DWORD PTR [edi]
  750d33:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  750d36:	8b cf                                           	mov    ecx,edi
  750d38:	ff d0                                           	call   eax
  750d3a:	5f                                              	pop    edi
  750d3b:	5e                                              	pop    esi
  750d3c:	8b e5                                           	mov    esp,ebp
  750d3e:	5d                                              	pop    ebp
  750d3f:	c3                                              	ret
