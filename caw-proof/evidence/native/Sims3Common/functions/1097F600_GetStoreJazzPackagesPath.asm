# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f600 (GetStoreJazzPackagesPath)
Paired Ghidra pseudocode: 1097F600_GetStoreJazzPackagesPath.c
Window: [0x1097f600, 0x1097f620) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f600: b9 c0 26 c7 10 e8 c6 f6 a0 ff 85 c0 75 01 c3 8b
1097f610: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f600 <.text+0x97e600>:
1097f600:	b9 c0 26 c7 10                                  	mov    ecx,0x10c726c0
1097f605:	e8 c6 f6 a0 ff                                  	call   0x1038ecd0
1097f60a:	85 c0                                           	test   eax,eax
1097f60c:	75 01                                           	jne    0x1097f60f
1097f60e:	c3                                              	ret
1097f60f:	8b 00                                           	mov    eax,DWORD PTR [eax]
1097f611:	c3                                              	ret
1097f612:	cc                                              	int3
1097f613:	cc                                              	int3
1097f614:	cc                                              	int3
1097f615:	cc                                              	int3
1097f616:	cc                                              	int3
1097f617:	cc                                              	int3
1097f618:	cc                                              	int3
1097f619:	cc                                              	int3
1097f61a:	cc                                              	int3
1097f61b:	cc                                              	int3
1097f61c:	cc                                              	int3
1097f61d:	cc                                              	int3
1097f61e:	cc                                              	int3
1097f61f:	cc                                              	int3
