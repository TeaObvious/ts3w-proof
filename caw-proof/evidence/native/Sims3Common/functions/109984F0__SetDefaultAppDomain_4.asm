# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109984f0 (_SetDefaultAppDomain@4)
Paired Ghidra pseudocode: 109984F0__SetDefaultAppDomain_4.c
Window: [0x109984f0, 0x10998530) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109984f0: 8b 44 24 04 a3 60 f7 c8 10 c2 04 00 cc cc cc cc
10998500: 83 7c 24 0c 04 75 1a 8b 44 24 08 8b 48 08 8b 50
10998510: 04 51 8b 08 52 e8 76 94 8a ff 84 c0 75 03 33 c0
10998520: c3 b8 01 00 00 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109984f0 <.text+0x9974f0>:
109984f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109984f4:	a3 60 f7 c8 10                                  	mov    ds:0x10c8f760,eax
109984f9:	c2 04 00                                        	ret    0x4
109984fc:	cc                                              	int3
109984fd:	cc                                              	int3
109984fe:	cc                                              	int3
109984ff:	cc                                              	int3
10998500:	83 7c 24 0c 04                                  	cmp    DWORD PTR [esp+0xc],0x4
10998505:	75 1a                                           	jne    0x10998521
10998507:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1099850b:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
1099850e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10998511:	51                                              	push   ecx
10998512:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10998514:	52                                              	push   edx
10998515:	e8 76 94 8a ff                                  	call   0x10241990
1099851a:	84 c0                                           	test   al,al
1099851c:	75 03                                           	jne    0x10998521
1099851e:	33 c0                                           	xor    eax,eax
10998520:	c3                                              	ret
10998521:	b8 01 00 00 00                                  	mov    eax,0x1
10998526:	c3                                              	ret
10998527:	cc                                              	int3
10998528:	cc                                              	int3
10998529:	cc                                              	int3
1099852a:	cc                                              	int3
1099852b:	cc                                              	int3
1099852c:	cc                                              	int3
1099852d:	cc                                              	int3
1099852e:	cc                                              	int3
1099852f:	cc                                              	int3
