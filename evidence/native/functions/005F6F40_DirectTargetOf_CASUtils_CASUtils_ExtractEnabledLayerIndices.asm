# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005f6f40 (DirectTargetOf_CASUtils_CASUtils_ExtractEnabledLayerIndices)
Paired Ghidra pseudocode: 005F6F40_DirectTargetOf_CASUtils_CASUtils_ExtractEnabledLayerIndices.c
Window: [0x005f6f40, 0x005f7070) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x005f7070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005f6f40: 81 ec 90 01 00 00 53 56 e8 43 24 17 00 8b 8c 24
005f6f50: 9c 01 00 00 8b d8 8b 03 8b 50 58 51 8b cb ff d2
005f6f60: 8b f0 85 f6 75 09 5e 5b 81 c4 90 01 00 00 c3 55
005f6f70: 8d 4c 24 2c e8 47 8b fc ff 56 8d 4c 24 30 e8 dd
005f6f80: 90 fc ff 8d 84 24 9c 00 00 00 8b c8 8d 94 24 9c
005f6f90: 01 00 00 33 ed 89 84 24 90 00 00 00 89 8c 24 8c
005f6fa0: 00 00 00 89 94 24 94 00 00 00 c6 84 24 9c 00 00
005f6fb0: 00 00 c7 44 24 14 07 00 00 00 33 f6 57 8d 49 00
005f6fc0: 8d 7e 01 57 8d 84 24 94 00 00 00 68 18 70 fe 00
005f6fd0: 50 e8 ca 9f 33 00 8b 84 24 9c 00 00 00 83 c4 0c
005f6fe0: 8d 4c 24 13 51 8d 54 24 1c 52 50 8d 4c 24 3c c6
005f6ff0: 44 24 1f 00 e8 07 80 fc ff 84 c0 74 0e 80 7c 24
005f7000: 13 00 74 07 89 74 ac 1c 83 c5 01 8b f7 83 fe 05
005f7010: 72 ae 85 ed 5f 75 15 8d 4c 24 2c e8 c0 8c fc ff
005f7020: 5d 5e 33 c0 5b 81 c4 90 01 00 00 c3 8b 13 8b 92
005f7030: 84 00 00 00 55 8d 44 24 14 50 8b cb ff d2 8b 03
005f7040: 8b 80 9c 00 00 00 55 6a 00 8d 4c 24 20 51 8d 54
005f7050: 24 1c 52 8b cb ff d0 8b 74 24 10 8d 4c 24 2c e8
005f7060: 7c 8c fc ff 5d 8b c6 5e 5b 81 c4 90 01 00 00 c3

