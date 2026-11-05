# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999060 (WorldWrap_GetGridRotationAngle)
Paired Ghidra pseudocode: 10999060_WorldWrap_GetGridRotationAngle.c
Window: [0x10999060, 0x10999080) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999060: 8b 44 24 04 8b 48 6c 33 c0 85 c9 74 03 8b 41 08
10999070: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10999060 <.text+0x998060>:
10999060:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10999064:	8b 48 6c                                        	mov    ecx,DWORD PTR [eax+0x6c]
10999067:	33 c0                                           	xor    eax,eax
10999069:	85 c9                                           	test   ecx,ecx
1099906b:	74 03                                           	je     0x10999070
1099906d:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
10999070:	c3                                              	ret
10999071:	cc                                              	int3
10999072:	cc                                              	int3
10999073:	cc                                              	int3
10999074:	cc                                              	int3
10999075:	cc                                              	int3
10999076:	cc                                              	int3
10999077:	cc                                              	int3
10999078:	cc                                              	int3
10999079:	cc                                              	int3
1099907a:	cc                                              	int3
1099907b:	cc                                              	int3
1099907c:	cc                                              	int3
1099907d:	cc                                              	int3
1099907e:	cc                                              	int3
1099907f:	cc                                              	int3
