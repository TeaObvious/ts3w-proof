# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999080 (WorldWrap_SetGridRotationAngle)
Paired Ghidra pseudocode: 10999080_WorldWrap_SetGridRotationAngle.c
Window: [0x10999080, 0x109990a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109990a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999080: 8b 44 24 04 8b 48 6c 85 c9 74 0a 8b 54 24 08 52
10999090: e8 1b 71 86 ff c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10999080 <.text+0x998080>:
10999080:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10999084:	8b 48 6c                                        	mov    ecx,DWORD PTR [eax+0x6c]
10999087:	85 c9                                           	test   ecx,ecx
10999089:	74 0a                                           	je     0x10999095
1099908b:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1099908f:	52                                              	push   edx
10999090:	e8 1b 71 86 ff                                  	call   0x102001b0
10999095:	c3                                              	ret
10999096:	cc                                              	int3
10999097:	cc                                              	int3
10999098:	cc                                              	int3
10999099:	cc                                              	int3
1099909a:	cc                                              	int3
1099909b:	cc                                              	int3
1099909c:	cc                                              	int3
1099909d:	cc                                              	int3
1099909e:	cc                                              	int3
1099909f:	cc                                              	int3
