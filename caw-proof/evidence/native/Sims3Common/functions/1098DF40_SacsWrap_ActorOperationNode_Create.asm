# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098df40 (SacsWrap_ActorOperationNode_Create)
Paired Ghidra pseudocode: 1098DF40_SacsWrap_ActorOperationNode_Create.c
Window: [0x1098df40, 0x1098df90) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098df90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098df40: 56 6a 00 6a 00 6a 00 6a 00 68 e8 70 b9 10 6a 60
1098df50: e8 5b af f8 ff 8b f0 83 c4 18 85 f6 74 26 8b ce
1098df60: e8 9b 17 c6 ff c7 06 a0 ff b2 10 c7 46 50 00 00
1098df70: 00 00 c7 46 54 00 00 00 00 c7 46 58 00 00 00 00
1098df80: 8b c6 5e c3 33 c0 5e c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098df40 <.text+0x98cf40>:
1098df40:	56                                              	push   esi
1098df41:	6a 00                                           	push   0x0
1098df43:	6a 00                                           	push   0x0
1098df45:	6a 00                                           	push   0x0
1098df47:	6a 00                                           	push   0x0
1098df49:	68 e8 70 b9 10                                  	push   0x10b970e8
1098df4e:	6a 60                                           	push   0x60
1098df50:	e8 5b af f8 ff                                  	call   0x10918eb0
1098df55:	8b f0                                           	mov    esi,eax
1098df57:	83 c4 18                                        	add    esp,0x18
1098df5a:	85 f6                                           	test   esi,esi
1098df5c:	74 26                                           	je     0x1098df84
1098df5e:	8b ce                                           	mov    ecx,esi
1098df60:	e8 9b 17 c6 ff                                  	call   0x105ef700
1098df65:	c7 06 a0 ff b2 10                               	mov    DWORD PTR [esi],0x10b2ffa0
1098df6b:	c7 46 50 00 00 00 00                            	mov    DWORD PTR [esi+0x50],0x0
1098df72:	c7 46 54 00 00 00 00                            	mov    DWORD PTR [esi+0x54],0x0
1098df79:	c7 46 58 00 00 00 00                            	mov    DWORD PTR [esi+0x58],0x0
1098df80:	8b c6                                           	mov    eax,esi
1098df82:	5e                                              	pop    esi
1098df83:	c3                                              	ret
1098df84:	33 c0                                           	xor    eax,eax
1098df86:	5e                                              	pop    esi
1098df87:	c3                                              	ret
1098df88:	cc                                              	int3
1098df89:	cc                                              	int3
1098df8a:	cc                                              	int3
1098df8b:	cc                                              	int3
1098df8c:	cc                                              	int3
1098df8d:	cc                                              	int3
1098df8e:	cc                                              	int3
1098df8f:	cc                                              	int3
