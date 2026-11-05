# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985a30 (GfxDevice_SetWindowedMode)
Paired Ghidra pseudocode: 10985A30_GfxDevice_SetWindowedMode.c
Window: [0x10985a30, 0x10985a50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985a50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985a30: 8b 0d e8 35 c7 10 85 c9 74 0a 8b 44 24 04 50 e8
10985a40: dc 3c a8 ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10985a30 <.text+0x984a30>:
10985a30:	8b 0d e8 35 c7 10                               	mov    ecx,DWORD PTR ds:0x10c735e8
10985a36:	85 c9                                           	test   ecx,ecx
10985a38:	74 0a                                           	je     0x10985a44
10985a3a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10985a3e:	50                                              	push   eax
10985a3f:	e8 dc 3c a8 ff                                  	call   0x10409720
10985a44:	c3                                              	ret
10985a45:	cc                                              	int3
10985a46:	cc                                              	int3
10985a47:	cc                                              	int3
10985a48:	cc                                              	int3
10985a49:	cc                                              	int3
10985a4a:	cc                                              	int3
10985a4b:	cc                                              	int3
10985a4c:	cc                                              	int3
10985a4d:	cc                                              	int3
10985a4e:	cc                                              	int3
10985a4f:	cc                                              	int3
