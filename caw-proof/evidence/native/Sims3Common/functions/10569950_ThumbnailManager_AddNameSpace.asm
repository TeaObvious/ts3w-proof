# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569950 (ThumbnailManager_AddNameSpace)
Paired Ghidra pseudocode: 10569950_ThumbnailManager_AddNameSpace.c
Window: [0x10569950, 0x10569970) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569950: 8b 0d 50 11 c7 10 85 c9 74 0a 8b 44 24 04 50 e8
10569960: 5c 39 dc ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569950 <.text+0x568950>:
10569950:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569956:	85 c9                                           	test   ecx,ecx
10569958:	74 0a                                           	je     0x10569964
1056995a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1056995e:	50                                              	push   eax
1056995f:	e8 5c 39 dc ff                                  	call   0x1032d2c0
10569964:	c3                                              	ret
10569965:	cc                                              	int3
10569966:	cc                                              	int3
10569967:	cc                                              	int3
10569968:	cc                                              	int3
10569969:	cc                                              	int3
1056996a:	cc                                              	int3
1056996b:	cc                                              	int3
1056996c:	cc                                              	int3
1056996d:	cc                                              	int3
1056996e:	cc                                              	int3
1056996f:	cc                                              	int3
