# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982840 (ContentManager_GetBaseGameId)
Paired Ghidra pseudocode: 10982840_ContentManager_GetBaseGameId.c
Window: [0x10982840, 0x10982890) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982840: 81 ec 18 01 00 00 8d 44 24 04 50 e8 b0 5c e0 ff
10982850: 83 c4 04 6a 10 8d 4c 24 04 51 8d 54 24 1c 52 8d
10982860: 4c 24 10 c7 44 24 0c 00 00 00 00 e8 10 21 fb ff
10982870: 8d 44 24 14 50 ff 15 c4 b6 aa 10 81 c4 18 01 00
10982880: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10982840 <.text+0x981840>:
10982840:	81 ec 18 01 00 00                               	sub    esp,0x118
10982846:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1098284a:	50                                              	push   eax
1098284b:	e8 b0 5c e0 ff                                  	call   0x10788500
10982850:	83 c4 04                                        	add    esp,0x4
10982853:	6a 10                                           	push   0x10
10982855:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10982859:	51                                              	push   ecx
1098285a:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
1098285e:	52                                              	push   edx
1098285f:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10982863:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
1098286b:	e8 10 21 fb ff                                  	call   0x10934980
10982870:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10982874:	50                                              	push   eax
10982875:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1098287b:	81 c4 18 01 00 00                               	add    esp,0x118
10982881:	c3                                              	ret
10982882:	cc                                              	int3
10982883:	cc                                              	int3
10982884:	cc                                              	int3
10982885:	cc                                              	int3
10982886:	cc                                              	int3
10982887:	cc                                              	int3
10982888:	cc                                              	int3
10982889:	cc                                              	int3
1098288a:	cc                                              	int3
1098288b:	cc                                              	int3
1098288c:	cc                                              	int3
1098288d:	cc                                              	int3
1098288e:	cc                                              	int3
1098288f:	cc                                              	int3
