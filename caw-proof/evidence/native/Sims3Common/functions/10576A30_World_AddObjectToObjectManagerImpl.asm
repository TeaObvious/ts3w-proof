# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576a30 (World_AddObjectToObjectManagerImpl)
Paired Ghidra pseudocode: 10576A30_World_AddObjectToObjectManagerImpl.c
Window: [0x10576a30, 0x10576a50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576a50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576a30: 8b 44 24 08 8b 4c 24 04 50 51 e8 d1 4f 01 00 83
10576a40: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10576a30 <.text+0x575a30>:
10576a30:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10576a34:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10576a38:	50                                              	push   eax
10576a39:	51                                              	push   ecx
10576a3a:	e8 d1 4f 01 00                                  	call   0x1058ba10
10576a3f:	83 c4 08                                        	add    esp,0x8
10576a42:	c3                                              	ret
10576a43:	cc                                              	int3
10576a44:	cc                                              	int3
10576a45:	cc                                              	int3
10576a46:	cc                                              	int3
10576a47:	cc                                              	int3
10576a48:	cc                                              	int3
10576a49:	cc                                              	int3
10576a4a:	cc                                              	int3
10576a4b:	cc                                              	int3
10576a4c:	cc                                              	int3
10576a4d:	cc                                              	int3
10576a4e:	cc                                              	int3
10576a4f:	cc                                              	int3
