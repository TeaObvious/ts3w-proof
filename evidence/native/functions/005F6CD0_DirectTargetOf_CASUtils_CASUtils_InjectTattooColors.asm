# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005f6cd0 (DirectTargetOf_CASUtils_CASUtils_InjectTattooColors)
Paired Ghidra pseudocode: 005F6CD0_DirectTargetOf_CASUtils_CASUtils_InjectTattooColors.c
Window: [0x005f6cd0, 0x005f6e40) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x005f6e40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005f6cd0: 81 ec 9c 00 00 00 56 57 e8 b3 26 17 00 8b 8c 24
005f6ce0: a8 00 00 00 8b f8 8b 07 8b 50 58 51 8b cf ff d2
005f6cf0: 8b f0 85 f6 75 0b 5f 33 c0 5e 81 c4 9c 00 00 00
005f6d00: c3 8b 07 8d 4c 24 08 51 8b 8c 24 b0 00 00 00 8d
005f6d10: 54 24 24 52 8b 50 6c 51 8b cf ff d2 83 7c 24 08
005f6d20: 00 74 d3 8d 4c 24 44 e8 94 8d fc ff 56 8d 4c 24
005f6d30: 48 e8 2a 93 fc ff 33 f6 39 74 24 08 7e 3a 53 8b
005f6d40: 9c 24 b4 00 00 00 eb 08 8d a4 24 00 00 00 00 90
005f6d50: 8b 44 24 24 8b 0c b0 8b 14 b5 40 8d 15 01 51 53
005f6d60: 52 8d 44 24 54 50 e8 75 fe ff ff 83 c6 01 83 c4
005f6d70: 10 3b 74 24 0c 7c d9 5b 8d 4c 24 10 b8 54 8e 1c
005f6d80: 01 51 8d 4c 24 48 c7 44 24 20 0c f9 fd 00 89 44
005f6d90: 24 14 89 44 24 18 c7 44 24 1c 56 8e 1c 01 e8 7d
005f6da0: 8f fc ff 6a 01 6a 10 8d 54 24 18 52 6a 09 6a 13
005f6db0: 8d 4c 24 38 c7 44 24 38 6c 88 00 01 66 c7 44 24
005f6dc0: 42 13 00 66 c7 44 24 40 0b 00 e8 f1 eb ef ff 8b
005f6dd0: 07 8b 40 50 8d 4c 24 0c 51 8d 54 24 28 52 8b cf
005f6de0: ff d0 f6 44 24 2c 04 8b 74 24 0c c7 44 24 24 f4
005f6df0: a6 fb 00 74 0b 6a 00 8d 4c 24 28 e8 60 e9 ef ff
005f6e00: 8b 4c 24 18 8b 44 24 10 2b c8 83 e1 fe 83 f9 02
005f6e10: 7e 0d 85 c0 74 09 50 e8 c4 d6 ee ff 83 c4 04 8d
005f6e20: 4c 24 44 e8 b8 8e fc ff 5f 8b c6 5e 81 c4 9c 00
005f6e30: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005f6cd0 <.text+0x1f5cd0>:
  5f6cd0:	81 ec 9c 00 00 00                               	sub    esp,0x9c
  5f6cd6:	56                                              	push   esi
  5f6cd7:	57                                              	push   edi
  5f6cd8:	e8 b3 26 17 00                                  	call   0x769390
  5f6cdd:	8b 8c 24 a8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xa8]
  5f6ce4:	8b f8                                           	mov    edi,eax
  5f6ce6:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5f6ce8:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5f6ceb:	51                                              	push   ecx
  5f6cec:	8b cf                                           	mov    ecx,edi
  5f6cee:	ff d2                                           	call   edx
  5f6cf0:	8b f0                                           	mov    esi,eax
  5f6cf2:	85 f6                                           	test   esi,esi
  5f6cf4:	75 0b                                           	jne    0x5f6d01
  5f6cf6:	5f                                              	pop    edi
  5f6cf7:	33 c0                                           	xor    eax,eax
  5f6cf9:	5e                                              	pop    esi
  5f6cfa:	81 c4 9c 00 00 00                               	add    esp,0x9c
  5f6d00:	c3                                              	ret
  5f6d01:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5f6d03:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  5f6d07:	51                                              	push   ecx
  5f6d08:	8b 8c 24 b0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xb0]
  5f6d0f:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  5f6d13:	52                                              	push   edx
  5f6d14:	8b 50 6c                                        	mov    edx,DWORD PTR [eax+0x6c]
  5f6d17:	51                                              	push   ecx
  5f6d18:	8b cf                                           	mov    ecx,edi
  5f6d1a:	ff d2                                           	call   edx
  5f6d1c:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
  5f6d21:	74 d3                                           	je     0x5f6cf6
  5f6d23:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5f6d27:	e8 94 8d fc ff                                  	call   0x5bfac0
  5f6d2c:	56                                              	push   esi
  5f6d2d:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  5f6d31:	e8 2a 93 fc ff                                  	call   0x5c0060
  5f6d36:	33 f6                                           	xor    esi,esi
  5f6d38:	39 74 24 08                                     	cmp    DWORD PTR [esp+0x8],esi
  5f6d3c:	7e 3a                                           	jle    0x5f6d78
  5f6d3e:	53                                              	push   ebx
  5f6d3f:	8b 9c 24 b4 00 00 00                            	mov    ebx,DWORD PTR [esp+0xb4]
  5f6d46:	eb 08                                           	jmp    0x5f6d50
  5f6d48:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  5f6d4f:	90                                              	nop
  5f6d50:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  5f6d54:	8b 0c b0                                        	mov    ecx,DWORD PTR [eax+esi*4]
  5f6d57:	8b 14 b5 40 8d 15 01                            	mov    edx,DWORD PTR [esi*4+0x1158d40]
  5f6d5e:	51                                              	push   ecx
  5f6d5f:	53                                              	push   ebx
  5f6d60:	52                                              	push   edx
  5f6d61:	8d 44 24 54                                     	lea    eax,[esp+0x54]
  5f6d65:	50                                              	push   eax
  5f6d66:	e8 75 fe ff ff                                  	call   0x5f6be0
  5f6d6b:	83 c6 01                                        	add    esi,0x1
  5f6d6e:	83 c4 10                                        	add    esp,0x10
  5f6d71:	3b 74 24 0c                                     	cmp    esi,DWORD PTR [esp+0xc]
  5f6d75:	7c d9                                           	jl     0x5f6d50
  5f6d77:	5b                                              	pop    ebx
  5f6d78:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5f6d7c:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  5f6d81:	51                                              	push   ecx
  5f6d82:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  5f6d86:	c7 44 24 20 0c f9 fd 00                         	mov    DWORD PTR [esp+0x20],0xfdf90c
  5f6d8e:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  5f6d92:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  5f6d96:	c7 44 24 1c 56 8e 1c 01                         	mov    DWORD PTR [esp+0x1c],0x11c8e56
  5f6d9e:	e8 7d 8f fc ff                                  	call   0x5bfd20
  5f6da3:	6a 01                                           	push   0x1
  5f6da5:	6a 10                                           	push   0x10
  5f6da7:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  5f6dab:	52                                              	push   edx
  5f6dac:	6a 09                                           	push   0x9
  5f6dae:	6a 13                                           	push   0x13
  5f6db0:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  5f6db4:	c7 44 24 38 6c 88 00 01                         	mov    DWORD PTR [esp+0x38],0x100886c
  5f6dbc:	66 c7 44 24 42 13 00                            	mov    WORD PTR [esp+0x42],0x13
  5f6dc3:	66 c7 44 24 40 0b 00                            	mov    WORD PTR [esp+0x40],0xb
  5f6dca:	e8 f1 eb ef ff                                  	call   0x4f59c0
  5f6dcf:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5f6dd1:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  5f6dd4:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5f6dd8:	51                                              	push   ecx
  5f6dd9:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  5f6ddd:	52                                              	push   edx
  5f6dde:	8b cf                                           	mov    ecx,edi
  5f6de0:	ff d0                                           	call   eax
  5f6de2:	f6 44 24 2c 04                                  	test   BYTE PTR [esp+0x2c],0x4
  5f6de7:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  5f6deb:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  5f6df3:	74 0b                                           	je     0x5f6e00
  5f6df5:	6a 00                                           	push   0x0
  5f6df7:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  5f6dfb:	e8 60 e9 ef ff                                  	call   0x4f5760
  5f6e00:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5f6e04:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  5f6e08:	2b c8                                           	sub    ecx,eax
  5f6e0a:	83 e1 fe                                        	and    ecx,0xfffffffe
  5f6e0d:	83 f9 02                                        	cmp    ecx,0x2
  5f6e10:	7e 0d                                           	jle    0x5f6e1f
  5f6e12:	85 c0                                           	test   eax,eax
  5f6e14:	74 09                                           	je     0x5f6e1f
  5f6e16:	50                                              	push   eax
  5f6e17:	e8 c4 d6 ee ff                                  	call   0x4e44e0
  5f6e1c:	83 c4 04                                        	add    esp,0x4
  5f6e1f:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5f6e23:	e8 b8 8e fc ff                                  	call   0x5bfce0
  5f6e28:	5f                                              	pop    edi
  5f6e29:	8b c6                                           	mov    eax,esi
  5f6e2b:	5e                                              	pop    esi
  5f6e2c:	81 c4 9c 00 00 00                               	add    esp,0x9c
  5f6e32:	c3                                              	ret
  5f6e33:	cc                                              	int3
  5f6e34:	cc                                              	int3
  5f6e35:	cc                                              	int3
  5f6e36:	cc                                              	int3
  5f6e37:	cc                                              	int3
  5f6e38:	cc                                              	int3
  5f6e39:	cc                                              	int3
  5f6e3a:	cc                                              	int3
  5f6e3b:	cc                                              	int3
  5f6e3c:	cc                                              	int3
  5f6e3d:	cc                                              	int3
  5f6e3e:	cc                                              	int3
  5f6e3f:	cc                                              	int3
