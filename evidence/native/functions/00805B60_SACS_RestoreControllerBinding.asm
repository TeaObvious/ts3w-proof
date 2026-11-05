# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00805b60 (SACS_RestoreControllerBinding)
Paired Ghidra pseudocode: 00805B60_SACS_RestoreControllerBinding.c
Window: [0x00805b60, 0x00805d70) (528 bytes; stop exclusive)
Next defined Ghidra entry: 0x00805d70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00805b60: 83 ec 1c 56 8b f1 57 89 74 24 14 e8 00 1a 13 00
00805b70: 8b 4e 08 8b 7e 04 3b f9 89 44 24 1c b0 01 88 44
00805b80: 24 0b 89 4c 24 18 0f 84 dd 01 00 00 8d 47 18 53
00805b90: 89 44 24 10 55 80 7f 0c 00 74 0d 83 c7 18 83 44
00805ba0: 24 14 18 e9 b1 01 00 00 8b 57 04 8b 07 8d 4c 24
00805bb0: 18 51 8b 4c 24 28 52 50 c7 44 24 24 00 00 00 00
00805bc0: e8 fb 23 13 00 84 c0 75 1e 8b 44 24 18 83 44 24
00805bd0: 14 18 83 c7 18 85 c0 0f 84 7c 01 00 00 8b c8 83
00805be0: c0 04 e9 53 01 00 00 8b 4c 24 18 85 c9 74 15 a1
00805bf0: 84 d4 1d 01 50 e8 66 e6 12 00 8b d8 85 db 75 11
00805c00: 8b 4c 24 18 83 c7 18 83 44 24 14 18 e9 22 01 00
00805c10: 00 8b 47 08 50 8b cb e8 84 6d 13 00 8b e8 85 ed
00805c20: 0f 84 ae 00 00 00 83 45 04 01 8b 55 08 8b 42 04
00805c30: 8d 4d 08 68 2c fc 89 b4 ff d0 8b f0 85 f6 0f 84
00805c40: 8c 00 00 00 8b 46 04 83 c0 01 89 46 04 8b 4f 14
00805c50: 3b f1 74 27 83 c0 01 85 c9 89 46 04 89 77 14 74
00805c60: 1a 8b 41 04 83 c0 ff 89 41 04 75 0f c7 41 04 01
00805c70: 00 00 00 8b 11 8b 02 6a 01 ff d0 8b 4c 24 1c 6a
00805c80: ff 51 8d 4e 0c e8 f6 11 d7 ff 8b 47 10 85 c0 74
00805c90: 08 50 8b ce e8 c7 3b d6 ff 8b 46 04 83 c0 ff 89
00805ca0: 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b 02 6a
00805cb0: 01 8b ce ff d0 8b 13 8b 42 30 8b cb ff d0 8b 74
00805cc0: 24 1c c6 47 0c 01 83 c7 18 83 44 24 14 18 eb 3e
00805cd0: 8b 74 24 1c 8b 46 14 85 c0 74 0a 39 47 08 75 05
00805ce0: c6 44 24 13 00 8b 46 08 8b 4c 24 14 3b c8 73 0b
00805cf0: 57 50 51 e8 f8 f9 ff ff 83 c4 0c 83 46 08 e8 8b
00805d00: 4e 08 e8 c9 07 ff ff 8b 4e 08 89 4c 24 20 85 ed
00805d10: 74 1d 8b 45 04 83 c0 ff 89 45 04 75 12 c7 45 04
00805d20: 01 00 00 00 8b 55 00 8b 02 6a 01 8b cd ff d0 8b
00805d30: 4c 24 18 85 c9 74 22 8d 41 04 8b d0 83 cb ff f0
00805d40: 0f c1 1a 4b 75 13 ba 01 00 00 00 87 10 85 c9 74
00805d50: 08 8b 01 8b 10 6a 01 ff d2 3b 7c 24 20 0f 85 32
00805d60: fe ff ff 8a 44 24 13 5d 5b 5f 5e 83 c4 1c c3 cc

