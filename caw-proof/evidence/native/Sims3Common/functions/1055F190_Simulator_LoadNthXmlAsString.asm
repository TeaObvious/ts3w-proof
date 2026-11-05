# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055f190 (Simulator_LoadNthXmlAsString)
Paired Ghidra pseudocode: 1055F190_Simulator_LoadNthXmlAsString.c
Window: [0x1055f190, 0x1055f240) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055f240
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055f190: 51 8b 4c 24 18 8b 54 24 14 56 57 8d 44 24 08 50
1055f1a0: 8b 44 24 1c 51 8b 4c 24 1c 52 8b 54 24 1c 50 51
1055f1b0: 52 c7 44 24 20 00 00 00 00 e8 c2 fe ff ff 83 c4
1055f1c0: 18 84 c0 74 57 e8 56 bf ff ff 8b 4c 24 08 8b f8
1055f1d0: 8b 01 8b 50 18 ff d2 8b f0 85 f6 74 3f 8b 06 8b
1055f1e0: 50 04 8b ce ff d2 8b 07 8b 90 b4 00 00 00 56 8b
1055f1f0: cf ff d2 8b f8 8b 06 8b 50 18 8b ce ff d2 8b 06
1055f200: 8b 50 08 8b ce ff d2 8b 4c 24 08 85 c9 74 07 8b
1055f210: 01 8b 50 08 ff d2 8b c7 5f 5e 59 c3 8b 4c 24 08
1055f220: 85 c9 74 07 8b 01 8b 50 08 ff d2 5f 33 c0 5e 59
1055f230: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055f190 <.text+0x55e190>:
1055f190:	51                                              	push   ecx
1055f191:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1055f195:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1055f199:	56                                              	push   esi
1055f19a:	57                                              	push   edi
1055f19b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
1055f19f:	50                                              	push   eax
1055f1a0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1055f1a4:	51                                              	push   ecx
1055f1a5:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1055f1a9:	52                                              	push   edx
1055f1aa:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1055f1ae:	50                                              	push   eax
1055f1af:	51                                              	push   ecx
1055f1b0:	52                                              	push   edx
1055f1b1:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
1055f1b9:	e8 c2 fe ff ff                                  	call   0x1055f080
1055f1be:	83 c4 18                                        	add    esp,0x18
1055f1c1:	84 c0                                           	test   al,al
1055f1c3:	74 57                                           	je     0x1055f21c
1055f1c5:	e8 56 bf ff ff                                  	call   0x1055b120
1055f1ca:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055f1ce:	8b f8                                           	mov    edi,eax
1055f1d0:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1055f1d2:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
1055f1d5:	ff d2                                           	call   edx
1055f1d7:	8b f0                                           	mov    esi,eax
1055f1d9:	85 f6                                           	test   esi,esi
1055f1db:	74 3f                                           	je     0x1055f21c
1055f1dd:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055f1df:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1055f1e2:	8b ce                                           	mov    ecx,esi
1055f1e4:	ff d2                                           	call   edx
1055f1e6:	8b 07                                           	mov    eax,DWORD PTR [edi]
1055f1e8:	8b 90 b4 00 00 00                               	mov    edx,DWORD PTR [eax+0xb4]
1055f1ee:	56                                              	push   esi
1055f1ef:	8b cf                                           	mov    ecx,edi
1055f1f1:	ff d2                                           	call   edx
1055f1f3:	8b f8                                           	mov    edi,eax
1055f1f5:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055f1f7:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
1055f1fa:	8b ce                                           	mov    ecx,esi
1055f1fc:	ff d2                                           	call   edx
1055f1fe:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055f200:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1055f203:	8b ce                                           	mov    ecx,esi
1055f205:	ff d2                                           	call   edx
1055f207:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055f20b:	85 c9                                           	test   ecx,ecx
1055f20d:	74 07                                           	je     0x1055f216
1055f20f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1055f211:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1055f214:	ff d2                                           	call   edx
1055f216:	8b c7                                           	mov    eax,edi
1055f218:	5f                                              	pop    edi
1055f219:	5e                                              	pop    esi
1055f21a:	59                                              	pop    ecx
1055f21b:	c3                                              	ret
1055f21c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055f220:	85 c9                                           	test   ecx,ecx
1055f222:	74 07                                           	je     0x1055f22b
1055f224:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1055f226:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1055f229:	ff d2                                           	call   edx
1055f22b:	5f                                              	pop    edi
1055f22c:	33 c0                                           	xor    eax,eax
1055f22e:	5e                                              	pop    esi
1055f22f:	59                                              	pop    ecx
1055f230:	c3                                              	ret
1055f231:	cc                                              	int3
1055f232:	cc                                              	int3
1055f233:	cc                                              	int3
1055f234:	cc                                              	int3
1055f235:	cc                                              	int3
1055f236:	cc                                              	int3
1055f237:	cc                                              	int3
1055f238:	cc                                              	int3
1055f239:	cc                                              	int3
1055f23a:	cc                                              	int3
1055f23b:	cc                                              	int3
1055f23c:	cc                                              	int3
1055f23d:	cc                                              	int3
1055f23e:	cc                                              	int3
1055f23f:	cc                                              	int3
