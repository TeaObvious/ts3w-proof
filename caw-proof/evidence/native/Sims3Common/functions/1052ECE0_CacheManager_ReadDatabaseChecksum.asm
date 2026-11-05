# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052ece0 (CacheManager_ReadDatabaseChecksum)
Paired Ghidra pseudocode: 1052ECE0_CacheManager_ReadDatabaseChecksum.c
Window: [0x1052ece0, 0x1052ee30) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052ee30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052ece0: 83 ec 28 53 8b 5c 24 38 55 8b 6c 24 40 33 c0 56
1052ecf0: 57 8b 7c 24 40 89 07 89 47 04 89 03 89 43 04 89
1052ed00: 45 00 e8 c9 63 3b 00 8b f0 85 f6 74 7c e8 0e c4
1052ed10: 02 00 8b 4c 24 3c 8b 10 8b 52 58 51 8b c8 ff d2
1052ed20: 50 e8 5a 4c 09 00 89 54 24 18 83 c4 04 89 44 24
1052ed30: 10 c7 44 24 18 84 35 b4 82 c7 44 24 1c 00 00 00
1052ed40: 00 8b 06 8b 50 44 8d 4c 24 10 51 8b ce ff d2 85
1052ed50: c0 74 36 6a 00 6a 01 6a 06 6a 01 8d 4c 24 50 51
1052ed60: c7 44 24 54 00 00 00 00 8b 10 8b 52 34 8d 4c 24
1052ed70: 24 51 8b c8 ff d2 84 c0 8b 4c 24 40 75 15 85 c9
1052ed80: 74 07 8b 01 8b 50 08 ff d2 5f 5e 5d 32 c0 5b 83
1052ed90: c4 28 c3 8b 01 8b 50 18 6a 01 ff d2 50 8d 4c 24
1052eda0: 28 e8 fa d4 09 00 8b 44 24 30 8b 4c 24 28 50 57
1052edb0: 51 e8 1a 39 3e 00 83 c4 0c 8d 4c 24 20 50 e8 9d
1052edc0: bb 09 00 8b 54 24 30 8b 44 24 28 52 53 50 e8 fd
1052edd0: 38 3e 00 83 c4 0c 8d 4c 24 20 50 e8 80 bb 09 00
1052ede0: 8b 4c 24 30 8b 54 24 28 51 55 52 e8 20 38 3e 00
1052edf0: 83 c4 0c 8d 4c 24 20 50 e8 63 bb 09 00 8b 4c 24
1052ee00: 40 8b 01 8b 50 20 ff d2 8a 5c 24 34 8d 4c 24 20
1052ee10: e8 eb ba 09 00 8b 4c 24 40 85 c9 74 07 8b 01 8b
1052ee20: 50 08 ff d2 5f 5e 5d 8a c3 5b 83 c4 28 c3 cc cc

