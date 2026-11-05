# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1099a3d0 (WorldWrap_GetLoadSaveLog)
Paired Ghidra pseudocode: 1099A3D0_WorldWrap_GetLoadSaveLog.c
Window: [0x1099a3d0, 0x1099a450) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1099a450
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1099a3d0: b8 01 00 00 00 84 05 c0 81 cb 10 75 36 09 05 c0
1099a3e0: 81 cb 10 b8 44 82 ca 10 68 b0 aa aa 10 c7 05 bc
1099a3f0: 81 cb 10 74 7c b9 10 a3 b0 81 cb 10 a3 b4 81 cb
1099a400: 10 c7 05 b8 81 cb 10 46 82 ca 10 e8 cf 66 0f 00
1099a410: 83 c4 04 a1 b0 81 cb 10 3b 05 b4 81 cb 10 74 0f
1099a420: 66 c7 00 00 00 a1 b0 81 cb 10 a3 b4 81 cb 10 8b
1099a430: 4c 24 04 68 b0 81 cb 10 e8 13 d8 89 ff a1 b0 81
1099a440: cb 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1099a3d0 <.text+0x9993d0>:
1099a3d0:	b8 01 00 00 00                                  	mov    eax,0x1
1099a3d5:	84 05 c0 81 cb 10                               	test   BYTE PTR ds:0x10cb81c0,al
1099a3db:	75 36                                           	jne    0x1099a413
1099a3dd:	09 05 c0 81 cb 10                               	or     DWORD PTR ds:0x10cb81c0,eax
1099a3e3:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
1099a3e8:	68 b0 aa aa 10                                  	push   0x10aaaab0
1099a3ed:	c7 05 bc 81 cb 10 74 7c b9 10                   	mov    DWORD PTR ds:0x10cb81bc,0x10b97c74
1099a3f7:	a3 b0 81 cb 10                                  	mov    ds:0x10cb81b0,eax
1099a3fc:	a3 b4 81 cb 10                                  	mov    ds:0x10cb81b4,eax
1099a401:	c7 05 b8 81 cb 10 46 82 ca 10                   	mov    DWORD PTR ds:0x10cb81b8,0x10ca8246
1099a40b:	e8 cf 66 0f 00                                  	call   0x10a90adf
1099a410:	83 c4 04                                        	add    esp,0x4
1099a413:	a1 b0 81 cb 10                                  	mov    eax,ds:0x10cb81b0
1099a418:	3b 05 b4 81 cb 10                               	cmp    eax,DWORD PTR ds:0x10cb81b4
1099a41e:	74 0f                                           	je     0x1099a42f
1099a420:	66 c7 00 00 00                                  	mov    WORD PTR [eax],0x0
1099a425:	a1 b0 81 cb 10                                  	mov    eax,ds:0x10cb81b0
1099a42a:	a3 b4 81 cb 10                                  	mov    ds:0x10cb81b4,eax
1099a42f:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1099a433:	68 b0 81 cb 10                                  	push   0x10cb81b0
1099a438:	e8 13 d8 89 ff                                  	call   0x10237c50
1099a43d:	a1 b0 81 cb 10                                  	mov    eax,ds:0x10cb81b0
1099a442:	c3                                              	ret
1099a443:	cc                                              	int3
1099a444:	cc                                              	int3
1099a445:	cc                                              	int3
1099a446:	cc                                              	int3
1099a447:	cc                                              	int3
1099a448:	cc                                              	int3
1099a449:	cc                                              	int3
1099a44a:	cc                                              	int3
1099a44b:	cc                                              	int3
1099a44c:	cc                                              	int3
1099a44d:	cc                                              	int3
1099a44e:	cc                                              	int3
1099a44f:	cc                                              	int3
