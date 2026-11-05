# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a59b0 (CASUtils_TextSearchEndSearchImpl)
Paired Ghidra pseudocode: 103A59B0_CASUtils_TextSearchEndSearchImpl.c
Window: [0x103a59b0, 0x103a59f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a59f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a59b0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a59c0: 35 75 22 e8 58 57 1b 00 8b 10 8b c8 8b 82 cc 00
103a59d0: 00 00 56 ff d0 85 c0 74 0c 8b 4c 24 0c 51 8b c8
103a59e0: e8 1b fd ff ff 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a59b0 <.text+0x3a49b0>:
103a59b0:	56                                              	push   esi
103a59b1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a59b5:	8b c6                                           	mov    eax,esi
103a59b7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a59bc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a59c1:	75 22                                           	jne    0x103a59e5
103a59c3:	e8 58 57 1b 00                                  	call   0x1055b120
103a59c8:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a59ca:	8b c8                                           	mov    ecx,eax
103a59cc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a59d2:	56                                              	push   esi
103a59d3:	ff d0                                           	call   eax
103a59d5:	85 c0                                           	test   eax,eax
103a59d7:	74 0c                                           	je     0x103a59e5
103a59d9:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
103a59dd:	51                                              	push   ecx
103a59de:	8b c8                                           	mov    ecx,eax
103a59e0:	e8 1b fd ff ff                                  	call   0x103a5700
103a59e5:	5e                                              	pop    esi
103a59e6:	c3                                              	ret
103a59e7:	cc                                              	int3
103a59e8:	cc                                              	int3
103a59e9:	cc                                              	int3
103a59ea:	cc                                              	int3
103a59eb:	cc                                              	int3
103a59ec:	cc                                              	int3
103a59ed:	cc                                              	int3
103a59ee:	cc                                              	int3
103a59ef:	cc                                              	int3
