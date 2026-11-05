# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c340 (RoadSplineWrap_IsFootpath)
Paired Ghidra pseudocode: 1098C340_RoadSplineWrap_IsFootpath.c
Window: [0x1098c340, 0x1098c350) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c350
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c340: 8b 4c 24 04 8b 01 8b 50 48 ff d2 0f b6 c0 c3 cc

LINEAR DISASSEMBLY
1098c340 <.text+0x98b340>:
1098c340:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098c344:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098c346:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
1098c349:	ff d2                                           	call   edx
1098c34b:	0f b6 c0                                        	movzx  eax,al
1098c34e:	c3                                              	ret
1098c34f:	cc                                              	int3
