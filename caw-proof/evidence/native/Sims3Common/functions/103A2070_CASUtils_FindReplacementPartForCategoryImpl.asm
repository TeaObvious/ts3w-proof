# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a2070 (CASUtils_FindReplacementPartForCategoryImpl)
Paired Ghidra pseudocode: 103A2070_CASUtils_FindReplacementPartForCategoryImpl.c
Window: [0x103a2070, 0x103a20d0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a20d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a2070: 8b 44 24 20 8b 4c 24 1c 8b 54 24 18 83 ec 48 56
103a2080: 57 50 51 8b 4c 24 60 52 8b 54 24 68 83 ec 10 8b
103a2090: c4 89 08 8b 4c 24 7c 89 50 04 8b 94 24 80 00 00
103a20a0: 00 89 48 08 89 50 0c 8d 44 24 24 50 e8 8f ea ff
103a20b0: ff 8b f0 8b 44 24 74 83 c4 20 b9 12 00 00 00 8b
103a20c0: f8 f3 a5 5f 5e 83 c4 48 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a2070 <.text+0x3a1070>:
103a2070:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
103a2074:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a2078:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
103a207c:	83 ec 48                                        	sub    esp,0x48
103a207f:	56                                              	push   esi
103a2080:	57                                              	push   edi
103a2081:	50                                              	push   eax
103a2082:	51                                              	push   ecx
103a2083:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
103a2087:	52                                              	push   edx
103a2088:	8b 54 24 68                                     	mov    edx,DWORD PTR [esp+0x68]
103a208c:	83 ec 10                                        	sub    esp,0x10
103a208f:	8b c4                                           	mov    eax,esp
103a2091:	89 08                                           	mov    DWORD PTR [eax],ecx
103a2093:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
103a2097:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a209a:	8b 94 24 80 00 00 00                            	mov    edx,DWORD PTR [esp+0x80]
103a20a1:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a20a4:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a20a7:	8d 44 24 24                                     	lea    eax,[esp+0x24]
103a20ab:	50                                              	push   eax
103a20ac:	e8 8f ea ff ff                                  	call   0x103a0b40
103a20b1:	8b f0                                           	mov    esi,eax
103a20b3:	8b 44 24 74                                     	mov    eax,DWORD PTR [esp+0x74]
103a20b7:	83 c4 20                                        	add    esp,0x20
103a20ba:	b9 12 00 00 00                                  	mov    ecx,0x12
103a20bf:	8b f8                                           	mov    edi,eax
103a20c1:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
103a20c3:	5f                                              	pop    edi
103a20c4:	5e                                              	pop    esi
103a20c5:	83 c4 48                                        	add    esp,0x48
103a20c8:	c3                                              	ret
103a20c9:	cc                                              	int3
103a20ca:	cc                                              	int3
103a20cb:	cc                                              	int3
103a20cc:	cc                                              	int3
103a20cd:	cc                                              	int3
103a20ce:	cc                                              	int3
103a20cf:	cc                                              	int3
