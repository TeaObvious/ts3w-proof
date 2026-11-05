# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109960d0 (ObjectManagerWrap_RemoveReferenceGivenId)
Paired Ghidra pseudocode: 109960D0_ObjectManagerWrap_RemoveReferenceGivenId.c
Window: [0x109960d0, 0x109960f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109960f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109960d0: 8b 4c 24 04 85 c9 74 15 8b 01 8b 40 50 6a 01 8d
109960e0: 54 24 0c 52 ff d0 f6 d8 1b c0 f7 d8 c3 33 c0 c3

LINEAR DISASSEMBLY
109960d0 <.text+0x9950d0>:
109960d0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109960d4:	85 c9                                           	test   ecx,ecx
109960d6:	74 15                                           	je     0x109960ed
109960d8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109960da:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
109960dd:	6a 01                                           	push   0x1
109960df:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
109960e3:	52                                              	push   edx
109960e4:	ff d0                                           	call   eax
109960e6:	f6 d8                                           	neg    al
109960e8:	1b c0                                           	sbb    eax,eax
109960ea:	f7 d8                                           	neg    eax
109960ec:	c3                                              	ret
109960ed:	33 c0                                           	xor    eax,eax
109960ef:	c3                                              	ret
