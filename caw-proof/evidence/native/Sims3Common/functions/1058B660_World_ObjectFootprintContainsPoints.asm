# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1058b660 (World_ObjectFootprintContainsPoints)
Paired Ghidra pseudocode: 1058B660_World_ObjectFootprintContainsPoints.c
Window: [0x1058b660, 0x1058b690) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1058b690
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1058b660: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
1058b670: 0c 51 8b 4c 24 0c 52 50 51 e8 92 f5 ff ff 83 c4
1058b680: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1058b660 <.text+0x58a660>:
1058b660:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1058b664:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1058b668:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1058b66c:	50                                              	push   eax
1058b66d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1058b671:	51                                              	push   ecx
1058b672:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1058b676:	52                                              	push   edx
1058b677:	50                                              	push   eax
1058b678:	51                                              	push   ecx
1058b679:	e8 92 f5 ff ff                                  	call   0x1058ac10
1058b67e:	83 c4 14                                        	add    esp,0x14
1058b681:	c3                                              	ret
1058b682:	cc                                              	int3
1058b683:	cc                                              	int3
1058b684:	cc                                              	int3
1058b685:	cc                                              	int3
1058b686:	cc                                              	int3
1058b687:	cc                                              	int3
1058b688:	cc                                              	int3
1058b689:	cc                                              	int3
1058b68a:	cc                                              	int3
1058b68b:	cc                                              	int3
1058b68c:	cc                                              	int3
1058b68d:	cc                                              	int3
1058b68e:	cc                                              	int3
1058b68f:	cc                                              	int3
