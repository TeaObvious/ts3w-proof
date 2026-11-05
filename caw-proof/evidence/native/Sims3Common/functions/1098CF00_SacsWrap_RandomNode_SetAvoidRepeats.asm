# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cf00 (SacsWrap_RandomNode_SetAvoidRepeats)
Paired Ghidra pseudocode: 1098CF00_SacsWrap_RandomNode_SetAvoidRepeats.c
Window: [0x1098cf00, 0x1098cf20) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cf20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cf00: 8b 44 24 04 85 c0 74 0b 83 7c 24 08 00 0f 95 c1
1098cf10: 88 48 44 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cf00 <.text+0x98bf00>:
1098cf00:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098cf04:	85 c0                                           	test   eax,eax
1098cf06:	74 0b                                           	je     0x1098cf13
1098cf08:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1098cf0d:	0f 95 c1                                        	setne  cl
1098cf10:	88 48 44                                        	mov    BYTE PTR [eax+0x44],cl
1098cf13:	c3                                              	ret
1098cf14:	cc                                              	int3
1098cf15:	cc                                              	int3
1098cf16:	cc                                              	int3
1098cf17:	cc                                              	int3
1098cf18:	cc                                              	int3
1098cf19:	cc                                              	int3
1098cf1a:	cc                                              	int3
1098cf1b:	cc                                              	int3
1098cf1c:	cc                                              	int3
1098cf1d:	cc                                              	int3
1098cf1e:	cc                                              	int3
1098cf1f:	cc                                              	int3
