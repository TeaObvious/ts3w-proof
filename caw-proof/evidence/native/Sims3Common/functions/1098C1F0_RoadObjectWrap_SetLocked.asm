# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c1f0 (RoadObjectWrap_SetLocked)
Paired Ghidra pseudocode: 1098C1F0_RoadObjectWrap_SetLocked.c
Window: [0x1098c1f0, 0x1098c210) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c1f0: 8b 44 24 04 85 c0 74 0b 83 7c 24 08 00 0f 95 c1
1098c200: 88 48 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c1f0 <.text+0x98b1f0>:
1098c1f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098c1f4:	85 c0                                           	test   eax,eax
1098c1f6:	74 0b                                           	je     0x1098c203
1098c1f8:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1098c1fd:	0f 95 c1                                        	setne  cl
1098c200:	88 48 24                                        	mov    BYTE PTR [eax+0x24],cl
1098c203:	c3                                              	ret
1098c204:	cc                                              	int3
1098c205:	cc                                              	int3
1098c206:	cc                                              	int3
1098c207:	cc                                              	int3
1098c208:	cc                                              	int3
1098c209:	cc                                              	int3
1098c20a:	cc                                              	int3
1098c20b:	cc                                              	int3
1098c20c:	cc                                              	int3
1098c20d:	cc                                              	int3
1098c20e:	cc                                              	int3
1098c20f:	cc                                              	int3
