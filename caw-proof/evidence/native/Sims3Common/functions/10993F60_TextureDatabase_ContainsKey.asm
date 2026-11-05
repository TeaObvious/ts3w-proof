# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993f60 (TextureDatabase_ContainsKey)
Paired Ghidra pseudocode: 10993F60_TextureDatabase_ContainsKey.c
Window: [0x10993f60, 0x10993fb0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993fb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993f60: 8b 4c 24 04 8d 44 24 08 50 83 c1 20 e8 1f dd b8
10993f70: ff f7 d8 1b c0 f7 d8 c3 cc cc cc cc cc cc cc cc
10993f80: 8b 44 24 04 81 78 08 82 d8 b2 00 75 15 8b 40 0c
10993f90: 25 ff ff ff 00 83 f8 01 74 08 b8 01 00 00 00 c2
10993fa0: 04 00 33 c0 c2 04 00 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10993f60 <.text+0x992f60>:
10993f60:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10993f64:	8d 44 24 08                                     	lea    eax,[esp+0x8]
10993f68:	50                                              	push   eax
10993f69:	83 c1 20                                        	add    ecx,0x20
10993f6c:	e8 1f dd b8 ff                                  	call   0x10521c90
10993f71:	f7 d8                                           	neg    eax
10993f73:	1b c0                                           	sbb    eax,eax
10993f75:	f7 d8                                           	neg    eax
10993f77:	c3                                              	ret
10993f78:	cc                                              	int3
10993f79:	cc                                              	int3
10993f7a:	cc                                              	int3
10993f7b:	cc                                              	int3
10993f7c:	cc                                              	int3
10993f7d:	cc                                              	int3
10993f7e:	cc                                              	int3
10993f7f:	cc                                              	int3
10993f80:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10993f84:	81 78 08 82 d8 b2 00                            	cmp    DWORD PTR [eax+0x8],0xb2d882
10993f8b:	75 15                                           	jne    0x10993fa2
10993f8d:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10993f90:	25 ff ff ff 00                                  	and    eax,0xffffff
10993f95:	83 f8 01                                        	cmp    eax,0x1
10993f98:	74 08                                           	je     0x10993fa2
10993f9a:	b8 01 00 00 00                                  	mov    eax,0x1
10993f9f:	c2 04 00                                        	ret    0x4
10993fa2:	33 c0                                           	xor    eax,eax
10993fa4:	c2 04 00                                        	ret    0x4
10993fa7:	cc                                              	int3
10993fa8:	cc                                              	int3
10993fa9:	cc                                              	int3
10993faa:	cc                                              	int3
10993fab:	cc                                              	int3
10993fac:	cc                                              	int3
10993fad:	cc                                              	int3
10993fae:	cc                                              	int3
10993faf:	cc                                              	int3
