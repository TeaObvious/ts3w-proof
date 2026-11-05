# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548540 (Route_GetSegmentAtDistanceBeforeEnd)
Paired Ghidra pseudocode: 10548540_Route_GetSegmentAtDistanceBeforeEnd.c
Window: [0x10548540, 0x10548560) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548560
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548540: 8b 44 24 0c d9 44 24 08 50 51 8b 4c 24 0c d9 1c
10548550: 24 51 e8 19 e0 ff ff 83 c4 0c c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10548540 <.text+0x547540>:
10548540:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10548544:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10548548:	50                                              	push   eax
10548549:	51                                              	push   ecx
1054854a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1054854e:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10548551:	51                                              	push   ecx
10548552:	e8 19 e0 ff ff                                  	call   0x10546570
10548557:	83 c4 0c                                        	add    esp,0xc
1054855a:	c3                                              	ret
1054855b:	cc                                              	int3
1054855c:	cc                                              	int3
1054855d:	cc                                              	int3
1054855e:	cc                                              	int3
1054855f:	cc                                              	int3
