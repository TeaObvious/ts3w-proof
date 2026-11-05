# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fea0 (SimBuilderWrap_SetTextureSize)
Paired Ghidra pseudocode: 1098FEA0_SimBuilderWrap_SetTextureSize.c
Window: [0x1098fea0, 0x1098fec0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fec0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fea0: 8b 44 24 04 8b 4c 24 08 81 48 1c 00 4f 00 00 89
1098feb0: 48 64 b9 1f 00 00 00 89 48 14 89 48 18 c3 cc cc

LINEAR DISASSEMBLY
1098fea0 <.text+0x98eea0>:
1098fea0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098fea4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098fea8:	81 48 1c 00 4f 00 00                            	or     DWORD PTR [eax+0x1c],0x4f00
1098feaf:	89 48 64                                        	mov    DWORD PTR [eax+0x64],ecx
1098feb2:	b9 1f 00 00 00                                  	mov    ecx,0x1f
1098feb7:	89 48 14                                        	mov    DWORD PTR [eax+0x14],ecx
1098feba:	89 48 18                                        	mov    DWORD PTR [eax+0x18],ecx
1098febd:	c3                                              	ret
1098febe:	cc                                              	int3
1098febf:	cc                                              	int3
