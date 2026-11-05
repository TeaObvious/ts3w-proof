# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005f6e40 (DirectTargetOf_CASUtils_CASUtils_ExtractTattooColors)
Paired Ghidra pseudocode: 005F6E40_DirectTargetOf_CASUtils_CASUtils_ExtractTattooColors.c
Window: [0x005f6e40, 0x005f6f40) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x005f6f40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005f6e40: 83 ec 7c 55 56 e8 46 25 17 00 8b 8c 24 88 00 00
005f6e50: 00 8b e8 8b 45 00 8b 50 58 51 8b cd ff d2 8b f0
005f6e60: 85 f6 75 06 5e 5d 83 c4 7c c3 53 57 8d 4c 24 2c
005f6e70: 33 ff e8 49 8c fc ff 56 8d 4c 24 30 e8 df 91 fc
005f6e80: ff 8b 9c 24 94 00 00 00 c7 44 24 18 07 00 00 00
005f6e90: 33 f6 8b 96 50 8d 15 01 8d 44 24 13 50 8d 4c 24
005f6ea0: 1c 51 52 8d 4c 24 38 c6 44 24 1f 01 e8 4f 81 fc
005f6eb0: ff 84 c0 74 07 80 7c 24 13 00 74 24 8b 86 40 8d
005f6ec0: 15 01 53 50 8d 4c 24 34 51 e8 82 fd ff ff 89 44
005f6ed0: 34 28 83 c6 04 83 c4 0c 83 c7 01 83 fe 10 72 b2
005f6ee0: 85 ff 75 13 8d 4c 24 2c e8 f3 8d fc ff 5f 5b 5e
005f6ef0: 33 c0 5d 83 c4 7c c3 8b 55 00 8b 92 84 00 00 00
005f6f00: 57 8d 44 24 18 50 8b cd ff d2 8b 45 00 8b 80 9c
005f6f10: 00 00 00 57 6a 00 8d 4c 24 24 51 8d 54 24 20 52
005f6f20: 8b cd ff d0 8b 74 24 14 8d 4c 24 2c e8 af 8d fc
005f6f30: ff 5f 5b 8b c6 5e 5d 83 c4 7c c3 cc cc cc cc cc

