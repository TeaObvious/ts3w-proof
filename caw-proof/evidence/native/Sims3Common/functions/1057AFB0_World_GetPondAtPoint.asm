# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057afb0 (World_GetPondAtPoint)
Paired Ghidra pseudocode: 1057AFB0_World_GetPondAtPoint.c
Window: [0x1057afb0, 0x1057afe0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057afe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057afb0: 8b 4c 24 0c 8b 54 24 10 83 ec 0c 8b c4 89 08 8b
1057afc0: 4c 24 20 89 50 04 8b 54 24 14 89 48 08 8b 44 24
1057afd0: 10 52 50 e8 88 da ff ff 83 c4 14 c3 cc cc cc cc

LINEAR DISASSEMBLY
1057afb0 <.text+0x579fb0>:
1057afb0:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057afb4:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1057afb8:	83 ec 0c                                        	sub    esp,0xc
1057afbb:	8b c4                                           	mov    eax,esp
1057afbd:	89 08                                           	mov    DWORD PTR [eax],ecx
1057afbf:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1057afc3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057afc6:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1057afca:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057afcd:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1057afd1:	52                                              	push   edx
1057afd2:	50                                              	push   eax
1057afd3:	e8 88 da ff ff                                  	call   0x10578a60
1057afd8:	83 c4 14                                        	add    esp,0x14
1057afdb:	c3                                              	ret
1057afdc:	cc                                              	int3
1057afdd:	cc                                              	int3
1057afde:	cc                                              	int3
1057afdf:	cc                                              	int3
