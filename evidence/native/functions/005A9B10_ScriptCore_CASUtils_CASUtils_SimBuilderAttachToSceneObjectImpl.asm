# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a9b10 (ScriptCore.CASUtils::CASUtils_SimBuilderAttachToSceneObjectImpl)
Paired Ghidra pseudocode: 005A9B10_ScriptCore_CASUtils_CASUtils_SimBuilderAttachToSceneObjectImpl.c
Window: [0x005a9b10, 0x005a9c30) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a9c30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a9b10: 55 8b ec 83 e4 f0 83 ec 54 53 56 8b 75 08 8b c6
005a9b20: 25 00 00 00 ff 3d 00 00 00 35 57 0f 85 ea 00 00
005a9b30: 00 e8 5a f8 1b 00 8b 10 8b c8 8b 82 cc 00 00 00
005a9b40: 56 ff d0 8b f8 85 ff 0f 84 ce 00 00 00 e8 1e da
005a9b50: 38 00 8b 4d 10 8b 55 0c 51 52 8b c8 e8 1f e4 38
005a9b60: 00 8b f0 85 f6 0f 84 b0 00 00 00 8d 5e 04 8b c3
005a9b70: b9 01 00 00 00 f0 0f c1 08 8b 56 08 89 97 f8 01
005a9b80: 00 00 8b 46 0c 89 87 fc 01 00 00 8b 4e 08 8b 56
005a9b90: 0c 8d 44 24 10 50 c7 44 24 14 c4 8b 87 04 c7 44
005a9ba0: 24 18 00 00 00 00 89 4c 24 1c 89 54 24 20 c7 44
005a9bb0: 24 24 11 00 20 00 c7 44 24 28 10 00 20 00 e8 bd
005a9bc0: 97 0e 00 83 c4 04 8b cf e8 c3 7d 03 00 8b 0d a8
005a9bd0: a2 1e 01 51 8b ce e8 85 a6 38 00 85 c0 74 0c 68
005a9be0: bc a3 97 3a 8b c8 e8 85 44 3b 00 8b 4c 24 14 85
005a9bf0: c9 74 0b 8b 11 8b 12 8d 44 24 20 50 ff d2 8b c3
005a9c00: 83 c9 ff f0 0f c1 08 49 75 11 ba 01 00 00 00 87
005a9c10: 13 8b 06 8b 10 6a 01 8b ce ff d2 5f 5e 5b 8b e5
005a9c20: 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a9b10 <.text+0x1a8b10>:
  5a9b10:	55                                              	push   ebp
  5a9b11:	8b ec                                           	mov    ebp,esp
  5a9b13:	83 e4 f0                                        	and    esp,0xfffffff0
  5a9b16:	83 ec 54                                        	sub    esp,0x54
  5a9b19:	53                                              	push   ebx
  5a9b1a:	56                                              	push   esi
  5a9b1b:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  5a9b1e:	8b c6                                           	mov    eax,esi
  5a9b20:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a9b25:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a9b2a:	57                                              	push   edi
  5a9b2b:	0f 85 ea 00 00 00                               	jne    0x5a9c1b
  5a9b31:	e8 5a f8 1b 00                                  	call   0x769390
  5a9b36:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a9b38:	8b c8                                           	mov    ecx,eax
  5a9b3a:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a9b40:	56                                              	push   esi
  5a9b41:	ff d0                                           	call   eax
  5a9b43:	8b f8                                           	mov    edi,eax
  5a9b45:	85 ff                                           	test   edi,edi
  5a9b47:	0f 84 ce 00 00 00                               	je     0x5a9c1b
  5a9b4d:	e8 1e da 38 00                                  	call   0x937570
  5a9b52:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  5a9b55:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  5a9b58:	51                                              	push   ecx
  5a9b59:	52                                              	push   edx
  5a9b5a:	8b c8                                           	mov    ecx,eax
  5a9b5c:	e8 1f e4 38 00                                  	call   0x937f80
  5a9b61:	8b f0                                           	mov    esi,eax
  5a9b63:	85 f6                                           	test   esi,esi
  5a9b65:	0f 84 b0 00 00 00                               	je     0x5a9c1b
  5a9b6b:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  5a9b6e:	8b c3                                           	mov    eax,ebx
  5a9b70:	b9 01 00 00 00                                  	mov    ecx,0x1
  5a9b75:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  5a9b79:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  5a9b7c:	89 97 f8 01 00 00                               	mov    DWORD PTR [edi+0x1f8],edx
  5a9b82:	8b 46 0c                                        	mov    eax,DWORD PTR [esi+0xc]
  5a9b85:	89 87 fc 01 00 00                               	mov    DWORD PTR [edi+0x1fc],eax
  5a9b8b:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  5a9b8e:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
  5a9b91:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  5a9b95:	50                                              	push   eax
  5a9b96:	c7 44 24 14 c4 8b 87 04                         	mov    DWORD PTR [esp+0x14],0x4878bc4
  5a9b9e:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  5a9ba6:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  5a9baa:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  5a9bae:	c7 44 24 24 11 00 20 00                         	mov    DWORD PTR [esp+0x24],0x200011
  5a9bb6:	c7 44 24 28 10 00 20 00                         	mov    DWORD PTR [esp+0x28],0x200010
  5a9bbe:	e8 bd 97 0e 00                                  	call   0x693380
  5a9bc3:	83 c4 04                                        	add    esp,0x4
  5a9bc6:	8b cf                                           	mov    ecx,edi
  5a9bc8:	e8 c3 7d 03 00                                  	call   0x5e1990
  5a9bcd:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  5a9bd3:	51                                              	push   ecx
  5a9bd4:	8b ce                                           	mov    ecx,esi
  5a9bd6:	e8 85 a6 38 00                                  	call   0x934260
  5a9bdb:	85 c0                                           	test   eax,eax
  5a9bdd:	74 0c                                           	je     0x5a9beb
  5a9bdf:	68 bc a3 97 3a                                  	push   0x3a97a3bc
  5a9be4:	8b c8                                           	mov    ecx,eax
  5a9be6:	e8 85 44 3b 00                                  	call   0x95e070
  5a9beb:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a9bef:	85 c9                                           	test   ecx,ecx
  5a9bf1:	74 0b                                           	je     0x5a9bfe
  5a9bf3:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  5a9bf5:	8b 12                                           	mov    edx,DWORD PTR [edx]
  5a9bf7:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  5a9bfb:	50                                              	push   eax
  5a9bfc:	ff d2                                           	call   edx
  5a9bfe:	8b c3                                           	mov    eax,ebx
  5a9c00:	83 c9 ff                                        	or     ecx,0xffffffff
  5a9c03:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  5a9c07:	49                                              	dec    ecx
  5a9c08:	75 11                                           	jne    0x5a9c1b
  5a9c0a:	ba 01 00 00 00                                  	mov    edx,0x1
  5a9c0f:	87 13                                           	xchg   DWORD PTR [ebx],edx
  5a9c11:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a9c13:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a9c15:	6a 01                                           	push   0x1
  5a9c17:	8b ce                                           	mov    ecx,esi
  5a9c19:	ff d2                                           	call   edx
  5a9c1b:	5f                                              	pop    edi
  5a9c1c:	5e                                              	pop    esi
  5a9c1d:	5b                                              	pop    ebx
  5a9c1e:	8b e5                                           	mov    esp,ebp
  5a9c20:	5d                                              	pop    ebp
  5a9c21:	c3                                              	ret
  5a9c22:	cc                                              	int3
  5a9c23:	cc                                              	int3
  5a9c24:	cc                                              	int3
  5a9c25:	cc                                              	int3
  5a9c26:	cc                                              	int3
  5a9c27:	cc                                              	int3
  5a9c28:	cc                                              	int3
  5a9c29:	cc                                              	int3
  5a9c2a:	cc                                              	int3
  5a9c2b:	cc                                              	int3
  5a9c2c:	cc                                              	int3
  5a9c2d:	cc                                              	int3
  5a9c2e:	cc                                              	int3
  5a9c2f:	cc                                              	int3
