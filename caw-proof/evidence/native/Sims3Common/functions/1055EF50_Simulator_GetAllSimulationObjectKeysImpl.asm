# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055ef50 (Simulator_GetAllSimulationObjectKeysImpl)
Paired Ghidra pseudocode: 1055EF50_Simulator_GetAllSimulationObjectKeysImpl.c
Window: [0x1055ef50, 0x1055f080) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055f080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055ef50: 83 ec 2c 53 55 56 57 e8 c4 c1 ff ff 8b f8 e8 6d
1055ef60: 61 38 00 33 ed 8b d8 55 8d 4c 24 20 c7 44 24 20
1055ef70: 24 5a ab 10 c7 44 24 24 3f 34 dc 02 89 6c 24 30
1055ef80: 89 6c 24 34 89 6c 24 38 c7 44 24 3c 84 f3 b1 10
1055ef90: 8b 03 8b 40 20 51 8d 54 24 34 52 8b cb ff d0 8d
1055efa0: 4c 24 2c 51 e8 d7 60 38 00 8b 44 24 34 2b 44 24
1055efb0: 30 8b 17 8b 92 88 00 00 00 83 c4 04 c1 f8 04 50
1055efc0: 8d 4c 24 18 51 8b cf ff d2 8b 44 24 30 8b 74 24
1055efd0: 2c 3b f0 89 44 24 18 0f 84 83 00 00 00 8d 49 00
1055efe0: 8b 03 8b 50 0c 6a 00 6a 00 6a 00 6a 00 8d 4c 24
1055eff0: 20 51 56 8b cb c7 44 24 28 00 00 00 00 ff d2 84
1055f000: c0 74 3e 8b 4c 24 10 85 c9 74 45 8b 01 8b 50 0c
1055f010: 68 50 34 dc 02 ff d2 85 c0 74 26 8b 06 8b 4e 04
1055f020: 8b 17 8b 92 a0 00 00 00 6a 01 89 44 24 28 55 89
1055f030: 4c 24 30 8d 44 24 2c 50 8d 4c 24 20 51 8b cf ff
1055f040: d2 8b 4c 24 10 85 c9 74 07 8b 01 8b 50 04 ff d2
1055f050: 83 c6 10 83 c5 01 3b 74 24 18 75 84 8b 74 24 2c
1055f060: 85 f6 8b 7c 24 14 74 09 56 e8 22 9e 3b 00 83 c4
1055f070: 04 8b c7 5f 5e 5d 5b 83 c4 2c c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1055ef50 <.text+0x55df50>:
1055ef50:	83 ec 2c                                        	sub    esp,0x2c
1055ef53:	53                                              	push   ebx
1055ef54:	55                                              	push   ebp
1055ef55:	56                                              	push   esi
1055ef56:	57                                              	push   edi
1055ef57:	e8 c4 c1 ff ff                                  	call   0x1055b120
1055ef5c:	8b f8                                           	mov    edi,eax
1055ef5e:	e8 6d 61 38 00                                  	call   0x108e50d0
1055ef63:	33 ed                                           	xor    ebp,ebp
1055ef65:	8b d8                                           	mov    ebx,eax
1055ef67:	55                                              	push   ebp
1055ef68:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1055ef6c:	c7 44 24 20 24 5a ab 10                         	mov    DWORD PTR [esp+0x20],0x10ab5a24
1055ef74:	c7 44 24 24 3f 34 dc 02                         	mov    DWORD PTR [esp+0x24],0x2dc343f
1055ef7c:	89 6c 24 30                                     	mov    DWORD PTR [esp+0x30],ebp
1055ef80:	89 6c 24 34                                     	mov    DWORD PTR [esp+0x34],ebp
1055ef84:	89 6c 24 38                                     	mov    DWORD PTR [esp+0x38],ebp
1055ef88:	c7 44 24 3c 84 f3 b1 10                         	mov    DWORD PTR [esp+0x3c],0x10b1f384
1055ef90:	8b 03                                           	mov    eax,DWORD PTR [ebx]
1055ef92:	8b 40 20                                        	mov    eax,DWORD PTR [eax+0x20]
1055ef95:	51                                              	push   ecx
1055ef96:	8d 54 24 34                                     	lea    edx,[esp+0x34]
1055ef9a:	52                                              	push   edx
1055ef9b:	8b cb                                           	mov    ecx,ebx
1055ef9d:	ff d0                                           	call   eax
1055ef9f:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1055efa3:	51                                              	push   ecx
1055efa4:	e8 d7 60 38 00                                  	call   0x108e5080
1055efa9:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
1055efad:	2b 44 24 30                                     	sub    eax,DWORD PTR [esp+0x30]
1055efb1:	8b 17                                           	mov    edx,DWORD PTR [edi]
1055efb3:	8b 92 88 00 00 00                               	mov    edx,DWORD PTR [edx+0x88]
1055efb9:	83 c4 04                                        	add    esp,0x4
1055efbc:	c1 f8 04                                        	sar    eax,0x4
1055efbf:	50                                              	push   eax
1055efc0:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1055efc4:	51                                              	push   ecx
1055efc5:	8b cf                                           	mov    ecx,edi
1055efc7:	ff d2                                           	call   edx
1055efc9:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1055efcd:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
1055efd1:	3b f0                                           	cmp    esi,eax
1055efd3:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1055efd7:	0f 84 83 00 00 00                               	je     0x1055f060
1055efdd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1055efe0:	8b 03                                           	mov    eax,DWORD PTR [ebx]
1055efe2:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1055efe5:	6a 00                                           	push   0x0
1055efe7:	6a 00                                           	push   0x0
1055efe9:	6a 00                                           	push   0x0
1055efeb:	6a 00                                           	push   0x0
1055efed:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1055eff1:	51                                              	push   ecx
1055eff2:	56                                              	push   esi
1055eff3:	8b cb                                           	mov    ecx,ebx
1055eff5:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
1055effd:	ff d2                                           	call   edx
1055efff:	84 c0                                           	test   al,al
1055f001:	74 3e                                           	je     0x1055f041
1055f003:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1055f007:	85 c9                                           	test   ecx,ecx
1055f009:	74 45                                           	je     0x1055f050
1055f00b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1055f00d:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1055f010:	68 50 34 dc 02                                  	push   0x2dc3450
1055f015:	ff d2                                           	call   edx
1055f017:	85 c0                                           	test   eax,eax
1055f019:	74 26                                           	je     0x1055f041
1055f01b:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055f01d:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
1055f020:	8b 17                                           	mov    edx,DWORD PTR [edi]
1055f022:	8b 92 a0 00 00 00                               	mov    edx,DWORD PTR [edx+0xa0]
1055f028:	6a 01                                           	push   0x1
1055f02a:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
1055f02e:	55                                              	push   ebp
1055f02f:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
1055f033:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
1055f037:	50                                              	push   eax
1055f038:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1055f03c:	51                                              	push   ecx
1055f03d:	8b cf                                           	mov    ecx,edi
1055f03f:	ff d2                                           	call   edx
1055f041:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1055f045:	85 c9                                           	test   ecx,ecx
1055f047:	74 07                                           	je     0x1055f050
1055f049:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1055f04b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1055f04e:	ff d2                                           	call   edx
1055f050:	83 c6 10                                        	add    esi,0x10
1055f053:	83 c5 01                                        	add    ebp,0x1
1055f056:	3b 74 24 18                                     	cmp    esi,DWORD PTR [esp+0x18]
1055f05a:	75 84                                           	jne    0x1055efe0
1055f05c:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
1055f060:	85 f6                                           	test   esi,esi
1055f062:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1055f066:	74 09                                           	je     0x1055f071
1055f068:	56                                              	push   esi
1055f069:	e8 22 9e 3b 00                                  	call   0x10918e90
1055f06e:	83 c4 04                                        	add    esp,0x4
1055f071:	8b c7                                           	mov    eax,edi
1055f073:	5f                                              	pop    edi
1055f074:	5e                                              	pop    esi
1055f075:	5d                                              	pop    ebp
1055f076:	5b                                              	pop    ebx
1055f077:	83 c4 2c                                        	add    esp,0x2c
1055f07a:	c3                                              	ret
1055f07b:	cc                                              	int3
1055f07c:	cc                                              	int3
1055f07d:	cc                                              	int3
1055f07e:	cc                                              	int3
1055f07f:	cc                                              	int3
