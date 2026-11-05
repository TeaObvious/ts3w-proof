# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a0190 (CASUtils_CompoundBlendGetAgeGenderImpl)
Paired Ghidra pseudocode: 103A0190_CASUtils_CompoundBlendGetAgeGenderImpl.c
Window: [0x103a0190, 0x103a01d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a01d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a0190: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a01a0: 35 74 04 33 c0 5e c3 e8 74 af 1b 00 8b 10 8b c8
103a01b0: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 40 38
103a01c0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a0190 <.text+0x39f190>:
103a0190:	56                                              	push   esi
103a0191:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a0195:	8b c6                                           	mov    eax,esi
103a0197:	25 00 00 00 ff                                  	and    eax,0xff000000
103a019c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a01a1:	74 04                                           	je     0x103a01a7
103a01a3:	33 c0                                           	xor    eax,eax
103a01a5:	5e                                              	pop    esi
103a01a6:	c3                                              	ret
103a01a7:	e8 74 af 1b 00                                  	call   0x1055b120
103a01ac:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a01ae:	8b c8                                           	mov    ecx,eax
103a01b0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a01b6:	56                                              	push   esi
103a01b7:	ff d0                                           	call   eax
103a01b9:	85 c0                                           	test   eax,eax
103a01bb:	74 e6                                           	je     0x103a01a3
103a01bd:	8b 40 38                                        	mov    eax,DWORD PTR [eax+0x38]
103a01c0:	5e                                              	pop    esi
103a01c1:	c3                                              	ret
103a01c2:	cc                                              	int3
103a01c3:	cc                                              	int3
103a01c4:	cc                                              	int3
103a01c5:	cc                                              	int3
103a01c6:	cc                                              	int3
103a01c7:	cc                                              	int3
103a01c8:	cc                                              	int3
103a01c9:	cc                                              	int3
103a01ca:	cc                                              	int3
103a01cb:	cc                                              	int3
103a01cc:	cc                                              	int3
103a01cd:	cc                                              	int3
103a01ce:	cc                                              	int3
103a01cf:	cc                                              	int3
