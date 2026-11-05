# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996050 (ObjectManagerWrap_AddReference)
Paired Ghidra pseudocode: 10996050_ObjectManagerWrap_AddReference.c
Window: [0x10996050, 0x10996070) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996050: 8b 4c 24 04 85 c9 74 13 8b 01 8b 54 24 08 8b 40
10996060: 44 52 ff d0 f6 d8 1b c0 f7 d8 c3 33 c0 c3 cc cc

LINEAR DISASSEMBLY
10996050 <.text+0x995050>:
10996050:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10996054:	85 c9                                           	test   ecx,ecx
10996056:	74 13                                           	je     0x1099606b
10996058:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1099605a:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1099605e:	8b 40 44                                        	mov    eax,DWORD PTR [eax+0x44]
10996061:	52                                              	push   edx
10996062:	ff d0                                           	call   eax
10996064:	f6 d8                                           	neg    al
10996066:	1b c0                                           	sbb    eax,eax
10996068:	f7 d8                                           	neg    eax
1099606a:	c3                                              	ret
1099606b:	33 c0                                           	xor    eax,eax
1099606d:	c3                                              	ret
1099606e:	cc                                              	int3
1099606f:	cc                                              	int3
