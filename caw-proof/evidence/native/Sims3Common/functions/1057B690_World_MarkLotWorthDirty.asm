# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b690 (World_MarkLotWorthDirty)
Paired Ghidra pseudocode: 1057B690_World_MarkLotWorthDirty.c
Window: [0x1057b690, 0x1057b6c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b6c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b690: 8b 0d c4 00 c7 10 85 c9 74 1c 8b 44 24 08 8b 54
1057b6a0: 24 04 6a 00 50 52 e8 65 b9 cb ff 85 c0 74 07 8b
1057b6b0: c8 e9 aa a6 af ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b690 <.text+0x57a690>:
1057b690:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057b696:	85 c9                                           	test   ecx,ecx
1057b698:	74 1c                                           	je     0x1057b6b6
1057b69a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057b69e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b6a2:	6a 00                                           	push   0x0
1057b6a4:	50                                              	push   eax
1057b6a5:	52                                              	push   edx
1057b6a6:	e8 65 b9 cb ff                                  	call   0x10237010
1057b6ab:	85 c0                                           	test   eax,eax
1057b6ad:	74 07                                           	je     0x1057b6b6
1057b6af:	8b c8                                           	mov    ecx,eax
1057b6b1:	e9 aa a6 af ff                                  	jmp    0x10075d60
1057b6b6:	c3                                              	ret
1057b6b7:	cc                                              	int3
1057b6b8:	cc                                              	int3
1057b6b9:	cc                                              	int3
1057b6ba:	cc                                              	int3
1057b6bb:	cc                                              	int3
1057b6bc:	cc                                              	int3
1057b6bd:	cc                                              	int3
1057b6be:	cc                                              	int3
1057b6bf:	cc                                              	int3
