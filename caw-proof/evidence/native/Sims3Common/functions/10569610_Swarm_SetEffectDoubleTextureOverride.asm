# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569610 (Swarm_SetEffectDoubleTextureOverride)
Paired Ghidra pseudocode: 10569610_Swarm_SetEffectDoubleTextureOverride.c
Window: [0x10569610, 0x10569650) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569650
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569610: 8b 44 24 28 8b 4c 24 24 8b 54 24 20 50 8b 44 24
10569620: 20 51 8b 4c 24 20 52 8b 54 24 20 50 8b 44 24 20
10569630: 51 8b 4c 24 20 52 8b 54 24 20 50 8b 44 24 20 51
10569640: 52 50 e8 49 fe ff ff 83 c4 28 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10569610 <.text+0x568610>:
10569610:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10569614:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10569618:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1056961c:	50                                              	push   eax
1056961d:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10569621:	51                                              	push   ecx
10569622:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10569626:	52                                              	push   edx
10569627:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1056962b:	50                                              	push   eax
1056962c:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10569630:	51                                              	push   ecx
10569631:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10569635:	52                                              	push   edx
10569636:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1056963a:	50                                              	push   eax
1056963b:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1056963f:	51                                              	push   ecx
10569640:	52                                              	push   edx
10569641:	50                                              	push   eax
10569642:	e8 49 fe ff ff                                  	call   0x10569490
10569647:	83 c4 28                                        	add    esp,0x28
1056964a:	c3                                              	ret
1056964b:	cc                                              	int3
1056964c:	cc                                              	int3
1056964d:	cc                                              	int3
1056964e:	cc                                              	int3
1056964f:	cc                                              	int3
