# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109926b0 (Sims3PackFile_GetFileCrc)
Paired Ghidra pseudocode: 109926B0_Sims3PackFile_GetFileCrc.c
Window: [0x109926b0, 0x109926d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109926d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109926b0: 8b 44 24 08 8b 4c 24 04 50 e8 a2 1b e2 ff 8b c8
109926c0: 85 c9 74 07 8b 41 18 8b 51 1c c3 33 c0 33 d2 c3

LINEAR DISASSEMBLY
109926b0 <.text+0x9916b0>:
109926b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109926b4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109926b8:	50                                              	push   eax
109926b9:	e8 a2 1b e2 ff                                  	call   0x107b4260
109926be:	8b c8                                           	mov    ecx,eax
109926c0:	85 c9                                           	test   ecx,ecx
109926c2:	74 07                                           	je     0x109926cb
109926c4:	8b 41 18                                        	mov    eax,DWORD PTR [ecx+0x18]
109926c7:	8b 51 1c                                        	mov    edx,DWORD PTR [ecx+0x1c]
109926ca:	c3                                              	ret
109926cb:	33 c0                                           	xor    eax,eax
109926cd:	33 d2                                           	xor    edx,edx
109926cf:	c3                                              	ret
