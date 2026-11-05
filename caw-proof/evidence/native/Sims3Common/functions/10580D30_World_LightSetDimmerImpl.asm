# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580d30 (World_LightSetDimmerImpl)
Paired Ghidra pseudocode: 10580D30_World_LightSetDimmerImpl.c
Window: [0x10580d30, 0x10580d50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580d50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580d30: d9 44 24 0c 8b 44 24 08 51 8b 4c 24 08 d9 1c 24
10580d40: 50 51 e8 d9 ba ff ff 83 c4 0c c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10580d30 <.text+0x57fd30>:
10580d30:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10580d34:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10580d38:	51                                              	push   ecx
10580d39:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10580d3d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10580d40:	50                                              	push   eax
10580d41:	51                                              	push   ecx
10580d42:	e8 d9 ba ff ff                                  	call   0x1057c820
10580d47:	83 c4 0c                                        	add    esp,0xc
10580d4a:	c3                                              	ret
10580d4b:	cc                                              	int3
10580d4c:	cc                                              	int3
10580d4d:	cc                                              	int3
10580d4e:	cc                                              	int3
10580d4f:	cc                                              	int3