LINEAR DISASSEMBLY
1052ece0 <.text+0x52dce0>:
1052ece0:	83 ec 28                                        	sub    esp,0x28
1052ece3:	53                                              	push   ebx
1052ece4:	8b 5c 24 38                                     	mov    ebx,DWORD PTR [esp+0x38]
1052ece8:	55                                              	push   ebp
1052ece9:	8b 6c 24 40                                     	mov    ebp,DWORD PTR [esp+0x40]
1052eced:	33 c0                                           	xor    eax,eax
1052ecef:	56                                              	push   esi
1052ecf0:	57                                              	push   edi
1052ecf1:	8b 7c 24 40                                     	mov    edi,DWORD PTR [esp+0x40]
1052ecf5:	89 07                                           	mov    DWORD PTR [edi],eax
1052ecf7:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
1052ecfa:	89 03                                           	mov    DWORD PTR [ebx],eax
1052ecfc:	89 43 04                                        	mov    DWORD PTR [ebx+0x4],eax
1052ecff:	89 45 00                                        	mov    DWORD PTR [ebp+0x0],eax
1052ed02:	e8 c9 63 3b 00                                  	call   0x108e50d0
1052ed07:	8b f0                                           	mov    esi,eax
1052ed09:	85 f6                                           	test   esi,esi
1052ed0b:	74 7c                                           	je     0x1052ed89
1052ed0d:	e8 0e c4 02 00                                  	call   0x1055b120
1052ed12:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
1052ed16:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052ed18:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1052ed1b:	51                                              	push   ecx
1052ed1c:	8b c8                                           	mov    ecx,eax
1052ed1e:	ff d2                                           	call   edx
1052ed20:	50                                              	push   eax
1052ed21:	e8 5a 4c 09 00                                  	call   0x105c3980
1052ed26:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
1052ed2a:	83 c4 04                                        	add    esp,0x4
1052ed2d:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1052ed31:	c7 44 24 18 84 35 b4 82                         	mov    DWORD PTR [esp+0x18],0x82b43584
1052ed39:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
1052ed41:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052ed43:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
1052ed46:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1052ed4a:	51                                              	push   ecx
1052ed4b:	8b ce                                           	mov    ecx,esi
1052ed4d:	ff d2                                           	call   edx
1052ed4f:	85 c0                                           	test   eax,eax
1052ed51:	74 36                                           	je     0x1052ed89
1052ed53:	6a 00                                           	push   0x0
1052ed55:	6a 01                                           	push   0x1
1052ed57:	6a 06                                           	push   0x6
1052ed59:	6a 01                                           	push   0x1
1052ed5b:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
1052ed5f:	51                                              	push   ecx
1052ed60:	c7 44 24 54 00 00 00 00                         	mov    DWORD PTR [esp+0x54],0x0
1052ed68:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052ed6a:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
1052ed6d:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1052ed71:	51                                              	push   ecx
1052ed72:	8b c8                                           	mov    ecx,eax
1052ed74:	ff d2                                           	call   edx
1052ed76:	84 c0                                           	test   al,al
1052ed78:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1052ed7c:	75 15                                           	jne    0x1052ed93
1052ed7e:	85 c9                                           	test   ecx,ecx
1052ed80:	74 07                                           	je     0x1052ed89
1052ed82:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1052ed84:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1052ed87:	ff d2                                           	call   edx
1052ed89:	5f                                              	pop    edi
1052ed8a:	5e                                              	pop    esi
1052ed8b:	5d                                              	pop    ebp
1052ed8c:	32 c0                                           	xor    al,al
1052ed8e:	5b                                              	pop    ebx
1052ed8f:	83 c4 28                                        	add    esp,0x28
1052ed92:	c3                                              	ret
1052ed93:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1052ed95:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
1052ed98:	6a 01                                           	push   0x1
1052ed9a:	ff d2                                           	call   edx
1052ed9c:	50                                              	push   eax
1052ed9d:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1052eda1:	e8 fa d4 09 00                                  	call   0x105cc2a0
1052eda6:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1052edaa:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1052edae:	50                                              	push   eax
1052edaf:	57                                              	push   edi
1052edb0:	51                                              	push   ecx
1052edb1:	e8 1a 39 3e 00                                  	call   0x109126d0
1052edb6:	83 c4 0c                                        	add    esp,0xc
1052edb9:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1052edbd:	50                                              	push   eax
1052edbe:	e8 9d bb 09 00                                  	call   0x105ca960
1052edc3:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1052edc7:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1052edcb:	52                                              	push   edx
1052edcc:	53                                              	push   ebx
1052edcd:	50                                              	push   eax
1052edce:	e8 fd 38 3e 00                                  	call   0x109126d0
1052edd3:	83 c4 0c                                        	add    esp,0xc
1052edd6:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1052edda:	50                                              	push   eax
1052eddb:	e8 80 bb 09 00                                  	call   0x105ca960
1052ede0:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1052ede4:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1052ede8:	51                                              	push   ecx
1052ede9:	55                                              	push   ebp
1052edea:	52                                              	push   edx
1052edeb:	e8 20 38 3e 00                                  	call   0x10912610
1052edf0:	83 c4 0c                                        	add    esp,0xc
1052edf3:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1052edf7:	50                                              	push   eax
1052edf8:	e8 63 bb 09 00                                  	call   0x105ca960
1052edfd:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1052ee01:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1052ee03:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
1052ee06:	ff d2                                           	call   edx
1052ee08:	8a 5c 24 34                                     	mov    bl,BYTE PTR [esp+0x34]
1052ee0c:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1052ee10:	e8 eb ba 09 00                                  	call   0x105ca900
1052ee15:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1052ee19:	85 c9                                           	test   ecx,ecx
1052ee1b:	74 07                                           	je     0x1052ee24
1052ee1d:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1052ee1f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1052ee22:	ff d2                                           	call   edx
1052ee24:	5f                                              	pop    edi
1052ee25:	5e                                              	pop    esi
1052ee26:	5d                                              	pop    ebp
1052ee27:	8a c3                                           	mov    al,bl
1052ee29:	5b                                              	pop    ebx
1052ee2a:	83 c4 28                                        	add    esp,0x28
1052ee2d:	c3                                              	ret
1052ee2e:	cc                                              	int3
1052ee2f:	cc                                              	int3
