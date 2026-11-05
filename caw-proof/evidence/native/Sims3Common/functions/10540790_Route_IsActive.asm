# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540790 (Route_IsActive)
Paired Ghidra pseudocode: 10540790_Route_IsActive.c
Window: [0x10540790, 0x105407d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105407d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540790: 8b 0d 44 89 c7 10 85 c9 56 74 2b 8b 44 24 08 50
105407a0: e8 4b b9 ff ff 8b f0 85 f6 74 1b 8b 16 8b 42 10
105407b0: 53 8b ce ff d0 8b 16 8b 42 14 8a 5e 60 8b ce ff
105407c0: d0 8a c3 5b 5e c3 32 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540790 <.text+0x53f790>:
10540790:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10540796:	85 c9                                           	test   ecx,ecx
10540798:	56                                              	push   esi
10540799:	74 2b                                           	je     0x105407c6
1054079b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1054079f:	50                                              	push   eax
105407a0:	e8 4b b9 ff ff                                  	call   0x1053c0f0
105407a5:	8b f0                                           	mov    esi,eax
105407a7:	85 f6                                           	test   esi,esi
105407a9:	74 1b                                           	je     0x105407c6
105407ab:	8b 16                                           	mov    edx,DWORD PTR [esi]
105407ad:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
105407b0:	53                                              	push   ebx
105407b1:	8b ce                                           	mov    ecx,esi
105407b3:	ff d0                                           	call   eax
105407b5:	8b 16                                           	mov    edx,DWORD PTR [esi]
105407b7:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
105407ba:	8a 5e 60                                        	mov    bl,BYTE PTR [esi+0x60]
105407bd:	8b ce                                           	mov    ecx,esi
105407bf:	ff d0                                           	call   eax
105407c1:	8a c3                                           	mov    al,bl
105407c3:	5b                                              	pop    ebx
105407c4:	5e                                              	pop    esi
105407c5:	c3                                              	ret
105407c6:	32 c0                                           	xor    al,al
105407c8:	5e                                              	pop    esi
105407c9:	c3                                              	ret
105407ca:	cc                                              	int3
105407cb:	cc                                              	int3
105407cc:	cc                                              	int3
105407cd:	cc                                              	int3
105407ce:	cc                                              	int3
105407cf:	cc                                              	int3
