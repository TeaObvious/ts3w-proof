# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a14e0 (CASUtils_SimBuilderShareOutfitImpl)
Paired Ghidra pseudocode: 103A14E0_CASUtils_SimBuilderShareOutfitImpl.c
Window: [0x103a14e0, 0x103a1510) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a14e0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
103a14f0: 0c 51 8b 4c 24 0c 52 50 51 e8 52 e5 ff ff 83 c4
103a1500: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a14e0 <.text+0x3a04e0>:
103a14e0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
103a14e4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
103a14e8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
103a14ec:	50                                              	push   eax
103a14ed:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
103a14f1:	51                                              	push   ecx
103a14f2:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
103a14f6:	52                                              	push   edx
103a14f7:	50                                              	push   eax
103a14f8:	51                                              	push   ecx
103a14f9:	e8 52 e5 ff ff                                  	call   0x1039fa50
103a14fe:	83 c4 14                                        	add    esp,0x14
103a1501:	c3                                              	ret
103a1502:	cc                                              	int3
103a1503:	cc                                              	int3
103a1504:	cc                                              	int3
103a1505:	cc                                              	int3
103a1506:	cc                                              	int3
103a1507:	cc                                              	int3
103a1508:	cc                                              	int3
103a1509:	cc                                              	int3
103a150a:	cc                                              	int3
103a150b:	cc                                              	int3
103a150c:	cc                                              	int3
103a150d:	cc                                              	int3
103a150e:	cc                                              	int3
103a150f:	cc                                              	int3
