# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053eaa0 (RouteEvent_GetData2)
Paired Ghidra pseudocode: 1053EAA0_RouteEvent_GetData2.c
Window: [0x1053eaa0, 0x1053eae0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053eae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053eaa0: 8b 0d 44 89 c7 10 85 c9 56 74 2a 8b 44 24 08 50
1053eab0: e8 9b d6 ff ff 8b f0 85 f6 74 1a 8b 16 8b 02 57
1053eac0: 8b ce ff d0 8b 16 8b 42 04 8b 7e 64 8b ce ff d0
1053ead0: 8b c7 5f 5e c3 33 c0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053eaa0 <.text+0x53daa0>:
1053eaa0:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1053eaa6:	85 c9                                           	test   ecx,ecx
1053eaa8:	56                                              	push   esi
1053eaa9:	74 2a                                           	je     0x1053ead5
1053eaab:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1053eaaf:	50                                              	push   eax
1053eab0:	e8 9b d6 ff ff                                  	call   0x1053c150
1053eab5:	8b f0                                           	mov    esi,eax
1053eab7:	85 f6                                           	test   esi,esi
1053eab9:	74 1a                                           	je     0x1053ead5
1053eabb:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053eabd:	8b 02                                           	mov    eax,DWORD PTR [edx]
1053eabf:	57                                              	push   edi
1053eac0:	8b ce                                           	mov    ecx,esi
1053eac2:	ff d0                                           	call   eax
1053eac4:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053eac6:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1053eac9:	8b 7e 64                                        	mov    edi,DWORD PTR [esi+0x64]
1053eacc:	8b ce                                           	mov    ecx,esi
1053eace:	ff d0                                           	call   eax
1053ead0:	8b c7                                           	mov    eax,edi
1053ead2:	5f                                              	pop    edi
1053ead3:	5e                                              	pop    esi
1053ead4:	c3                                              	ret
1053ead5:	33 c0                                           	xor    eax,eax
1053ead7:	5e                                              	pop    esi
1053ead8:	c3                                              	ret
1053ead9:	cc                                              	int3
1053eada:	cc                                              	int3
1053eadb:	cc                                              	int3
1053eadc:	cc                                              	int3
1053eadd:	cc                                              	int3
1053eade:	cc                                              	int3
1053eadf:	cc                                              	int3
