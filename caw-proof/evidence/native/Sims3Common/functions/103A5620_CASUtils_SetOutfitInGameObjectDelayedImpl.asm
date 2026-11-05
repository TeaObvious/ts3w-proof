# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a5620 (CASUtils_SetOutfitInGameObjectDelayedImpl)
Paired Ghidra pseudocode: 103A5620_CASUtils_SetOutfitInGameObjectDelayedImpl.c
Window: [0x103a5620, 0x103a5660) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a5660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a5620: 8b 44 24 20 8b 4c 24 1c 8b 54 24 18 50 8b 44 24
103a5630: 18 51 8b 4c 24 0c 52 8b 54 24 14 50 83 ec 10 8b
103a5640: c4 89 08 8b 4c 24 2c 89 50 04 8b 54 24 30 89 48
103a5650: 08 89 50 0c e8 17 fa ff ff 83 c4 20 c3 cc cc cc

LINEAR DISASSEMBLY
103a5620 <.text+0x3a4620>:
103a5620:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
103a5624:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a5628:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
103a562c:	50                                              	push   eax
103a562d:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
103a5631:	51                                              	push   ecx
103a5632:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
103a5636:	52                                              	push   edx
103a5637:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
103a563b:	50                                              	push   eax
103a563c:	83 ec 10                                        	sub    esp,0x10
103a563f:	8b c4                                           	mov    eax,esp
103a5641:	89 08                                           	mov    DWORD PTR [eax],ecx
103a5643:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
103a5647:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a564a:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
103a564e:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a5651:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a5654:	e8 17 fa ff ff                                  	call   0x103a5070
103a5659:	83 c4 20                                        	add    esp,0x20
103a565c:	c3                                              	ret
103a565d:	cc                                              	int3
103a565e:	cc                                              	int3
103a565f:	cc                                              	int3
