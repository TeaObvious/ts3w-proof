# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10551a90 (RouteManager_AddDiscourageFootprint)
Paired Ghidra pseudocode: 10551A90_RouteManager_AddDiscourageFootprint.c
Window: [0x10551a90, 0x10551ac0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10551ac0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10551a90: 8b 44 24 1c 8b 4c 24 18 8b 54 24 14 50 8b 44 24
10551aa0: 14 51 8b 4c 24 14 52 8b 54 24 14 50 8b 44 24 14
10551ab0: 51 52 50 e8 e8 d8 ff ff 83 c4 1c c3 cc cc cc cc

LINEAR DISASSEMBLY
10551a90 <.text+0x550a90>:
10551a90:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10551a94:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10551a98:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10551a9c:	50                                              	push   eax
10551a9d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10551aa1:	51                                              	push   ecx
10551aa2:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10551aa6:	52                                              	push   edx
10551aa7:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10551aab:	50                                              	push   eax
10551aac:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10551ab0:	51                                              	push   ecx
10551ab1:	52                                              	push   edx
10551ab2:	50                                              	push   eax
10551ab3:	e8 e8 d8 ff ff                                  	call   0x1054f3a0
10551ab8:	83 c4 1c                                        	add    esp,0x1c
10551abb:	c3                                              	ret
10551abc:	cc                                              	int3
10551abd:	cc                                              	int3
10551abe:	cc                                              	int3
10551abf:	cc                                              	int3
