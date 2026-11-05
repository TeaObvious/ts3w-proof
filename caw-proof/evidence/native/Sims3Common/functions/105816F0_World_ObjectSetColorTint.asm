# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105816f0 (World_ObjectSetColorTint)
Paired Ghidra pseudocode: 105816F0_World_ObjectSetColorTint.c
Window: [0x105816f0, 0x10581730) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105816f0: d9 44 24 18 8b 44 24 08 8b 4c 24 04 83 ec 10 d9
10581700: 5c 24 0c d9 44 24 24 d9 5c 24 08 d9 44 24 20 d9
10581710: 5c 24 04 d9 44 24 1c d9 1c 24 50 51 e8 7f da ff
10581720: ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105816f0 <.text+0x5806f0>:
105816f0:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
105816f4:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105816f8:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105816fc:	83 ec 10                                        	sub    esp,0x10
105816ff:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
10581703:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
10581707:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
1058170b:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
1058170f:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10581713:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
10581717:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1058171a:	50                                              	push   eax
1058171b:	51                                              	push   ecx
1058171c:	e8 7f da ff ff                                  	call   0x1057f1a0
10581721:	83 c4 18                                        	add    esp,0x18
10581724:	c3                                              	ret
10581725:	cc                                              	int3
10581726:	cc                                              	int3
10581727:	cc                                              	int3
10581728:	cc                                              	int3
10581729:	cc                                              	int3
1058172a:	cc                                              	int3
1058172b:	cc                                              	int3
1058172c:	cc                                              	int3
1058172d:	cc                                              	int3
1058172e:	cc                                              	int3
1058172f:	cc                                              	int3
