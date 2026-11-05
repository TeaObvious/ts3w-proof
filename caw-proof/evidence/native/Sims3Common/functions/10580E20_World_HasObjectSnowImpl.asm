# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580e20 (World_HasObjectSnowImpl)
Paired Ghidra pseudocode: 10580E20_World_HasObjectSnowImpl.c
Window: [0x10580e20, 0x10580e60) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580e60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580e20: e8 7b 93 1a 00 85 c0 74 34 8b 4c 24 08 8b 54 24
10580e30: 04 51 52 8b c8 e8 76 9d 1a 00 85 c0 74 1f 8b 0d
10580e40: e8 da c8 10 51 8b c8 e8 54 5f 1a 00 85 c0 74 0d
10580e50: 8b 54 24 0c 52 8b c8 e8 84 fc 1c 00 c3 b0 01 c3

LINEAR DISASSEMBLY
10580e20 <.text+0x57fe20>:
10580e20:	e8 7b 93 1a 00                                  	call   0x1072a1a0
10580e25:	85 c0                                           	test   eax,eax
10580e27:	74 34                                           	je     0x10580e5d
10580e29:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10580e2d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10580e31:	51                                              	push   ecx
10580e32:	52                                              	push   edx
10580e33:	8b c8                                           	mov    ecx,eax
10580e35:	e8 76 9d 1a 00                                  	call   0x1072abb0
10580e3a:	85 c0                                           	test   eax,eax
10580e3c:	74 1f                                           	je     0x10580e5d
10580e3e:	8b 0d e8 da c8 10                               	mov    ecx,DWORD PTR ds:0x10c8dae8
10580e44:	51                                              	push   ecx
10580e45:	8b c8                                           	mov    ecx,eax
10580e47:	e8 54 5f 1a 00                                  	call   0x10726da0
10580e4c:	85 c0                                           	test   eax,eax
10580e4e:	74 0d                                           	je     0x10580e5d
10580e50:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10580e54:	52                                              	push   edx
10580e55:	8b c8                                           	mov    ecx,eax
10580e57:	e8 84 fc 1c 00                                  	call   0x10750ae0
10580e5c:	c3                                              	ret
10580e5d:	b0 01                                           	mov    al,0x1
10580e5f:	c3                                              	ret
