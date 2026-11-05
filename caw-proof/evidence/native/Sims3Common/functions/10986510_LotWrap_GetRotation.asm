# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986510 (LotWrap_GetRotation)
Paired Ghidra pseudocode: 10986510_LotWrap_GetRotation.c
Window: [0x10986510, 0x10986530) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986510: 8b 4c 24 04 85 c9 74 07 8b 01 8b 50 68 ff e2 d9
10986520: ee c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986510 <.text+0x985510>:
10986510:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10986514:	85 c9                                           	test   ecx,ecx
10986516:	74 07                                           	je     0x1098651f
10986518:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098651a:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
1098651d:	ff e2                                           	jmp    edx
1098651f:	d9 ee                                           	fldz
10986521:	c3                                              	ret
10986522:	cc                                              	int3
10986523:	cc                                              	int3
10986524:	cc                                              	int3
10986525:	cc                                              	int3
10986526:	cc                                              	int3
10986527:	cc                                              	int3
10986528:	cc                                              	int3
10986529:	cc                                              	int3
1098652a:	cc                                              	int3
1098652b:	cc                                              	int3
1098652c:	cc                                              	int3
1098652d:	cc                                              	int3
1098652e:	cc                                              	int3
1098652f:	cc                                              	int3
