# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c2f0 (RoadObjectWrap_IsVisible)
Paired Ghidra pseudocode: 1098C2F0_RoadObjectWrap_IsVisible.c
Window: [0x1098c2f0, 0x1098c310) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c310
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c2f0: 8b 4c 24 04 8b 01 8b 50 14 ff d2 f6 d8 1b c0 f7
1098c300: d8 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c2f0 <.text+0x98b2f0>:
1098c2f0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098c2f4:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098c2f6:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
1098c2f9:	ff d2                                           	call   edx
1098c2fb:	f6 d8                                           	neg    al
1098c2fd:	1b c0                                           	sbb    eax,eax
1098c2ff:	f7 d8                                           	neg    eax
1098c301:	c3                                              	ret
1098c302:	cc                                              	int3
1098c303:	cc                                              	int3
1098c304:	cc                                              	int3
1098c305:	cc                                              	int3
1098c306:	cc                                              	int3
1098c307:	cc                                              	int3
1098c308:	cc                                              	int3
1098c309:	cc                                              	int3
1098c30a:	cc                                              	int3
1098c30b:	cc                                              	int3
1098c30c:	cc                                              	int3
1098c30d:	cc                                              	int3
1098c30e:	cc                                              	int3
1098c30f:	cc                                              	int3
