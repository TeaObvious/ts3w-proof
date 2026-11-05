# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548520 (Route_Tesselate)
Paired Ghidra pseudocode: 10548520_Route_Tesselate.c
Window: [0x10548520, 0x10548540) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548540
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548520: d9 44 24 08 8b 44 24 04 51 d9 1c 24 50 e8 8e df
10548530: ff ff 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548520 <.text+0x547520>:
10548520:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10548524:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10548528:	51                                              	push   ecx
10548529:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1054852c:	50                                              	push   eax
1054852d:	e8 8e df ff ff                                  	call   0x105464c0
10548532:	83 c4 08                                        	add    esp,0x8
10548535:	c3                                              	ret
10548536:	cc                                              	int3
10548537:	cc                                              	int3
10548538:	cc                                              	int3
10548539:	cc                                              	int3
1054853a:	cc                                              	int3
1054853b:	cc                                              	int3
1054853c:	cc                                              	int3
1054853d:	cc                                              	int3
1054853e:	cc                                              	int3
1054853f:	cc                                              	int3
