# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c180 (RoadObjectWrap_GetNumPorts)
Paired Ghidra pseudocode: 1098C180_RoadObjectWrap_GetNumPorts.c
Window: [0x1098c180, 0x1098c190) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c180: 8b 4c 24 04 8b 01 8b 50 1c ff e2 cc cc cc cc cc

LINEAR DISASSEMBLY
1098c180 <.text+0x98b180>:
1098c180:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098c184:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098c186:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
1098c189:	ff e2                                           	jmp    edx
1098c18b:	cc                                              	int3
1098c18c:	cc                                              	int3
1098c18d:	cc                                              	int3
1098c18e:	cc                                              	int3
1098c18f:	cc                                              	int3
