# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784360 (DownloadContent_SetSimSaveMode)
Paired Ghidra pseudocode: 10784360_DownloadContent_SetSimSaveMode.c
Window: [0x10784360, 0x10784380) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784380
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784360: e8 5b 01 ff ff 8b 88 64 06 00 00 85 c9 74 0a 8b
10784370: 44 24 04 50 e8 a7 65 03 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10784360 <.text+0x783360>:
10784360:	e8 5b 01 ff ff                                  	call   0x107744c0
10784365:	8b 88 64 06 00 00                               	mov    ecx,DWORD PTR [eax+0x664]
1078436b:	85 c9                                           	test   ecx,ecx
1078436d:	74 0a                                           	je     0x10784379
1078436f:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10784373:	50                                              	push   eax
10784374:	e8 a7 65 03 00                                  	call   0x107ba920
10784379:	c3                                              	ret
1078437a:	cc                                              	int3
1078437b:	cc                                              	int3
1078437c:	cc                                              	int3
1078437d:	cc                                              	int3
1078437e:	cc                                              	int3
1078437f:	cc                                              	int3
