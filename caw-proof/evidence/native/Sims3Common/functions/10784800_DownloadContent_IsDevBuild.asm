# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784800 (DownloadContent_IsDevBuild)
Paired Ghidra pseudocode: 10784800_DownloadContent_IsDevBuild.c
Window: [0x10784800, 0x10784810) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784800: e9 7b 97 01 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10784800 <.text+0x783800>:
10784800:	e9 7b 97 01 00                                  	jmp    0x1079df80
10784805:	cc                                              	int3
10784806:	cc                                              	int3
10784807:	cc                                              	int3
10784808:	cc                                              	int3
10784809:	cc                                              	int3
1078480a:	cc                                              	int3
1078480b:	cc                                              	int3
1078480c:	cc                                              	int3
1078480d:	cc                                              	int3
1078480e:	cc                                              	int3
1078480f:	cc                                              	int3
