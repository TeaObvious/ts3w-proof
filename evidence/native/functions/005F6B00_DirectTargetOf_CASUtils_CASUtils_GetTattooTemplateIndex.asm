# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005f6b00 (DirectTargetOf_CASUtils_CASUtils_GetTattooTemplateIndex)
Paired Ghidra pseudocode: 005F6B00_DirectTargetOf_CASUtils_CASUtils_GetTattooTemplateIndex.c
Window: [0x005f6b00, 0x005f6be0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x005f6be0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005f6b00: 81 ec c0 00 00 00 56 57 e8 83 28 17 00 8b 8c 24
005f6b10: cc 00 00 00 8b f0 8b 06 8b 50 58 51 8b ce ff d2
005f6b20: 8b 8c 24 d0 00 00 00 8b f8 8b 06 8b 50 58 51 8b
005f6b30: ce ff d2 85 ff 8b f0 0f 84 95 00 00 00 85 f6 0f
005f6b40: 84 8d 00 00 00 8d 4c 24 68 e8 72 8f fc ff 57 8d
005f6b50: 4c 24 6c e8 08 95 fc ff 8d 4c 24 08 e8 5f 8f fc
005f6b60: ff 56 8d 4c 24 0c e8 f5 94 fc ff 8b bc 24 d4 00
005f6b70: 00 00 be 01 00 00 00 57 56 8d 44 24 10 50 8d 4c
005f6b80: 24 74 51 e8 08 ff ff ff 83 c4 10 84 c0 75 26 83
005f6b90: c6 01 83 fe 05 76 e0 8d 4c 24 08 e8 40 91 fc ff
005f6ba0: 8d 4c 24 68 e8 37 91 fc ff 5f 83 c8 ff 5e 81 c4
005f6bb0: c0 00 00 00 c3 8d 4c 24 08 e8 22 91 fc ff 8d 4c
005f6bc0: 24 68 e8 19 91 fc ff 5f 8b c6 5e 81 c4 c0 00 00
005f6bd0: 00 c3 5f 33 c0 5e 81 c4 c0 00 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
005f6b00 <.text+0x1f5b00>:
  5f6b00:	81 ec c0 00 00 00                               	sub    esp,0xc0
  5f6b06:	56                                              	push   esi
  5f6b07:	57                                              	push   edi
  5f6b08:	e8 83 28 17 00                                  	call   0x769390
  5f6b0d:	8b 8c 24 cc 00 00 00                            	mov    ecx,DWORD PTR [esp+0xcc]
  5f6b14:	8b f0                                           	mov    esi,eax
  5f6b16:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5f6b18:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5f6b1b:	51                                              	push   ecx
  5f6b1c:	8b ce                                           	mov    ecx,esi
  5f6b1e:	ff d2                                           	call   edx
  5f6b20:	8b 8c 24 d0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xd0]
  5f6b27:	8b f8                                           	mov    edi,eax
  5f6b29:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5f6b2b:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5f6b2e:	51                                              	push   ecx
  5f6b2f:	8b ce                                           	mov    ecx,esi
  5f6b31:	ff d2                                           	call   edx
  5f6b33:	85 ff                                           	test   edi,edi
  5f6b35:	8b f0                                           	mov    esi,eax
  5f6b37:	0f 84 95 00 00 00                               	je     0x5f6bd2
  5f6b3d:	85 f6                                           	test   esi,esi
  5f6b3f:	0f 84 8d 00 00 00                               	je     0x5f6bd2
  5f6b45:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  5f6b49:	e8 72 8f fc ff                                  	call   0x5bfac0
  5f6b4e:	57                                              	push   edi
  5f6b4f:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  5f6b53:	e8 08 95 fc ff                                  	call   0x5c0060
  5f6b58:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  5f6b5c:	e8 5f 8f fc ff                                  	call   0x5bfac0
  5f6b61:	56                                              	push   esi
  5f6b62:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5f6b66:	e8 f5 94 fc ff                                  	call   0x5c0060
  5f6b6b:	8b bc 24 d4 00 00 00                            	mov    edi,DWORD PTR [esp+0xd4]
  5f6b72:	be 01 00 00 00                                  	mov    esi,0x1
  5f6b77:	57                                              	push   edi
  5f6b78:	56                                              	push   esi
  5f6b79:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  5f6b7d:	50                                              	push   eax
  5f6b7e:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
  5f6b82:	51                                              	push   ecx
  5f6b83:	e8 08 ff ff ff                                  	call   0x5f6a90
  5f6b88:	83 c4 10                                        	add    esp,0x10
  5f6b8b:	84 c0                                           	test   al,al
  5f6b8d:	75 26                                           	jne    0x5f6bb5
  5f6b8f:	83 c6 01                                        	add    esi,0x1
  5f6b92:	83 fe 05                                        	cmp    esi,0x5
  5f6b95:	76 e0                                           	jbe    0x5f6b77
  5f6b97:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  5f6b9b:	e8 40 91 fc ff                                  	call   0x5bfce0
  5f6ba0:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  5f6ba4:	e8 37 91 fc ff                                  	call   0x5bfce0
  5f6ba9:	5f                                              	pop    edi
  5f6baa:	83 c8 ff                                        	or     eax,0xffffffff
  5f6bad:	5e                                              	pop    esi
  5f6bae:	81 c4 c0 00 00 00                               	add    esp,0xc0
  5f6bb4:	c3                                              	ret
  5f6bb5:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  5f6bb9:	e8 22 91 fc ff                                  	call   0x5bfce0
  5f6bbe:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  5f6bc2:	e8 19 91 fc ff                                  	call   0x5bfce0
  5f6bc7:	5f                                              	pop    edi
  5f6bc8:	8b c6                                           	mov    eax,esi
  5f6bca:	5e                                              	pop    esi
  5f6bcb:	81 c4 c0 00 00 00                               	add    esp,0xc0
  5f6bd1:	c3                                              	ret
  5f6bd2:	5f                                              	pop    edi
  5f6bd3:	33 c0                                           	xor    eax,eax
  5f6bd5:	5e                                              	pop    esi
  5f6bd6:	81 c4 c0 00 00 00                               	add    esp,0xc0
  5f6bdc:	c3                                              	ret
  5f6bdd:	cc                                              	int3
  5f6bde:	cc                                              	int3
  5f6bdf:	cc                                              	int3
