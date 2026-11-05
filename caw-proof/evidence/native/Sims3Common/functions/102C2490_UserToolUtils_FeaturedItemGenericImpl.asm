# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c2490 (UserToolUtils_FeaturedItemGenericImpl)
Paired Ghidra pseudocode: 102C2490_UserToolUtils_FeaturedItemGenericImpl.c
Window: [0x102c2490, 0x102c24d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c24d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c2490: 8b 44 24 28 8b 4c 24 24 8b 54 24 20 50 8b 44 24
102c24a0: 20 51 8b 4c 24 20 52 8b 54 24 20 50 8b 44 24 20
102c24b0: 51 8b 4c 24 20 52 8b 54 24 20 50 8b 44 24 20 51
102c24c0: 52 50 e8 b9 ec ff ff 83 c4 28 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
102c2490 <.text+0x2c1490>:
102c2490:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
102c2494:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
102c2498:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
102c249c:	50                                              	push   eax
102c249d:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
102c24a1:	51                                              	push   ecx
102c24a2:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
102c24a6:	52                                              	push   edx
102c24a7:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
102c24ab:	50                                              	push   eax
102c24ac:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
102c24b0:	51                                              	push   ecx
102c24b1:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
102c24b5:	52                                              	push   edx
102c24b6:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
102c24ba:	50                                              	push   eax
102c24bb:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
102c24bf:	51                                              	push   ecx
102c24c0:	52                                              	push   edx
102c24c1:	50                                              	push   eax
102c24c2:	e8 b9 ec ff ff                                  	call   0x102c1180
102c24c7:	83 c4 28                                        	add    esp,0x28
102c24ca:	c3                                              	ret
102c24cb:	cc                                              	int3
102c24cc:	cc                                              	int3
102c24cd:	cc                                              	int3
102c24ce:	cc                                              	int3
102c24cf:	cc                                              	int3
