# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985b30 (GfxDevice_GetDeviceVRAMUsed)
Paired Ghidra pseudocode: 10985B30_GfxDevice_GetDeviceVRAMUsed.c
Window: [0x10985b30, 0x10985b50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985b30: e8 8b 39 a8 ff 85 c0 74 07 8b c8 e9 e0 5b a8 ff
10985b40: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10985b30 <.text+0x984b30>:
10985b30:	e8 8b 39 a8 ff                                  	call   0x104094c0
10985b35:	85 c0                                           	test   eax,eax
10985b37:	74 07                                           	je     0x10985b40
10985b39:	8b c8                                           	mov    ecx,eax
10985b3b:	e9 e0 5b a8 ff                                  	jmp    0x1040b720
10985b40:	33 c0                                           	xor    eax,eax
10985b42:	c3                                              	ret
10985b43:	cc                                              	int3
10985b44:	cc                                              	int3
10985b45:	cc                                              	int3
10985b46:	cc                                              	int3
10985b47:	cc                                              	int3
10985b48:	cc                                              	int3
10985b49:	cc                                              	int3
10985b4a:	cc                                              	int3
10985b4b:	cc                                              	int3
10985b4c:	cc                                              	int3
10985b4d:	cc                                              	int3
10985b4e:	cc                                              	int3
10985b4f:	cc                                              	int3
