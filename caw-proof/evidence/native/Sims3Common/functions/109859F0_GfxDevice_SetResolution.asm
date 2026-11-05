# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109859f0 (GfxDevice_SetResolution)
Paired Ghidra pseudocode: 109859F0_GfxDevice_SetResolution.c
Window: [0x109859f0, 0x10985a10) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985a10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109859f0: 8b 0d e8 35 c7 10 85 c9 74 11 8b 44 24 08 8b 54
10985a00: 24 04 6a 00 50 52 e8 45 3d a8 ff c3 cc cc cc cc

LINEAR DISASSEMBLY
109859f0 <.text+0x9849f0>:
109859f0:	8b 0d e8 35 c7 10                               	mov    ecx,DWORD PTR ds:0x10c735e8
109859f6:	85 c9                                           	test   ecx,ecx
109859f8:	74 11                                           	je     0x10985a0b
109859fa:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109859fe:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10985a02:	6a 00                                           	push   0x0
10985a04:	50                                              	push   eax
10985a05:	52                                              	push   edx
10985a06:	e8 45 3d a8 ff                                  	call   0x10409750
10985a0b:	c3                                              	ret
10985a0c:	cc                                              	int3
10985a0d:	cc                                              	int3
10985a0e:	cc                                              	int3
10985a0f:	cc                                              	int3
