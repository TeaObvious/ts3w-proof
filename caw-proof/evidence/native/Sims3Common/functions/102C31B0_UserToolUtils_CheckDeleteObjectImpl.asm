# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c31b0 (UserToolUtils_CheckDeleteObjectImpl)
Paired Ghidra pseudocode: 102C31B0_UserToolUtils_CheckDeleteObjectImpl.c
Window: [0x102c31b0, 0x102c31d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c31d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c31b0: 8b 44 24 08 8b 4c 24 04 50 51 e8 c1 fd ff ff 83
102c31c0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c31b0 <.text+0x2c21b0>:
102c31b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
102c31b4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
102c31b8:	50                                              	push   eax
102c31b9:	51                                              	push   ecx
102c31ba:	e8 c1 fd ff ff                                  	call   0x102c2f80
102c31bf:	83 c4 08                                        	add    esp,0x8
102c31c2:	c3                                              	ret
102c31c3:	cc                                              	int3
102c31c4:	cc                                              	int3
102c31c5:	cc                                              	int3
102c31c6:	cc                                              	int3
102c31c7:	cc                                              	int3
102c31c8:	cc                                              	int3
102c31c9:	cc                                              	int3
102c31ca:	cc                                              	int3
102c31cb:	cc                                              	int3
102c31cc:	cc                                              	int3
102c31cd:	cc                                              	int3
102c31ce:	cc                                              	int3
102c31cf:	cc                                              	int3
