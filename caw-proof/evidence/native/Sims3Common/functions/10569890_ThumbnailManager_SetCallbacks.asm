# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569890 (ThumbnailManager_SetCallbacks)
Paired Ghidra pseudocode: 10569890_ThumbnailManager_SetCallbacks.c
Window: [0x10569890, 0x105698b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105698b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569890: 8b 0d 50 11 c7 10 85 c9 74 0f 8b 44 24 08 8b 54
105698a0: 24 04 50 52 e8 d7 8d db ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569890 <.text+0x568890>:
10569890:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569896:	85 c9                                           	test   ecx,ecx
10569898:	74 0f                                           	je     0x105698a9
1056989a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1056989e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105698a2:	50                                              	push   eax
105698a3:	52                                              	push   edx
105698a4:	e8 d7 8d db ff                                  	call   0x10322680
105698a9:	c3                                              	ret
105698aa:	cc                                              	int3
105698ab:	cc                                              	int3
105698ac:	cc                                              	int3
105698ad:	cc                                              	int3
105698ae:	cc                                              	int3
105698af:	cc                                              	int3
