# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999120 (WorldWrap_SetBrushVisualSize)
Paired Ghidra pseudocode: 10999120_WorldWrap_SetBrushVisualSize.c
Window: [0x10999120, 0x10999140) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999140
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999120: 8b 44 24 04 8b 48 70 85 c9 74 0d d9 44 24 08 51
10999130: d9 1c 24 e8 38 af 85 ff c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10999120 <.text+0x998120>:
10999120:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10999124:	8b 48 70                                        	mov    ecx,DWORD PTR [eax+0x70]
10999127:	85 c9                                           	test   ecx,ecx
10999129:	74 0d                                           	je     0x10999138
1099912b:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1099912f:	51                                              	push   ecx
10999130:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10999133:	e8 38 af 85 ff                                  	call   0x101f4070
10999138:	c3                                              	ret
10999139:	cc                                              	int3
1099913a:	cc                                              	int3
1099913b:	cc                                              	int3
1099913c:	cc                                              	int3
1099913d:	cc                                              	int3
1099913e:	cc                                              	int3
1099913f:	cc                                              	int3
