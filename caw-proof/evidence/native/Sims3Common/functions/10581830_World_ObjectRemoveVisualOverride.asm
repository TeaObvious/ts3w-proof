# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581830 (World_ObjectRemoveVisualOverride)
Paired Ghidra pseudocode: 10581830_World_ObjectRemoveVisualOverride.c
Window: [0x10581830, 0x10581880) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581880
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581830: e8 eb 98 fd ff 85 c0 74 3c e8 62 89 1a 00 85 c0
10581840: 74 33 8b 4c 24 08 8b 54 24 04 51 52 8b c8 e8 5d
10581850: 93 1a 00 85 c0 74 1e 8b 0d e8 da c8 10 51 8b c8
10581860: e8 3b 55 1a 00 85 c0 74 0c 8b 54 24 0c 52 8b c8
10581870: e8 ab f9 1c 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581830 <.text+0x580830>:
10581830:	e8 eb 98 fd ff                                  	call   0x1055b120
10581835:	85 c0                                           	test   eax,eax
10581837:	74 3c                                           	je     0x10581875
10581839:	e8 62 89 1a 00                                  	call   0x1072a1a0
1058183e:	85 c0                                           	test   eax,eax
10581840:	74 33                                           	je     0x10581875
10581842:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10581846:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1058184a:	51                                              	push   ecx
1058184b:	52                                              	push   edx
1058184c:	8b c8                                           	mov    ecx,eax
1058184e:	e8 5d 93 1a 00                                  	call   0x1072abb0
10581853:	85 c0                                           	test   eax,eax
10581855:	74 1e                                           	je     0x10581875
10581857:	8b 0d e8 da c8 10                               	mov    ecx,DWORD PTR ds:0x10c8dae8
1058185d:	51                                              	push   ecx
1058185e:	8b c8                                           	mov    ecx,eax
10581860:	e8 3b 55 1a 00                                  	call   0x10726da0
10581865:	85 c0                                           	test   eax,eax
10581867:	74 0c                                           	je     0x10581875
10581869:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1058186d:	52                                              	push   edx
1058186e:	8b c8                                           	mov    ecx,eax
10581870:	e8 ab f9 1c 00                                  	call   0x10751220
10581875:	c3                                              	ret
10581876:	cc                                              	int3
10581877:	cc                                              	int3
10581878:	cc                                              	int3
10581879:	cc                                              	int3
1058187a:	cc                                              	int3
1058187b:	cc                                              	int3
1058187c:	cc                                              	int3
1058187d:	cc                                              	int3
1058187e:	cc                                              	int3
1058187f:	cc                                              	int3
