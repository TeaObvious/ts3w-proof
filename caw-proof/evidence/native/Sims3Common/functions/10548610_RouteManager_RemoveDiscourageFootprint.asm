# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548610 (RouteManager_RemoveDiscourageFootprint)
Paired Ghidra pseudocode: 10548610_RouteManager_RemoveDiscourageFootprint.c
Window: [0x10548610, 0x10548630) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548610: 8b 44 24 08 8b 4c 24 04 50 51 e8 e1 d2 ff ff 83
10548620: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548610 <.text+0x547610>:
10548610:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10548614:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10548618:	50                                              	push   eax
10548619:	51                                              	push   ecx
1054861a:	e8 e1 d2 ff ff                                  	call   0x10545900
1054861f:	83 c4 08                                        	add    esp,0x8
10548622:	c3                                              	ret
10548623:	cc                                              	int3
10548624:	cc                                              	int3
10548625:	cc                                              	int3
10548626:	cc                                              	int3
10548627:	cc                                              	int3
10548628:	cc                                              	int3
10548629:	cc                                              	int3
1054862a:	cc                                              	int3
1054862b:	cc                                              	int3
1054862c:	cc                                              	int3
1054862d:	cc                                              	int3
1054862e:	cc                                              	int3
1054862f:	cc                                              	int3
