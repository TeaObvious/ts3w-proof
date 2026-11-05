# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581250 (World_FindPlacesOnShoreline)
Paired Ghidra pseudocode: 10581250_World_FindPlacesOnShoreline.c
Window: [0x10581250, 0x10581280) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581280
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581250: 8b 44 24 1c 8b 4c 24 18 8b 54 24 14 50 8b 44 24
10581260: 14 51 8b 4c 24 14 52 8b 54 24 14 50 8b 44 24 14
10581270: 51 52 50 e8 88 d5 ff ff 83 c4 1c c3 cc cc cc cc

LINEAR DISASSEMBLY
10581250 <.text+0x580250>:
10581250:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10581254:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10581258:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1058125c:	50                                              	push   eax
1058125d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10581261:	51                                              	push   ecx
10581262:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10581266:	52                                              	push   edx
10581267:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1058126b:	50                                              	push   eax
1058126c:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10581270:	51                                              	push   ecx
10581271:	52                                              	push   edx
10581272:	50                                              	push   eax
10581273:	e8 88 d5 ff ff                                  	call   0x1057e800
10581278:	83 c4 1c                                        	add    esp,0x1c
1058127b:	c3                                              	ret
1058127c:	cc                                              	int3
1058127d:	cc                                              	int3
1058127e:	cc                                              	int3
1058127f:	cc                                              	int3
