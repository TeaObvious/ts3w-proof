# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548560 (Route_GetSegmentAtDistanceBeforeSegment)
Paired Ghidra pseudocode: 10548560_Route_GetSegmentAtDistanceBeforeSegment.c
Window: [0x10548560, 0x10548580) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548580
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548560: 8b 44 24 10 d9 44 24 0c 8b 54 24 04 50 51 8b 4c
10548570: 24 10 d9 1c 24 51 52 e8 d4 e0 ff ff 83 c4 10 c3

LINEAR DISASSEMBLY
10548560 <.text+0x547560>:
10548560:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10548564:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10548568:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1054856c:	50                                              	push   eax
1054856d:	51                                              	push   ecx
1054856e:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10548572:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10548575:	51                                              	push   ecx
10548576:	52                                              	push   edx
10548577:	e8 d4 e0 ff ff                                  	call   0x10546650
1054857c:	83 c4 10                                        	add    esp,0x10
1054857f:	c3                                              	ret
