# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105550e0 (Route_PlaceSocialFootprint)
Paired Ghidra pseudocode: 105550E0_Route_PlaceSocialFootprint.c
Window: [0x105550e0, 0x10555120) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10555120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105550e0: 8b 44 24 20 8b 4c 24 1c 8b 54 24 18 50 51 8b 4c
105550f0: 24 14 52 8b 54 24 1c 83 ec 0c 8b c4 89 08 8b 4c
10555100: 24 2c 89 50 04 8b 54 24 20 89 48 08 8b 44 24 1c
10555110: 52 50 e8 c9 f5 ff ff 83 c4 20 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
105550e0 <.text+0x5540e0>:
105550e0:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
105550e4:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
105550e8:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
105550ec:	50                                              	push   eax
105550ed:	51                                              	push   ecx
105550ee:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
105550f2:	52                                              	push   edx
105550f3:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
105550f7:	83 ec 0c                                        	sub    esp,0xc
105550fa:	8b c4                                           	mov    eax,esp
105550fc:	89 08                                           	mov    DWORD PTR [eax],ecx
105550fe:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
10555102:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10555105:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10555109:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1055510c:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10555110:	52                                              	push   edx
10555111:	50                                              	push   eax
10555112:	e8 c9 f5 ff ff                                  	call   0x105546e0
10555117:	83 c4 20                                        	add    esp,0x20
1055511a:	c3                                              	ret
1055511b:	cc                                              	int3
1055511c:	cc                                              	int3
1055511d:	cc                                              	int3
1055511e:	cc                                              	int3
1055511f:	cc                                              	int3
