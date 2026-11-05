# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990ca0 (SimBuilderWrap_GetNumParts)
Paired Ghidra pseudocode: 10990CA0_SimBuilderWrap_GetNumParts.c
Window: [0x10990ca0, 0x10990cc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990ca0: 8b 54 24 04 8b 8a e0 01 00 00 81 c2 e0 01 00 00
10990cb0: 33 c0 3b ca 74 09 8b 09 83 c0 01 3b ca 75 f7 c3

LINEAR DISASSEMBLY
10990ca0 <.text+0x98fca0>:
10990ca0:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10990ca4:	8b 8a e0 01 00 00                               	mov    ecx,DWORD PTR [edx+0x1e0]
10990caa:	81 c2 e0 01 00 00                               	add    edx,0x1e0
10990cb0:	33 c0                                           	xor    eax,eax
10990cb2:	3b ca                                           	cmp    ecx,edx
10990cb4:	74 09                                           	je     0x10990cbf
10990cb6:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
10990cb8:	83 c0 01                                        	add    eax,0x1
10990cbb:	3b ca                                           	cmp    ecx,edx
10990cbd:	75 f7                                           	jne    0x10990cb6
10990cbf:	c3                                              	ret
