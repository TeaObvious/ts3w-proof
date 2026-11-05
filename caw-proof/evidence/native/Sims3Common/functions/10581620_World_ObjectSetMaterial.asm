# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581620 (World_ObjectSetMaterial)
Paired Ghidra pseudocode: 10581620_World_ObjectSetMaterial.c
Window: [0x10581620, 0x10581650) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581650
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581620: 8b 44 24 14 d9 44 24 10 8b 54 24 08 50 8b 44 24
10581630: 08 51 8b 4c 24 14 d9 1c 24 51 52 50 e8 df d7 ff
10581640: ff 83 c4 14 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581620 <.text+0x580620>:
10581620:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10581624:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
10581628:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1058162c:	50                                              	push   eax
1058162d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10581631:	51                                              	push   ecx
10581632:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10581636:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10581639:	51                                              	push   ecx
1058163a:	52                                              	push   edx
1058163b:	50                                              	push   eax
1058163c:	e8 df d7 ff ff                                  	call   0x1057ee20
10581641:	83 c4 14                                        	add    esp,0x14
10581644:	c3                                              	ret
10581645:	cc                                              	int3
10581646:	cc                                              	int3
10581647:	cc                                              	int3
10581648:	cc                                              	int3
10581649:	cc                                              	int3
1058164a:	cc                                              	int3
1058164b:	cc                                              	int3
1058164c:	cc                                              	int3
1058164d:	cc                                              	int3
1058164e:	cc                                              	int3
1058164f:	cc                                              	int3
