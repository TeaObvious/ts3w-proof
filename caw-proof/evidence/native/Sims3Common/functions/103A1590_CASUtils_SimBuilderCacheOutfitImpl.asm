# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1590 (CASUtils_SimBuilderCacheOutfitImpl)
Paired Ghidra pseudocode: 103A1590_CASUtils_SimBuilderCacheOutfitImpl.c
Window: [0x103a1590, 0x103a15e0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a15e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1590: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 83 ec 10 50
103a15a0: 8b 44 24 20 51 8b 4c 24 20 52 50 51 8d 54 24 14
103a15b0: 52 e8 4a e6 ff ff 8b 4c 24 2c 8b 10 89 11 8b 50
103a15c0: 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41 0c
103a15d0: 8b c1 83 c4 28 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1590 <.text+0x3a0590>:
103a1590:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
103a1594:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
103a1598:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
103a159c:	83 ec 10                                        	sub    esp,0x10
103a159f:	50                                              	push   eax
103a15a0:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
103a15a4:	51                                              	push   ecx
103a15a5:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a15a9:	52                                              	push   edx
103a15aa:	50                                              	push   eax
103a15ab:	51                                              	push   ecx
103a15ac:	8d 54 24 14                                     	lea    edx,[esp+0x14]
103a15b0:	52                                              	push   edx
103a15b1:	e8 4a e6 ff ff                                  	call   0x1039fc00
103a15b6:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
103a15ba:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a15bc:	89 11                                           	mov    DWORD PTR [ecx],edx
103a15be:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a15c1:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a15c4:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
103a15c7:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
103a15ca:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
103a15cd:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
103a15d0:	8b c1                                           	mov    eax,ecx
103a15d2:	83 c4 28                                        	add    esp,0x28
103a15d5:	c3                                              	ret
103a15d6:	cc                                              	int3
103a15d7:	cc                                              	int3
103a15d8:	cc                                              	int3
103a15d9:	cc                                              	int3
103a15da:	cc                                              	int3
103a15db:	cc                                              	int3
103a15dc:	cc                                              	int3
103a15dd:	cc                                              	int3
103a15de:	cc                                              	int3
103a15df:	cc                                              	int3
