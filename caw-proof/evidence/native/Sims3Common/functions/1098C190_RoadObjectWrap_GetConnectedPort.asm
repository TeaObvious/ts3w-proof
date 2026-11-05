# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c190 (RoadObjectWrap_GetConnectedPort)
Paired Ghidra pseudocode: 1098C190_RoadObjectWrap_GetConnectedPort.c
Window: [0x1098c190, 0x1098c1b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c1b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c190: 8b 4c 24 04 8b 01 8b 54 24 08 8b 40 30 52 ff d0
1098c1a0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c190 <.text+0x98b190>:
1098c190:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098c194:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098c196:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1098c19a:	8b 40 30                                        	mov    eax,DWORD PTR [eax+0x30]
1098c19d:	52                                              	push   edx
1098c19e:	ff d0                                           	call   eax
1098c1a0:	c3                                              	ret
1098c1a1:	cc                                              	int3
1098c1a2:	cc                                              	int3
1098c1a3:	cc                                              	int3
1098c1a4:	cc                                              	int3
1098c1a5:	cc                                              	int3
1098c1a6:	cc                                              	int3
1098c1a7:	cc                                              	int3
1098c1a8:	cc                                              	int3
1098c1a9:	cc                                              	int3
1098c1aa:	cc                                              	int3
1098c1ab:	cc                                              	int3
1098c1ac:	cc                                              	int3
1098c1ad:	cc                                              	int3
1098c1ae:	cc                                              	int3
1098c1af:	cc                                              	int3
