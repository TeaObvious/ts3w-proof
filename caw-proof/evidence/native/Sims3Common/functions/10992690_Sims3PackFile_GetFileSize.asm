# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10992690 (Sims3PackFile_GetFileSize)
Paired Ghidra pseudocode: 10992690_Sims3PackFile_GetFileSize.c
Window: [0x10992690, 0x109926b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109926b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10992690: 8b 44 24 08 8b 4c 24 04 50 e8 c2 1b e2 ff 85 c0
109926a0: 74 04 8b 40 20 c3 33 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10992690 <.text+0x991690>:
10992690:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10992694:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10992698:	50                                              	push   eax
10992699:	e8 c2 1b e2 ff                                  	call   0x107b4260
1099269e:	85 c0                                           	test   eax,eax
109926a0:	74 04                                           	je     0x109926a6
109926a2:	8b 40 20                                        	mov    eax,DWORD PTR [eax+0x20]
109926a5:	c3                                              	ret
109926a6:	33 c0                                           	xor    eax,eax
109926a8:	c3                                              	ret
109926a9:	cc                                              	int3
109926aa:	cc                                              	int3
109926ab:	cc                                              	int3
109926ac:	cc                                              	int3
109926ad:	cc                                              	int3
109926ae:	cc                                              	int3
109926af:	cc                                              	int3
