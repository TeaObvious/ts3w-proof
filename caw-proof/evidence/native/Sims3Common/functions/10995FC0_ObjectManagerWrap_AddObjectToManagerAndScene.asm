# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995fc0 (ObjectManagerWrap_AddObjectToManagerAndScene)
Paired Ghidra pseudocode: 10995FC0_ObjectManagerWrap_AddObjectToManagerAndScene.c
Window: [0x10995fc0, 0x10995fe0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995fe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995fc0: 8b 4c 24 04 85 c9 74 15 8b 44 24 08 85 c0 74 0d
10995fd0: 50 e8 3a d2 8a ff f6 d8 1b c0 f7 d8 c3 33 c0 c3

LINEAR DISASSEMBLY
10995fc0 <.text+0x994fc0>:
10995fc0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10995fc4:	85 c9                                           	test   ecx,ecx
10995fc6:	74 15                                           	je     0x10995fdd
10995fc8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10995fcc:	85 c0                                           	test   eax,eax
10995fce:	74 0d                                           	je     0x10995fdd
10995fd0:	50                                              	push   eax
10995fd1:	e8 3a d2 8a ff                                  	call   0x10243210
10995fd6:	f6 d8                                           	neg    al
10995fd8:	1b c0                                           	sbb    eax,eax
10995fda:	f7 d8                                           	neg    eax
10995fdc:	c3                                              	ret
10995fdd:	33 c0                                           	xor    eax,eax
10995fdf:	c3                                              	ret
