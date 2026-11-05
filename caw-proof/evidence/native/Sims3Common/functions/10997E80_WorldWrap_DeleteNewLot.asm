# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997e80 (WorldWrap_DeleteNewLot)
Paired Ghidra pseudocode: 10997E80_WorldWrap_DeleteNewLot.c
Window: [0x10997e80, 0x10997ea0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997ea0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997e80: 8b 4c 24 04 85 c9 74 0a 8b 44 24 08 50 e8 2e 24
10997e90: 8a ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997e80 <.text+0x996e80>:
10997e80:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997e84:	85 c9                                           	test   ecx,ecx
10997e86:	74 0a                                           	je     0x10997e92
10997e88:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10997e8c:	50                                              	push   eax
10997e8d:	e8 2e 24 8a ff                                  	call   0x1023a2c0
10997e92:	c3                                              	ret
10997e93:	cc                                              	int3
10997e94:	cc                                              	int3
10997e95:	cc                                              	int3
10997e96:	cc                                              	int3
10997e97:	cc                                              	int3
10997e98:	cc                                              	int3
10997e99:	cc                                              	int3
10997e9a:	cc                                              	int3
10997e9b:	cc                                              	int3
10997e9c:	cc                                              	int3
10997e9d:	cc                                              	int3
10997e9e:	cc                                              	int3
10997e9f:	cc                                              	int3
