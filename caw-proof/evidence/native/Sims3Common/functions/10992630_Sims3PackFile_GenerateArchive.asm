# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10992630 (Sims3PackFile_GenerateArchive)
Paired Ghidra pseudocode: 10992630_Sims3PackFile_GenerateArchive.c
Window: [0x10992630, 0x10992640) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10992640
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10992630: 8b 44 24 08 8b 4c 24 04 50 e8 62 55 e2 ff c3 cc

LINEAR DISASSEMBLY
10992630 <.text+0x991630>:
10992630:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10992634:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10992638:	50                                              	push   eax
10992639:	e8 62 55 e2 ff                                  	call   0x107b7ba0
1099263e:	c3                                              	ret
1099263f:	cc                                              	int3
