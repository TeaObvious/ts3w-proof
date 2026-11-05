# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989a40 (PondWrap_Init)
Paired Ghidra pseudocode: 10989A40_PondWrap_Init.c
Window: [0x10989a40, 0x10989a70) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989a70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989a40: d9 44 24 10 8b 44 24 0c 51 8b 4c 24 0c d9 1c 24
10989a50: 50 51 8b 4c 24 10 e8 e5 1d 7a ff f6 d8 1b c0 f7
10989a60: d8 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10989a40 <.text+0x988a40>:
10989a40:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
10989a44:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10989a48:	51                                              	push   ecx
10989a49:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10989a4d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10989a50:	50                                              	push   eax
10989a51:	51                                              	push   ecx
10989a52:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10989a56:	e8 e5 1d 7a ff                                  	call   0x1012b840
10989a5b:	f6 d8                                           	neg    al
10989a5d:	1b c0                                           	sbb    eax,eax
10989a5f:	f7 d8                                           	neg    eax
10989a61:	c3                                              	ret
10989a62:	cc                                              	int3
10989a63:	cc                                              	int3
10989a64:	cc                                              	int3
10989a65:	cc                                              	int3
10989a66:	cc                                              	int3
10989a67:	cc                                              	int3
10989a68:	cc                                              	int3
10989a69:	cc                                              	int3
10989a6a:	cc                                              	int3
10989a6b:	cc                                              	int3
10989a6c:	cc                                              	int3
10989a6d:	cc                                              	int3
10989a6e:	cc                                              	int3
10989a6f:	cc                                              	int3
