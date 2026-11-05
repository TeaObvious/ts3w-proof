# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105811a0 (World_FindPlaceOnRoadOffScreen)
Paired Ghidra pseudocode: 105811A0_World_FindPlaceOnRoadOffScreen.c
Window: [0x105811a0, 0x105811d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105811d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105811a0: 8b 44 24 1c d9 44 24 14 8b 4c 24 18 8b 54 24 10
105811b0: 50 8b 44 24 10 51 51 8b 4c 24 14 d9 1c 24 52 8b
105811c0: 54 24 14 50 51 52 e8 75 c8 ff ff 83 c4 1c c3 cc

LINEAR DISASSEMBLY
105811a0 <.text+0x5801a0>:
105811a0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
105811a4:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
105811a8:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
105811ac:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105811b0:	50                                              	push   eax
105811b1:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105811b5:	51                                              	push   ecx
105811b6:	51                                              	push   ecx
105811b7:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
105811bb:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105811be:	52                                              	push   edx
105811bf:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
105811c3:	50                                              	push   eax
105811c4:	51                                              	push   ecx
105811c5:	52                                              	push   edx
105811c6:	e8 75 c8 ff ff                                  	call   0x1057da40
105811cb:	83 c4 1c                                        	add    esp,0x1c
105811ce:	c3                                              	ret
105811cf:	cc                                              	int3
