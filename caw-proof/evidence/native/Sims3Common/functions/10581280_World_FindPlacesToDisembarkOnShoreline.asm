# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581280 (World_FindPlacesToDisembarkOnShoreline)
Paired Ghidra pseudocode: 10581280_World_FindPlacesToDisembarkOnShoreline.c
Window: [0x10581280, 0x105812b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105812b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581280: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
10581290: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 3d
105812a0: d7 ff ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581280 <.text+0x580280>:
10581280:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10581284:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10581288:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1058128c:	50                                              	push   eax
1058128d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10581291:	51                                              	push   ecx
10581292:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10581296:	52                                              	push   edx
10581297:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1058129b:	50                                              	push   eax
1058129c:	51                                              	push   ecx
1058129d:	52                                              	push   edx
1058129e:	e8 3d d7 ff ff                                  	call   0x1057e9e0
105812a3:	83 c4 18                                        	add    esp,0x18
105812a6:	c3                                              	ret
105812a7:	cc                                              	int3
105812a8:	cc                                              	int3
105812a9:	cc                                              	int3
105812aa:	cc                                              	int3
105812ab:	cc                                              	int3
105812ac:	cc                                              	int3
105812ad:	cc                                              	int3
105812ae:	cc                                              	int3
105812af:	cc                                              	int3
