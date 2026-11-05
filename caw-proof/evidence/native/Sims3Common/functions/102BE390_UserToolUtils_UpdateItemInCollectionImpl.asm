# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102be390 (UserToolUtils_UpdateItemInCollectionImpl)
Paired Ghidra pseudocode: 102BE390_UserToolUtils_UpdateItemInCollectionImpl.c
Window: [0x102be390, 0x102be3d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x102be3d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102be390: 8b 44 24 20 8b 4c 24 1c 8b 54 24 18 50 8b 44 24
102be3a0: 18 51 8b 4c 24 18 52 8b 54 24 18 50 8b 44 24 18
102be3b0: 51 8b 4c 24 18 52 50 51 e8 53 fb ff ff 83 c4 20
102be3c0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102be390 <.text+0x2bd390>:
102be390:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
102be394:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
102be398:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
102be39c:	50                                              	push   eax
102be39d:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
102be3a1:	51                                              	push   ecx
102be3a2:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
102be3a6:	52                                              	push   edx
102be3a7:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
102be3ab:	50                                              	push   eax
102be3ac:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
102be3b0:	51                                              	push   ecx
102be3b1:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
102be3b5:	52                                              	push   edx
102be3b6:	50                                              	push   eax
102be3b7:	51                                              	push   ecx
102be3b8:	e8 53 fb ff ff                                  	call   0x102bdf10
102be3bd:	83 c4 20                                        	add    esp,0x20
102be3c0:	c3                                              	ret
102be3c1:	cc                                              	int3
102be3c2:	cc                                              	int3
102be3c3:	cc                                              	int3
102be3c4:	cc                                              	int3
102be3c5:	cc                                              	int3
102be3c6:	cc                                              	int3
102be3c7:	cc                                              	int3
102be3c8:	cc                                              	int3
102be3c9:	cc                                              	int3
102be3ca:	cc                                              	int3
102be3cb:	cc                                              	int3
102be3cc:	cc                                              	int3
102be3cd:	cc                                              	int3
102be3ce:	cc                                              	int3
102be3cf:	cc                                              	int3
