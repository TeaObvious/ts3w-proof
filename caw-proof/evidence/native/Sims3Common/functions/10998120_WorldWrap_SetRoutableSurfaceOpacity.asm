# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998120 (WorldWrap_SetRoutableSurfaceOpacity)
Paired Ghidra pseudocode: 10998120_WorldWrap_SetRoutableSurfaceOpacity.c
Window: [0x10998120, 0x10998140) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998140
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998120: 8b 4c 24 04 e8 b7 1e a7 ff 85 c0 74 0f d9 44 24
10998130: 08 51 8b c8 d9 1c 24 e8 e4 c2 8b ff c3 cc cc cc

LINEAR DISASSEMBLY
10998120 <.text+0x997120>:
10998120:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10998124:	e8 b7 1e a7 ff                                  	call   0x10409fe0
10998129:	85 c0                                           	test   eax,eax
1099812b:	74 0f                                           	je     0x1099813c
1099812d:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10998131:	51                                              	push   ecx
10998132:	8b c8                                           	mov    ecx,eax
10998134:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10998137:	e8 e4 c2 8b ff                                  	call   0x10254420
1099813c:	c3                                              	ret
1099813d:	cc                                              	int3
1099813e:	cc                                              	int3
1099813f:	cc                                              	int3
