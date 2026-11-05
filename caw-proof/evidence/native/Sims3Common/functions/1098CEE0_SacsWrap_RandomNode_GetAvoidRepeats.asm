# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cee0 (SacsWrap_RandomNode_GetAvoidRepeats)
Paired Ghidra pseudocode: 1098CEE0_SacsWrap_RandomNode_GetAvoidRepeats.c
Window: [0x1098cee0, 0x1098cf00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cf00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cee0: 8b 44 24 04 85 c0 74 0b 33 c9 38 48 44 0f 95 c1
1098cef0: 8b c1 c3 33 c0 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cee0 <.text+0x98bee0>:
1098cee0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098cee4:	85 c0                                           	test   eax,eax
1098cee6:	74 0b                                           	je     0x1098cef3
1098cee8:	33 c9                                           	xor    ecx,ecx
1098ceea:	38 48 44                                        	cmp    BYTE PTR [eax+0x44],cl
1098ceed:	0f 95 c1                                        	setne  cl
1098cef0:	8b c1                                           	mov    eax,ecx
1098cef2:	c3                                              	ret
1098cef3:	33 c0                                           	xor    eax,eax
1098cef5:	c3                                              	ret
1098cef6:	cc                                              	int3
1098cef7:	cc                                              	int3
1098cef8:	cc                                              	int3
1098cef9:	cc                                              	int3
1098cefa:	cc                                              	int3
1098cefb:	cc                                              	int3
1098cefc:	cc                                              	int3
1098cefd:	cc                                              	int3
1098cefe:	cc                                              	int3
1098ceff:	cc                                              	int3
