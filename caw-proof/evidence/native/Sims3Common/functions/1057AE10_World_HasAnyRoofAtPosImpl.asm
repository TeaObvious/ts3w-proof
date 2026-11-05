# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ae10 (World_HasAnyRoofAtPosImpl)
Paired Ghidra pseudocode: 1057AE10_World_HasAnyRoofAtPosImpl.c
Window: [0x1057ae10, 0x1057ae40) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ae40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ae10: 8b 4c 24 04 8b 54 24 08 83 ec 0c 8b c4 89 08 8b
1057ae20: 4c 24 18 89 50 04 89 48 08 e8 c2 d8 ff ff 83 c4
1057ae30: 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057ae10 <.text+0x579e10>:
1057ae10:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1057ae14:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057ae18:	83 ec 0c                                        	sub    esp,0xc
1057ae1b:	8b c4                                           	mov    eax,esp
1057ae1d:	89 08                                           	mov    DWORD PTR [eax],ecx
1057ae1f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057ae23:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057ae26:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057ae29:	e8 c2 d8 ff ff                                  	call   0x105786f0
1057ae2e:	83 c4 0c                                        	add    esp,0xc
1057ae31:	c3                                              	ret
1057ae32:	cc                                              	int3
1057ae33:	cc                                              	int3
1057ae34:	cc                                              	int3
1057ae35:	cc                                              	int3
1057ae36:	cc                                              	int3
1057ae37:	cc                                              	int3
1057ae38:	cc                                              	int3
1057ae39:	cc                                              	int3
1057ae3a:	cc                                              	int3
1057ae3b:	cc                                              	int3
1057ae3c:	cc                                              	int3
1057ae3d:	cc                                              	int3
1057ae3e:	cc                                              	int3
1057ae3f:	cc                                              	int3
