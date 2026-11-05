# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109960f0 (ObjectManagerWrap_GetReferenceCount)
Paired Ghidra pseudocode: 109960F0_ObjectManagerWrap_GetReferenceCount.c
Window: [0x109960f0, 0x10996110) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109960f0: 8b 4c 24 04 85 c9 74 07 8b 01 8b 50 58 ff e2 33
10996100: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109960f0 <.text+0x9950f0>:
109960f0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109960f4:	85 c9                                           	test   ecx,ecx
109960f6:	74 07                                           	je     0x109960ff
109960f8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109960fa:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
109960fd:	ff e2                                           	jmp    edx
109960ff:	33 c0                                           	xor    eax,eax
10996101:	c3                                              	ret
10996102:	cc                                              	int3
10996103:	cc                                              	int3
10996104:	cc                                              	int3
10996105:	cc                                              	int3
10996106:	cc                                              	int3
10996107:	cc                                              	int3
10996108:	cc                                              	int3
10996109:	cc                                              	int3
1099610a:	cc                                              	int3
1099610b:	cc                                              	int3
1099610c:	cc                                              	int3
1099610d:	cc                                              	int3
1099610e:	cc                                              	int3
1099610f:	cc                                              	int3
