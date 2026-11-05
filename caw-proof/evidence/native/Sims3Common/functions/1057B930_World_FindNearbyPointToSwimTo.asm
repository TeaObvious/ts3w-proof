# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b930 (World_FindNearbyPointToSwimTo)
Paired Ghidra pseudocode: 1057B930_World_FindNearbyPointToSwimTo.c
Window: [0x1057b930, 0x1057b970) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b930: 8b 44 24 18 d9 44 24 14 8b 4c 24 04 8b 54 24 08
1057b940: 50 83 ec 14 d9 5c 24 10 8b c4 d9 44 24 28 d9 5c
1057b950: 24 0c 89 08 8b 4c 24 24 89 50 04 89 48 08 e8 4d
1057b960: e2 ff ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b930 <.text+0x57a930>:
1057b930:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1057b934:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
1057b938:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1057b93c:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057b940:	50                                              	push   eax
1057b941:	83 ec 14                                        	sub    esp,0x14
1057b944:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
1057b948:	8b c4                                           	mov    eax,esp
1057b94a:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
1057b94e:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1057b952:	89 08                                           	mov    DWORD PTR [eax],ecx
1057b954:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1057b958:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057b95b:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057b95e:	e8 4d e2 ff ff                                  	call   0x10579bb0
1057b963:	83 c4 18                                        	add    esp,0x18
1057b966:	c3                                              	ret
1057b967:	cc                                              	int3
1057b968:	cc                                              	int3
1057b969:	cc                                              	int3
1057b96a:	cc                                              	int3
1057b96b:	cc                                              	int3
1057b96c:	cc                                              	int3
1057b96d:	cc                                              	int3
1057b96e:	cc                                              	int3
1057b96f:	cc                                              	int3
