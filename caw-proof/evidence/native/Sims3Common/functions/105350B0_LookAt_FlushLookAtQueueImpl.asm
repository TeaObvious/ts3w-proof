# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105350b0 (LookAt_FlushLookAtQueueImpl)
Paired Ghidra pseudocode: 105350B0_LookAt_FlushLookAtQueueImpl.c
Window: [0x105350b0, 0x10535100) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10535100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105350b0: e8 eb 50 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
105350c0: c8 e8 ea 5a 1f 00 85 c0 74 26 8b 0d c4 0c c8 10
105350d0: 51 8b c8 e8 c8 1c 1f 00 85 c0 74 14 8b 40 28 85
105350e0: c0 74 0d 8b 54 24 0c 52 8b c8 e8 51 9e e4 ff c3
105350f0: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105350b0 <.text+0x5340b0>:
105350b0:	e8 eb 50 1f 00                                  	call   0x1072a1a0
105350b5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105350b9:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105350bd:	51                                              	push   ecx
105350be:	52                                              	push   edx
105350bf:	8b c8                                           	mov    ecx,eax
105350c1:	e8 ea 5a 1f 00                                  	call   0x1072abb0
105350c6:	85 c0                                           	test   eax,eax
105350c8:	74 26                                           	je     0x105350f0
105350ca:	8b 0d c4 0c c8 10                               	mov    ecx,DWORD PTR ds:0x10c80cc4
105350d0:	51                                              	push   ecx
105350d1:	8b c8                                           	mov    ecx,eax
105350d3:	e8 c8 1c 1f 00                                  	call   0x10726da0
105350d8:	85 c0                                           	test   eax,eax
105350da:	74 14                                           	je     0x105350f0
105350dc:	8b 40 28                                        	mov    eax,DWORD PTR [eax+0x28]
105350df:	85 c0                                           	test   eax,eax
105350e1:	74 0d                                           	je     0x105350f0
105350e3:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
105350e7:	52                                              	push   edx
105350e8:	8b c8                                           	mov    ecx,eax
105350ea:	e8 51 9e e4 ff                                  	call   0x1037ef40
105350ef:	c3                                              	ret
105350f0:	33 c0                                           	xor    eax,eax
105350f2:	c3                                              	ret
105350f3:	cc                                              	int3
105350f4:	cc                                              	int3
105350f5:	cc                                              	int3
105350f6:	cc                                              	int3
105350f7:	cc                                              	int3
105350f8:	cc                                              	int3
105350f9:	cc                                              	int3
105350fa:	cc                                              	int3
105350fb:	cc                                              	int3
105350fc:	cc                                              	int3
105350fd:	cc                                              	int3
105350fe:	cc                                              	int3
105350ff:	cc                                              	int3
