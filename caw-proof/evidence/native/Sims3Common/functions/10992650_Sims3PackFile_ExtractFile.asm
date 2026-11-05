# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10992650 (Sims3PackFile_ExtractFile)
Paired Ghidra pseudocode: 10992650_Sims3PackFile_ExtractFile.c
Window: [0x10992650, 0x10992670) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10992670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10992650: 8b 44 24 0c 8b 4c 24 08 50 51 8b 4c 24 0c e8 4d
10992660: 2a e2 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10992650 <.text+0x991650>:
10992650:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10992654:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10992658:	50                                              	push   eax
10992659:	51                                              	push   ecx
1099265a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1099265e:	e8 4d 2a e2 ff                                  	call   0x107b50b0
10992663:	c3                                              	ret
10992664:	cc                                              	int3
10992665:	cc                                              	int3
10992666:	cc                                              	int3
10992667:	cc                                              	int3
10992668:	cc                                              	int3
10992669:	cc                                              	int3
1099266a:	cc                                              	int3
1099266b:	cc                                              	int3
1099266c:	cc                                              	int3
1099266d:	cc                                              	int3
1099266e:	cc                                              	int3
1099266f:	cc                                              	int3
