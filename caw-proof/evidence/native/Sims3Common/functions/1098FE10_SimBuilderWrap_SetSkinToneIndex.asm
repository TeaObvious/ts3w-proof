# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fe10 (SimBuilderWrap_SetSkinToneIndex)
Paired Ghidra pseudocode: 1098FE10_SimBuilderWrap_SetSkinToneIndex.c
Window: [0x1098fe10, 0x1098fe30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fe30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fe10: 8b 44 24 04 f3 0f 10 44 24 08 81 48 1c 02 01 00
1098fe20: 00 83 48 14 1f f3 0f 11 40 38 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1098fe10 <.text+0x98ee10>:
1098fe10:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098fe14:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
1098fe1a:	81 48 1c 02 01 00 00                            	or     DWORD PTR [eax+0x1c],0x102
1098fe21:	83 48 14 1f                                     	or     DWORD PTR [eax+0x14],0x1f
1098fe25:	f3 0f 11 40 38                                  	movss  DWORD PTR [eax+0x38],xmm0
1098fe2a:	c3                                              	ret
1098fe2b:	cc                                              	int3
1098fe2c:	cc                                              	int3
1098fe2d:	cc                                              	int3
1098fe2e:	cc                                              	int3
1098fe2f:	cc                                              	int3
