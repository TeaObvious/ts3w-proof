# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105361a0 (LookAt_SetTorsoThresholdImpl)
Paired Ghidra pseudocode: 105361A0_LookAt_SetTorsoThresholdImpl.c
Window: [0x105361a0, 0x105361c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105361c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105361a0: d9 44 24 08 8b 44 24 04 51 d9 1c 24 50 e8 0e fa
105361b0: ff ff 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105361a0 <.text+0x5351a0>:
105361a0:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
105361a4:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
105361a8:	51                                              	push   ecx
105361a9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105361ac:	50                                              	push   eax
105361ad:	e8 0e fa ff ff                                  	call   0x10535bc0
105361b2:	83 c4 08                                        	add    esp,0x8
105361b5:	c3                                              	ret
105361b6:	cc                                              	int3
105361b7:	cc                                              	int3
105361b8:	cc                                              	int3
105361b9:	cc                                              	int3
105361ba:	cc                                              	int3
105361bb:	cc                                              	int3
105361bc:	cc                                              	int3
105361bd:	cc                                              	int3
105361be:	cc                                              	int3
105361bf:	cc                                              	int3