LINEAR DISASSEMBLY
005f6e40 <.text+0x1f5e40>:
  5f6e40:	83 ec 7c                                        	sub    esp,0x7c
  5f6e43:	55                                              	push   ebp
  5f6e44:	56                                              	push   esi
  5f6e45:	e8 46 25 17 00                                  	call   0x769390
  5f6e4a:	8b 8c 24 88 00 00 00                            	mov    ecx,DWORD PTR [esp+0x88]
  5f6e51:	8b e8                                           	mov    ebp,eax
  5f6e53:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  5f6e56:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5f6e59:	51                                              	push   ecx
  5f6e5a:	8b cd                                           	mov    ecx,ebp
  5f6e5c:	ff d2                                           	call   edx
  5f6e5e:	8b f0                                           	mov    esi,eax
  5f6e60:	85 f6                                           	test   esi,esi
  5f6e62:	75 06                                           	jne    0x5f6e6a
  5f6e64:	5e                                              	pop    esi
  5f6e65:	5d                                              	pop    ebp
  5f6e66:	83 c4 7c                                        	add    esp,0x7c
  5f6e69:	c3                                              	ret
  5f6e6a:	53                                              	push   ebx
  5f6e6b:	57                                              	push   edi
  5f6e6c:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5f6e70:	33 ff                                           	xor    edi,edi
  5f6e72:	e8 49 8c fc ff                                  	call   0x5bfac0
  5f6e77:	56                                              	push   esi
  5f6e78:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  5f6e7c:	e8 df 91 fc ff                                  	call   0x5c0060
  5f6e81:	8b 9c 24 94 00 00 00                            	mov    ebx,DWORD PTR [esp+0x94]
  5f6e88:	c7 44 24 18 07 00 00 00                         	mov    DWORD PTR [esp+0x18],0x7
  5f6e90:	33 f6                                           	xor    esi,esi
  5f6e92:	8b 96 50 8d 15 01                               	mov    edx,DWORD PTR [esi+0x1158d50]
  5f6e98:	8d 44 24 13                                     	lea    eax,[esp+0x13]
  5f6e9c:	50                                              	push   eax
  5f6e9d:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5f6ea1:	51                                              	push   ecx
  5f6ea2:	52                                              	push   edx
  5f6ea3:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  5f6ea7:	c6 44 24 1f 01                                  	mov    BYTE PTR [esp+0x1f],0x1
  5f6eac:	e8 4f 81 fc ff                                  	call   0x5bf000
  5f6eb1:	84 c0                                           	test   al,al
  5f6eb3:	74 07                                           	je     0x5f6ebc
  5f6eb5:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
  5f6eba:	74 24                                           	je     0x5f6ee0
  5f6ebc:	8b 86 40 8d 15 01                               	mov    eax,DWORD PTR [esi+0x1158d40]
  5f6ec2:	53                                              	push   ebx
  5f6ec3:	50                                              	push   eax
  5f6ec4:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  5f6ec8:	51                                              	push   ecx
  5f6ec9:	e8 82 fd ff ff                                  	call   0x5f6c50
  5f6ece:	89 44 34 28                                     	mov    DWORD PTR [esp+esi*1+0x28],eax
  5f6ed2:	83 c6 04                                        	add    esi,0x4
  5f6ed5:	83 c4 0c                                        	add    esp,0xc
  5f6ed8:	83 c7 01                                        	add    edi,0x1
  5f6edb:	83 fe 10                                        	cmp    esi,0x10
  5f6ede:	72 b2                                           	jb     0x5f6e92
  5f6ee0:	85 ff                                           	test   edi,edi
  5f6ee2:	75 13                                           	jne    0x5f6ef7
  5f6ee4:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5f6ee8:	e8 f3 8d fc ff                                  	call   0x5bfce0
  5f6eed:	5f                                              	pop    edi
  5f6eee:	5b                                              	pop    ebx
  5f6eef:	5e                                              	pop    esi
  5f6ef0:	33 c0                                           	xor    eax,eax
  5f6ef2:	5d                                              	pop    ebp
  5f6ef3:	83 c4 7c                                        	add    esp,0x7c
  5f6ef6:	c3                                              	ret
  5f6ef7:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5f6efa:	8b 92 84 00 00 00                               	mov    edx,DWORD PTR [edx+0x84]
  5f6f00:	57                                              	push   edi
  5f6f01:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  5f6f05:	50                                              	push   eax
  5f6f06:	8b cd                                           	mov    ecx,ebp
  5f6f08:	ff d2                                           	call   edx
  5f6f0a:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  5f6f0d:	8b 80 9c 00 00 00                               	mov    eax,DWORD PTR [eax+0x9c]
  5f6f13:	57                                              	push   edi
  5f6f14:	6a 00                                           	push   0x0
  5f6f16:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  5f6f1a:	51                                              	push   ecx
  5f6f1b:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  5f6f1f:	52                                              	push   edx
  5f6f20:	8b cd                                           	mov    ecx,ebp
  5f6f22:	ff d0                                           	call   eax
  5f6f24:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  5f6f28:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5f6f2c:	e8 af 8d fc ff                                  	call   0x5bfce0
  5f6f31:	5f                                              	pop    edi
  5f6f32:	5b                                              	pop    ebx
  5f6f33:	8b c6                                           	mov    eax,esi
  5f6f35:	5e                                              	pop    esi
  5f6f36:	5d                                              	pop    ebp
  5f6f37:	83 c4 7c                                        	add    esp,0x7c
  5f6f3a:	c3                                              	ret
  5f6f3b:	cc                                              	int3
  5f6f3c:	cc                                              	int3
  5f6f3d:	cc                                              	int3
  5f6f3e:	cc                                              	int3
  5f6f3f:	cc                                              	int3
