# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c210 (RoadObjectWrap_IsLocked)
Paired Ghidra pseudocode: 1098C210_RoadObjectWrap_IsLocked.c
Window: [0x1098c210, 0x1098c230) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c210: 8b 44 24 04 85 c0 74 0b 33 c9 38 48 24 0f 95 c1
1098c220: 8b c1 c3 33 c0 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c210 <.text+0x98b210>:
1098c210:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098c214:	85 c0                                           	test   eax,eax
1098c216:	74 0b                                           	je     0x1098c223
1098c218:	33 c9                                           	xor    ecx,ecx
1098c21a:	38 48 24                                        	cmp    BYTE PTR [eax+0x24],cl
1098c21d:	0f 95 c1                                        	setne  cl
1098c220:	8b c1                                           	mov    eax,ecx
1098c222:	c3                                              	ret
1098c223:	33 c0                                           	xor    eax,eax
1098c225:	c3                                              	ret
1098c226:	cc                                              	int3
1098c227:	cc                                              	int3
1098c228:	cc                                              	int3
1098c229:	cc                                              	int3
1098c22a:	cc                                              	int3
1098c22b:	cc                                              	int3
1098c22c:	cc                                              	int3
1098c22d:	cc                                              	int3
1098c22e:	cc                                              	int3
1098c22f:	cc                                              	int3
