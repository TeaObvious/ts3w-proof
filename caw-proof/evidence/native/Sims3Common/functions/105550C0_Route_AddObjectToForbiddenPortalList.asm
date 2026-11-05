# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105550c0 (Route_AddObjectToForbiddenPortalList)
Paired Ghidra pseudocode: 105550C0_Route_AddObjectToForbiddenPortalList.c
Window: [0x105550c0, 0x105550e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105550e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105550c0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
105550d0: 9c f3 ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105550c0 <.text+0x5540c0>:
105550c0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105550c4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105550c8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105550cc:	50                                              	push   eax
105550cd:	51                                              	push   ecx
105550ce:	52                                              	push   edx
105550cf:	e8 9c f3 ff ff                                  	call   0x10554470
105550d4:	83 c4 0c                                        	add    esp,0xc
105550d7:	c3                                              	ret
105550d8:	cc                                              	int3
105550d9:	cc                                              	int3
105550da:	cc                                              	int3
105550db:	cc                                              	int3
105550dc:	cc                                              	int3
105550dd:	cc                                              	int3
105550de:	cc                                              	int3
105550df:	cc                                              	int3
