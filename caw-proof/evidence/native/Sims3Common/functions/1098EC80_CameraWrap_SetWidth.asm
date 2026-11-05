# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ec80 (CameraWrap_SetWidth)
Paired Ghidra pseudocode: 1098EC80_CameraWrap_SetWidth.c
Window: [0x1098ec80, 0x1098eca0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098eca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ec80: d9 44 24 08 51 8b 4c 24 08 d9 1c 24 e8 5f 3c dc
1098ec90: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ec80 <.text+0x98dc80>:
1098ec80:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1098ec84:	51                                              	push   ecx
1098ec85:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098ec89:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098ec8c:	e8 5f 3c dc ff                                  	call   0x107528f0
1098ec91:	c3                                              	ret
1098ec92:	cc                                              	int3
1098ec93:	cc                                              	int3
1098ec94:	cc                                              	int3
1098ec95:	cc                                              	int3
1098ec96:	cc                                              	int3
1098ec97:	cc                                              	int3
1098ec98:	cc                                              	int3
1098ec99:	cc                                              	int3
1098ec9a:	cc                                              	int3
1098ec9b:	cc                                              	int3
1098ec9c:	cc                                              	int3
1098ec9d:	cc                                              	int3
1098ec9e:	cc                                              	int3
1098ec9f:	cc                                              	int3
