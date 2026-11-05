# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e510 (SacsWrap_SelectOnParameterNode_Create)
Paired Ghidra pseudocode: 1098E510_SacsWrap_SelectOnParameterNode_Create.c
Window: [0x1098e510, 0x1098e550) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e550
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e510: 56 6a 00 6a 00 6a 00 6a 00 68 48 71 b9 10 6a 58
1098e520: e8 8b a9 f8 ff 8b f0 83 c4 18 85 f6 74 18 8b ce
1098e530: e8 0b 2f c6 ff c7 06 50 05 b3 10 c7 46 50 00 00
1098e540: 00 00 8b c6 5e c3 33 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e510 <.text+0x98d510>:
1098e510:	56                                              	push   esi
1098e511:	6a 00                                           	push   0x0
1098e513:	6a 00                                           	push   0x0
1098e515:	6a 00                                           	push   0x0
1098e517:	6a 00                                           	push   0x0
1098e519:	68 48 71 b9 10                                  	push   0x10b97148
1098e51e:	6a 58                                           	push   0x58
1098e520:	e8 8b a9 f8 ff                                  	call   0x10918eb0
1098e525:	8b f0                                           	mov    esi,eax
1098e527:	83 c4 18                                        	add    esp,0x18
1098e52a:	85 f6                                           	test   esi,esi
1098e52c:	74 18                                           	je     0x1098e546
1098e52e:	8b ce                                           	mov    ecx,esi
1098e530:	e8 0b 2f c6 ff                                  	call   0x105f1440
1098e535:	c7 06 50 05 b3 10                               	mov    DWORD PTR [esi],0x10b30550
1098e53b:	c7 46 50 00 00 00 00                            	mov    DWORD PTR [esi+0x50],0x0
1098e542:	8b c6                                           	mov    eax,esi
1098e544:	5e                                              	pop    esi
1098e545:	c3                                              	ret
1098e546:	33 c0                                           	xor    eax,eax
1098e548:	5e                                              	pop    esi
1098e549:	c3                                              	ret
1098e54a:	cc                                              	int3
1098e54b:	cc                                              	int3
1098e54c:	cc                                              	int3
1098e54d:	cc                                              	int3
1098e54e:	cc                                              	int3
1098e54f:	cc                                              	int3
