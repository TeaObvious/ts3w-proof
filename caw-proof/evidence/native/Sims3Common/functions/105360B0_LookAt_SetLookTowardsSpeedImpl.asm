# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105360b0 (LookAt_SetLookTowardsSpeedImpl)
Paired Ghidra pseudocode: 105360B0_LookAt_SetLookTowardsSpeedImpl.c
Window: [0x105360b0, 0x105360d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105360d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105360b0: d9 44 24 08 8b 44 24 04 51 d9 1c 24 50 e8 fe f5
105360c0: ff ff 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105360b0 <.text+0x5350b0>:
105360b0:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
105360b4:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
105360b8:	51                                              	push   ecx
105360b9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105360bc:	50                                              	push   eax
105360bd:	e8 fe f5 ff ff                                  	call   0x105356c0
105360c2:	83 c4 08                                        	add    esp,0x8
105360c5:	c3                                              	ret
105360c6:	cc                                              	int3
105360c7:	cc                                              	int3
105360c8:	cc                                              	int3
105360c9:	cc                                              	int3
105360ca:	cc                                              	int3
105360cb:	cc                                              	int3
105360cc:	cc                                              	int3
105360cd:	cc                                              	int3
105360ce:	cc                                              	int3
105360cf:	cc                                              	int3
