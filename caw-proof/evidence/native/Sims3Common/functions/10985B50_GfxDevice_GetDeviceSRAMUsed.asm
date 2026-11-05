# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985b50 (GfxDevice_GetDeviceSRAMUsed)
Paired Ghidra pseudocode: 10985B50_GfxDevice_GetDeviceSRAMUsed.c
Window: [0x10985b50, 0x10985b70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985b70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985b50: e8 6b 39 a8 ff 85 c0 74 07 8b c8 e9 10 5c a8 ff
10985b60: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10985b50 <.text+0x984b50>:
10985b50:	e8 6b 39 a8 ff                                  	call   0x104094c0
10985b55:	85 c0                                           	test   eax,eax
10985b57:	74 07                                           	je     0x10985b60
10985b59:	8b c8                                           	mov    ecx,eax
10985b5b:	e9 10 5c a8 ff                                  	jmp    0x1040b770
10985b60:	33 c0                                           	xor    eax,eax
10985b62:	c3                                              	ret
10985b63:	cc                                              	int3
10985b64:	cc                                              	int3
10985b65:	cc                                              	int3
10985b66:	cc                                              	int3
10985b67:	cc                                              	int3
10985b68:	cc                                              	int3
10985b69:	cc                                              	int3
10985b6a:	cc                                              	int3
10985b6b:	cc                                              	int3
10985b6c:	cc                                              	int3
10985b6d:	cc                                              	int3
10985b6e:	cc                                              	int3
10985b6f:	cc                                              	int3
