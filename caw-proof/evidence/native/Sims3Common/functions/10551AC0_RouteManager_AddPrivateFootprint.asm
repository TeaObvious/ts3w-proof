# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10551ac0 (RouteManager_AddPrivateFootprint)
Paired Ghidra pseudocode: 10551AC0_RouteManager_AddPrivateFootprint.c
Window: [0x10551ac0, 0x10551af0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10551af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10551ac0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
10551ad0: 0c 51 8b 4c 24 0c 52 50 51 e8 62 da ff ff 83 c4
10551ae0: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10551ac0 <.text+0x550ac0>:
10551ac0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10551ac4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10551ac8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10551acc:	50                                              	push   eax
10551acd:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10551ad1:	51                                              	push   ecx
10551ad2:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10551ad6:	52                                              	push   edx
10551ad7:	50                                              	push   eax
10551ad8:	51                                              	push   ecx
10551ad9:	e8 62 da ff ff                                  	call   0x1054f540
10551ade:	83 c4 14                                        	add    esp,0x14
10551ae1:	c3                                              	ret
10551ae2:	cc                                              	int3
10551ae3:	cc                                              	int3
10551ae4:	cc                                              	int3
10551ae5:	cc                                              	int3
10551ae6:	cc                                              	int3
10551ae7:	cc                                              	int3
10551ae8:	cc                                              	int3
10551ae9:	cc                                              	int3
10551aea:	cc                                              	int3
10551aeb:	cc                                              	int3
10551aec:	cc                                              	int3
10551aed:	cc                                              	int3
10551aee:	cc                                              	int3
10551aef:	cc                                              	int3
