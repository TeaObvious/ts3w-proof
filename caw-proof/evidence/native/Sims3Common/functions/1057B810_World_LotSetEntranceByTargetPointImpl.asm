# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b810 (World_LotSetEntranceByTargetPointImpl)
Paired Ghidra pseudocode: 1057B810_World_LotSetEntranceByTargetPointImpl.c
Window: [0x1057b810, 0x1057b850) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b850
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b810: 8b 4c 24 10 8b 54 24 14 83 ec 0c 8b c4 89 08 8b
1057b820: 4c 24 24 89 50 04 8b 54 24 18 89 48 08 8b 44 24
1057b830: 14 8b 4c 24 10 52 50 51 e8 33 e0 ff ff 83 c4 18
1057b840: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b810 <.text+0x57a810>:
1057b810:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1057b814:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1057b818:	83 ec 0c                                        	sub    esp,0xc
1057b81b:	8b c4                                           	mov    eax,esp
1057b81d:	89 08                                           	mov    DWORD PTR [eax],ecx
1057b81f:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1057b823:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057b826:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1057b82a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057b82d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1057b831:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1057b835:	52                                              	push   edx
1057b836:	50                                              	push   eax
1057b837:	51                                              	push   ecx
1057b838:	e8 33 e0 ff ff                                  	call   0x10579870
1057b83d:	83 c4 18                                        	add    esp,0x18
1057b840:	c3                                              	ret
1057b841:	cc                                              	int3
1057b842:	cc                                              	int3
1057b843:	cc                                              	int3
1057b844:	cc                                              	int3
1057b845:	cc                                              	int3
1057b846:	cc                                              	int3
1057b847:	cc                                              	int3
1057b848:	cc                                              	int3
1057b849:	cc                                              	int3
1057b84a:	cc                                              	int3
1057b84b:	cc                                              	int3
1057b84c:	cc                                              	int3
1057b84d:	cc                                              	int3
1057b84e:	cc                                              	int3
1057b84f:	cc                                              	int3
