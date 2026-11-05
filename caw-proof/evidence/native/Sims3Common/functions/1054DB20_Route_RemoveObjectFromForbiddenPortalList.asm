# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054db20 (Route_RemoveObjectFromForbiddenPortalList)
Paired Ghidra pseudocode: 1054DB20_Route_RemoveObjectFromForbiddenPortalList.c
Window: [0x1054db20, 0x1054db40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054db40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054db20: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
1054db30: 9c cd ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1054db20 <.text+0x54cb20>:
1054db20:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1054db24:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1054db28:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1054db2c:	50                                              	push   eax
1054db2d:	51                                              	push   ecx
1054db2e:	52                                              	push   edx
1054db2f:	e8 9c cd ff ff                                  	call   0x1054a8d0
1054db34:	83 c4 0c                                        	add    esp,0xc
1054db37:	c3                                              	ret
1054db38:	cc                                              	int3
1054db39:	cc                                              	int3
1054db3a:	cc                                              	int3
1054db3b:	cc                                              	int3
1054db3c:	cc                                              	int3
1054db3d:	cc                                              	int3
1054db3e:	cc                                              	int3
1054db3f:	cc                                              	int3
