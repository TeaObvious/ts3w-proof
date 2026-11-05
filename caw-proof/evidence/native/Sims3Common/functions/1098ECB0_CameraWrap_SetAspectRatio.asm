# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ecb0 (CameraWrap_SetAspectRatio)
Paired Ghidra pseudocode: 1098ECB0_CameraWrap_SetAspectRatio.c
Window: [0x1098ecb0, 0x1098ecd0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ecd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ecb0: d9 44 24 08 51 8b 4c 24 08 d9 1c 24 e8 5f 4b dc
1098ecc0: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ecb0 <.text+0x98dcb0>:
1098ecb0:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1098ecb4:	51                                              	push   ecx
1098ecb5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098ecb9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098ecbc:	e8 5f 4b dc ff                                  	call   0x10753820
1098ecc1:	c3                                              	ret
1098ecc2:	cc                                              	int3
1098ecc3:	cc                                              	int3
1098ecc4:	cc                                              	int3
1098ecc5:	cc                                              	int3
1098ecc6:	cc                                              	int3
1098ecc7:	cc                                              	int3
1098ecc8:	cc                                              	int3
1098ecc9:	cc                                              	int3
1098ecca:	cc                                              	int3
1098eccb:	cc                                              	int3
1098eccc:	cc                                              	int3
1098eccd:	cc                                              	int3
1098ecce:	cc                                              	int3
1098eccf:	cc                                              	int3
