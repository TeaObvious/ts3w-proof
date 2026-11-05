# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107842e0 (DownloadContent_UnhideAllExportBinPackagesImpl)
Paired Ghidra pseudocode: 107842E0_DownloadContent_UnhideAllExportBinPackagesImpl.c
Window: [0x107842e0, 0x10784300) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107842e0: 8b 0d 94 de c8 10 85 c9 74 05 e9 e1 ec 00 00 32
107842f0: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
107842e0 <.text+0x7832e0>:
107842e0:	8b 0d 94 de c8 10                               	mov    ecx,DWORD PTR ds:0x10c8de94
107842e6:	85 c9                                           	test   ecx,ecx
107842e8:	74 05                                           	je     0x107842ef
107842ea:	e9 e1 ec 00 00                                  	jmp    0x10792fd0
107842ef:	32 c0                                           	xor    al,al
107842f1:	c3                                              	ret
107842f2:	cc                                              	int3
107842f3:	cc                                              	int3
107842f4:	cc                                              	int3
107842f5:	cc                                              	int3
107842f6:	cc                                              	int3
107842f7:	cc                                              	int3
107842f8:	cc                                              	int3
107842f9:	cc                                              	int3
107842fa:	cc                                              	int3
107842fb:	cc                                              	int3
107842fc:	cc                                              	int3
107842fd:	cc                                              	int3
107842fe:	cc                                              	int3
107842ff:	cc                                              	int3
