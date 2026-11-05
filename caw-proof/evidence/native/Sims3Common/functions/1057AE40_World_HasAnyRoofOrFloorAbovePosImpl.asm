# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ae40 (World_HasAnyRoofOrFloorAbovePosImpl)
Paired Ghidra pseudocode: 1057AE40_World_HasAnyRoofOrFloorAbovePosImpl.c
Window: [0x1057ae40, 0x1057ae70) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ae70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ae40: 8b 4c 24 04 8b 54 24 08 83 ec 0c 8b c4 89 08 8b
1057ae50: 4c 24 18 89 50 04 89 48 08 e8 22 d9 ff ff 83 c4
1057ae60: 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057ae40 <.text+0x579e40>:
1057ae40:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1057ae44:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057ae48:	83 ec 0c                                        	sub    esp,0xc
1057ae4b:	8b c4                                           	mov    eax,esp
1057ae4d:	89 08                                           	mov    DWORD PTR [eax],ecx
1057ae4f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057ae53:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057ae56:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057ae59:	e8 22 d9 ff ff                                  	call   0x10578780
1057ae5e:	83 c4 0c                                        	add    esp,0xc
1057ae61:	c3                                              	ret
1057ae62:	cc                                              	int3
1057ae63:	cc                                              	int3
1057ae64:	cc                                              	int3
1057ae65:	cc                                              	int3
1057ae66:	cc                                              	int3
1057ae67:	cc                                              	int3
1057ae68:	cc                                              	int3
1057ae69:	cc                                              	int3
1057ae6a:	cc                                              	int3
1057ae6b:	cc                                              	int3
1057ae6c:	cc                                              	int3
1057ae6d:	cc                                              	int3
1057ae6e:	cc                                              	int3
1057ae6f:	cc                                              	int3
