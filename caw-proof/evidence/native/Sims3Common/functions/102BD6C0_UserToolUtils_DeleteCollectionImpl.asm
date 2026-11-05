# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bd6c0 (UserToolUtils_DeleteCollectionImpl)
Paired Ghidra pseudocode: 102BD6C0_UserToolUtils_DeleteCollectionImpl.c
Window: [0x102bd6c0, 0x102bd6e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bd6e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bd6c0: 8b 0d 28 d3 c7 10 85 c9 74 0f 8b 44 24 08 8b 54
102bd6d0: 24 04 50 52 e8 97 63 31 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
102bd6c0 <.text+0x2bc6c0>:
102bd6c0:	8b 0d 28 d3 c7 10                               	mov    ecx,DWORD PTR ds:0x10c7d328
102bd6c6:	85 c9                                           	test   ecx,ecx
102bd6c8:	74 0f                                           	je     0x102bd6d9
102bd6ca:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
102bd6ce:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
102bd6d2:	50                                              	push   eax
102bd6d3:	52                                              	push   edx
102bd6d4:	e8 97 63 31 00                                  	call   0x105d3a70
102bd6d9:	c3                                              	ret
102bd6da:	cc                                              	int3
102bd6db:	cc                                              	int3
102bd6dc:	cc                                              	int3
102bd6dd:	cc                                              	int3
102bd6de:	cc                                              	int3
102bd6df:	cc                                              	int3
