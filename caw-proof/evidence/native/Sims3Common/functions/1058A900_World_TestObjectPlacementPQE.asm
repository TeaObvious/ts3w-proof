# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1058a900 (World_TestObjectPlacementPQE)
Paired Ghidra pseudocode: 1058A900_World_TestObjectPlacementPQE.c
Window: [0x1058a900, 0x1058a940) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1058a940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1058a900: 8b 44 24 24 8b 4c 24 20 8b 54 24 1c 50 8b 44 24
1058a910: 1c 51 8b 4c 24 1c 52 8b 54 24 1c 50 8b 44 24 1c
1058a920: 51 8b 4c 24 1c 52 8b 54 24 1c 6a 00 50 51 52 e8
1058a930: 6c f5 ff ff 83 c4 28 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1058a900 <.text+0x589900>:
1058a900:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1058a904:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1058a908:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1058a90c:	50                                              	push   eax
1058a90d:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1058a911:	51                                              	push   ecx
1058a912:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1058a916:	52                                              	push   edx
1058a917:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1058a91b:	50                                              	push   eax
1058a91c:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1058a920:	51                                              	push   ecx
1058a921:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1058a925:	52                                              	push   edx
1058a926:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1058a92a:	6a 00                                           	push   0x0
1058a92c:	50                                              	push   eax
1058a92d:	51                                              	push   ecx
1058a92e:	52                                              	push   edx
1058a92f:	e8 6c f5 ff ff                                  	call   0x10589ea0
1058a934:	83 c4 28                                        	add    esp,0x28
1058a937:	c3                                              	ret
1058a938:	cc                                              	int3
1058a939:	cc                                              	int3
1058a93a:	cc                                              	int3
1058a93b:	cc                                              	int3
1058a93c:	cc                                              	int3
1058a93d:	cc                                              	int3
1058a93e:	cc                                              	int3
1058a93f:	cc                                              	int3
