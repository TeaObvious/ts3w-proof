# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054a340 (RouteManager_SetPortalCost)
Paired Ghidra pseudocode: 1054A340_RouteManager_SetPortalCost.c
Window: [0x1054a340, 0x1054a360) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054a360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054a340: d9 44 24 0c 8b 44 24 08 51 8b 4c 24 08 d9 1c 24
1054a350: 50 51 e8 39 f4 ff ff 83 c4 0c c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1054a340 <.text+0x549340>:
1054a340:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
1054a344:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1054a348:	51                                              	push   ecx
1054a349:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1054a34d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1054a350:	50                                              	push   eax
1054a351:	51                                              	push   ecx
1054a352:	e8 39 f4 ff ff                                  	call   0x10549790
1054a357:	83 c4 0c                                        	add    esp,0xc
1054a35a:	c3                                              	ret
1054a35b:	cc                                              	int3
1054a35c:	cc                                              	int3
1054a35d:	cc                                              	int3
1054a35e:	cc                                              	int3
1054a35f:	cc                                              	int3
