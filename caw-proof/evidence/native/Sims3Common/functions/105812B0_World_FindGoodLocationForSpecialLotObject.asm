# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105812b0 (World_FindGoodLocationForSpecialLotObject)
Paired Ghidra pseudocode: 105812B0_World_FindGoodLocationForSpecialLotObject.c
Window: [0x105812b0, 0x105812f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105812f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105812b0: 8b 44 24 20 8b 4c 24 1c 8b 54 24 18 50 8b 44 24
105812c0: 18 51 8b 4c 24 18 52 8b 54 24 18 50 8b 44 24 18
105812d0: 51 8b 4c 24 18 52 50 51 e8 33 cf ff ff 83 c4 20
105812e0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105812b0 <.text+0x5802b0>:
105812b0:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
105812b4:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
105812b8:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
105812bc:	50                                              	push   eax
105812bd:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
105812c1:	51                                              	push   ecx
105812c2:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
105812c6:	52                                              	push   edx
105812c7:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
105812cb:	50                                              	push   eax
105812cc:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
105812d0:	51                                              	push   ecx
105812d1:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
105812d5:	52                                              	push   edx
105812d6:	50                                              	push   eax
105812d7:	51                                              	push   ecx
105812d8:	e8 33 cf ff ff                                  	call   0x1057e210
105812dd:	83 c4 20                                        	add    esp,0x20
105812e0:	c3                                              	ret
105812e1:	cc                                              	int3
105812e2:	cc                                              	int3
105812e3:	cc                                              	int3
105812e4:	cc                                              	int3
105812e5:	cc                                              	int3
105812e6:	cc                                              	int3
105812e7:	cc                                              	int3
105812e8:	cc                                              	int3
105812e9:	cc                                              	int3
105812ea:	cc                                              	int3
105812eb:	cc                                              	int3
105812ec:	cc                                              	int3
105812ed:	cc                                              	int3
105812ee:	cc                                              	int3
105812ef:	cc                                              	int3
