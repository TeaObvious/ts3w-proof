# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561aa0 (Slots_GetChildrenImpl)
Paired Ghidra pseudocode: 10561AA0_Slots_GetChildrenImpl.c
Window: [0x10561aa0, 0x10561ad0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561ad0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561aa0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10561ab0: 1c fe ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc
10561ac0: 8b 44 24 04 c7 00 e0 fe c2 10 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
10561aa0 <.text+0x560aa0>:
10561aa0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10561aa4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10561aa8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10561aac:	50                                              	push   eax
10561aad:	51                                              	push   ecx
10561aae:	52                                              	push   edx
10561aaf:	e8 1c fe ff ff                                  	call   0x105618d0
10561ab4:	83 c4 0c                                        	add    esp,0xc
10561ab7:	c3                                              	ret
10561ab8:	cc                                              	int3
10561ab9:	cc                                              	int3
10561aba:	cc                                              	int3
10561abb:	cc                                              	int3
10561abc:	cc                                              	int3
10561abd:	cc                                              	int3
10561abe:	cc                                              	int3
10561abf:	cc                                              	int3
10561ac0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10561ac4:	c7 00 e0 fe c2 10                               	mov    DWORD PTR [eax],0x10c2fee0
10561aca:	c2 04 00                                        	ret    0x4
10561acd:	cc                                              	int3
10561ace:	cc                                              	int3
10561acf:	cc                                              	int3
