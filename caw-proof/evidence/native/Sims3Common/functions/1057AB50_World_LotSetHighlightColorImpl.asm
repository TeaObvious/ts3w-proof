# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ab50 (World_LotSetHighlightColorImpl)
Paired Ghidra pseudocode: 1057AB50_World_LotSetHighlightColorImpl.c
Window: [0x1057ab50, 0x1057aba0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057aba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ab50: 8b 0d c4 00 c7 10 85 c9 74 36 8b 44 24 08 8b 54
1057ab60: 24 04 6a 00 50 52 e8 a5 c4 cb ff 85 c0 74 21 d9
1057ab70: 44 24 14 83 ec 0c d9 5c 24 08 8b c8 d9 44 24 1c
1057ab80: d9 5c 24 04 d9 44 24 18 d9 1c 24 e8 60 fc af ff
1057ab90: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057ab50 <.text+0x579b50>:
1057ab50:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057ab56:	85 c9                                           	test   ecx,ecx
1057ab58:	74 36                                           	je     0x1057ab90
1057ab5a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057ab5e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057ab62:	6a 00                                           	push   0x0
1057ab64:	50                                              	push   eax
1057ab65:	52                                              	push   edx
1057ab66:	e8 a5 c4 cb ff                                  	call   0x10237010
1057ab6b:	85 c0                                           	test   eax,eax
1057ab6d:	74 21                                           	je     0x1057ab90
1057ab6f:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
1057ab73:	83 ec 0c                                        	sub    esp,0xc
1057ab76:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
1057ab7a:	8b c8                                           	mov    ecx,eax
1057ab7c:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
1057ab80:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1057ab84:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
1057ab88:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1057ab8b:	e8 60 fc af ff                                  	call   0x1007a7f0
1057ab90:	c3                                              	ret
1057ab91:	cc                                              	int3
1057ab92:	cc                                              	int3
1057ab93:	cc                                              	int3
1057ab94:	cc                                              	int3
1057ab95:	cc                                              	int3
1057ab96:	cc                                              	int3
1057ab97:	cc                                              	int3
1057ab98:	cc                                              	int3
1057ab99:	cc                                              	int3
1057ab9a:	cc                                              	int3
1057ab9b:	cc                                              	int3
1057ab9c:	cc                                              	int3
1057ab9d:	cc                                              	int3
1057ab9e:	cc                                              	int3
1057ab9f:	cc                                              	int3
