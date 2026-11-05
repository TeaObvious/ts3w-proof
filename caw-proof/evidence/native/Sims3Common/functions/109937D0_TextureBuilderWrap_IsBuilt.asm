# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109937d0 (TextureBuilderWrap_IsBuilt)
Paired Ghidra pseudocode: 109937D0_TextureBuilderWrap_IsBuilt.c
Window: [0x109937d0, 0x109937e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x109937e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109937d0: 8b 4c 24 04 e8 c7 e5 a5 ff f6 d8 1b c0 f7 d8 c3

LINEAR DISASSEMBLY
109937d0 <.text+0x9927d0>:
109937d0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109937d4:	e8 c7 e5 a5 ff                                  	call   0x103f1da0
109937d9:	f6 d8                                           	neg    al
109937db:	1b c0                                           	sbb    eax,eax
109937dd:	f7 d8                                           	neg    eax
109937df:	c3                                              	ret