LINEAR DISASSEMBLY
00805b60 <.text+0x404b60>:
  805b60:	83 ec 1c                                        	sub    esp,0x1c
  805b63:	56                                              	push   esi
  805b64:	8b f1                                           	mov    esi,ecx
  805b66:	57                                              	push   edi
  805b67:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  805b6b:	e8 00 1a 13 00                                  	call   0x937570
  805b70:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  805b73:	8b 7e 04                                        	mov    edi,DWORD PTR [esi+0x4]
  805b76:	3b f9                                           	cmp    edi,ecx
  805b78:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  805b7c:	b0 01                                           	mov    al,0x1
  805b7e:	88 44 24 0b                                     	mov    BYTE PTR [esp+0xb],al
  805b82:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  805b86:	0f 84 dd 01 00 00                               	je     0x805d69
  805b8c:	8d 47 18                                        	lea    eax,[edi+0x18]
  805b8f:	53                                              	push   ebx
  805b90:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  805b94:	55                                              	push   ebp
  805b95:	80 7f 0c 00                                     	cmp    BYTE PTR [edi+0xc],0x0
  805b99:	74 0d                                           	je     0x805ba8
  805b9b:	83 c7 18                                        	add    edi,0x18
  805b9e:	83 44 24 14 18                                  	add    DWORD PTR [esp+0x14],0x18
  805ba3:	e9 b1 01 00 00                                  	jmp    0x805d59
  805ba8:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
  805bab:	8b 07                                           	mov    eax,DWORD PTR [edi]
  805bad:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  805bb1:	51                                              	push   ecx
  805bb2:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  805bb6:	52                                              	push   edx
  805bb7:	50                                              	push   eax
  805bb8:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
  805bc0:	e8 fb 23 13 00                                  	call   0x937fc0
  805bc5:	84 c0                                           	test   al,al
  805bc7:	75 1e                                           	jne    0x805be7
  805bc9:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  805bcd:	83 44 24 14 18                                  	add    DWORD PTR [esp+0x14],0x18
  805bd2:	83 c7 18                                        	add    edi,0x18
  805bd5:	85 c0                                           	test   eax,eax
  805bd7:	0f 84 7c 01 00 00                               	je     0x805d59
  805bdd:	8b c8                                           	mov    ecx,eax
  805bdf:	83 c0 04                                        	add    eax,0x4
  805be2:	e9 53 01 00 00                                  	jmp    0x805d3a
  805be7:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  805beb:	85 c9                                           	test   ecx,ecx
  805bed:	74 15                                           	je     0x805c04
  805bef:	a1 84 d4 1d 01                                  	mov    eax,ds:0x11dd484
  805bf4:	50                                              	push   eax
  805bf5:	e8 66 e6 12 00                                  	call   0x934260
  805bfa:	8b d8                                           	mov    ebx,eax
  805bfc:	85 db                                           	test   ebx,ebx
  805bfe:	75 11                                           	jne    0x805c11
  805c00:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  805c04:	83 c7 18                                        	add    edi,0x18
  805c07:	83 44 24 14 18                                  	add    DWORD PTR [esp+0x14],0x18
  805c0c:	e9 22 01 00 00                                  	jmp    0x805d33
  805c11:	8b 47 08                                        	mov    eax,DWORD PTR [edi+0x8]
  805c14:	50                                              	push   eax
  805c15:	8b cb                                           	mov    ecx,ebx
  805c17:	e8 84 6d 13 00                                  	call   0x93c9a0
  805c1c:	8b e8                                           	mov    ebp,eax
  805c1e:	85 ed                                           	test   ebp,ebp
  805c20:	0f 84 ae 00 00 00                               	je     0x805cd4
  805c26:	83 45 04 01                                     	add    DWORD PTR [ebp+0x4],0x1
  805c2a:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  805c2d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  805c30:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
  805c33:	68 2c fc 89 b4                                  	push   0xb489fc2c
  805c38:	ff d0                                           	call   eax
  805c3a:	8b f0                                           	mov    esi,eax
  805c3c:	85 f6                                           	test   esi,esi
  805c3e:	0f 84 8c 00 00 00                               	je     0x805cd0
  805c44:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  805c47:	83 c0 01                                        	add    eax,0x1
  805c4a:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  805c4d:	8b 4f 14                                        	mov    ecx,DWORD PTR [edi+0x14]
  805c50:	3b f1                                           	cmp    esi,ecx
  805c52:	74 27                                           	je     0x805c7b
  805c54:	83 c0 01                                        	add    eax,0x1
  805c57:	85 c9                                           	test   ecx,ecx
  805c59:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  805c5c:	89 77 14                                        	mov    DWORD PTR [edi+0x14],esi
  805c5f:	74 1a                                           	je     0x805c7b
  805c61:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  805c64:	83 c0 ff                                        	add    eax,0xffffffff
  805c67:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
  805c6a:	75 0f                                           	jne    0x805c7b
  805c6c:	c7 41 04 01 00 00 00                            	mov    DWORD PTR [ecx+0x4],0x1
  805c73:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  805c75:	8b 02                                           	mov    eax,DWORD PTR [edx]
  805c77:	6a 01                                           	push   0x1
  805c79:	ff d0                                           	call   eax
  805c7b:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  805c7f:	6a ff                                           	push   0xffffffff
  805c81:	51                                              	push   ecx
  805c82:	8d 4e 0c                                        	lea    ecx,[esi+0xc]
  805c85:	e8 f6 11 d7 ff                                  	call   0x576e80
  805c8a:	8b 47 10                                        	mov    eax,DWORD PTR [edi+0x10]
  805c8d:	85 c0                                           	test   eax,eax
  805c8f:	74 08                                           	je     0x805c99
  805c91:	50                                              	push   eax
  805c92:	8b ce                                           	mov    ecx,esi
  805c94:	e8 c7 3b d6 ff                                  	call   0x569860
  805c99:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  805c9c:	83 c0 ff                                        	add    eax,0xffffffff
  805c9f:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  805ca2:	75 11                                           	jne    0x805cb5
  805ca4:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  805cab:	8b 16                                           	mov    edx,DWORD PTR [esi]
  805cad:	8b 02                                           	mov    eax,DWORD PTR [edx]
  805caf:	6a 01                                           	push   0x1
  805cb1:	8b ce                                           	mov    ecx,esi
  805cb3:	ff d0                                           	call   eax
  805cb5:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  805cb7:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
  805cba:	8b cb                                           	mov    ecx,ebx
  805cbc:	ff d0                                           	call   eax
  805cbe:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  805cc2:	c6 47 0c 01                                     	mov    BYTE PTR [edi+0xc],0x1
  805cc6:	83 c7 18                                        	add    edi,0x18
  805cc9:	83 44 24 14 18                                  	add    DWORD PTR [esp+0x14],0x18
  805cce:	eb 3e                                           	jmp    0x805d0e
  805cd0:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  805cd4:	8b 46 14                                        	mov    eax,DWORD PTR [esi+0x14]
  805cd7:	85 c0                                           	test   eax,eax
  805cd9:	74 0a                                           	je     0x805ce5
  805cdb:	39 47 08                                        	cmp    DWORD PTR [edi+0x8],eax
  805cde:	75 05                                           	jne    0x805ce5
  805ce0:	c6 44 24 13 00                                  	mov    BYTE PTR [esp+0x13],0x0
  805ce5:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  805ce8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  805cec:	3b c8                                           	cmp    ecx,eax
  805cee:	73 0b                                           	jae    0x805cfb
  805cf0:	57                                              	push   edi
  805cf1:	50                                              	push   eax
  805cf2:	51                                              	push   ecx
  805cf3:	e8 f8 f9 ff ff                                  	call   0x8056f0
  805cf8:	83 c4 0c                                        	add    esp,0xc
  805cfb:	83 46 08 e8                                     	add    DWORD PTR [esi+0x8],0xffffffe8
  805cff:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  805d02:	e8 c9 07 ff ff                                  	call   0x7f64d0
  805d07:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  805d0a:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  805d0e:	85 ed                                           	test   ebp,ebp
  805d10:	74 1d                                           	je     0x805d2f
  805d12:	8b 45 04                                        	mov    eax,DWORD PTR [ebp+0x4]
  805d15:	83 c0 ff                                        	add    eax,0xffffffff
  805d18:	89 45 04                                        	mov    DWORD PTR [ebp+0x4],eax
  805d1b:	75 12                                           	jne    0x805d2f
  805d1d:	c7 45 04 01 00 00 00                            	mov    DWORD PTR [ebp+0x4],0x1
  805d24:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  805d27:	8b 02                                           	mov    eax,DWORD PTR [edx]
  805d29:	6a 01                                           	push   0x1
  805d2b:	8b cd                                           	mov    ecx,ebp
  805d2d:	ff d0                                           	call   eax
  805d2f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  805d33:	85 c9                                           	test   ecx,ecx
  805d35:	74 22                                           	je     0x805d59
  805d37:	8d 41 04                                        	lea    eax,[ecx+0x4]
  805d3a:	8b d0                                           	mov    edx,eax
  805d3c:	83 cb ff                                        	or     ebx,0xffffffff
  805d3f:	f0 0f c1 1a                                     	lock xadd DWORD PTR [edx],ebx
  805d43:	4b                                              	dec    ebx
  805d44:	75 13                                           	jne    0x805d59
  805d46:	ba 01 00 00 00                                  	mov    edx,0x1
  805d4b:	87 10                                           	xchg   DWORD PTR [eax],edx
  805d4d:	85 c9                                           	test   ecx,ecx
  805d4f:	74 08                                           	je     0x805d59
  805d51:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  805d53:	8b 10                                           	mov    edx,DWORD PTR [eax]
  805d55:	6a 01                                           	push   0x1
  805d57:	ff d2                                           	call   edx
  805d59:	3b 7c 24 20                                     	cmp    edi,DWORD PTR [esp+0x20]
  805d5d:	0f 85 32 fe ff ff                               	jne    0x805b95
  805d63:	8a 44 24 13                                     	mov    al,BYTE PTR [esp+0x13]
  805d67:	5d                                              	pop    ebp
  805d68:	5b                                              	pop    ebx
  805d69:	5f                                              	pop    edi
  805d6a:	5e                                              	pop    esi
  805d6b:	83 c4 1c                                        	add    esp,0x1c
  805d6e:	c3                                              	ret
  805d6f:	cc                                              	int3
