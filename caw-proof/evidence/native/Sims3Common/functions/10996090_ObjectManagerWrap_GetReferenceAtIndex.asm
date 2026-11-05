# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996090 (ObjectManagerWrap_GetReferenceAtIndex)
Paired Ghidra pseudocode: 10996090_ObjectManagerWrap_GetReferenceAtIndex.c
Window: [0x10996090, 0x109960b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109960b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996090: 8b 4c 24 04 85 c9 74 0d 8b 01 8b 40 4c 8d 54 24
109960a0: 08 52 ff d0 c3 33 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996090 <.text+0x995090>:
10996090:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10996094:	85 c9                                           	test   ecx,ecx
10996096:	74 0d                                           	je     0x109960a5
10996098:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1099609a:	8b 40 4c                                        	mov    eax,DWORD PTR [eax+0x4c]
1099609d:	8d 54 24 08                                     	lea    edx,[esp+0x8]
109960a1:	52                                              	push   edx
109960a2:	ff d0                                           	call   eax
109960a4:	c3                                              	ret
109960a5:	33 c0                                           	xor    eax,eax
109960a7:	c3                                              	ret
109960a8:	cc                                              	int3
109960a9:	cc                                              	int3
109960aa:	cc                                              	int3
109960ab:	cc                                              	int3
109960ac:	cc                                              	int3
109960ad:	cc                                              	int3
109960ae:	cc                                              	int3
109960af:	cc                                              	int3
