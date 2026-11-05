# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993800 (TextureBuilderWrap_ClearOps)
Paired Ghidra pseudocode: 10993800_TextureBuilderWrap_ClearOps.c
Window: [0x10993800, 0x10993810) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993800: 8b 4c 24 04 e9 a7 f3 a5 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10993800 <.text+0x992800>:
10993800:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10993804:	e9 a7 f3 a5 ff                                  	jmp    0x103f2bb0
10993809:	cc                                              	int3
1099380a:	cc                                              	int3
1099380b:	cc                                              	int3
1099380c:	cc                                              	int3
1099380d:	cc                                              	int3
1099380e:	cc                                              	int3
1099380f:	cc                                              	int3
