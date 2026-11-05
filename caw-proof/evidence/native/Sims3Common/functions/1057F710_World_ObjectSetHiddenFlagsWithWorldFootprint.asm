# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057f710 (World_ObjectSetHiddenFlagsWithWorldFootprint)
Paired Ghidra pseudocode: 1057F710_World_ObjectSetHiddenFlagsWithWorldFootprint.c
Window: [0x1057f710, 0x1057f730) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057f730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057f710: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 6a 01 50 51
1057f720: 52 e8 6a ff ff ff 83 c4 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057f710 <.text+0x57e710>:
1057f710:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057f714:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057f718:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057f71c:	6a 01                                           	push   0x1
1057f71e:	50                                              	push   eax
1057f71f:	51                                              	push   ecx
1057f720:	52                                              	push   edx
1057f721:	e8 6a ff ff ff                                  	call   0x1057f690
1057f726:	83 c4 10                                        	add    esp,0x10
1057f729:	c3                                              	ret
1057f72a:	cc                                              	int3
1057f72b:	cc                                              	int3
1057f72c:	cc                                              	int3
1057f72d:	cc                                              	int3
1057f72e:	cc                                              	int3
1057f72f:	cc                                              	int3
