# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581880 (World_ObjectSetElevationOffset)
Paired Ghidra pseudocode: 10581880_World_ObjectSetElevationOffset.c
Window: [0x10581880, 0x105818a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105818a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581880: d9 44 24 0c 8b 44 24 08 51 8b 4c 24 08 d9 1c 24
10581890: 50 51 e8 59 dd ff ff 83 c4 0c c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10581880 <.text+0x580880>:
10581880:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10581884:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10581888:	51                                              	push   ecx
10581889:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1058188d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10581890:	50                                              	push   eax
10581891:	51                                              	push   ecx
10581892:	e8 59 dd ff ff                                  	call   0x1057f5f0
10581897:	83 c4 0c                                        	add    esp,0xc
1058189a:	c3                                              	ret
1058189b:	cc                                              	int3
1058189c:	cc                                              	int3
1058189d:	cc                                              	int3
1058189e:	cc                                              	int3
1058189f:	cc                                              	int3
