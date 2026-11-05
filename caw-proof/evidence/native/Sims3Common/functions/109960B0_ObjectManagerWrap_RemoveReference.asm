# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109960b0 (ObjectManagerWrap_RemoveReference)
Paired Ghidra pseudocode: 109960B0_ObjectManagerWrap_RemoveReference.c
Window: [0x109960b0, 0x109960d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109960d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109960b0: 8b 4c 24 04 85 c9 74 15 8b 01 8b 54 24 08 8b 40
109960c0: 54 6a 01 52 ff d0 f6 d8 1b c0 f7 d8 c3 33 c0 c3

LINEAR DISASSEMBLY
109960b0 <.text+0x9950b0>:
109960b0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109960b4:	85 c9                                           	test   ecx,ecx
109960b6:	74 15                                           	je     0x109960cd
109960b8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109960ba:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
109960be:	8b 40 54                                        	mov    eax,DWORD PTR [eax+0x54]
109960c1:	6a 01                                           	push   0x1
109960c3:	52                                              	push   edx
109960c4:	ff d0                                           	call   eax
109960c6:	f6 d8                                           	neg    al
109960c8:	1b c0                                           	sbb    eax,eax
109960ca:	f7 d8                                           	neg    eax
109960cc:	c3                                              	ret
109960cd:	33 c0                                           	xor    eax,eax
109960cf:	c3                                              	ret
