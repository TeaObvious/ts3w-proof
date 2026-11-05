# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10994330 (TextureDatabase_Shutdown)
Paired Ghidra pseudocode: 10994330_TextureDatabase_Shutdown.c
Window: [0x10994330, 0x10994340) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10994340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10994330: 8b 4c 24 04 e9 07 fd ff ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10994330 <.text+0x993330>:
10994330:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10994334:	e9 07 fd ff ff                                  	jmp    0x10994040
10994339:	cc                                              	int3
1099433a:	cc                                              	int3
1099433b:	cc                                              	int3
1099433c:	cc                                              	int3
1099433d:	cc                                              	int3
1099433e:	cc                                              	int3
1099433f:	cc                                              	int3
