# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105778b0 (World_StaysAfterEvictImpl)
Paired Ghidra pseudocode: 105778B0_World_StaysAfterEvictImpl.c
Window: [0x105778b0, 0x105778f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105778f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105778b0: e8 eb 28 1b 00 85 c0 74 34 8b 4c 24 08 8b 54 24
105778c0: 04 51 52 8b c8 e8 e6 32 1b 00 85 c0 74 1f 8b 0d
105778d0: 34 05 c7 10 83 c0 18 50 e8 f3 dd ce ff 85 c0 74
105778e0: 0c 8b 80 a8 00 00 00 d1 e8 83 e0 01 c3 32 c0 c3

LINEAR DISASSEMBLY
105778b0 <.text+0x5768b0>:
105778b0:	e8 eb 28 1b 00                                  	call   0x1072a1a0
105778b5:	85 c0                                           	test   eax,eax
105778b7:	74 34                                           	je     0x105778ed
105778b9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105778bd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105778c1:	51                                              	push   ecx
105778c2:	52                                              	push   edx
105778c3:	8b c8                                           	mov    ecx,eax
105778c5:	e8 e6 32 1b 00                                  	call   0x1072abb0
105778ca:	85 c0                                           	test   eax,eax
105778cc:	74 1f                                           	je     0x105778ed
105778ce:	8b 0d 34 05 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70534
105778d4:	83 c0 18                                        	add    eax,0x18
105778d7:	50                                              	push   eax
105778d8:	e8 f3 dd ce ff                                  	call   0x102656d0
105778dd:	85 c0                                           	test   eax,eax
105778df:	74 0c                                           	je     0x105778ed
105778e1:	8b 80 a8 00 00 00                               	mov    eax,DWORD PTR [eax+0xa8]
105778e7:	d1 e8                                           	shr    eax,1
105778e9:	83 e0 01                                        	and    eax,0x1
105778ec:	c3                                              	ret
105778ed:	32 c0                                           	xor    al,al
105778ef:	c3                                              	ret
