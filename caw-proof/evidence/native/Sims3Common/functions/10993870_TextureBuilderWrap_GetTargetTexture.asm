# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993870 (TextureBuilderWrap_GetTargetTexture)
Paired Ghidra pseudocode: 10993870_TextureBuilderWrap_GetTargetTexture.c
Window: [0x10993870, 0x10993880) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993880
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993870: 8b 44 24 08 8b 4c 24 04 50 e8 c2 e4 a5 ff c3 cc

LINEAR DISASSEMBLY
10993870 <.text+0x992870>:
10993870:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10993874:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10993878:	50                                              	push   eax
10993879:	e8 c2 e4 a5 ff                                  	call   0x103f1d40
1099387e:	c3                                              	ret
1099387f:	cc                                              	int3
