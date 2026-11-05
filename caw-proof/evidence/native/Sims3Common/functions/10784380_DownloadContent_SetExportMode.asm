# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784380 (DownloadContent_SetExportMode)
Paired Ghidra pseudocode: 10784380_DownloadContent_SetExportMode.c
Window: [0x10784380, 0x107843a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x107843a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784380: e8 3b 01 ff ff 85 c0 74 0b 0f b7 4c 24 04 89 88
10784390: 70 05 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10784380 <.text+0x783380>:
10784380:	e8 3b 01 ff ff                                  	call   0x107744c0
10784385:	85 c0                                           	test   eax,eax
10784387:	74 0b                                           	je     0x10784394
10784389:	0f b7 4c 24 04                                  	movzx  ecx,WORD PTR [esp+0x4]
1078438e:	89 88 70 05 00 00                               	mov    DWORD PTR [eax+0x570],ecx
10784394:	c3                                              	ret
10784395:	cc                                              	int3
10784396:	cc                                              	int3
10784397:	cc                                              	int3
10784398:	cc                                              	int3
10784399:	cc                                              	int3
1078439a:	cc                                              	int3
1078439b:	cc                                              	int3
1078439c:	cc                                              	int3
1078439d:	cc                                              	int3
1078439e:	cc                                              	int3
1078439f:	cc                                              	int3
