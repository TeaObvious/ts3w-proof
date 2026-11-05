# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105409a0 (RouteEvent_GetData)
Paired Ghidra pseudocode: 105409A0_RouteEvent_GetData.c
Window: [0x105409a0, 0x105409e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105409e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105409a0: 8b 0d 44 89 c7 10 85 c9 56 74 2a 8b 44 24 08 50
105409b0: e8 9b b7 ff ff 8b f0 85 f6 74 1a 8b 16 8b 02 57
105409c0: 8b ce ff d0 8b 16 8b 42 04 8b 7e 60 8b ce ff d0
105409d0: 8b c7 5f 5e c3 33 c0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105409a0 <.text+0x53f9a0>:
105409a0:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
105409a6:	85 c9                                           	test   ecx,ecx
105409a8:	56                                              	push   esi
105409a9:	74 2a                                           	je     0x105409d5
105409ab:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105409af:	50                                              	push   eax
105409b0:	e8 9b b7 ff ff                                  	call   0x1053c150
105409b5:	8b f0                                           	mov    esi,eax
105409b7:	85 f6                                           	test   esi,esi
105409b9:	74 1a                                           	je     0x105409d5
105409bb:	8b 16                                           	mov    edx,DWORD PTR [esi]
105409bd:	8b 02                                           	mov    eax,DWORD PTR [edx]
105409bf:	57                                              	push   edi
105409c0:	8b ce                                           	mov    ecx,esi
105409c2:	ff d0                                           	call   eax
105409c4:	8b 16                                           	mov    edx,DWORD PTR [esi]
105409c6:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
105409c9:	8b 7e 60                                        	mov    edi,DWORD PTR [esi+0x60]
105409cc:	8b ce                                           	mov    ecx,esi
105409ce:	ff d0                                           	call   eax
105409d0:	8b c7                                           	mov    eax,edi
105409d2:	5f                                              	pop    edi
105409d3:	5e                                              	pop    esi
105409d4:	c3                                              	ret
105409d5:	33 c0                                           	xor    eax,eax
105409d7:	5e                                              	pop    esi
105409d8:	c3                                              	ret
105409d9:	cc                                              	int3
105409da:	cc                                              	int3
105409db:	cc                                              	int3
105409dc:	cc                                              	int3
105409dd:	cc                                              	int3
105409de:	cc                                              	int3
105409df:	cc                                              	int3
