# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103db030 (CASPartDataResourceWrap_Dispose)
Paired Ghidra pseudocode: 103DB030_CASPartDataResourceWrap_Dispose.c
Window: [0x103db030, 0x103db040) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103db040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103db030: 8b 4c 24 04 8b 01 8b 50 04 ff e2 cc cc cc cc cc

LINEAR DISASSEMBLY
103db030 <.text+0x3da030>:
103db030:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
103db034:	8b 01                                           	mov    eax,DWORD PTR [ecx]
103db036:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103db039:	ff e2                                           	jmp    edx
103db03b:	cc                                              	int3
103db03c:	cc                                              	int3
103db03d:	cc                                              	int3
103db03e:	cc                                              	int3
103db03f:	cc                                              	int3
