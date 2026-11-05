# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10994660 (ITextureOp_GetId)
Paired Ghidra pseudocode: 10994660_ITextureOp_GetId.c
Window: [0x10994660, 0x10994670) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10994670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10994660: 8b 4c 24 04 8b 01 8b 50 08 ff e2 cc cc cc cc cc

LINEAR DISASSEMBLY
10994660 <.text+0x993660>:
10994660:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10994664:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10994666:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10994669:	ff e2                                           	jmp    edx
1099466b:	cc                                              	int3
1099466c:	cc                                              	int3
1099466d:	cc                                              	int3
1099466e:	cc                                              	int3
1099466f:	cc                                              	int3
