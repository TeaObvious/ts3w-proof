# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056ad50 (ThumbnailManager_GenerateSculpture)
Paired Ghidra pseudocode: 1056AD50_ThumbnailManager_GenerateSculpture.c
Window: [0x1056ad50, 0x1056ae80) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056ae80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056ad50: 83 ec 34 53 55 56 57 e8 c4 03 ff ff 8b f0 8b 06
1056ad60: 8b 90 18 01 00 00 8b ce ff d2 8b e8 a1 50 11 c7
1056ad70: 10 85 c0 8b da 89 44 24 10 0f 84 9e 00 00 00 6a
1056ad80: 00 6a 00 6a 00 6a 00 68 5c 0a b2 10 6a 38 e8 1d
1056ad90: e1 3a 00 83 c4 18 85 c0 74 72 8b 4c 24 58 51 53
1056ada0: 55 8b c8 e8 48 ef ff ff 8b f8 85 ff 74 09 8b 17
1056adb0: 8b 42 04 8b cf ff d0 57 8d 4c 24 18 51 8d 4c 24
1056adc0: 50 e8 ea 2d ff ff 8b 4c 24 14 50 e8 d0 c3 dc ff
1056add0: 84 c0 74 3c 8b 44 24 58 8b 16 8b 92 20 01 00 00
1056ade0: 6a 00 50 6a ff 53 55 8b ce ff d2 8b 06 8b 90 1c
1056adf0: 01 00 00 8b ce ff d2 85 ff 74 6e 8b 07 8b 50 08
1056ae00: 8b cf ff d2 5f 5e 5d 5b 83 c4 34 c3 33 ff eb a7
1056ae10: 85 ff 74 09 8b 07 8b 50 08 8b cf ff d2 8b 54 24
1056ae20: 58 6a 00 8d 4c 24 28 51 53 bf b4 a5 ac 10 89 7c
1056ae30: 24 30 c6 44 24 40 00 66 c7 44 24 3a 01 00 66 c7
1056ae40: 44 24 38 00 00 8b 06 8b 80 30 01 00 00 55 52 8b
1056ae50: ce ff d0 f6 44 24 2c 04 89 7c 24 24 74 0b 6a 00
1056ae60: 8d 4c 24 28 e8 27 dc 3b 00 5f 5e 5d 5b 83 c4 34
1056ae70: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056ad50 <.text+0x569d50>:
1056ad50:	83 ec 34                                        	sub    esp,0x34
1056ad53:	53                                              	push   ebx
1056ad54:	55                                              	push   ebp
1056ad55:	56                                              	push   esi
1056ad56:	57                                              	push   edi
1056ad57:	e8 c4 03 ff ff                                  	call   0x1055b120
1056ad5c:	8b f0                                           	mov    esi,eax
1056ad5e:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056ad60:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
1056ad66:	8b ce                                           	mov    ecx,esi
1056ad68:	ff d2                                           	call   edx
1056ad6a:	8b e8                                           	mov    ebp,eax
1056ad6c:	a1 50 11 c7 10                                  	mov    eax,ds:0x10c71150
1056ad71:	85 c0                                           	test   eax,eax
1056ad73:	8b da                                           	mov    ebx,edx
1056ad75:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1056ad79:	0f 84 9e 00 00 00                               	je     0x1056ae1d
1056ad7f:	6a 00                                           	push   0x0
1056ad81:	6a 00                                           	push   0x0
1056ad83:	6a 00                                           	push   0x0
1056ad85:	6a 00                                           	push   0x0
1056ad87:	68 5c 0a b2 10                                  	push   0x10b20a5c
1056ad8c:	6a 38                                           	push   0x38
1056ad8e:	e8 1d e1 3a 00                                  	call   0x10918eb0
1056ad93:	83 c4 18                                        	add    esp,0x18
1056ad96:	85 c0                                           	test   eax,eax
1056ad98:	74 72                                           	je     0x1056ae0c
1056ad9a:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
1056ad9e:	51                                              	push   ecx
1056ad9f:	53                                              	push   ebx
1056ada0:	55                                              	push   ebp
1056ada1:	8b c8                                           	mov    ecx,eax
1056ada3:	e8 48 ef ff ff                                  	call   0x10569cf0
1056ada8:	8b f8                                           	mov    edi,eax
1056adaa:	85 ff                                           	test   edi,edi
1056adac:	74 09                                           	je     0x1056adb7
1056adae:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056adb0:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056adb3:	8b cf                                           	mov    ecx,edi
1056adb5:	ff d0                                           	call   eax
1056adb7:	57                                              	push   edi
1056adb8:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056adbc:	51                                              	push   ecx
1056adbd:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
1056adc1:	e8 ea 2d ff ff                                  	call   0x1055dbb0
1056adc6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1056adca:	50                                              	push   eax
1056adcb:	e8 d0 c3 dc ff                                  	call   0x103371a0
1056add0:	84 c0                                           	test   al,al
1056add2:	74 3c                                           	je     0x1056ae10
1056add4:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
1056add8:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056adda:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
1056ade0:	6a 00                                           	push   0x0
1056ade2:	50                                              	push   eax
1056ade3:	6a ff                                           	push   0xffffffff
1056ade5:	53                                              	push   ebx
1056ade6:	55                                              	push   ebp
1056ade7:	8b ce                                           	mov    ecx,esi
1056ade9:	ff d2                                           	call   edx
1056adeb:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056aded:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
1056adf3:	8b ce                                           	mov    ecx,esi
1056adf5:	ff d2                                           	call   edx
1056adf7:	85 ff                                           	test   edi,edi
1056adf9:	74 6e                                           	je     0x1056ae69
1056adfb:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056adfd:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056ae00:	8b cf                                           	mov    ecx,edi
1056ae02:	ff d2                                           	call   edx
1056ae04:	5f                                              	pop    edi
1056ae05:	5e                                              	pop    esi
1056ae06:	5d                                              	pop    ebp
1056ae07:	5b                                              	pop    ebx
1056ae08:	83 c4 34                                        	add    esp,0x34
1056ae0b:	c3                                              	ret
1056ae0c:	33 ff                                           	xor    edi,edi
1056ae0e:	eb a7                                           	jmp    0x1056adb7
1056ae10:	85 ff                                           	test   edi,edi
1056ae12:	74 09                                           	je     0x1056ae1d
1056ae14:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056ae16:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056ae19:	8b cf                                           	mov    ecx,edi
1056ae1b:	ff d2                                           	call   edx
1056ae1d:	8b 54 24 58                                     	mov    edx,DWORD PTR [esp+0x58]
1056ae21:	6a 00                                           	push   0x0
1056ae23:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1056ae27:	51                                              	push   ecx
1056ae28:	53                                              	push   ebx
1056ae29:	bf b4 a5 ac 10                                  	mov    edi,0x10aca5b4
1056ae2e:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
1056ae32:	c6 44 24 40 00                                  	mov    BYTE PTR [esp+0x40],0x0
1056ae37:	66 c7 44 24 3a 01 00                            	mov    WORD PTR [esp+0x3a],0x1
1056ae3e:	66 c7 44 24 38 00 00                            	mov    WORD PTR [esp+0x38],0x0
1056ae45:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056ae47:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
1056ae4d:	55                                              	push   ebp
1056ae4e:	52                                              	push   edx
1056ae4f:	8b ce                                           	mov    ecx,esi
1056ae51:	ff d0                                           	call   eax
1056ae53:	f6 44 24 2c 04                                  	test   BYTE PTR [esp+0x2c],0x4
1056ae58:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
1056ae5c:	74 0b                                           	je     0x1056ae69
1056ae5e:	6a 00                                           	push   0x0
1056ae60:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1056ae64:	e8 27 dc 3b 00                                  	call   0x10928a90
1056ae69:	5f                                              	pop    edi
1056ae6a:	5e                                              	pop    esi
1056ae6b:	5d                                              	pop    ebp
1056ae6c:	5b                                              	pop    ebx
1056ae6d:	83 c4 34                                        	add    esp,0x34
1056ae70:	c3                                              	ret
1056ae71:	cc                                              	int3
1056ae72:	cc                                              	int3
1056ae73:	cc                                              	int3
1056ae74:	cc                                              	int3
1056ae75:	cc                                              	int3
1056ae76:	cc                                              	int3
1056ae77:	cc                                              	int3
1056ae78:	cc                                              	int3
1056ae79:	cc                                              	int3
1056ae7a:	cc                                              	int3
1056ae7b:	cc                                              	int3
1056ae7c:	cc                                              	int3
1056ae7d:	cc                                              	int3
1056ae7e:	cc                                              	int3
1056ae7f:	cc                                              	int3
