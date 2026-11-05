# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105779b0 (World_DesignModeSwap_SetFloodImpl)
Paired Ghidra pseudocode: 105779B0_World_DesignModeSwap_SetFloodImpl.c
Window: [0x105779b0, 0x105779f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105779f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105779b0: e8 6b 37 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
105779c0: ff 81 fa 00 00 00 45 74 03 32 c0 c3 8b 10 51 8b
105779d0: c8 8b 82 cc 00 00 00 ff d0 85 c0 74 ec 8b 4c 24
105779e0: 08 51 8b c8 e8 07 6a aa ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
105779b0 <.text+0x5769b0>:
105779b0:	e8 6b 37 fe ff                                  	call   0x1055b120
105779b5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105779b9:	8b d1                                           	mov    edx,ecx
105779bb:	81 e2 00 00 00 ff                               	and    edx,0xff000000
105779c1:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
105779c7:	74 03                                           	je     0x105779cc
105779c9:	32 c0                                           	xor    al,al
105779cb:	c3                                              	ret
105779cc:	8b 10                                           	mov    edx,DWORD PTR [eax]
105779ce:	51                                              	push   ecx
105779cf:	8b c8                                           	mov    ecx,eax
105779d1:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
105779d7:	ff d0                                           	call   eax
105779d9:	85 c0                                           	test   eax,eax
105779db:	74 ec                                           	je     0x105779c9
105779dd:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105779e1:	51                                              	push   ecx
105779e2:	8b c8                                           	mov    ecx,eax
105779e4:	e8 07 6a aa ff                                  	call   0x1001e3f0
105779e9:	c3                                              	ret
105779ea:	cc                                              	int3
105779eb:	cc                                              	int3
105779ec:	cc                                              	int3
105779ed:	cc                                              	int3
105779ee:	cc                                              	int3
105779ef:	cc                                              	int3
