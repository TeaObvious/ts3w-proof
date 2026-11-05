# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985af0 (GfxDevice_EndScene)
Paired Ghidra pseudocode: 10985AF0_GfxDevice_EndScene.c
Window: [0x10985af0, 0x10985b00) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985b00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985af0: 8b 0d e8 35 c7 10 e9 55 86 bd ff cc cc cc cc cc

LINEAR DISASSEMBLY
10985af0 <.text+0x984af0>:
10985af0:	8b 0d e8 35 c7 10                               	mov    ecx,DWORD PTR ds:0x10c735e8
10985af6:	e9 55 86 bd ff                                  	jmp    0x1055e150
10985afb:	cc                                              	int3
10985afc:	cc                                              	int3
10985afd:	cc                                              	int3
10985afe:	cc                                              	int3
10985aff:	cc                                              	int3
