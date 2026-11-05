# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107849b0 (DownloadContent_ImportInventoryImpl)
Paired Ghidra pseudocode: 107849B0_DownloadContent_ImportInventoryImpl.c
Window: [0x107849b0, 0x10784d60) (944 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784d60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107849b0: 83 ec 5c 56 57 e8 66 67 dd ff 8b f8 e8 ff fa fe
107849c0: ff 8b c8 e8 f8 f8 fe ff 8d 4c 24 4c 8b f0 e8 9d
107849d0: 5e e4 ff 8b 4c 24 6c 8b 54 24 68 8d 44 24 4c 50
107849e0: 51 52 8b ce e8 07 a7 01 00 84 c0 0f 84 df 00 00
107849f0: 00 8b 44 24 5c 8b 54 24 54 50 8d 4c 24 10 51 52
10784a00: e8 0b dc 18 00 83 c4 0c 8d 4c 24 4c 50 e8 4e 5f
10784a10: e4 ff 8b 44 24 5c 8b 54 24 54 50 8d 4c 24 18 51
10784a20: 52 e8 ea db 18 00 83 c4 0c 8d 4c 24 4c 50 e8 2d
10784a30: 5f e4 ff 8b 44 24 5c 8b 54 24 54 50 8d 4c 24 1c
10784a40: 51 52 e8 c9 db 18 00 83 c4 0c 8d 4c 24 4c 50 e8
10784a50: 0c 5f e4 ff 8b 44 24 5c 8b 54 24 54 50 8d 4c 24
10784a60: 0c 51 52 e8 a8 db 18 00 83 c4 0c 8d 4c 24 4c 50
10784a70: e8 eb 5e e4 ff 80 7c 24 60 00 8d 4c 24 4c 74 54
10784a80: e8 ab 68 e4 ff 8b f0 8b 44 24 0c 6a 00 50 8d 4c
10784a90: 24 54 e8 b9 68 e4 ff 8d 4c 24 10 51 8d 4c 24 20
10784aa0: c7 44 24 14 98 8c b5 10 e8 63 2d fa ff 8d 54 24
10784ab0: 4c 52 8d 4c 24 20 e8 95 7d e4 ff 84 c0 75 22 8b
10784ac0: 44 24 1c 85 c0 74 09 50 e8 c3 43 19 00 83 c4 04
10784ad0: 8d 4c 24 4c e8 27 5e e4 ff 5f 32 c0 5e 83 c4 5c
10784ae0: c3 8b 44 24 14 6a 00 50 8d 4c 24 54 e8 5f 68 e4
10784af0: ff 8d 4c 24 10 51 8d 4c 24 30 c7 44 24 14 6c 8c
10784b00: b5 10 e8 09 2d fa ff 8d 54 24 4c 52 8d 4c 24 30
10784b10: e8 3b 7d e4 ff 84 c0 75 13 8b 44 24 2c 85 c0 74
10784b20: 9e 50 e8 69 43 19 00 83 c4 04 eb 93 8b 44 24 18
10784b30: 6a 00 50 8d 4c 24 54 e8 14 68 e4 ff 8d 4c 24 10
10784b40: 51 8d 4c 24 40 c7 44 24 14 44 8c b5 10 e8 be 2c
10784b50: fa ff 8d 54 24 4c 52 8d 4c 24 40 e8 30 36 fa ff
10784b60: 84 c0 75 2b 8b 44 24 3c 85 c0 74 09 50 e8 1e 43
10784b70: 19 00 83 c4 04 8b 44 24 2c 85 c0 0f 84 3e ff ff
10784b80: ff 50 e8 09 43 19 00 83 c4 04 e9 30 ff ff ff 6a
10784b90: 00 56 8d 4c 24 54 e8 b5 67 e4 ff e8 00 56 fa ff
10784ba0: 8d 4c 24 3c 51 8d 54 24 30 52 8d 4c 24 24 51 8d
10784bb0: 54 24 58 52 8b c8 e8 a5 70 fa ff 85 c0 75 2b 8b
10784bc0: 44 24 3c 85 c0 74 09 50 e8 c3 42 19 00 83 c4 04
10784bd0: 8b 44 24 2c 85 c0 0f 84 e3 fe ff ff 50 e8 ae 42
10784be0: 19 00 83 c4 04 e9 d5 fe ff ff 8b 44 24 4c 50 8d
10784bf0: 4c 24 30 51 e8 07 4e 00 00 83 c4 08 84 c0 75 2b
10784c00: 8b 44 24 3c 85 c0 74 09 50 e8 82 42 19 00 83 c4
10784c10: 04 8b 44 24 2c 85 c0 0f 84 a2 fe ff ff 50 e8 6d
10784c20: 42 19 00 83 c4 04 e9 94 fe ff ff 8b 54 24 08 6a
10784c30: 00 52 8d 4c 24 54 e8 15 67 e4 ff 8b 4c 24 54 8b
10784c40: 01 8b 50 1c ff d2 8b 4c 24 78 2b 44 24 08 8b 54
10784c50: 24 54 51 50 52 57 e8 65 f4 ff ff 83 c4 10 84 c0
10784c60: 75 2b 8b 44 24 3c 85 c0 74 09 50 e8 20 42 19 00
10784c70: 83 c4 04 8b 44 24 2c 85 c0 0f 84 40 fe ff ff 50
10784c80: e8 0b 42 19 00 83 c4 04 e9 32 fe ff ff 8b 44 24
10784c90: 70 50 8d 4c 24 20 51 57 e8 73 fb ff ff 83 c4 0c
10784ca0: 84 c0 75 2b 8b 44 24 3c 85 c0 74 09 50 e8 de 41
10784cb0: 19 00 83 c4 04 8b 44 24 2c 85 c0 0f 84 fe fd ff
10784cc0: ff 50 e8 c9 41 19 00 83 c4 04 e9 f0 fd ff ff 8b
10784cd0: 54 24 74 52 8d 44 24 40 50 57 e8 11 fc ff ff 83
10784ce0: c4 0c 84 c0 75 2b 8b 44 24 3c 85 c0 74 09 50 e8
10784cf0: 9c 41 19 00 83 c4 04 8b 44 24 2c 85 c0 0f 84 bc
10784d00: fd ff ff 50 e8 87 41 19 00 83 c4 04 e9 ae fd ff
10784d10: ff 8d 4c 24 4c e8 c6 5c e4 ff 8b 44 24 3c 85 c0
10784d20: 74 09 50 e8 68 41 19 00 83 c4 04 8b 44 24 2c 85
10784d30: c0 74 09 50 e8 57 41 19 00 83 c4 04 8b 44 24 1c
10784d40: 85 c0 74 09 50 e8 46 41 19 00 83 c4 04 8d 4c 24
10784d50: 4c e8 aa 5b e4 ff 5f b0 01 5e 83 c4 5c c3 cc cc

LINEAR DISASSEMBLY
107849b0 <.text+0x7839b0>:
107849b0:	83 ec 5c                                        	sub    esp,0x5c
107849b3:	56                                              	push   esi
107849b4:	57                                              	push   edi
107849b5:	e8 66 67 dd ff                                  	call   0x1055b120
107849ba:	8b f8                                           	mov    edi,eax
107849bc:	e8 ff fa fe ff                                  	call   0x107744c0
107849c1:	8b c8                                           	mov    ecx,eax
107849c3:	e8 f8 f8 fe ff                                  	call   0x107742c0
107849c8:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
107849cc:	8b f0                                           	mov    esi,eax
107849ce:	e8 9d 5e e4 ff                                  	call   0x105ca870
107849d3:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
107849d7:	8b 54 24 68                                     	mov    edx,DWORD PTR [esp+0x68]
107849db:	8d 44 24 4c                                     	lea    eax,[esp+0x4c]
107849df:	50                                              	push   eax
107849e0:	51                                              	push   ecx
107849e1:	52                                              	push   edx
107849e2:	8b ce                                           	mov    ecx,esi
107849e4:	e8 07 a7 01 00                                  	call   0x1079f0f0
107849e9:	84 c0                                           	test   al,al
107849eb:	0f 84 df 00 00 00                               	je     0x10784ad0
107849f1:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
107849f5:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
107849f9:	50                                              	push   eax
107849fa:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
107849fe:	51                                              	push   ecx
107849ff:	52                                              	push   edx
10784a00:	e8 0b dc 18 00                                  	call   0x10912610
10784a05:	83 c4 0c                                        	add    esp,0xc
10784a08:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10784a0c:	50                                              	push   eax
10784a0d:	e8 4e 5f e4 ff                                  	call   0x105ca960
10784a12:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
10784a16:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
10784a1a:	50                                              	push   eax
10784a1b:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10784a1f:	51                                              	push   ecx
10784a20:	52                                              	push   edx
10784a21:	e8 ea db 18 00                                  	call   0x10912610
10784a26:	83 c4 0c                                        	add    esp,0xc
10784a29:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10784a2d:	50                                              	push   eax
10784a2e:	e8 2d 5f e4 ff                                  	call   0x105ca960
10784a33:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
10784a37:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
10784a3b:	50                                              	push   eax
10784a3c:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10784a40:	51                                              	push   ecx
10784a41:	52                                              	push   edx
10784a42:	e8 c9 db 18 00                                  	call   0x10912610
10784a47:	83 c4 0c                                        	add    esp,0xc
10784a4a:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10784a4e:	50                                              	push   eax
10784a4f:	e8 0c 5f e4 ff                                  	call   0x105ca960
10784a54:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
10784a58:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
10784a5c:	50                                              	push   eax
10784a5d:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10784a61:	51                                              	push   ecx
10784a62:	52                                              	push   edx
10784a63:	e8 a8 db 18 00                                  	call   0x10912610
10784a68:	83 c4 0c                                        	add    esp,0xc
10784a6b:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10784a6f:	50                                              	push   eax
10784a70:	e8 eb 5e e4 ff                                  	call   0x105ca960
10784a75:	80 7c 24 60 00                                  	cmp    BYTE PTR [esp+0x60],0x0
10784a7a:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10784a7e:	74 54                                           	je     0x10784ad4
10784a80:	e8 ab 68 e4 ff                                  	call   0x105cb330
10784a85:	8b f0                                           	mov    esi,eax
10784a87:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10784a8b:	6a 00                                           	push   0x0
10784a8d:	50                                              	push   eax
10784a8e:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10784a92:	e8 b9 68 e4 ff                                  	call   0x105cb350
10784a97:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10784a9b:	51                                              	push   ecx
10784a9c:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10784aa0:	c7 44 24 14 98 8c b5 10                         	mov    DWORD PTR [esp+0x14],0x10b58c98
10784aa8:	e8 63 2d fa ff                                  	call   0x10727810
10784aad:	8d 54 24 4c                                     	lea    edx,[esp+0x4c]
10784ab1:	52                                              	push   edx
10784ab2:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10784ab6:	e8 95 7d e4 ff                                  	call   0x105cc850
10784abb:	84 c0                                           	test   al,al
10784abd:	75 22                                           	jne    0x10784ae1
10784abf:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10784ac3:	85 c0                                           	test   eax,eax
10784ac5:	74 09                                           	je     0x10784ad0
10784ac7:	50                                              	push   eax
10784ac8:	e8 c3 43 19 00                                  	call   0x10918e90
10784acd:	83 c4 04                                        	add    esp,0x4
10784ad0:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10784ad4:	e8 27 5e e4 ff                                  	call   0x105ca900
10784ad9:	5f                                              	pop    edi
10784ada:	32 c0                                           	xor    al,al
10784adc:	5e                                              	pop    esi
10784add:	83 c4 5c                                        	add    esp,0x5c
10784ae0:	c3                                              	ret
10784ae1:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10784ae5:	6a 00                                           	push   0x0
10784ae7:	50                                              	push   eax
10784ae8:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10784aec:	e8 5f 68 e4 ff                                  	call   0x105cb350
10784af1:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10784af5:	51                                              	push   ecx
10784af6:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10784afa:	c7 44 24 14 6c 8c b5 10                         	mov    DWORD PTR [esp+0x14],0x10b58c6c
10784b02:	e8 09 2d fa ff                                  	call   0x10727810
10784b07:	8d 54 24 4c                                     	lea    edx,[esp+0x4c]
10784b0b:	52                                              	push   edx
10784b0c:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10784b10:	e8 3b 7d e4 ff                                  	call   0x105cc850
10784b15:	84 c0                                           	test   al,al
10784b17:	75 13                                           	jne    0x10784b2c
10784b19:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10784b1d:	85 c0                                           	test   eax,eax
10784b1f:	74 9e                                           	je     0x10784abf
10784b21:	50                                              	push   eax
10784b22:	e8 69 43 19 00                                  	call   0x10918e90
10784b27:	83 c4 04                                        	add    esp,0x4
10784b2a:	eb 93                                           	jmp    0x10784abf
10784b2c:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10784b30:	6a 00                                           	push   0x0
10784b32:	50                                              	push   eax
10784b33:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10784b37:	e8 14 68 e4 ff                                  	call   0x105cb350
10784b3c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10784b40:	51                                              	push   ecx
10784b41:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
10784b45:	c7 44 24 14 44 8c b5 10                         	mov    DWORD PTR [esp+0x14],0x10b58c44
10784b4d:	e8 be 2c fa ff                                  	call   0x10727810
10784b52:	8d 54 24 4c                                     	lea    edx,[esp+0x4c]
10784b56:	52                                              	push   edx
10784b57:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
10784b5b:	e8 30 36 fa ff                                  	call   0x10728190
10784b60:	84 c0                                           	test   al,al
10784b62:	75 2b                                           	jne    0x10784b8f
10784b64:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10784b68:	85 c0                                           	test   eax,eax
10784b6a:	74 09                                           	je     0x10784b75
10784b6c:	50                                              	push   eax
10784b6d:	e8 1e 43 19 00                                  	call   0x10918e90
10784b72:	83 c4 04                                        	add    esp,0x4
10784b75:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10784b79:	85 c0                                           	test   eax,eax
10784b7b:	0f 84 3e ff ff ff                               	je     0x10784abf
10784b81:	50                                              	push   eax
10784b82:	e8 09 43 19 00                                  	call   0x10918e90
10784b87:	83 c4 04                                        	add    esp,0x4
10784b8a:	e9 30 ff ff ff                                  	jmp    0x10784abf
10784b8f:	6a 00                                           	push   0x0
10784b91:	56                                              	push   esi
10784b92:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10784b96:	e8 b5 67 e4 ff                                  	call   0x105cb350
10784b9b:	e8 00 56 fa ff                                  	call   0x1072a1a0
10784ba0:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
10784ba4:	51                                              	push   ecx
10784ba5:	8d 54 24 30                                     	lea    edx,[esp+0x30]
10784ba9:	52                                              	push   edx
10784baa:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10784bae:	51                                              	push   ecx
10784baf:	8d 54 24 58                                     	lea    edx,[esp+0x58]
10784bb3:	52                                              	push   edx
10784bb4:	8b c8                                           	mov    ecx,eax
10784bb6:	e8 a5 70 fa ff                                  	call   0x1072bc60
10784bbb:	85 c0                                           	test   eax,eax
10784bbd:	75 2b                                           	jne    0x10784bea
10784bbf:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10784bc3:	85 c0                                           	test   eax,eax
10784bc5:	74 09                                           	je     0x10784bd0
10784bc7:	50                                              	push   eax
10784bc8:	e8 c3 42 19 00                                  	call   0x10918e90
10784bcd:	83 c4 04                                        	add    esp,0x4
10784bd0:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10784bd4:	85 c0                                           	test   eax,eax
10784bd6:	0f 84 e3 fe ff ff                               	je     0x10784abf
10784bdc:	50                                              	push   eax
10784bdd:	e8 ae 42 19 00                                  	call   0x10918e90
10784be2:	83 c4 04                                        	add    esp,0x4
10784be5:	e9 d5 fe ff ff                                  	jmp    0x10784abf
10784bea:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
10784bee:	50                                              	push   eax
10784bef:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10784bf3:	51                                              	push   ecx
10784bf4:	e8 07 4e 00 00                                  	call   0x10789a00
10784bf9:	83 c4 08                                        	add    esp,0x8
10784bfc:	84 c0                                           	test   al,al
10784bfe:	75 2b                                           	jne    0x10784c2b
10784c00:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10784c04:	85 c0                                           	test   eax,eax
10784c06:	74 09                                           	je     0x10784c11
10784c08:	50                                              	push   eax
10784c09:	e8 82 42 19 00                                  	call   0x10918e90
10784c0e:	83 c4 04                                        	add    esp,0x4
10784c11:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10784c15:	85 c0                                           	test   eax,eax
10784c17:	0f 84 a2 fe ff ff                               	je     0x10784abf
10784c1d:	50                                              	push   eax
10784c1e:	e8 6d 42 19 00                                  	call   0x10918e90
10784c23:	83 c4 04                                        	add    esp,0x4
10784c26:	e9 94 fe ff ff                                  	jmp    0x10784abf
10784c2b:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10784c2f:	6a 00                                           	push   0x0
10784c31:	52                                              	push   edx
10784c32:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10784c36:	e8 15 67 e4 ff                                  	call   0x105cb350
10784c3b:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
10784c3f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10784c41:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
10784c44:	ff d2                                           	call   edx
10784c46:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
10784c4a:	2b 44 24 08                                     	sub    eax,DWORD PTR [esp+0x8]
10784c4e:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
10784c52:	51                                              	push   ecx
10784c53:	50                                              	push   eax
10784c54:	52                                              	push   edx
10784c55:	57                                              	push   edi
10784c56:	e8 65 f4 ff ff                                  	call   0x107840c0
10784c5b:	83 c4 10                                        	add    esp,0x10
10784c5e:	84 c0                                           	test   al,al
10784c60:	75 2b                                           	jne    0x10784c8d
10784c62:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10784c66:	85 c0                                           	test   eax,eax
10784c68:	74 09                                           	je     0x10784c73
10784c6a:	50                                              	push   eax
10784c6b:	e8 20 42 19 00                                  	call   0x10918e90
10784c70:	83 c4 04                                        	add    esp,0x4
10784c73:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10784c77:	85 c0                                           	test   eax,eax
10784c79:	0f 84 40 fe ff ff                               	je     0x10784abf
10784c7f:	50                                              	push   eax
10784c80:	e8 0b 42 19 00                                  	call   0x10918e90
10784c85:	83 c4 04                                        	add    esp,0x4
10784c88:	e9 32 fe ff ff                                  	jmp    0x10784abf
10784c8d:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
10784c91:	50                                              	push   eax
10784c92:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10784c96:	51                                              	push   ecx
10784c97:	57                                              	push   edi
10784c98:	e8 73 fb ff ff                                  	call   0x10784810
10784c9d:	83 c4 0c                                        	add    esp,0xc
10784ca0:	84 c0                                           	test   al,al
10784ca2:	75 2b                                           	jne    0x10784ccf
10784ca4:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10784ca8:	85 c0                                           	test   eax,eax
10784caa:	74 09                                           	je     0x10784cb5
10784cac:	50                                              	push   eax
10784cad:	e8 de 41 19 00                                  	call   0x10918e90
10784cb2:	83 c4 04                                        	add    esp,0x4
10784cb5:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10784cb9:	85 c0                                           	test   eax,eax
10784cbb:	0f 84 fe fd ff ff                               	je     0x10784abf
10784cc1:	50                                              	push   eax
10784cc2:	e8 c9 41 19 00                                  	call   0x10918e90
10784cc7:	83 c4 04                                        	add    esp,0x4
10784cca:	e9 f0 fd ff ff                                  	jmp    0x10784abf
10784ccf:	8b 54 24 74                                     	mov    edx,DWORD PTR [esp+0x74]
10784cd3:	52                                              	push   edx
10784cd4:	8d 44 24 40                                     	lea    eax,[esp+0x40]
10784cd8:	50                                              	push   eax
10784cd9:	57                                              	push   edi
10784cda:	e8 11 fc ff ff                                  	call   0x107848f0
10784cdf:	83 c4 0c                                        	add    esp,0xc
10784ce2:	84 c0                                           	test   al,al
10784ce4:	75 2b                                           	jne    0x10784d11
10784ce6:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10784cea:	85 c0                                           	test   eax,eax
10784cec:	74 09                                           	je     0x10784cf7
10784cee:	50                                              	push   eax
10784cef:	e8 9c 41 19 00                                  	call   0x10918e90
10784cf4:	83 c4 04                                        	add    esp,0x4
10784cf7:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10784cfb:	85 c0                                           	test   eax,eax
10784cfd:	0f 84 bc fd ff ff                               	je     0x10784abf
10784d03:	50                                              	push   eax
10784d04:	e8 87 41 19 00                                  	call   0x10918e90
10784d09:	83 c4 04                                        	add    esp,0x4
10784d0c:	e9 ae fd ff ff                                  	jmp    0x10784abf
10784d11:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10784d15:	e8 c6 5c e4 ff                                  	call   0x105ca9e0
10784d1a:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10784d1e:	85 c0                                           	test   eax,eax
10784d20:	74 09                                           	je     0x10784d2b
10784d22:	50                                              	push   eax
10784d23:	e8 68 41 19 00                                  	call   0x10918e90
10784d28:	83 c4 04                                        	add    esp,0x4
10784d2b:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10784d2f:	85 c0                                           	test   eax,eax
10784d31:	74 09                                           	je     0x10784d3c
10784d33:	50                                              	push   eax
10784d34:	e8 57 41 19 00                                  	call   0x10918e90
10784d39:	83 c4 04                                        	add    esp,0x4
10784d3c:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10784d40:	85 c0                                           	test   eax,eax
10784d42:	74 09                                           	je     0x10784d4d
10784d44:	50                                              	push   eax
10784d45:	e8 46 41 19 00                                  	call   0x10918e90
10784d4a:	83 c4 04                                        	add    esp,0x4
10784d4d:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10784d51:	e8 aa 5b e4 ff                                  	call   0x105ca900
10784d56:	5f                                              	pop    edi
10784d57:	b0 01                                           	mov    al,0x1
10784d59:	5e                                              	pop    esi
10784d5a:	83 c4 5c                                        	add    esp,0x5c
10784d5d:	c3                                              	ret
10784d5e:	cc                                              	int3
10784d5f:	cc                                              	int3
