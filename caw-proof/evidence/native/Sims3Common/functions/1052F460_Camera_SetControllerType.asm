# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f460 (Camera_SetControllerType)
Paired Ghidra pseudocode: 1052F460_Camera_SetControllerType.c
Window: [0x1052f460, 0x1052f490) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f460: e8 cb d1 22 00 85 c0 74 19 8b c8 e8 10 86 40 00
1052f470: 85 c0 74 0e 8b 4c 24 04 6a 00 51 8b c8 e8 2e e5
1052f480: 22 00 b0 01 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052f460 <.text+0x52e460>:
1052f460:	e8 cb d1 22 00                                  	call   0x1075c630
1052f465:	85 c0                                           	test   eax,eax
1052f467:	74 19                                           	je     0x1052f482
1052f469:	8b c8                                           	mov    ecx,eax
1052f46b:	e8 10 86 40 00                                  	call   0x10937a80
1052f470:	85 c0                                           	test   eax,eax
1052f472:	74 0e                                           	je     0x1052f482
1052f474:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1052f478:	6a 00                                           	push   0x0
1052f47a:	51                                              	push   ecx
1052f47b:	8b c8                                           	mov    ecx,eax
1052f47d:	e8 2e e5 22 00                                  	call   0x1075d9b0
1052f482:	b0 01                                           	mov    al,0x1
1052f484:	c3                                              	ret
1052f485:	cc                                              	int3
1052f486:	cc                                              	int3
1052f487:	cc                                              	int3
1052f488:	cc                                              	int3
1052f489:	cc                                              	int3
1052f48a:	cc                                              	int3
1052f48b:	cc                                              	int3
1052f48c:	cc                                              	int3
1052f48d:	cc                                              	int3
1052f48e:	cc                                              	int3
1052f48f:	cc                                              	int3
