# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x106547b0 (Audio_StopGroupImpl)
Paired Ghidra pseudocode: 106547B0_Audio_StopGroupImpl.c
Window: [0x106547b0, 0x10654810) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10654810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
106547b0: 56 e8 aa f4 04 00 8b f0 85 f6 74 43 8b 06 8b 50
106547c0: 44 68 be ce 49 15 8b ce ff d2 8b 4c 24 08 8b 06
106547d0: 8b 50 4c 51 68 49 20 36 04 8b ce ff d2 8b 06 8b
106547e0: 50 4c 33 c9 38 4c 24 0c 0f 95 c1 51 68 a0 53 47
106547f0: 03 8b ce ff d2 8b 06 8b 50 68 8b ce 5e ff e2 5e
10654800: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
106547b0 <.text+0x6537b0>:
106547b0:	56                                              	push   esi
106547b1:	e8 aa f4 04 00                                  	call   0x106a3c60
106547b6:	8b f0                                           	mov    esi,eax
106547b8:	85 f6                                           	test   esi,esi
106547ba:	74 43                                           	je     0x106547ff
106547bc:	8b 06                                           	mov    eax,DWORD PTR [esi]
106547be:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
106547c1:	68 be ce 49 15                                  	push   0x1549cebe
106547c6:	8b ce                                           	mov    ecx,esi
106547c8:	ff d2                                           	call   edx
106547ca:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
106547ce:	8b 06                                           	mov    eax,DWORD PTR [esi]
106547d0:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
106547d3:	51                                              	push   ecx
106547d4:	68 49 20 36 04                                  	push   0x4362049
106547d9:	8b ce                                           	mov    ecx,esi
106547db:	ff d2                                           	call   edx
106547dd:	8b 06                                           	mov    eax,DWORD PTR [esi]
106547df:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
106547e2:	33 c9                                           	xor    ecx,ecx
106547e4:	38 4c 24 0c                                     	cmp    BYTE PTR [esp+0xc],cl
106547e8:	0f 95 c1                                        	setne  cl
106547eb:	51                                              	push   ecx
106547ec:	68 a0 53 47 03                                  	push   0x34753a0
106547f1:	8b ce                                           	mov    ecx,esi
106547f3:	ff d2                                           	call   edx
106547f5:	8b 06                                           	mov    eax,DWORD PTR [esi]
106547f7:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
106547fa:	8b ce                                           	mov    ecx,esi
106547fc:	5e                                              	pop    esi
106547fd:	ff e2                                           	jmp    edx
106547ff:	5e                                              	pop    esi
10654800:	c3                                              	ret
10654801:	cc                                              	int3
10654802:	cc                                              	int3
10654803:	cc                                              	int3
10654804:	cc                                              	int3
10654805:	cc                                              	int3
10654806:	cc                                              	int3
10654807:	cc                                              	int3
10654808:	cc                                              	int3
10654809:	cc                                              	int3
1065480a:	cc                                              	int3
1065480b:	cc                                              	int3
1065480c:	cc                                              	int3
1065480d:	cc                                              	int3
1065480e:	cc                                              	int3
1065480f:	cc                                              	int3
