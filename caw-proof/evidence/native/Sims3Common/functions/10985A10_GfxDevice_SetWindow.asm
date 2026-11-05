# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985a10 (GfxDevice_SetWindow)
Paired Ghidra pseudocode: 10985A10_GfxDevice_SetWindow.c
Window: [0x10985a10, 0x10985a30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985a30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985a10: 8b 0d e8 35 c7 10 85 c9 74 0a 8b 44 24 04 50 e8
10985a20: dc c0 b3 ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10985a10 <.text+0x984a10>:
10985a10:	8b 0d e8 35 c7 10                               	mov    ecx,DWORD PTR ds:0x10c735e8
10985a16:	85 c9                                           	test   ecx,ecx
10985a18:	74 0a                                           	je     0x10985a24
10985a1a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10985a1e:	50                                              	push   eax
10985a1f:	e8 dc c0 b3 ff                                  	call   0x104c1b00
10985a24:	c3                                              	ret
10985a25:	cc                                              	int3
10985a26:	cc                                              	int3
10985a27:	cc                                              	int3
10985a28:	cc                                              	int3
10985a29:	cc                                              	int3
10985a2a:	cc                                              	int3
10985a2b:	cc                                              	int3
10985a2c:	cc                                              	int3
10985a2d:	cc                                              	int3
10985a2e:	cc                                              	int3
10985a2f:	cc                                              	int3
