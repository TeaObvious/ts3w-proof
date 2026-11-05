# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105615d0 (Slots_GetParentIdImpl)
Paired Ghidra pseudocode: 105615D0_Slots_GetParentIdImpl.c
Window: [0x105615d0, 0x105615f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105615f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105615d0: 8b 44 24 08 8b 4c 24 04 50 51 e8 21 fd ff ff 83
105615e0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105615d0 <.text+0x5605d0>:
105615d0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105615d4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105615d8:	50                                              	push   eax
105615d9:	51                                              	push   ecx
105615da:	e8 21 fd ff ff                                  	call   0x10561300
105615df:	83 c4 08                                        	add    esp,0x8
105615e2:	c3                                              	ret
105615e3:	cc                                              	int3
105615e4:	cc                                              	int3
105615e5:	cc                                              	int3
105615e6:	cc                                              	int3
105615e7:	cc                                              	int3
105615e8:	cc                                              	int3
105615e9:	cc                                              	int3
105615ea:	cc                                              	int3
105615eb:	cc                                              	int3
105615ec:	cc                                              	int3
105615ed:	cc                                              	int3
105615ee:	cc                                              	int3
105615ef:	cc                                              	int3
