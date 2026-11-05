# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b720 (World_GetEmptyLotWorth)
Paired Ghidra pseudocode: 1057B720_World_GetEmptyLotWorth.c
Window: [0x1057b720, 0x1057b750) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b750
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b720: 8b 0d c4 00 c7 10 85 c9 74 1c 8b 44 24 08 8b 54
1057b730: 24 04 6a 00 50 52 e8 d5 b8 cb ff 85 c0 74 07 8b
1057b740: c8 e9 9a d9 af ff 33 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b720 <.text+0x57a720>:
1057b720:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057b726:	85 c9                                           	test   ecx,ecx
1057b728:	74 1c                                           	je     0x1057b746
1057b72a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057b72e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b732:	6a 00                                           	push   0x0
1057b734:	50                                              	push   eax
1057b735:	52                                              	push   edx
1057b736:	e8 d5 b8 cb ff                                  	call   0x10237010
1057b73b:	85 c0                                           	test   eax,eax
1057b73d:	74 07                                           	je     0x1057b746
1057b73f:	8b c8                                           	mov    ecx,eax
1057b741:	e9 9a d9 af ff                                  	jmp    0x100790e0
1057b746:	33 c0                                           	xor    eax,eax
1057b748:	c3                                              	ret
1057b749:	cc                                              	int3
1057b74a:	cc                                              	int3
1057b74b:	cc                                              	int3
1057b74c:	cc                                              	int3
1057b74d:	cc                                              	int3
1057b74e:	cc                                              	int3
1057b74f:	cc                                              	int3
