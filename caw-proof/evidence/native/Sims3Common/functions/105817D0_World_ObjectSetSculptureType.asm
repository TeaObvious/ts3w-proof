# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105817d0 (World_ObjectSetSculptureType)
Paired Ghidra pseudocode: 105817D0_World_ObjectSetSculptureType.c
Window: [0x105817d0, 0x10581810) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105817d0: e8 cb 89 1a 00 85 c0 74 33 8b 4c 24 08 8b 54 24
105817e0: 04 51 52 8b c8 e8 c6 93 1a 00 85 c0 74 1e 8b 0d
105817f0: e8 da c8 10 51 8b c8 e8 a4 55 1a 00 85 c0 74 0c
10581800: 8b 54 24 0c 52 8b c8 e8 f4 f2 1c 00 c3 cc cc cc

LINEAR DISASSEMBLY
105817d0 <.text+0x5807d0>:
105817d0:	e8 cb 89 1a 00                                  	call   0x1072a1a0
105817d5:	85 c0                                           	test   eax,eax
105817d7:	74 33                                           	je     0x1058180c
105817d9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105817dd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105817e1:	51                                              	push   ecx
105817e2:	52                                              	push   edx
105817e3:	8b c8                                           	mov    ecx,eax
105817e5:	e8 c6 93 1a 00                                  	call   0x1072abb0
105817ea:	85 c0                                           	test   eax,eax
105817ec:	74 1e                                           	je     0x1058180c
105817ee:	8b 0d e8 da c8 10                               	mov    ecx,DWORD PTR ds:0x10c8dae8
105817f4:	51                                              	push   ecx
105817f5:	8b c8                                           	mov    ecx,eax
105817f7:	e8 a4 55 1a 00                                  	call   0x10726da0
105817fc:	85 c0                                           	test   eax,eax
105817fe:	74 0c                                           	je     0x1058180c
10581800:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10581804:	52                                              	push   edx
10581805:	8b c8                                           	mov    ecx,eax
10581807:	e8 f4 f2 1c 00                                  	call   0x10750b00
1058180c:	c3                                              	ret
1058180d:	cc                                              	int3
1058180e:	cc                                              	int3
1058180f:	cc                                              	int3
