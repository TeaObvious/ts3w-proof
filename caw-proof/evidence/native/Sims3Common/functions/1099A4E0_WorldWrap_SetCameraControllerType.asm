# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1099a4e0 (WorldWrap_SetCameraControllerType)
Paired Ghidra pseudocode: 1099A4E0_WorldWrap_SetCameraControllerType.c
Window: [0x1099a4e0, 0x1099a510) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1099a510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1099a4e0: e8 4b 21 dc ff 8b c8 e8 94 d5 f9 ff 85 c0 74 1c
1099a4f0: 56 8b 74 24 08 33 d2 52 56 52 b9 b0 d9 75 10 51
1099a500: 50 6a 01 e8 78 ff ff ff 83 c4 18 5e c3 cc cc cc

LINEAR DISASSEMBLY
1099a4e0 <.text+0x9994e0>:
1099a4e0:	e8 4b 21 dc ff                                  	call   0x1075c630
1099a4e5:	8b c8                                           	mov    ecx,eax
1099a4e7:	e8 94 d5 f9 ff                                  	call   0x10937a80
1099a4ec:	85 c0                                           	test   eax,eax
1099a4ee:	74 1c                                           	je     0x1099a50c
1099a4f0:	56                                              	push   esi
1099a4f1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1099a4f5:	33 d2                                           	xor    edx,edx
1099a4f7:	52                                              	push   edx
1099a4f8:	56                                              	push   esi
1099a4f9:	52                                              	push   edx
1099a4fa:	b9 b0 d9 75 10                                  	mov    ecx,0x1075d9b0
1099a4ff:	51                                              	push   ecx
1099a500:	50                                              	push   eax
1099a501:	6a 01                                           	push   0x1
1099a503:	e8 78 ff ff ff                                  	call   0x1099a480
1099a508:	83 c4 18                                        	add    esp,0x18
1099a50b:	5e                                              	pop    esi
1099a50c:	c3                                              	ret
1099a50d:	cc                                              	int3
1099a50e:	cc                                              	int3
1099a50f:	cc                                              	int3
