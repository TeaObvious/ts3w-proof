# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f420 (CacheManager_ClearCache)
Paired Ghidra pseudocode: 1052F420_CacheManager_ClearCache.c
Window: [0x1052f420, 0x1052f430) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f430
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f420: 8b 0d c0 86 c7 10 85 c9 74 05 e9 e1 fe ff ff c3

LINEAR DISASSEMBLY
1052f420 <.text+0x52e420>:
1052f420:	8b 0d c0 86 c7 10                               	mov    ecx,DWORD PTR ds:0x10c786c0
1052f426:	85 c9                                           	test   ecx,ecx
1052f428:	74 05                                           	je     0x1052f42f
1052f42a:	e9 e1 fe ff ff                                  	jmp    0x1052f310
1052f42f:	c3                                              	ret
