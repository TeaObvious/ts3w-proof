# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581990 (World_ObjectSetPosition)
Paired Ghidra pseudocode: 10581990_World_ObjectSetPosition.c
Window: [0x10581990, 0x105819d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105819d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581990: 8b 44 24 18 8b 4c 24 0c 8b 54 24 10 50 83 ec 0c
105819a0: 8b c4 89 08 8b 4c 24 24 89 50 04 8b 54 24 18 89
105819b0: 48 08 8b 44 24 14 52 50 e8 23 df ff ff 83 c4 18
105819c0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581990 <.text+0x580990>:
10581990:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10581994:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10581998:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1058199c:	50                                              	push   eax
1058199d:	83 ec 0c                                        	sub    esp,0xc
105819a0:	8b c4                                           	mov    eax,esp
105819a2:	89 08                                           	mov    DWORD PTR [eax],ecx
105819a4:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
105819a8:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
105819ab:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
105819af:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
105819b2:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
105819b6:	52                                              	push   edx
105819b7:	50                                              	push   eax
105819b8:	e8 23 df ff ff                                  	call   0x1057f8e0
105819bd:	83 c4 18                                        	add    esp,0x18
105819c0:	c3                                              	ret
105819c1:	cc                                              	int3
105819c2:	cc                                              	int3
105819c3:	cc                                              	int3
105819c4:	cc                                              	int3
105819c5:	cc                                              	int3
105819c6:	cc                                              	int3
105819c7:	cc                                              	int3
105819c8:	cc                                              	int3
105819c9:	cc                                              	int3
105819ca:	cc                                              	int3
105819cb:	cc                                              	int3
105819cc:	cc                                              	int3
105819cd:	cc                                              	int3
105819ce:	cc                                              	int3
105819cf:	cc                                              	int3
