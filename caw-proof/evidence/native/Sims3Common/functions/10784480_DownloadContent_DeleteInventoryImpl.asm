# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784480 (DownloadContent_DeleteInventoryImpl)
Paired Ghidra pseudocode: 10784480_DownloadContent_DeleteInventoryImpl.c
Window: [0x10784480, 0x107844a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x107844a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784480: e8 3b 00 ff ff 8b c8 e8 34 fe fe ff 8b 4c 24 08
10784490: 8b 54 24 04 51 52 8b c8 e8 33 b1 01 00 c3 cc cc

LINEAR DISASSEMBLY
10784480 <.text+0x783480>:
10784480:	e8 3b 00 ff ff                                  	call   0x107744c0
10784485:	8b c8                                           	mov    ecx,eax
10784487:	e8 34 fe fe ff                                  	call   0x107742c0
1078448c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10784490:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10784494:	51                                              	push   ecx
10784495:	52                                              	push   edx
10784496:	8b c8                                           	mov    ecx,eax
10784498:	e8 33 b1 01 00                                  	call   0x1079f5d0
1078449d:	c3                                              	ret
1078449e:	cc                                              	int3
1078449f:	cc                                              	int3
