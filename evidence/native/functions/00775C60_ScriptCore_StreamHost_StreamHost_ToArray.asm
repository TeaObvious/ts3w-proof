# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00775c60 (ScriptCore.StreamHost::StreamHost_ToArray)
Paired Ghidra pseudocode: 00775C60_ScriptCore_StreamHost_StreamHost_ToArray.c
Window: [0x00775c60, 0x00775d60) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00775d60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00775c60: 83 ec 08 56 8b 74 24 10 3b 35 38 78 1d 01 75 08
00775c70: 8b 35 3c 78 1d 01 eb 35 8b c6 25 00 00 00 ff 3d
00775c80: 00 00 00 60 74 04 33 f6 eb 23 e8 01 37 ff ff 8b
00775c90: 10 8b c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b
00775ca0: a3 3c 78 1d 01 89 35 38 78 1d 01 8b f0 85 f6 75
00775cb0: 07 33 c0 5e 83 c4 08 c3 53 57 e8 d1 36 ff ff 8b
00775cc0: 16 8b f8 8b 42 1c 8b ce ff d0 8b d8 85 db 0f 8c
00775cd0: 80 00 00 00 8b 16 8b 42 28 6a 00 6a 00 8b ce ff
00775ce0: d0 84 c0 74 6f c7 44 24 18 00 00 00 00 8b 17 8b
00775cf0: 92 80 00 00 00 53 8d 44 24 1c 50 8b cf ff d2 8b
00775d00: 44 24 18 85 c0 74 4d 8b 17 8b 52 70 8d 4c 24 10
00775d10: 51 8d 4c 24 10 51 50 8b cf ff d2 8b 44 24 0c 85
00775d20: c0 74 20 39 5c 24 10 7c 1a 8b 16 53 50 8b 42 30
00775d30: 8b ce ff d0 3b d8 75 0b 8b 44 24 18 5f 5b 5e 83
00775d40: c4 08 c3 8b 17 8b 44 24 18 8b 92 94 00 00 00 50
00775d50: 8b cf ff d2 5f 5b 33 c0 5e 83 c4 08 c3 cc cc cc

LINEAR DISASSEMBLY
00775c60 <.text+0x374c60>:
  775c60:	83 ec 08                                        	sub    esp,0x8
  775c63:	56                                              	push   esi
  775c64:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  775c68:	3b 35 38 78 1d 01                               	cmp    esi,DWORD PTR ds:0x11d7838
  775c6e:	75 08                                           	jne    0x775c78
  775c70:	8b 35 3c 78 1d 01                               	mov    esi,DWORD PTR ds:0x11d783c
  775c76:	eb 35                                           	jmp    0x775cad
  775c78:	8b c6                                           	mov    eax,esi
  775c7a:	25 00 00 00 ff                                  	and    eax,0xff000000
  775c7f:	3d 00 00 00 60                                  	cmp    eax,0x60000000
  775c84:	74 04                                           	je     0x775c8a
  775c86:	33 f6                                           	xor    esi,esi
  775c88:	eb 23                                           	jmp    0x775cad
  775c8a:	e8 01 37 ff ff                                  	call   0x769390
  775c8f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  775c91:	8b c8                                           	mov    ecx,eax
  775c93:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  775c99:	56                                              	push   esi
  775c9a:	ff d0                                           	call   eax
  775c9c:	85 c0                                           	test   eax,eax
  775c9e:	74 0b                                           	je     0x775cab
  775ca0:	a3 3c 78 1d 01                                  	mov    ds:0x11d783c,eax
  775ca5:	89 35 38 78 1d 01                               	mov    DWORD PTR ds:0x11d7838,esi
  775cab:	8b f0                                           	mov    esi,eax
  775cad:	85 f6                                           	test   esi,esi
  775caf:	75 07                                           	jne    0x775cb8
  775cb1:	33 c0                                           	xor    eax,eax
  775cb3:	5e                                              	pop    esi
  775cb4:	83 c4 08                                        	add    esp,0x8
  775cb7:	c3                                              	ret
  775cb8:	53                                              	push   ebx
  775cb9:	57                                              	push   edi
  775cba:	e8 d1 36 ff ff                                  	call   0x769390
  775cbf:	8b 16                                           	mov    edx,DWORD PTR [esi]
  775cc1:	8b f8                                           	mov    edi,eax
  775cc3:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  775cc6:	8b ce                                           	mov    ecx,esi
  775cc8:	ff d0                                           	call   eax
  775cca:	8b d8                                           	mov    ebx,eax
  775ccc:	85 db                                           	test   ebx,ebx
  775cce:	0f 8c 80 00 00 00                               	jl     0x775d54
  775cd4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  775cd6:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
  775cd9:	6a 00                                           	push   0x0
  775cdb:	6a 00                                           	push   0x0
  775cdd:	8b ce                                           	mov    ecx,esi
  775cdf:	ff d0                                           	call   eax
  775ce1:	84 c0                                           	test   al,al
  775ce3:	74 6f                                           	je     0x775d54
  775ce5:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  775ced:	8b 17                                           	mov    edx,DWORD PTR [edi]
  775cef:	8b 92 80 00 00 00                               	mov    edx,DWORD PTR [edx+0x80]
  775cf5:	53                                              	push   ebx
  775cf6:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  775cfa:	50                                              	push   eax
  775cfb:	8b cf                                           	mov    ecx,edi
  775cfd:	ff d2                                           	call   edx
  775cff:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  775d03:	85 c0                                           	test   eax,eax
  775d05:	74 4d                                           	je     0x775d54
  775d07:	8b 17                                           	mov    edx,DWORD PTR [edi]
  775d09:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  775d0c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  775d10:	51                                              	push   ecx
  775d11:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  775d15:	51                                              	push   ecx
  775d16:	50                                              	push   eax
  775d17:	8b cf                                           	mov    ecx,edi
  775d19:	ff d2                                           	call   edx
  775d1b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  775d1f:	85 c0                                           	test   eax,eax
  775d21:	74 20                                           	je     0x775d43
  775d23:	39 5c 24 10                                     	cmp    DWORD PTR [esp+0x10],ebx
  775d27:	7c 1a                                           	jl     0x775d43
  775d29:	8b 16                                           	mov    edx,DWORD PTR [esi]
  775d2b:	53                                              	push   ebx
  775d2c:	50                                              	push   eax
  775d2d:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
  775d30:	8b ce                                           	mov    ecx,esi
  775d32:	ff d0                                           	call   eax
  775d34:	3b d8                                           	cmp    ebx,eax
  775d36:	75 0b                                           	jne    0x775d43
  775d38:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  775d3c:	5f                                              	pop    edi
  775d3d:	5b                                              	pop    ebx
  775d3e:	5e                                              	pop    esi
  775d3f:	83 c4 08                                        	add    esp,0x8
  775d42:	c3                                              	ret
  775d43:	8b 17                                           	mov    edx,DWORD PTR [edi]
  775d45:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  775d49:	8b 92 94 00 00 00                               	mov    edx,DWORD PTR [edx+0x94]
  775d4f:	50                                              	push   eax
  775d50:	8b cf                                           	mov    ecx,edi
  775d52:	ff d2                                           	call   edx
  775d54:	5f                                              	pop    edi
  775d55:	5b                                              	pop    ebx
  775d56:	33 c0                                           	xor    eax,eax
  775d58:	5e                                              	pop    esi
  775d59:	83 c4 08                                        	add    esp,0x8
  775d5c:	c3                                              	ret
  775d5d:	cc                                              	int3
  775d5e:	cc                                              	int3
  775d5f:	cc                                              	int3
