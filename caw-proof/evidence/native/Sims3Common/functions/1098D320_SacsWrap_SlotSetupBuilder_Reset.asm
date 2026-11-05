# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d320 (SacsWrap_SlotSetupBuilder_Reset)
Paired Ghidra pseudocode: 1098D320_SacsWrap_SlotSetupBuilder_Reset.c
Window: [0x1098d320, 0x1098d350) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d350
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d320: 56 8b 74 24 08 85 f6 74 18 8b 0e e8 50 f8 9d ff
1098d330: 8b 06 c7 00 00 00 00 00 8b 4e 04 c7 01 00 00 00
1098d340: 00 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d320 <.text+0x98c320>:
1098d320:	56                                              	push   esi
1098d321:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1098d325:	85 f6                                           	test   esi,esi
1098d327:	74 18                                           	je     0x1098d341
1098d329:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
1098d32b:	e8 50 f8 9d ff                                  	call   0x1036cb80
1098d330:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098d332:	c7 00 00 00 00 00                               	mov    DWORD PTR [eax],0x0
1098d338:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
1098d33b:	c7 01 00 00 00 00                               	mov    DWORD PTR [ecx],0x0
1098d341:	5e                                              	pop    esi
1098d342:	c3                                              	ret
1098d343:	cc                                              	int3
1098d344:	cc                                              	int3
1098d345:	cc                                              	int3
1098d346:	cc                                              	int3
1098d347:	cc                                              	int3
1098d348:	cc                                              	int3
1098d349:	cc                                              	int3
1098d34a:	cc                                              	int3
1098d34b:	cc                                              	int3
1098d34c:	cc                                              	int3
1098d34d:	cc                                              	int3
1098d34e:	cc                                              	int3
1098d34f:	cc                                              	int3
