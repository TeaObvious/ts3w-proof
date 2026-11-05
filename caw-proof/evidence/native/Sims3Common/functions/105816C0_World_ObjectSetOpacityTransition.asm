# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105816c0 (World_ObjectSetOpacityTransition)
Paired Ghidra pseudocode: 105816C0_World_ObjectSetOpacityTransition.c
Window: [0x105816c0, 0x105816f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105816f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105816c0: d9 44 24 14 8b 44 24 08 8b 4c 24 04 83 ec 0c d9
105816d0: 5c 24 08 d9 44 24 1c d9 5c 24 04 d9 44 24 18 d9
105816e0: 1c 24 50 51 e8 97 d9 ff ff 83 c4 14 c3 cc cc cc

LINEAR DISASSEMBLY
105816c0 <.text+0x5806c0>:
105816c0:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
105816c4:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105816c8:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105816cc:	83 ec 0c                                        	sub    esp,0xc
105816cf:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
105816d3:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
105816d7:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
105816db:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
105816df:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105816e2:	50                                              	push   eax
105816e3:	51                                              	push   ecx
105816e4:	e8 97 d9 ff ff                                  	call   0x1057f080
105816e9:	83 c4 14                                        	add    esp,0x14
105816ec:	c3                                              	ret
105816ed:	cc                                              	int3
105816ee:	cc                                              	int3
105816ef:	cc                                              	int3
