# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576ab0 (World_RemoveObjectFromObjectManagerImpl)
Paired Ghidra pseudocode: 10576AB0_World_RemoveObjectFromObjectManagerImpl.c
Window: [0x10576ab0, 0x10576ad0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576ad0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576ab0: 8b 44 24 08 8b 4c 24 04 50 51 e8 11 53 01 00 83
10576ac0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10576ab0 <.text+0x575ab0>:
10576ab0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10576ab4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10576ab8:	50                                              	push   eax
10576ab9:	51                                              	push   ecx
10576aba:	e8 11 53 01 00                                  	call   0x1058bdd0
10576abf:	83 c4 08                                        	add    esp,0x8
10576ac2:	c3                                              	ret
10576ac3:	cc                                              	int3
10576ac4:	cc                                              	int3
10576ac5:	cc                                              	int3
10576ac6:	cc                                              	int3
10576ac7:	cc                                              	int3
10576ac8:	cc                                              	int3
10576ac9:	cc                                              	int3
10576aca:	cc                                              	int3
10576acb:	cc                                              	int3
10576acc:	cc                                              	int3
10576acd:	cc                                              	int3
10576ace:	cc                                              	int3
10576acf:	cc                                              	int3
