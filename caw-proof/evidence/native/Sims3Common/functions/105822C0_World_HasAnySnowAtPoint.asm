# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105822c0 (World_HasAnySnowAtPoint)
Paired Ghidra pseudocode: 105822C0_World_HasAnySnowAtPoint.c
Window: [0x105822c0, 0x105822f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105822f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105822c0: 8b 4c 24 04 8b 54 24 08 83 ec 0c 8b c4 89 08 8b
105822d0: 4c 24 18 89 50 04 89 48 08 e8 02 e6 ff ff 83 c4
105822e0: 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105822c0 <.text+0x5812c0>:
105822c0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105822c4:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
105822c8:	83 ec 0c                                        	sub    esp,0xc
105822cb:	8b c4                                           	mov    eax,esp
105822cd:	89 08                                           	mov    DWORD PTR [eax],ecx
105822cf:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
105822d3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
105822d6:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
105822d9:	e8 02 e6 ff ff                                  	call   0x105808e0
105822de:	83 c4 0c                                        	add    esp,0xc
105822e1:	c3                                              	ret
105822e2:	cc                                              	int3
105822e3:	cc                                              	int3
105822e4:	cc                                              	int3
105822e5:	cc                                              	int3
105822e6:	cc                                              	int3
105822e7:	cc                                              	int3
105822e8:	cc                                              	int3
105822e9:	cc                                              	int3
105822ea:	cc                                              	int3
105822eb:	cc                                              	int3
105822ec:	cc                                              	int3
105822ed:	cc                                              	int3
105822ee:	cc                                              	int3
105822ef:	cc                                              	int3
