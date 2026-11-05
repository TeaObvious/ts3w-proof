# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10557190 (Route_Replan)
Paired Ghidra pseudocode: 10557190_Route_Replan.c
Window: [0x10557190, 0x105571c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105571c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10557190: 8b 44 24 08 83 ec 48 56 57 50 8d 4c 24 0c 51 e8
105571a0: 3c fe ff ff 8b f0 8b 44 24 5c 83 c4 08 b9 12 00
105571b0: 00 00 8b f8 f3 a5 5f 5e 83 c4 48 c3 cc cc cc cc

LINEAR DISASSEMBLY
10557190 <.text+0x556190>:
10557190:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10557194:	83 ec 48                                        	sub    esp,0x48
10557197:	56                                              	push   esi
10557198:	57                                              	push   edi
10557199:	50                                              	push   eax
1055719a:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1055719e:	51                                              	push   ecx
1055719f:	e8 3c fe ff ff                                  	call   0x10556fe0
105571a4:	8b f0                                           	mov    esi,eax
105571a6:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
105571aa:	83 c4 08                                        	add    esp,0x8
105571ad:	b9 12 00 00 00                                  	mov    ecx,0x12
105571b2:	8b f8                                           	mov    edi,eax
105571b4:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
105571b6:	5f                                              	pop    edi
105571b7:	5e                                              	pop    esi
105571b8:	83 c4 48                                        	add    esp,0x48
105571bb:	c3                                              	ret
105571bc:	cc                                              	int3
105571bd:	cc                                              	int3
105571be:	cc                                              	int3
105571bf:	cc                                              	int3
