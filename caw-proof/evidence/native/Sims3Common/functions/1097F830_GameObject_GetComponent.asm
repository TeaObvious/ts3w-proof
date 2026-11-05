# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f830 (GameObject_GetComponent)
Paired Ghidra pseudocode: 1097F830_GameObject_GetComponent.c
Window: [0x1097f830, 0x1097f860) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f830: 56 33 f6 e8 68 a9 da ff 85 c0 74 0e 8b 4c 24 0c
1097f840: 51 8b c8 e8 18 a9 da ff 8b f0 8b 4c 24 08 56 e8
1097f850: 4c 75 da ff 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f830 <.text+0x97e830>:
1097f830:	56                                              	push   esi
1097f831:	33 f6                                           	xor    esi,esi
1097f833:	e8 68 a9 da ff                                  	call   0x1072a1a0
1097f838:	85 c0                                           	test   eax,eax
1097f83a:	74 0e                                           	je     0x1097f84a
1097f83c:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1097f840:	51                                              	push   ecx
1097f841:	8b c8                                           	mov    ecx,eax
1097f843:	e8 18 a9 da ff                                  	call   0x1072a160
1097f848:	8b f0                                           	mov    esi,eax
1097f84a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1097f84e:	56                                              	push   esi
1097f84f:	e8 4c 75 da ff                                  	call   0x10726da0
1097f854:	5e                                              	pop    esi
1097f855:	c3                                              	ret
1097f856:	cc                                              	int3
1097f857:	cc                                              	int3
1097f858:	cc                                              	int3
1097f859:	cc                                              	int3
1097f85a:	cc                                              	int3
1097f85b:	cc                                              	int3
1097f85c:	cc                                              	int3
1097f85d:	cc                                              	int3
1097f85e:	cc                                              	int3
1097f85f:	cc                                              	int3
