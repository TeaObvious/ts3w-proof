# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b750 (World_GetObjectScreenCoverageData)
Paired Ghidra pseudocode: 1057B750_World_GetObjectScreenCoverageData.c
Window: [0x1057b750, 0x1057b770) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b750: 51 8d 04 24 50 e8 56 d4 e1 ff 8b c8 e8 ef cc e1
1057b760: ff 8b 04 24 59 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b750 <.text+0x57a750>:
1057b750:	51                                              	push   ecx
1057b751:	8d 04 24                                        	lea    eax,[esp]
1057b754:	50                                              	push   eax
1057b755:	e8 56 d4 e1 ff                                  	call   0x10398bb0
1057b75a:	8b c8                                           	mov    ecx,eax
1057b75c:	e8 ef cc e1 ff                                  	call   0x10398450
1057b761:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
1057b764:	59                                              	pop    ecx
1057b765:	c3                                              	ret
1057b766:	cc                                              	int3
1057b767:	cc                                              	int3
1057b768:	cc                                              	int3
1057b769:	cc                                              	int3
1057b76a:	cc                                              	int3
1057b76b:	cc                                              	int3
1057b76c:	cc                                              	int3
1057b76d:	cc                                              	int3
1057b76e:	cc                                              	int3
1057b76f:	cc                                              	int3
