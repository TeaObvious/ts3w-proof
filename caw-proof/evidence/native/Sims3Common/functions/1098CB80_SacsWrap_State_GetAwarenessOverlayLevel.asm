# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cb80 (SacsWrap_State_GetAwarenessOverlayLevel)
Paired Ghidra pseudocode: 1098CB80_SacsWrap_State_GetAwarenessOverlayLevel.c
Window: [0x1098cb80, 0x1098cba0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cb80: 8b 44 24 04 85 c0 75 06 b8 06 00 00 00 c3 8b 40
1098cb90: 30 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cb80 <.text+0x98bb80>:
1098cb80:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098cb84:	85 c0                                           	test   eax,eax
1098cb86:	75 06                                           	jne    0x1098cb8e
1098cb88:	b8 06 00 00 00                                  	mov    eax,0x6
1098cb8d:	c3                                              	ret
1098cb8e:	8b 40 30                                        	mov    eax,DWORD PTR [eax+0x30]
1098cb91:	c3                                              	ret
1098cb92:	cc                                              	int3
1098cb93:	cc                                              	int3
1098cb94:	cc                                              	int3
1098cb95:	cc                                              	int3
1098cb96:	cc                                              	int3
1098cb97:	cc                                              	int3
1098cb98:	cc                                              	int3
1098cb99:	cc                                              	int3
1098cb9a:	cc                                              	int3
1098cb9b:	cc                                              	int3
1098cb9c:	cc                                              	int3
1098cb9d:	cc                                              	int3
1098cb9e:	cc                                              	int3
1098cb9f:	cc                                              	int3
