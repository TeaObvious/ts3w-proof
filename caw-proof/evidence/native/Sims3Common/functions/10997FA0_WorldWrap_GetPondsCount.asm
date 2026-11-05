# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997fa0 (WorldWrap_GetPondsCount)
Paired Ghidra pseudocode: 10997FA0_WorldWrap_GetPondsCount.c
Window: [0x10997fa0, 0x10997fb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997fb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997fa0: 8b 4c 24 04 85 c9 74 05 e9 03 ce 89 ff 33 c0 c3

LINEAR DISASSEMBLY
10997fa0 <.text+0x996fa0>:
10997fa0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997fa4:	85 c9                                           	test   ecx,ecx
10997fa6:	74 05                                           	je     0x10997fad
10997fa8:	e9 03 ce 89 ff                                  	jmp    0x10234db0
10997fad:	33 c0                                           	xor    eax,eax
10997faf:	c3                                              	ret
