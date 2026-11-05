# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00754a40 (ScriptCore.Route::Route_Append)
Paired Ghidra pseudocode: 00754A40_ScriptCore_Route_Route_Append.c
Window: [0x00754a40, 0x00754c00) (448 bytes; stop exclusive)
Next defined Ghidra entry: 0x00754c00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00754a40: 8b 44 24 04 8b 0d c4 50 1d 01 83 ec 08 53 56 57
00754a50: 50 e8 5a 6a ff ff 8b f8 85 ff 74 09 8b 17 8b 42
00754a60: 10 8b cf ff d0 8b 4c 24 1c 51 8b 0d c4 50 1d 01
00754a70: e8 3b 6a ff ff 8b f0 85 f6 74 09 8b 16 8b 42 10
00754a80: 8b ce ff d0 85 ff 0f 84 4c 01 00 00 85 f6 0f 84
00754a90: 51 01 00 00 80 bf f4 00 00 00 00 74 08 8b 8f ec
00754aa0: 00 00 00 eb 13 8d 87 e0 00 00 00 39 00 74 07 8b
00754ab0: 08 8b 49 08 eb 02 33 c9 85 c9 89 4c 24 10 74 0c
00754ac0: 8d 51 04 b8 01 00 00 00 f0 0f c1 02 80 be f4 00
00754ad0: 00 00 00 74 08 8b 86 ec 00 00 00 eb 13 8d 86 e0
00754ae0: 00 00 00 39 00 74 07 8b 10 8b 42 08 eb 02 33 c0
00754af0: 85 c0 89 44 24 0c 74 0c 8d 50 04 bb 01 00 00 00
00754b00: f0 0f c1 1a 85 c9 0f 84 88 00 00 00 85 c0 0f 84
00754b10: a6 00 00 00 8b 5c 24 20 8b 11 53 50 8b 82 f8 00
00754b20: 00 00 ff d0 85 c0 74 3f 56 8b cf e8 b0 72 ff ff
00754b30: 8b cf e8 19 b9 ff ff 8d 4c 24 0c e8 a0 17 ff ff
00754b40: 8d 4c 24 10 e8 97 17 ff ff 8b 16 8b 42 14 8b ce
00754b50: ff d0 8b 17 8b 42 14 8b cf ff d0 5f 5e b8 01 00
00754b60: 00 00 5b 83 c4 08 c3 8d 4c 24 0c e8 70 17 ff ff
00754b70: 8d 4c 24 10 e8 67 17 ff ff 8b 16 8b 42 14 8b ce
00754b80: ff d0 8b 17 8b 42 14 8b cf ff d0 5f 5e 33 c0 5b
00754b90: 83 c4 08 c3 85 c0 74 40 8d 48 04 8b d1 83 cb ff
00754ba0: f0 0f c1 1a 4b 75 31 ba 01 00 00 00 87 11 8b 10
00754bb0: 8b c8 8b 02 6a 01 ff d0 eb 1e 8d 41 04 8b d0 83
00754bc0: cb ff f0 0f c1 1a 4b 75 0f ba 01 00 00 00 87 10
00754bd0: 8b 01 8b 10 6a 01 ff d2 85 f6 74 09 8b 06 8b 50
00754be0: 14 8b ce ff d2 85 ff 74 09 8b 07 8b 50 14 8b cf
00754bf0: ff d2 5f 5e 33 c0 5b 83 c4 08 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00754a40 <.text+0x353a40>:
  754a40:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  754a44:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  754a4a:	83 ec 08                                        	sub    esp,0x8
  754a4d:	53                                              	push   ebx
  754a4e:	56                                              	push   esi
  754a4f:	57                                              	push   edi
  754a50:	50                                              	push   eax
  754a51:	e8 5a 6a ff ff                                  	call   0x74b4b0
  754a56:	8b f8                                           	mov    edi,eax
  754a58:	85 ff                                           	test   edi,edi
  754a5a:	74 09                                           	je     0x754a65
  754a5c:	8b 17                                           	mov    edx,DWORD PTR [edi]
  754a5e:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  754a61:	8b cf                                           	mov    ecx,edi
  754a63:	ff d0                                           	call   eax
  754a65:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  754a69:	51                                              	push   ecx
  754a6a:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  754a70:	e8 3b 6a ff ff                                  	call   0x74b4b0
  754a75:	8b f0                                           	mov    esi,eax
  754a77:	85 f6                                           	test   esi,esi
  754a79:	74 09                                           	je     0x754a84
  754a7b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  754a7d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  754a80:	8b ce                                           	mov    ecx,esi
  754a82:	ff d0                                           	call   eax
  754a84:	85 ff                                           	test   edi,edi
  754a86:	0f 84 4c 01 00 00                               	je     0x754bd8
  754a8c:	85 f6                                           	test   esi,esi
  754a8e:	0f 84 51 01 00 00                               	je     0x754be5
  754a94:	80 bf f4 00 00 00 00                            	cmp    BYTE PTR [edi+0xf4],0x0
  754a9b:	74 08                                           	je     0x754aa5
  754a9d:	8b 8f ec 00 00 00                               	mov    ecx,DWORD PTR [edi+0xec]
  754aa3:	eb 13                                           	jmp    0x754ab8
  754aa5:	8d 87 e0 00 00 00                               	lea    eax,[edi+0xe0]
  754aab:	39 00                                           	cmp    DWORD PTR [eax],eax
  754aad:	74 07                                           	je     0x754ab6
  754aaf:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  754ab1:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  754ab4:	eb 02                                           	jmp    0x754ab8
  754ab6:	33 c9                                           	xor    ecx,ecx
  754ab8:	85 c9                                           	test   ecx,ecx
  754aba:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  754abe:	74 0c                                           	je     0x754acc
  754ac0:	8d 51 04                                        	lea    edx,[ecx+0x4]
  754ac3:	b8 01 00 00 00                                  	mov    eax,0x1
  754ac8:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  754acc:	80 be f4 00 00 00 00                            	cmp    BYTE PTR [esi+0xf4],0x0
  754ad3:	74 08                                           	je     0x754add
  754ad5:	8b 86 ec 00 00 00                               	mov    eax,DWORD PTR [esi+0xec]
  754adb:	eb 13                                           	jmp    0x754af0
  754add:	8d 86 e0 00 00 00                               	lea    eax,[esi+0xe0]
  754ae3:	39 00                                           	cmp    DWORD PTR [eax],eax
  754ae5:	74 07                                           	je     0x754aee
  754ae7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  754ae9:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  754aec:	eb 02                                           	jmp    0x754af0
  754aee:	33 c0                                           	xor    eax,eax
  754af0:	85 c0                                           	test   eax,eax
  754af2:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  754af6:	74 0c                                           	je     0x754b04
  754af8:	8d 50 04                                        	lea    edx,[eax+0x4]
  754afb:	bb 01 00 00 00                                  	mov    ebx,0x1
  754b00:	f0 0f c1 1a                                     	lock xadd DWORD PTR [edx],ebx
  754b04:	85 c9                                           	test   ecx,ecx
  754b06:	0f 84 88 00 00 00                               	je     0x754b94
  754b0c:	85 c0                                           	test   eax,eax
  754b0e:	0f 84 a6 00 00 00                               	je     0x754bba
  754b14:	8b 5c 24 20                                     	mov    ebx,DWORD PTR [esp+0x20]
  754b18:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  754b1a:	53                                              	push   ebx
  754b1b:	50                                              	push   eax
  754b1c:	8b 82 f8 00 00 00                               	mov    eax,DWORD PTR [edx+0xf8]
  754b22:	ff d0                                           	call   eax
  754b24:	85 c0                                           	test   eax,eax
  754b26:	74 3f                                           	je     0x754b67
  754b28:	56                                              	push   esi
  754b29:	8b cf                                           	mov    ecx,edi
  754b2b:	e8 b0 72 ff ff                                  	call   0x74bde0
  754b30:	8b cf                                           	mov    ecx,edi
  754b32:	e8 19 b9 ff ff                                  	call   0x750450
  754b37:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  754b3b:	e8 a0 17 ff ff                                  	call   0x7462e0
  754b40:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  754b44:	e8 97 17 ff ff                                  	call   0x7462e0
  754b49:	8b 16                                           	mov    edx,DWORD PTR [esi]
  754b4b:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  754b4e:	8b ce                                           	mov    ecx,esi
  754b50:	ff d0                                           	call   eax
  754b52:	8b 17                                           	mov    edx,DWORD PTR [edi]
  754b54:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  754b57:	8b cf                                           	mov    ecx,edi
  754b59:	ff d0                                           	call   eax
  754b5b:	5f                                              	pop    edi
  754b5c:	5e                                              	pop    esi
  754b5d:	b8 01 00 00 00                                  	mov    eax,0x1
  754b62:	5b                                              	pop    ebx
  754b63:	83 c4 08                                        	add    esp,0x8
  754b66:	c3                                              	ret
  754b67:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  754b6b:	e8 70 17 ff ff                                  	call   0x7462e0
  754b70:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  754b74:	e8 67 17 ff ff                                  	call   0x7462e0
  754b79:	8b 16                                           	mov    edx,DWORD PTR [esi]
  754b7b:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  754b7e:	8b ce                                           	mov    ecx,esi
  754b80:	ff d0                                           	call   eax
  754b82:	8b 17                                           	mov    edx,DWORD PTR [edi]
  754b84:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  754b87:	8b cf                                           	mov    ecx,edi
  754b89:	ff d0                                           	call   eax
  754b8b:	5f                                              	pop    edi
  754b8c:	5e                                              	pop    esi
  754b8d:	33 c0                                           	xor    eax,eax
  754b8f:	5b                                              	pop    ebx
  754b90:	83 c4 08                                        	add    esp,0x8
  754b93:	c3                                              	ret
  754b94:	85 c0                                           	test   eax,eax
  754b96:	74 40                                           	je     0x754bd8
  754b98:	8d 48 04                                        	lea    ecx,[eax+0x4]
  754b9b:	8b d1                                           	mov    edx,ecx
  754b9d:	83 cb ff                                        	or     ebx,0xffffffff
  754ba0:	f0 0f c1 1a                                     	lock xadd DWORD PTR [edx],ebx
  754ba4:	4b                                              	dec    ebx
  754ba5:	75 31                                           	jne    0x754bd8
  754ba7:	ba 01 00 00 00                                  	mov    edx,0x1
  754bac:	87 11                                           	xchg   DWORD PTR [ecx],edx
  754bae:	8b 10                                           	mov    edx,DWORD PTR [eax]
  754bb0:	8b c8                                           	mov    ecx,eax
  754bb2:	8b 02                                           	mov    eax,DWORD PTR [edx]
  754bb4:	6a 01                                           	push   0x1
  754bb6:	ff d0                                           	call   eax
  754bb8:	eb 1e                                           	jmp    0x754bd8
  754bba:	8d 41 04                                        	lea    eax,[ecx+0x4]
  754bbd:	8b d0                                           	mov    edx,eax
  754bbf:	83 cb ff                                        	or     ebx,0xffffffff
  754bc2:	f0 0f c1 1a                                     	lock xadd DWORD PTR [edx],ebx
  754bc6:	4b                                              	dec    ebx
  754bc7:	75 0f                                           	jne    0x754bd8
  754bc9:	ba 01 00 00 00                                  	mov    edx,0x1
  754bce:	87 10                                           	xchg   DWORD PTR [eax],edx
  754bd0:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  754bd2:	8b 10                                           	mov    edx,DWORD PTR [eax]
  754bd4:	6a 01                                           	push   0x1
  754bd6:	ff d2                                           	call   edx
  754bd8:	85 f6                                           	test   esi,esi
  754bda:	74 09                                           	je     0x754be5
  754bdc:	8b 06                                           	mov    eax,DWORD PTR [esi]
  754bde:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  754be1:	8b ce                                           	mov    ecx,esi
  754be3:	ff d2                                           	call   edx
  754be5:	85 ff                                           	test   edi,edi
  754be7:	74 09                                           	je     0x754bf2
  754be9:	8b 07                                           	mov    eax,DWORD PTR [edi]
  754beb:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  754bee:	8b cf                                           	mov    ecx,edi
  754bf0:	ff d2                                           	call   edx
  754bf2:	5f                                              	pop    edi
  754bf3:	5e                                              	pop    esi
  754bf4:	33 c0                                           	xor    eax,eax
  754bf6:	5b                                              	pop    ebx
  754bf7:	83 c4 08                                        	add    esp,0x8
  754bfa:	c3                                              	ret
  754bfb:	cc                                              	int3
  754bfc:	cc                                              	int3
  754bfd:	cc                                              	int3
  754bfe:	cc                                              	int3
  754bff:	cc                                              	int3
