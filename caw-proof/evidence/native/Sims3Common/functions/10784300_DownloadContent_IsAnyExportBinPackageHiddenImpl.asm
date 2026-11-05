# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784300 (DownloadContent_IsAnyExportBinPackageHiddenImpl)
Paired Ghidra pseudocode: 10784300_DownloadContent_IsAnyExportBinPackageHiddenImpl.c
Window: [0x10784300, 0x10784320) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784300: 8b 0d 94 de c8 10 85 c9 74 05 e9 a1 c4 00 00 32
10784310: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10784300 <.text+0x783300>:
10784300:	8b 0d 94 de c8 10                               	mov    ecx,DWORD PTR ds:0x10c8de94
10784306:	85 c9                                           	test   ecx,ecx
10784308:	74 05                                           	je     0x1078430f
1078430a:	e9 a1 c4 00 00                                  	jmp    0x107907b0
1078430f:	32 c0                                           	xor    al,al
10784311:	c3                                              	ret
10784312:	cc                                              	int3
10784313:	cc                                              	int3
10784314:	cc                                              	int3
10784315:	cc                                              	int3
10784316:	cc                                              	int3
10784317:	cc                                              	int3
10784318:	cc                                              	int3
10784319:	cc                                              	int3
1078431a:	cc                                              	int3
1078431b:	cc                                              	int3
1078431c:	cc                                              	int3
1078431d:	cc                                              	int3
1078431e:	cc                                              	int3
1078431f:	cc                                              	int3
