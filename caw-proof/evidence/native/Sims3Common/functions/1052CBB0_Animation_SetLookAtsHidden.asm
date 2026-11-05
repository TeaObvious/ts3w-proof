# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052cbb0 (Animation_SetLookAtsHidden)
Paired Ghidra pseudocode: 1052CBB0_Animation_SetLookAtsHidden.c
Window: [0x1052cbb0, 0x1052cc00) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052cc00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052cbb0: e8 eb d5 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
1052cbc0: c8 e8 ea df 1f 00 85 c0 74 28 8b 0d c4 0c c8 10
1052cbd0: 51 8b c8 e8 c8 a1 1f 00 85 c0 74 16 80 7c 24 0c
1052cbe0: 00 74 08 81 48 2c 00 20 00 00 c3 81 60 2c ff df
1052cbf0: ff ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052cbb0 <.text+0x52bbb0>:
1052cbb0:	e8 eb d5 1f 00                                  	call   0x1072a1a0
1052cbb5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1052cbb9:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1052cbbd:	51                                              	push   ecx
1052cbbe:	52                                              	push   edx
1052cbbf:	8b c8                                           	mov    ecx,eax
1052cbc1:	e8 ea df 1f 00                                  	call   0x1072abb0
1052cbc6:	85 c0                                           	test   eax,eax
1052cbc8:	74 28                                           	je     0x1052cbf2
1052cbca:	8b 0d c4 0c c8 10                               	mov    ecx,DWORD PTR ds:0x10c80cc4
1052cbd0:	51                                              	push   ecx
1052cbd1:	8b c8                                           	mov    ecx,eax
1052cbd3:	e8 c8 a1 1f 00                                  	call   0x10726da0
1052cbd8:	85 c0                                           	test   eax,eax
1052cbda:	74 16                                           	je     0x1052cbf2
1052cbdc:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
1052cbe1:	74 08                                           	je     0x1052cbeb
1052cbe3:	81 48 2c 00 20 00 00                            	or     DWORD PTR [eax+0x2c],0x2000
1052cbea:	c3                                              	ret
1052cbeb:	81 60 2c ff df ff ff                            	and    DWORD PTR [eax+0x2c],0xffffdfff
1052cbf2:	c3                                              	ret
1052cbf3:	cc                                              	int3
1052cbf4:	cc                                              	int3
1052cbf5:	cc                                              	int3
1052cbf6:	cc                                              	int3
1052cbf7:	cc                                              	int3
1052cbf8:	cc                                              	int3
1052cbf9:	cc                                              	int3
1052cbfa:	cc                                              	int3
1052cbfb:	cc                                              	int3
1052cbfc:	cc                                              	int3
1052cbfd:	cc                                              	int3
1052cbfe:	cc                                              	int3
1052cbff:	cc                                              	int3
