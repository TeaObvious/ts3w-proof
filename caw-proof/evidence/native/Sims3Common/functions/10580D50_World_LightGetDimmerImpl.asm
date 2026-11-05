# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580d50 (World_LightGetDimmerImpl)
Paired Ghidra pseudocode: 10580D50_World_LightGetDimmerImpl.c
Window: [0x10580d50, 0x10580d70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580d70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580d50: 8b 44 24 08 8b 4c 24 04 50 51 e8 a1 bc ff ff 83
10580d60: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10580d50 <.text+0x57fd50>:
10580d50:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10580d54:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10580d58:	50                                              	push   eax
10580d59:	51                                              	push   ecx
10580d5a:	e8 a1 bc ff ff                                  	call   0x1057ca00
10580d5f:	83 c4 08                                        	add    esp,0x8
10580d62:	c3                                              	ret
10580d63:	cc                                              	int3
10580d64:	cc                                              	int3
10580d65:	cc                                              	int3
10580d66:	cc                                              	int3
10580d67:	cc                                              	int3
10580d68:	cc                                              	int3
10580d69:	cc                                              	int3
10580d6a:	cc                                              	int3
10580d6b:	cc                                              	int3
10580d6c:	cc                                              	int3
10580d6d:	cc                                              	int3
10580d6e:	cc                                              	int3
10580d6f:	cc                                              	int3
