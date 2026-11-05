# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ca10 (SacsWrap_StateMachine_GetDefaultPriority)
Paired Ghidra pseudocode: 1098CA10_SacsWrap_StateMachine_GetDefaultPriority.c
Window: [0x1098ca10, 0x1098ca30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ca30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ca10: 8b 44 24 04 85 c0 75 06 b8 fd ff ff ff c3 8b 40
1098ca20: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ca10 <.text+0x98ba10>:
1098ca10:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098ca14:	85 c0                                           	test   eax,eax
1098ca16:	75 06                                           	jne    0x1098ca1e
1098ca18:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
1098ca1d:	c3                                              	ret
1098ca1e:	8b 40 34                                        	mov    eax,DWORD PTR [eax+0x34]
1098ca21:	c3                                              	ret
1098ca22:	cc                                              	int3
1098ca23:	cc                                              	int3
1098ca24:	cc                                              	int3
1098ca25:	cc                                              	int3
1098ca26:	cc                                              	int3
1098ca27:	cc                                              	int3
1098ca28:	cc                                              	int3
1098ca29:	cc                                              	int3
1098ca2a:	cc                                              	int3
1098ca2b:	cc                                              	int3
1098ca2c:	cc                                              	int3
1098ca2d:	cc                                              	int3
1098ca2e:	cc                                              	int3
1098ca2f:	cc                                              	int3
