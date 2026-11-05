# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b7a0 (World_SetWallCutoutStateForObjectImpl)
Paired Ghidra pseudocode: 1057B7A0_World_SetWallCutoutStateForObjectImpl.c
Window: [0x1057b7a0, 0x1057b7e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b7e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b7a0: e8 fb e9 1a 00 8b 4c 24 08 8b 54 24 04 51 52 8b
1057b7b0: c8 e8 fa f3 1a 00 85 c0 74 17 80 7c 24 0c 00 50
1057b7c0: 74 09 e8 d9 76 b5 ff 83 c4 04 c3 e8 90 7b b5 ff
1057b7d0: 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b7a0 <.text+0x57a7a0>:
1057b7a0:	e8 fb e9 1a 00                                  	call   0x1072a1a0
1057b7a5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057b7a9:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b7ad:	51                                              	push   ecx
1057b7ae:	52                                              	push   edx
1057b7af:	8b c8                                           	mov    ecx,eax
1057b7b1:	e8 fa f3 1a 00                                  	call   0x1072abb0
1057b7b6:	85 c0                                           	test   eax,eax
1057b7b8:	74 17                                           	je     0x1057b7d1
1057b7ba:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
1057b7bf:	50                                              	push   eax
1057b7c0:	74 09                                           	je     0x1057b7cb
1057b7c2:	e8 d9 76 b5 ff                                  	call   0x100d2ea0
1057b7c7:	83 c4 04                                        	add    esp,0x4
1057b7ca:	c3                                              	ret
1057b7cb:	e8 90 7b b5 ff                                  	call   0x100d3360
1057b7d0:	59                                              	pop    ecx
1057b7d1:	c3                                              	ret
1057b7d2:	cc                                              	int3
1057b7d3:	cc                                              	int3
1057b7d4:	cc                                              	int3
1057b7d5:	cc                                              	int3
1057b7d6:	cc                                              	int3
1057b7d7:	cc                                              	int3
1057b7d8:	cc                                              	int3
1057b7d9:	cc                                              	int3
1057b7da:	cc                                              	int3
1057b7db:	cc                                              	int3
1057b7dc:	cc                                              	int3
1057b7dd:	cc                                              	int3
1057b7de:	cc                                              	int3
1057b7df:	cc                                              	int3
