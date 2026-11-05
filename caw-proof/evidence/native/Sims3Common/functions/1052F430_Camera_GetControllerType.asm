# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f430 (Camera_GetControllerType)
Paired Ghidra pseudocode: 1052F430_Camera_GetControllerType.c
Window: [0x1052f430, 0x1052f460) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f460
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f430: e8 fb d1 22 00 85 c0 74 12 8b c8 e8 40 86 40 00
1052f440: 85 c0 74 07 8b 80 90 00 00 00 c3 b8 01 00 00 00
1052f450: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052f430 <.text+0x52e430>:
1052f430:	e8 fb d1 22 00                                  	call   0x1075c630
1052f435:	85 c0                                           	test   eax,eax
1052f437:	74 12                                           	je     0x1052f44b
1052f439:	8b c8                                           	mov    ecx,eax
1052f43b:	e8 40 86 40 00                                  	call   0x10937a80
1052f440:	85 c0                                           	test   eax,eax
1052f442:	74 07                                           	je     0x1052f44b
1052f444:	8b 80 90 00 00 00                               	mov    eax,DWORD PTR [eax+0x90]
1052f44a:	c3                                              	ret
1052f44b:	b8 01 00 00 00                                  	mov    eax,0x1
1052f450:	c3                                              	ret
1052f451:	cc                                              	int3
1052f452:	cc                                              	int3
1052f453:	cc                                              	int3
1052f454:	cc                                              	int3
1052f455:	cc                                              	int3
1052f456:	cc                                              	int3
1052f457:	cc                                              	int3
1052f458:	cc                                              	int3
1052f459:	cc                                              	int3
1052f45a:	cc                                              	int3
1052f45b:	cc                                              	int3
1052f45c:	cc                                              	int3
1052f45d:	cc                                              	int3
1052f45e:	cc                                              	int3
1052f45f:	cc                                              	int3
