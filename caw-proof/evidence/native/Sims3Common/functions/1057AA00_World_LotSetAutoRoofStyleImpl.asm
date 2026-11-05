# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057aa00 (World_LotSetAutoRoofStyleImpl)
Paired Ghidra pseudocode: 1057AA00_World_LotSetAutoRoofStyleImpl.c
Window: [0x1057aa00, 0x1057aa40) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057aa40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057aa00: 8b 4c 24 0c 8b 54 24 10 83 ec 10 8b c4 89 08 8b
1057aa10: 4c 24 24 89 50 04 8b 54 24 28 89 48 08 8b 4c 24
1057aa20: 14 89 50 0c 8b 44 24 18 50 51 e8 e1 d5 ff ff 83
1057aa30: c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057aa00 <.text+0x579a00>:
1057aa00:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057aa04:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1057aa08:	83 ec 10                                        	sub    esp,0x10
1057aa0b:	8b c4                                           	mov    eax,esp
1057aa0d:	89 08                                           	mov    DWORD PTR [eax],ecx
1057aa0f:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1057aa13:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057aa16:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1057aa1a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057aa1d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1057aa21:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1057aa24:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1057aa28:	50                                              	push   eax
1057aa29:	51                                              	push   ecx
1057aa2a:	e8 e1 d5 ff ff                                  	call   0x10578010
1057aa2f:	83 c4 18                                        	add    esp,0x18
1057aa32:	c3                                              	ret
1057aa33:	cc                                              	int3
1057aa34:	cc                                              	int3
1057aa35:	cc                                              	int3
1057aa36:	cc                                              	int3
1057aa37:	cc                                              	int3
1057aa38:	cc                                              	int3
1057aa39:	cc                                              	int3
1057aa3a:	cc                                              	int3
1057aa3b:	cc                                              	int3
1057aa3c:	cc                                              	int3
1057aa3d:	cc                                              	int3
1057aa3e:	cc                                              	int3
1057aa3f:	cc                                              	int3
