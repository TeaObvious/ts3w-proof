# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053e1c0 (Route_SetPreferredPortal)
Paired Ghidra pseudocode: 1053E1C0_Route_SetPreferredPortal.c
Window: [0x1053e1c0, 0x1053e210) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053e210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053e1c0: 8b 0d 44 89 c7 10 85 c9 74 3a 8b 44 24 04 56 50
1053e1d0: e8 1b df ff ff 8b f0 85 f6 74 28 8b 16 8b 42 10
1053e1e0: 8b ce ff d0 8b 4c 24 10 8b 54 24 0c 51 52 8d 8e
1053e1f0: 58 01 00 00 e8 67 ff 0c 00 8b 06 8b 50 14 8b ce
1053e200: 5e ff e2 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053e1c0 <.text+0x53d1c0>:
1053e1c0:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1053e1c6:	85 c9                                           	test   ecx,ecx
1053e1c8:	74 3a                                           	je     0x1053e204
1053e1ca:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1053e1ce:	56                                              	push   esi
1053e1cf:	50                                              	push   eax
1053e1d0:	e8 1b df ff ff                                  	call   0x1053c0f0
1053e1d5:	8b f0                                           	mov    esi,eax
1053e1d7:	85 f6                                           	test   esi,esi
1053e1d9:	74 28                                           	je     0x1053e203
1053e1db:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053e1dd:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
1053e1e0:	8b ce                                           	mov    ecx,esi
1053e1e2:	ff d0                                           	call   eax
1053e1e4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1053e1e8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1053e1ec:	51                                              	push   ecx
1053e1ed:	52                                              	push   edx
1053e1ee:	8d 8e 58 01 00 00                               	lea    ecx,[esi+0x158]
1053e1f4:	e8 67 ff 0c 00                                  	call   0x1060e160
1053e1f9:	8b 06                                           	mov    eax,DWORD PTR [esi]
1053e1fb:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
1053e1fe:	8b ce                                           	mov    ecx,esi
1053e200:	5e                                              	pop    esi
1053e201:	ff e2                                           	jmp    edx
1053e203:	5e                                              	pop    esi
1053e204:	c3                                              	ret
1053e205:	cc                                              	int3
1053e206:	cc                                              	int3
1053e207:	cc                                              	int3
1053e208:	cc                                              	int3
1053e209:	cc                                              	int3
1053e20a:	cc                                              	int3
1053e20b:	cc                                              	int3
1053e20c:	cc                                              	int3
1053e20d:	cc                                              	int3
1053e20e:	cc                                              	int3
1053e20f:	cc                                              	int3
