# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f410 (CameraWrap_GetTransform)
Paired Ghidra pseudocode: 1098F410_CameraWrap_GetTransform.c
Window: [0x1098f410, 0x1098f440) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f440
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f410: 8b 44 24 08 83 ec 40 56 57 83 c0 30 50 8d 4c 24
1098f420: 0c 51 e8 f9 0b ff ff 8b f0 8b 44 24 54 83 c4 08
1098f430: b9 10 00 00 00 8b f8 f3 a5 5f 5e 83 c4 40 c3 cc

LINEAR DISASSEMBLY
1098f410 <.text+0x98e410>:
1098f410:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098f414:	83 ec 40                                        	sub    esp,0x40
1098f417:	56                                              	push   esi
1098f418:	57                                              	push   edi
1098f419:	83 c0 30                                        	add    eax,0x30
1098f41c:	50                                              	push   eax
1098f41d:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1098f421:	51                                              	push   ecx
1098f422:	e8 f9 0b ff ff                                  	call   0x10980020
1098f427:	8b f0                                           	mov    esi,eax
1098f429:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
1098f42d:	83 c4 08                                        	add    esp,0x8
1098f430:	b9 10 00 00 00                                  	mov    ecx,0x10
1098f435:	8b f8                                           	mov    edi,eax
1098f437:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
1098f439:	5f                                              	pop    edi
1098f43a:	5e                                              	pop    esi
1098f43b:	83 c4 40                                        	add    esp,0x40
1098f43e:	c3                                              	ret
1098f43f:	cc                                              	int3
