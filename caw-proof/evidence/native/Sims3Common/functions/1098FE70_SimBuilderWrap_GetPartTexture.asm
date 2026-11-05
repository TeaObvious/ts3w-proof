# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fe70 (SimBuilderWrap_GetPartTexture)
Paired Ghidra pseudocode: 1098FE70_SimBuilderWrap_GetPartTexture.c
Window: [0x1098fe70, 0x1098fe90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fe90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fe70: 8b 44 24 0c 8b 4c 24 08 50 51 8b 4c 24 0c e8 2d
1098fe80: b5 a4 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098fe70 <.text+0x98ee70>:
1098fe70:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098fe74:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098fe78:	50                                              	push   eax
1098fe79:	51                                              	push   ecx
1098fe7a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098fe7e:	e8 2d b5 a4 ff                                  	call   0x103db3b0
1098fe83:	c3                                              	ret
1098fe84:	cc                                              	int3
1098fe85:	cc                                              	int3
1098fe86:	cc                                              	int3
1098fe87:	cc                                              	int3
1098fe88:	cc                                              	int3
1098fe89:	cc                                              	int3
1098fe8a:	cc                                              	int3
1098fe8b:	cc                                              	int3
1098fe8c:	cc                                              	int3
1098fe8d:	cc                                              	int3
1098fe8e:	cc                                              	int3
1098fe8f:	cc                                              	int3
