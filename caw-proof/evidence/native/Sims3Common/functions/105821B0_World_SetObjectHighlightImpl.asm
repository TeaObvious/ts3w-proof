# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105821b0 (World_SetObjectHighlightImpl)
Paired Ghidra pseudocode: 105821B0_World_SetObjectHighlightImpl.c
Window: [0x105821b0, 0x105821d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105821d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105821b0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
105821c0: 5c e2 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105821b0 <.text+0x5811b0>:
105821b0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105821b4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105821b8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105821bc:	50                                              	push   eax
105821bd:	51                                              	push   ecx
105821be:	52                                              	push   edx
105821bf:	e8 5c e2 ff ff                                  	call   0x10580420
105821c4:	83 c4 0c                                        	add    esp,0xc
105821c7:	c3                                              	ret
105821c8:	cc                                              	int3
105821c9:	cc                                              	int3
105821ca:	cc                                              	int3
105821cb:	cc                                              	int3
105821cc:	cc                                              	int3
105821cd:	cc                                              	int3
105821ce:	cc                                              	int3
105821cf:	cc                                              	int3
