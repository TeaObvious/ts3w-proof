# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b8d0 (World_LotSetDetailPriority)
Paired Ghidra pseudocode: 1057B8D0_World_LotSetDetailPriority.c
Window: [0x1057b8d0, 0x1057b900) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b900
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b8d0: 8b 0d c4 00 c7 10 85 c9 74 21 8b 44 24 08 8b 54
1057b8e0: 24 04 6a 00 50 52 e8 25 b7 cb ff 85 c0 74 0c 8b
1057b8f0: 4c 24 0c 51 8b c8 e8 85 98 af ff c3 cc cc cc cc

LINEAR DISASSEMBLY
1057b8d0 <.text+0x57a8d0>:
1057b8d0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057b8d6:	85 c9                                           	test   ecx,ecx
1057b8d8:	74 21                                           	je     0x1057b8fb
1057b8da:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057b8de:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b8e2:	6a 00                                           	push   0x0
1057b8e4:	50                                              	push   eax
1057b8e5:	52                                              	push   edx
1057b8e6:	e8 25 b7 cb ff                                  	call   0x10237010
1057b8eb:	85 c0                                           	test   eax,eax
1057b8ed:	74 0c                                           	je     0x1057b8fb
1057b8ef:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057b8f3:	51                                              	push   ecx
1057b8f4:	8b c8                                           	mov    ecx,eax
1057b8f6:	e8 85 98 af ff                                  	call   0x10075180
1057b8fb:	c3                                              	ret
1057b8fc:	cc                                              	int3
1057b8fd:	cc                                              	int3
1057b8fe:	cc                                              	int3
1057b8ff:	cc                                              	int3
