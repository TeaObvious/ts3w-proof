# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105306b0 (Camera_RegisterCallbackMethod)
Paired Ghidra pseudocode: 105306B0_Camera_RegisterCallbackMethod.c
Window: [0x105306b0, 0x10530710) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10530710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105306b0: 57 8b 7c 24 08 83 ff 04 77 53 53 56 e8 5f aa 02
105306c0: 00 8b 4c 24 18 8b f0 8b 06 8b 50 58 51 8b ce ff
105306d0: d2 8b 4c 24 14 8b d8 8b 06 8b 50 58 51 8b ce ff
105306e0: d2 50 c1 e7 05 8d 87 d8 86 c7 10 68 dc 9d b1 10
105306f0: 50 e8 8a e9 ad ff 53 8d 8f e8 86 c7 10 68 dc 9d
10530700: b1 10 51 e8 78 e9 ad ff 83 c4 18 5e 5b 5f c3 cc

LINEAR DISASSEMBLY
105306b0 <.text+0x52f6b0>:
105306b0:	57                                              	push   edi
105306b1:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
105306b5:	83 ff 04                                        	cmp    edi,0x4
105306b8:	77 53                                           	ja     0x1053070d
105306ba:	53                                              	push   ebx
105306bb:	56                                              	push   esi
105306bc:	e8 5f aa 02 00                                  	call   0x1055b120
105306c1:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
105306c5:	8b f0                                           	mov    esi,eax
105306c7:	8b 06                                           	mov    eax,DWORD PTR [esi]
105306c9:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
105306cc:	51                                              	push   ecx
105306cd:	8b ce                                           	mov    ecx,esi
105306cf:	ff d2                                           	call   edx
105306d1:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
105306d5:	8b d8                                           	mov    ebx,eax
105306d7:	8b 06                                           	mov    eax,DWORD PTR [esi]
105306d9:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
105306dc:	51                                              	push   ecx
105306dd:	8b ce                                           	mov    ecx,esi
105306df:	ff d2                                           	call   edx
105306e1:	50                                              	push   eax
105306e2:	c1 e7 05                                        	shl    edi,0x5
105306e5:	8d 87 d8 86 c7 10                               	lea    eax,[edi+0x10c786d8]
105306eb:	68 dc 9d b1 10                                  	push   0x10b19ddc
105306f0:	50                                              	push   eax
105306f1:	e8 8a e9 ad ff                                  	call   0x1000f080
105306f6:	53                                              	push   ebx
105306f7:	8d 8f e8 86 c7 10                               	lea    ecx,[edi+0x10c786e8]
105306fd:	68 dc 9d b1 10                                  	push   0x10b19ddc
10530702:	51                                              	push   ecx
10530703:	e8 78 e9 ad ff                                  	call   0x1000f080
10530708:	83 c4 18                                        	add    esp,0x18
1053070b:	5e                                              	pop    esi
1053070c:	5b                                              	pop    ebx
1053070d:	5f                                              	pop    edi
1053070e:	c3                                              	ret
1053070f:	cc                                              	int3
