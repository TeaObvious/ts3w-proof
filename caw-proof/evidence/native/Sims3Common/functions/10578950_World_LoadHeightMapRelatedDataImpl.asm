# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10578950 (World_LoadHeightMapRelatedDataImpl)
Paired Ghidra pseudocode: 10578950_World_LoadHeightMapRelatedDataImpl.c
Window: [0x10578950, 0x10578970) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10578950: 8b 0d c4 00 c7 10 85 c9 74 0a 8b 44 24 04 50 e8
10578960: ac f1 cb ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10578950 <.text+0x577950>:
10578950:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10578956:	85 c9                                           	test   ecx,ecx
10578958:	74 0a                                           	je     0x10578964
1057895a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1057895e:	50                                              	push   eax
1057895f:	e8 ac f1 cb ff                                  	call   0x10237b10
10578964:	c3                                              	ret
10578965:	cc                                              	int3
10578966:	cc                                              	int3
10578967:	cc                                              	int3
10578968:	cc                                              	int3
10578969:	cc                                              	int3
1057896a:	cc                                              	int3
1057896b:	cc                                              	int3
1057896c:	cc                                              	int3
1057896d:	cc                                              	int3
1057896e:	cc                                              	int3
1057896f:	cc                                              	int3
