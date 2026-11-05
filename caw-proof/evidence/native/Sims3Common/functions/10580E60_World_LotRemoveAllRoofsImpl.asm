# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580e60 (World_LotRemoveAllRoofsImpl)
Paired Ghidra pseudocode: 10580E60_World_LotRemoveAllRoofsImpl.c
Window: [0x10580e60, 0x10580e80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580e80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580e60: 8b 44 24 08 8b 4c 24 04 50 51 e8 31 bc ff ff 83
10580e70: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10580e60 <.text+0x57fe60>:
10580e60:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10580e64:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10580e68:	50                                              	push   eax
10580e69:	51                                              	push   ecx
10580e6a:	e8 31 bc ff ff                                  	call   0x1057caa0
10580e6f:	83 c4 08                                        	add    esp,0x8
10580e72:	c3                                              	ret
10580e73:	cc                                              	int3
10580e74:	cc                                              	int3
10580e75:	cc                                              	int3
10580e76:	cc                                              	int3
10580e77:	cc                                              	int3
10580e78:	cc                                              	int3
10580e79:	cc                                              	int3
10580e7a:	cc                                              	int3
10580e7b:	cc                                              	int3
10580e7c:	cc                                              	int3
10580e7d:	cc                                              	int3
10580e7e:	cc                                              	int3
10580e7f:	cc                                              	int3
