# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10542750 (Route_DestroyRoute)
Paired Ghidra pseudocode: 10542750_Route_DestroyRoute.c
Window: [0x10542750, 0x10542780) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10542780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10542750: 8b 0d 44 89 c7 10 85 c9 74 1a 8b 44 24 04 8b d0
10542760: 81 e2 00 00 00 ff 81 fa 00 00 00 25 75 06 50 e8
10542770: ac c8 ff ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10542750 <.text+0x541750>:
10542750:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10542756:	85 c9                                           	test   ecx,ecx
10542758:	74 1a                                           	je     0x10542774
1054275a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1054275e:	8b d0                                           	mov    edx,eax
10542760:	81 e2 00 00 00 ff                               	and    edx,0xff000000
10542766:	81 fa 00 00 00 25                               	cmp    edx,0x25000000
1054276c:	75 06                                           	jne    0x10542774
1054276e:	50                                              	push   eax
1054276f:	e8 ac c8 ff ff                                  	call   0x1053f020
10542774:	c3                                              	ret
10542775:	cc                                              	int3
10542776:	cc                                              	int3
10542777:	cc                                              	int3
10542778:	cc                                              	int3
10542779:	cc                                              	int3
1054277a:	cc                                              	int3
1054277b:	cc                                              	int3
1054277c:	cc                                              	int3
1054277d:	cc                                              	int3
1054277e:	cc                                              	int3
1054277f:	cc                                              	int3
