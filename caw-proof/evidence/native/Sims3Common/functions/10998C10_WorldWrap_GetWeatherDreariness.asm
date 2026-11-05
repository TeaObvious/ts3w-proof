# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998c10 (WorldWrap_GetWeatherDreariness)
Paired Ghidra pseudocode: 10998C10_WorldWrap_GetWeatherDreariness.c
Window: [0x10998c10, 0x10998c40) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998c40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998c10: 8b 44 24 04 85 c0 75 03 d9 ee c3 8b 48 74 85 c9
10998c20: 74 f6 e8 49 97 9a ff 85 c0 74 ed 8b c8 e9 fe b7
10998c30: 84 ff cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998c10 <.text+0x997c10>:
10998c10:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10998c14:	85 c0                                           	test   eax,eax
10998c16:	75 03                                           	jne    0x10998c1b
10998c18:	d9 ee                                           	fldz
10998c1a:	c3                                              	ret
10998c1b:	8b 48 74                                        	mov    ecx,DWORD PTR [eax+0x74]
10998c1e:	85 c9                                           	test   ecx,ecx
10998c20:	74 f6                                           	je     0x10998c18
10998c22:	e8 49 97 9a ff                                  	call   0x10342370
10998c27:	85 c0                                           	test   eax,eax
10998c29:	74 ed                                           	je     0x10998c18
10998c2b:	8b c8                                           	mov    ecx,eax
10998c2d:	e9 fe b7 84 ff                                  	jmp    0x101e4430
10998c32:	cc                                              	int3
10998c33:	cc                                              	int3
10998c34:	cc                                              	int3
10998c35:	cc                                              	int3
10998c36:	cc                                              	int3
10998c37:	cc                                              	int3
10998c38:	cc                                              	int3
10998c39:	cc                                              	int3
10998c3a:	cc                                              	int3
10998c3b:	cc                                              	int3
10998c3c:	cc                                              	int3
10998c3d:	cc                                              	int3
10998c3e:	cc                                              	int3
10998c3f:	cc                                              	int3
