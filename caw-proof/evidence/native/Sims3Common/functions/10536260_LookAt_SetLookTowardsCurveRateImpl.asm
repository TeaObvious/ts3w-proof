# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536260 (LookAt_SetLookTowardsCurveRateImpl)
Paired Ghidra pseudocode: 10536260_LookAt_SetLookTowardsCurveRateImpl.c
Window: [0x10536260, 0x10536280) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536280
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536260: d9 44 24 08 8b 44 24 04 51 d9 1c 24 50 e8 ce fc
10536270: ff ff 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536260 <.text+0x535260>:
10536260:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10536264:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10536268:	51                                              	push   ecx
10536269:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053626c:	50                                              	push   eax
1053626d:	e8 ce fc ff ff                                  	call   0x10535f40
10536272:	83 c4 08                                        	add    esp,0x8
10536275:	c3                                              	ret
10536276:	cc                                              	int3
10536277:	cc                                              	int3
10536278:	cc                                              	int3
10536279:	cc                                              	int3
1053627a:	cc                                              	int3
1053627b:	cc                                              	int3
1053627c:	cc                                              	int3
1053627d:	cc                                              	int3
1053627e:	cc                                              	int3
1053627f:	cc                                              	int3
