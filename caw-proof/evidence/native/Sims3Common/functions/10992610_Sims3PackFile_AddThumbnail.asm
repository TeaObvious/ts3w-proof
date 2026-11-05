# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10992610 (Sims3PackFile_AddThumbnail)
Paired Ghidra pseudocode: 10992610_Sims3PackFile_AddThumbnail.c
Window: [0x10992610, 0x10992630) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10992630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10992610: 8b 44 24 08 8b 4c 24 04 6a 01 6a 00 50 e8 4e 67
10992620: e2 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10992610 <.text+0x991610>:
10992610:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10992614:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10992618:	6a 01                                           	push   0x1
1099261a:	6a 00                                           	push   0x0
1099261c:	50                                              	push   eax
1099261d:	e8 4e 67 e2 ff                                  	call   0x107b8d70
10992622:	c3                                              	ret
10992623:	cc                                              	int3
10992624:	cc                                              	int3
10992625:	cc                                              	int3
10992626:	cc                                              	int3
10992627:	cc                                              	int3
10992628:	cc                                              	int3
10992629:	cc                                              	int3
1099262a:	cc                                              	int3
1099262b:	cc                                              	int3
1099262c:	cc                                              	int3
1099262d:	cc                                              	int3
1099262e:	cc                                              	int3
1099262f:	cc                                              	int3
