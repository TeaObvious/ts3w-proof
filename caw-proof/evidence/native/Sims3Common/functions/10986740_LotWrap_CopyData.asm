# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986740 (LotWrap_CopyData)
Paired Ghidra pseudocode: 10986740_LotWrap_CopyData.c
Window: [0x10986740, 0x10986770) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986740: 8b 4c 24 04 85 c9 74 18 8b 44 24 08 85 c0 74 10
10986750: 8b 54 24 10 52 8b 54 24 10 52 50 e8 40 e8 70 ff
10986760: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986740 <.text+0x985740>:
10986740:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10986744:	85 c9                                           	test   ecx,ecx
10986746:	74 18                                           	je     0x10986760
10986748:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098674c:	85 c0                                           	test   eax,eax
1098674e:	74 10                                           	je     0x10986760
10986750:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10986754:	52                                              	push   edx
10986755:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10986759:	52                                              	push   edx
1098675a:	50                                              	push   eax
1098675b:	e8 40 e8 70 ff                                  	call   0x10094fa0
10986760:	c3                                              	ret
10986761:	cc                                              	int3
10986762:	cc                                              	int3
10986763:	cc                                              	int3
10986764:	cc                                              	int3
10986765:	cc                                              	int3
10986766:	cc                                              	int3
10986767:	cc                                              	int3
10986768:	cc                                              	int3
10986769:	cc                                              	int3
1098676a:	cc                                              	int3
1098676b:	cc                                              	int3
1098676c:	cc                                              	int3
1098676d:	cc                                              	int3
1098676e:	cc                                              	int3
1098676f:	cc                                              	int3
