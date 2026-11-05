# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581690 (World_ObjectSetOpacity)
Paired Ghidra pseudocode: 10581690_World_ObjectSetOpacity.c
Window: [0x10581690, 0x105816c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105816c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581690: d9 44 24 10 8b 44 24 08 8b 4c 24 04 83 ec 08 d9
105816a0: 5c 24 04 d9 44 24 14 d9 1c 24 50 51 e8 6f d9 ff
105816b0: ff 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581690 <.text+0x580690>:
10581690:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
10581694:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10581698:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1058169c:	83 ec 08                                        	sub    esp,0x8
1058169f:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
105816a3:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
105816a7:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105816aa:	50                                              	push   eax
105816ab:	51                                              	push   ecx
105816ac:	e8 6f d9 ff ff                                  	call   0x1057f020
105816b1:	83 c4 10                                        	add    esp,0x10
105816b4:	c3                                              	ret
105816b5:	cc                                              	int3
105816b6:	cc                                              	int3
105816b7:	cc                                              	int3
105816b8:	cc                                              	int3
105816b9:	cc                                              	int3
105816ba:	cc                                              	int3
105816bb:	cc                                              	int3
105816bc:	cc                                              	int3
105816bd:	cc                                              	int3
105816be:	cc                                              	int3
105816bf:	cc                                              	int3
