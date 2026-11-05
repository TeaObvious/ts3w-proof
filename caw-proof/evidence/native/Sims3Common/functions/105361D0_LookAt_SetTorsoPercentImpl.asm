# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105361d0 (LookAt_SetTorsoPercentImpl)
Paired Ghidra pseudocode: 105361D0_LookAt_SetTorsoPercentImpl.c
Window: [0x105361d0, 0x105361f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105361f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105361d0: d9 44 24 08 8b 44 24 04 51 d9 1c 24 50 e8 be fa
105361e0: ff ff 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105361d0 <.text+0x5351d0>:
105361d0:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
105361d4:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
105361d8:	51                                              	push   ecx
105361d9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105361dc:	50                                              	push   eax
105361dd:	e8 be fa ff ff                                  	call   0x10535ca0
105361e2:	83 c4 08                                        	add    esp,0x8
105361e5:	c3                                              	ret
105361e6:	cc                                              	int3
105361e7:	cc                                              	int3
105361e8:	cc                                              	int3
105361e9:	cc                                              	int3
105361ea:	cc                                              	int3
105361eb:	cc                                              	int3
105361ec:	cc                                              	int3
105361ed:	cc                                              	int3
105361ee:	cc                                              	int3
105361ef:	cc                                              	int3
