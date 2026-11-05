# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053b670 (Random_NextDoubleImpl)
Paired Ghidra pseudocode: 1053B670_Random_NextDoubleImpl.c
Window: [0x1053b670, 0x1053b6b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053b6b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053b670: e8 ab fa 01 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
1053b680: d0 8b 10 8b c8 8b 42 28 ff e0 cc cc cc cc cc cc
1053b690: 8b 44 24 04 c7 00 90 f5 c2 10 c2 04 00 cc cc cc
1053b6a0: b8 50 8e b0 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053b670 <.text+0x53a670>:
1053b670:	e8 ab fa 01 00                                  	call   0x1055b120
1053b675:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053b677:	8b c8                                           	mov    ecx,eax
1053b679:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
1053b67f:	ff d0                                           	call   eax
1053b681:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053b683:	8b c8                                           	mov    ecx,eax
1053b685:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
1053b688:	ff e0                                           	jmp    eax
1053b68a:	cc                                              	int3
1053b68b:	cc                                              	int3
1053b68c:	cc                                              	int3
1053b68d:	cc                                              	int3
1053b68e:	cc                                              	int3
1053b68f:	cc                                              	int3
1053b690:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1053b694:	c7 00 90 f5 c2 10                               	mov    DWORD PTR [eax],0x10c2f590
1053b69a:	c2 04 00                                        	ret    0x4
1053b69d:	cc                                              	int3
1053b69e:	cc                                              	int3
1053b69f:	cc                                              	int3
1053b6a0:	b8 50 8e b0 10                                  	mov    eax,0x10b08e50
1053b6a5:	c3                                              	ret
1053b6a6:	cc                                              	int3
1053b6a7:	cc                                              	int3
1053b6a8:	cc                                              	int3
1053b6a9:	cc                                              	int3
1053b6aa:	cc                                              	int3
1053b6ab:	cc                                              	int3
1053b6ac:	cc                                              	int3
1053b6ad:	cc                                              	int3
1053b6ae:	cc                                              	int3
1053b6af:	cc                                              	int3
