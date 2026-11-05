# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057af00 (World_UnloadHeightMapRelatedDataImpl)
Paired Ghidra pseudocode: 1057AF00_World_UnloadHeightMapRelatedDataImpl.c
Window: [0x1057af00, 0x1057af20) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057af20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057af00: 8b 0d c4 00 c7 10 85 c9 74 0a 8b 44 24 04 50 e8
1057af10: 9c cc cb ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057af00 <.text+0x579f00>:
1057af00:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057af06:	85 c9                                           	test   ecx,ecx
1057af08:	74 0a                                           	je     0x1057af14
1057af0a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1057af0e:	50                                              	push   eax
1057af0f:	e8 9c cc cb ff                                  	call   0x10237bb0
1057af14:	c3                                              	ret
1057af15:	cc                                              	int3
1057af16:	cc                                              	int3
1057af17:	cc                                              	int3
1057af18:	cc                                              	int3
1057af19:	cc                                              	int3
1057af1a:	cc                                              	int3
1057af1b:	cc                                              	int3
1057af1c:	cc                                              	int3
1057af1d:	cc                                              	int3
1057af1e:	cc                                              	int3
1057af1f:	cc                                              	int3
