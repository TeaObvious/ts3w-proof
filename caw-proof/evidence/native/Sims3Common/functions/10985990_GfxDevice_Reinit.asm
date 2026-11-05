# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985990 (GfxDevice_Reinit)
Paired Ghidra pseudocode: 10985990_GfxDevice_Reinit.c
Window: [0x10985990, 0x109859a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109859a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985990: 8b 0d e8 35 c7 10 85 c9 74 05 e9 51 6e a8 ff c3

LINEAR DISASSEMBLY
10985990 <.text+0x984990>:
10985990:	8b 0d e8 35 c7 10                               	mov    ecx,DWORD PTR ds:0x10c735e8
10985996:	85 c9                                           	test   ecx,ecx
10985998:	74 05                                           	je     0x1098599f
1098599a:	e9 51 6e a8 ff                                  	jmp    0x1040c7f0
1098599f:	c3                                              	ret
