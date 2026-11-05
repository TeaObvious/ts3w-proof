# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be2d0 (UserToolUtils_GetProductImpl)
Paired Ghidra pseudocode: 102BE2D0_UserToolUtils_GetProductImpl.c
Window: [0x102be2d0, 0x102be300) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be2d0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
102be2e0: 0c 51 8b 4c 24 0c 52 50 51 e8 82 f6 ff ff 83 c4
102be2f0: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102be2d0 <.text+0x2bd2d0>:
102be2d0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
102be2d4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
102be2d8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
102be2dc:	50                                              	push   eax
102be2dd:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
102be2e1:	51                                              	push   ecx
102be2e2:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
102be2e6:	52                                              	push   edx
102be2e7:	50                                              	push   eax
102be2e8:	51                                              	push   ecx
102be2e9:	e8 82 f6 ff ff                                  	call   0x102bd970
102be2ee:	83 c4 14                                        	add    esp,0x14
102be2f1:	c3                                              	ret
102be2f2:	cc                                              	int3
102be2f3:	cc                                              	int3
102be2f4:	cc                                              	int3
102be2f5:	cc                                              	int3
102be2f6:	cc                                              	int3
102be2f7:	cc                                              	int3
102be2f8:	cc                                              	int3
102be2f9:	cc                                              	int3
102be2fa:	cc                                              	int3
102be2fb:	cc                                              	int3
102be2fc:	cc                                              	int3
102be2fd:	cc                                              	int3
102be2fe:	cc                                              	int3
102be2ff:	cc                                              	int3
