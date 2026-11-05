# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581bc0 (World_ObjectPlayVideo)
Paired Ghidra pseudocode: 10581BC0_World_ObjectPlayVideo.c
Window: [0x10581bc0, 0x10581cc0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581bc0: 83 ec 20 53 55 56 57 e8 d4 85 1a 00 33 ed 3b c5
10581bd0: 0f 84 de 00 00 00 8b 7c 24 38 8b 5c 24 34 57 53
10581be0: 8b c8 e8 c9 8f 1a 00 85 c0 0f 84 c5 00 00 00 e8
10581bf0: 2c 95 fd ff 8b 4c 24 3c 3b cd 74 0e 8b 10 51 8b
10581c00: c8 8b 42 58 ff d0 8b f0 eb 02 33 f6 e8 bf 34 36
10581c10: 00 55 68 f6 1a cc b1 89 6c 24 18 89 6c 24 1c 89
10581c20: 6c 24 20 89 6c 24 24 8b 10 8b 92 80 00 00 00 56
10581c30: 8d 4c 24 1c 51 8b c8 ff d2 8b 44 24 44 3b c5 75
10581c40: 2c 8d 44 24 10 50 8d 4c 24 24 51 e8 80 95 04 00
10581c50: 8b 10 89 54 24 18 8b 48 04 89 4c 24 1c 8b 50 08
10581c60: 89 54 24 20 8b 40 0c 89 44 24 24 eb 0b 8d 4c 24
10581c70: 1c 51 50 e8 58 8b 04 00 8b 54 24 48 8b 4c 24 18
10581c80: 83 c4 08 55 55 52 8b 54 24 20 83 ec 10 8b c4 89
10581c90: 08 8b 4c 24 34 89 50 04 8b 54 24 38 57 89 48 08
10581ca0: 53 89 50 0c e8 87 ee ff ff 83 c4 24 5f 5e 5d 5b
10581cb0: 83 c4 20 c3 5f 5e 5d 33 c0 5b 83 c4 20 c3 cc cc

LINEAR DISASSEMBLY
10581bc0 <.text+0x580bc0>:
10581bc0:	83 ec 20                                        	sub    esp,0x20
10581bc3:	53                                              	push   ebx
10581bc4:	55                                              	push   ebp
10581bc5:	56                                              	push   esi
10581bc6:	57                                              	push   edi
10581bc7:	e8 d4 85 1a 00                                  	call   0x1072a1a0
10581bcc:	33 ed                                           	xor    ebp,ebp
10581bce:	3b c5                                           	cmp    eax,ebp
10581bd0:	0f 84 de 00 00 00                               	je     0x10581cb4
10581bd6:	8b 7c 24 38                                     	mov    edi,DWORD PTR [esp+0x38]
10581bda:	8b 5c 24 34                                     	mov    ebx,DWORD PTR [esp+0x34]
10581bde:	57                                              	push   edi
10581bdf:	53                                              	push   ebx
10581be0:	8b c8                                           	mov    ecx,eax
10581be2:	e8 c9 8f 1a 00                                  	call   0x1072abb0
10581be7:	85 c0                                           	test   eax,eax
10581be9:	0f 84 c5 00 00 00                               	je     0x10581cb4
10581bef:	e8 2c 95 fd ff                                  	call   0x1055b120
10581bf4:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
10581bf8:	3b cd                                           	cmp    ecx,ebp
10581bfa:	74 0e                                           	je     0x10581c0a
10581bfc:	8b 10                                           	mov    edx,DWORD PTR [eax]
10581bfe:	51                                              	push   ecx
10581bff:	8b c8                                           	mov    ecx,eax
10581c01:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
10581c04:	ff d0                                           	call   eax
10581c06:	8b f0                                           	mov    esi,eax
10581c08:	eb 02                                           	jmp    0x10581c0c
10581c0a:	33 f6                                           	xor    esi,esi
10581c0c:	e8 bf 34 36 00                                  	call   0x108e50d0
10581c11:	55                                              	push   ebp
10581c12:	68 f6 1a cc b1                                  	push   0xb1cc1af6
10581c17:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
10581c1b:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
10581c1f:	89 6c 24 20                                     	mov    DWORD PTR [esp+0x20],ebp
10581c23:	89 6c 24 24                                     	mov    DWORD PTR [esp+0x24],ebp
10581c27:	8b 10                                           	mov    edx,DWORD PTR [eax]
10581c29:	8b 92 80 00 00 00                               	mov    edx,DWORD PTR [edx+0x80]
10581c2f:	56                                              	push   esi
10581c30:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10581c34:	51                                              	push   ecx
10581c35:	8b c8                                           	mov    ecx,eax
10581c37:	ff d2                                           	call   edx
10581c39:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10581c3d:	3b c5                                           	cmp    eax,ebp
10581c3f:	75 2c                                           	jne    0x10581c6d
10581c41:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10581c45:	50                                              	push   eax
10581c46:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10581c4a:	51                                              	push   ecx
10581c4b:	e8 80 95 04 00                                  	call   0x105cb1d0
10581c50:	8b 10                                           	mov    edx,DWORD PTR [eax]
10581c52:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
10581c56:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
10581c59:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
10581c5d:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10581c60:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
10581c64:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10581c67:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
10581c6b:	eb 0b                                           	jmp    0x10581c78
10581c6d:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10581c71:	51                                              	push   ecx
10581c72:	50                                              	push   eax
10581c73:	e8 58 8b 04 00                                  	call   0x105ca7d0
10581c78:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
10581c7c:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10581c80:	83 c4 08                                        	add    esp,0x8
10581c83:	55                                              	push   ebp
10581c84:	55                                              	push   ebp
10581c85:	52                                              	push   edx
10581c86:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10581c8a:	83 ec 10                                        	sub    esp,0x10
10581c8d:	8b c4                                           	mov    eax,esp
10581c8f:	89 08                                           	mov    DWORD PTR [eax],ecx
10581c91:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10581c95:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10581c98:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
10581c9c:	57                                              	push   edi
10581c9d:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10581ca0:	53                                              	push   ebx
10581ca1:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10581ca4:	e8 87 ee ff ff                                  	call   0x10580b30
10581ca9:	83 c4 24                                        	add    esp,0x24
10581cac:	5f                                              	pop    edi
10581cad:	5e                                              	pop    esi
10581cae:	5d                                              	pop    ebp
10581caf:	5b                                              	pop    ebx
10581cb0:	83 c4 20                                        	add    esp,0x20
10581cb3:	c3                                              	ret
10581cb4:	5f                                              	pop    edi
10581cb5:	5e                                              	pop    esi
10581cb6:	5d                                              	pop    ebp
10581cb7:	33 c0                                           	xor    eax,eax
10581cb9:	5b                                              	pop    ebx
10581cba:	83 c4 20                                        	add    esp,0x20
10581cbd:	c3                                              	ret
10581cbe:	cc                                              	int3
10581cbf:	cc                                              	int3
