# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997f00 (WorldWrap_GetPondAtVertex)
Paired Ghidra pseudocode: 10997F00_WorldWrap_GetPondAtVertex.c
Window: [0x10997f00, 0x10997f20) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997f20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997f00: d9 44 24 0c 8b 4c 24 04 6a 01 83 ec 08 d9 5c 24
10997f10: 04 d9 44 24 14 d9 1c 24 e8 c3 cd 89 ff c3 cc cc

LINEAR DISASSEMBLY
10997f00 <.text+0x996f00>:
10997f00:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10997f04:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997f08:	6a 01                                           	push   0x1
10997f0a:	83 ec 08                                        	sub    esp,0x8
10997f0d:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10997f11:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
10997f15:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10997f18:	e8 c3 cd 89 ff                                  	call   0x10234ce0
10997f1d:	c3                                              	ret
10997f1e:	cc                                              	int3
10997f1f:	cc                                              	int3
