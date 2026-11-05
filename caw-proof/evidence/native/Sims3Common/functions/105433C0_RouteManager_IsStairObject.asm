# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105433c0 (RouteManager_IsStairObject)
Paired Ghidra pseudocode: 105433C0_RouteManager_IsStairObject.c
Window: [0x105433c0, 0x105433e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105433e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105433c0: 8b 44 24 08 8b 4c 24 04 50 51 e8 11 ee ff ff 83
105433d0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105433c0 <.text+0x5423c0>:
105433c0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105433c4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105433c8:	50                                              	push   eax
105433c9:	51                                              	push   ecx
105433ca:	e8 11 ee ff ff                                  	call   0x105421e0
105433cf:	83 c4 08                                        	add    esp,0x8
105433d2:	c3                                              	ret
105433d3:	cc                                              	int3
105433d4:	cc                                              	int3
105433d5:	cc                                              	int3
105433d6:	cc                                              	int3
105433d7:	cc                                              	int3
105433d8:	cc                                              	int3
105433d9:	cc                                              	int3
105433da:	cc                                              	int3
105433db:	cc                                              	int3
105433dc:	cc                                              	int3
105433dd:	cc                                              	int3
105433de:	cc                                              	int3
105433df:	cc                                              	int3