LINEAR DISASSEMBLY
005f6f40 <.text+0x1f5f40>:
  5f6f40:	81 ec 90 01 00 00                               	sub    esp,0x190
  5f6f46:	53                                              	push   ebx
  5f6f47:	56                                              	push   esi
  5f6f48:	e8 43 24 17 00                                  	call   0x769390
  5f6f4d:	8b 8c 24 9c 01 00 00                            	mov    ecx,DWORD PTR [esp+0x19c]
  5f6f54:	8b d8                                           	mov    ebx,eax
  5f6f56:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  5f6f58:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5f6f5b:	51                                              	push   ecx
  5f6f5c:	8b cb                                           	mov    ecx,ebx
  5f6f5e:	ff d2                                           	call   edx
  5f6f60:	8b f0                                           	mov    esi,eax
  5f6f62:	85 f6                                           	test   esi,esi
  5f6f64:	75 09                                           	jne    0x5f6f6f
  5f6f66:	5e                                              	pop    esi
  5f6f67:	5b                                              	pop    ebx
  5f6f68:	81 c4 90 01 00 00                               	add    esp,0x190
  5f6f6e:	c3                                              	ret
  5f6f6f:	55                                              	push   ebp
  5f6f70:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5f6f74:	e8 47 8b fc ff                                  	call   0x5bfac0
  5f6f79:	56                                              	push   esi
  5f6f7a:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  5f6f7e:	e8 dd 90 fc ff                                  	call   0x5c0060
  5f6f83:	8d 84 24 9c 00 00 00                            	lea    eax,[esp+0x9c]
  5f6f8a:	8b c8                                           	mov    ecx,eax
  5f6f8c:	8d 94 24 9c 01 00 00                            	lea    edx,[esp+0x19c]
  5f6f93:	33 ed                                           	xor    ebp,ebp
  5f6f95:	89 84 24 90 00 00 00                            	mov    DWORD PTR [esp+0x90],eax
  5f6f9c:	89 8c 24 8c 00 00 00                            	mov    DWORD PTR [esp+0x8c],ecx
  5f6fa3:	89 94 24 94 00 00 00                            	mov    DWORD PTR [esp+0x94],edx
  5f6faa:	c6 84 24 9c 00 00 00 00                         	mov    BYTE PTR [esp+0x9c],0x0
  5f6fb2:	c7 44 24 14 07 00 00 00                         	mov    DWORD PTR [esp+0x14],0x7
  5f6fba:	33 f6                                           	xor    esi,esi
  5f6fbc:	57                                              	push   edi
  5f6fbd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  5f6fc0:	8d 7e 01                                        	lea    edi,[esi+0x1]
  5f6fc3:	57                                              	push   edi
  5f6fc4:	8d 84 24 94 00 00 00                            	lea    eax,[esp+0x94]
  5f6fcb:	68 18 70 fe 00                                  	push   0xfe7018
  5f6fd0:	50                                              	push   eax
  5f6fd1:	e8 ca 9f 33 00                                  	call   0x930fa0
  5f6fd6:	8b 84 24 9c 00 00 00                            	mov    eax,DWORD PTR [esp+0x9c]
  5f6fdd:	83 c4 0c                                        	add    esp,0xc
  5f6fe0:	8d 4c 24 13                                     	lea    ecx,[esp+0x13]
  5f6fe4:	51                                              	push   ecx
  5f6fe5:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  5f6fe9:	52                                              	push   edx
  5f6fea:	50                                              	push   eax
  5f6feb:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  5f6fef:	c6 44 24 1f 00                                  	mov    BYTE PTR [esp+0x1f],0x0
  5f6ff4:	e8 07 80 fc ff                                  	call   0x5bf000
  5f6ff9:	84 c0                                           	test   al,al
  5f6ffb:	74 0e                                           	je     0x5f700b
  5f6ffd:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
  5f7002:	74 07                                           	je     0x5f700b
  5f7004:	89 74 ac 1c                                     	mov    DWORD PTR [esp+ebp*4+0x1c],esi
  5f7008:	83 c5 01                                        	add    ebp,0x1
  5f700b:	8b f7                                           	mov    esi,edi
  5f700d:	83 fe 05                                        	cmp    esi,0x5
  5f7010:	72 ae                                           	jb     0x5f6fc0
  5f7012:	85 ed                                           	test   ebp,ebp
  5f7014:	5f                                              	pop    edi
  5f7015:	75 15                                           	jne    0x5f702c
  5f7017:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5f701b:	e8 c0 8c fc ff                                  	call   0x5bfce0
  5f7020:	5d                                              	pop    ebp
  5f7021:	5e                                              	pop    esi
  5f7022:	33 c0                                           	xor    eax,eax
  5f7024:	5b                                              	pop    ebx
  5f7025:	81 c4 90 01 00 00                               	add    esp,0x190
  5f702b:	c3                                              	ret
  5f702c:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  5f702e:	8b 92 84 00 00 00                               	mov    edx,DWORD PTR [edx+0x84]
  5f7034:	55                                              	push   ebp
  5f7035:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  5f7039:	50                                              	push   eax
  5f703a:	8b cb                                           	mov    ecx,ebx
  5f703c:	ff d2                                           	call   edx
  5f703e:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  5f7040:	8b 80 9c 00 00 00                               	mov    eax,DWORD PTR [eax+0x9c]
  5f7046:	55                                              	push   ebp
  5f7047:	6a 00                                           	push   0x0
  5f7049:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  5f704d:	51                                              	push   ecx
  5f704e:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  5f7052:	52                                              	push   edx
  5f7053:	8b cb                                           	mov    ecx,ebx
  5f7055:	ff d0                                           	call   eax
  5f7057:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  5f705b:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5f705f:	e8 7c 8c fc ff                                  	call   0x5bfce0
  5f7064:	5d                                              	pop    ebp
  5f7065:	8b c6                                           	mov    eax,esi
  5f7067:	5e                                              	pop    esi
  5f7068:	5b                                              	pop    ebx
  5f7069:	81 c4 90 01 00 00                               	add    esp,0x190
  5f706f:	c3                                              	ret
