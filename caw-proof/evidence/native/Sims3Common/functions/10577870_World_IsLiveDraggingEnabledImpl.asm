# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577870 (World_IsLiveDraggingEnabledImpl)
Paired Ghidra pseudocode: 10577870_World_IsLiveDraggingEnabledImpl.c
Window: [0x10577870, 0x105778b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105778b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577870: e8 2b 29 1b 00 85 c0 74 2f 8b 4c 24 08 8b 54 24
10577880: 04 51 52 8b c8 e8 26 33 1b 00 85 c0 74 1a 8b 0d
10577890: 34 05 c7 10 83 c0 18 50 e8 33 de ce ff 85 c0 74
105778a0: 07 8b c8 e9 e8 6a cf ff 32 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10577870 <.text+0x576870>:
10577870:	e8 2b 29 1b 00                                  	call   0x1072a1a0
10577875:	85 c0                                           	test   eax,eax
10577877:	74 2f                                           	je     0x105778a8
10577879:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057787d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10577881:	51                                              	push   ecx
10577882:	52                                              	push   edx
10577883:	8b c8                                           	mov    ecx,eax
10577885:	e8 26 33 1b 00                                  	call   0x1072abb0
1057788a:	85 c0                                           	test   eax,eax
1057788c:	74 1a                                           	je     0x105778a8
1057788e:	8b 0d 34 05 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70534
10577894:	83 c0 18                                        	add    eax,0x18
10577897:	50                                              	push   eax
10577898:	e8 33 de ce ff                                  	call   0x102656d0
1057789d:	85 c0                                           	test   eax,eax
1057789f:	74 07                                           	je     0x105778a8
105778a1:	8b c8                                           	mov    ecx,eax
105778a3:	e9 e8 6a cf ff                                  	jmp    0x1026e390
105778a8:	32 c0                                           	xor    al,al
105778aa:	c3                                              	ret
105778ab:	cc                                              	int3
105778ac:	cc                                              	int3
105778ad:	cc                                              	int3
105778ae:	cc                                              	int3
105778af:	cc                                              	int3
