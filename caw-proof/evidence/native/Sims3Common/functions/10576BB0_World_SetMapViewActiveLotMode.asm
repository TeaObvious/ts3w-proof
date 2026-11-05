# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576bb0 (World_SetMapViewActiveLotMode)
Paired Ghidra pseudocode: 10576BB0_World_SetMapViewActiveLotMode.c
Window: [0x10576bb0, 0x10576bd0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576bd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576bb0: 8b 0d c4 00 c7 10 85 c9 74 0a 8b 44 24 04 50 e8
10576bc0: ac cb cb ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10576bb0 <.text+0x575bb0>:
10576bb0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10576bb6:	85 c9                                           	test   ecx,ecx
10576bb8:	74 0a                                           	je     0x10576bc4
10576bba:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10576bbe:	50                                              	push   eax
10576bbf:	e8 ac cb cb ff                                  	call   0x10233770
10576bc4:	c3                                              	ret
10576bc5:	cc                                              	int3
10576bc6:	cc                                              	int3
10576bc7:	cc                                              	int3
10576bc8:	cc                                              	int3
10576bc9:	cc                                              	int3
10576bca:	cc                                              	int3
10576bcb:	cc                                              	int3
10576bcc:	cc                                              	int3
10576bcd:	cc                                              	int3
10576bce:	cc                                              	int3
10576bcf:	cc                                              	int3
