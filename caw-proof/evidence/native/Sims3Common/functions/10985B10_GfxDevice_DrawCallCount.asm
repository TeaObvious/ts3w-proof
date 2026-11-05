# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985b10 (GfxDevice_DrawCallCount)
Paired Ghidra pseudocode: 10985B10_GfxDevice_DrawCallCount.c
Window: [0x10985b10, 0x10985b30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985b30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985b10: 8b 0d e8 35 c7 10 e8 65 58 d8 ff 8b c8 2b 05 48
10985b20: 7f cb 10 89 0d 48 7f cb 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10985b10 <.text+0x984b10>:
10985b10:	8b 0d e8 35 c7 10                               	mov    ecx,DWORD PTR ds:0x10c735e8
10985b16:	e8 65 58 d8 ff                                  	call   0x1070b380
10985b1b:	8b c8                                           	mov    ecx,eax
10985b1d:	2b 05 48 7f cb 10                               	sub    eax,DWORD PTR ds:0x10cb7f48
10985b23:	89 0d 48 7f cb 10                               	mov    DWORD PTR ds:0x10cb7f48,ecx
10985b29:	c3                                              	ret
10985b2a:	cc                                              	int3
10985b2b:	cc                                              	int3
10985b2c:	cc                                              	int3
10985b2d:	cc                                              	int3
10985b2e:	cc                                              	int3
10985b2f:	cc                                              	int3
