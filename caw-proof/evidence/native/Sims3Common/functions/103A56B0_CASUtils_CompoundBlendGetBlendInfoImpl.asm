# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a56b0 (CASUtils_CompoundBlendGetBlendInfoImpl)
Paired Ghidra pseudocode: 103A56B0_CASUtils_CompoundBlendGetBlendInfoImpl.c
Window: [0x103a56b0, 0x103a5700) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a5700
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a56b0: 8b 44 24 0c 8b 4c 24 08 83 ec 18 50 51 8d 54 24
103a56c0: 08 52 e8 d9 fd ff ff 8b 4c 24 28 8b 10 89 11 8b
103a56d0: 50 04 89 51 04 8b 50 08 89 51 08 8b 50 0c 89 51
103a56e0: 0c 8b 50 10 8b 40 14 89 51 10 89 41 14 8b c1 83
103a56f0: c4 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a56b0 <.text+0x3a46b0>:
103a56b0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
103a56b4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a56b8:	83 ec 18                                        	sub    esp,0x18
103a56bb:	50                                              	push   eax
103a56bc:	51                                              	push   ecx
103a56bd:	8d 54 24 08                                     	lea    edx,[esp+0x8]
103a56c1:	52                                              	push   edx
103a56c2:	e8 d9 fd ff ff                                  	call   0x103a54a0
103a56c7:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
103a56cb:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a56cd:	89 11                                           	mov    DWORD PTR [ecx],edx
103a56cf:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a56d2:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a56d5:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
103a56d8:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
103a56db:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
103a56de:	89 51 0c                                        	mov    DWORD PTR [ecx+0xc],edx
103a56e1:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
103a56e4:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
103a56e7:	89 51 10                                        	mov    DWORD PTR [ecx+0x10],edx
103a56ea:	89 41 14                                        	mov    DWORD PTR [ecx+0x14],eax
103a56ed:	8b c1                                           	mov    eax,ecx
103a56ef:	83 c4 24                                        	add    esp,0x24
103a56f2:	c3                                              	ret
103a56f3:	cc                                              	int3
103a56f4:	cc                                              	int3
103a56f5:	cc                                              	int3
103a56f6:	cc                                              	int3
103a56f7:	cc                                              	int3
103a56f8:	cc                                              	int3
103a56f9:	cc                                              	int3
103a56fa:	cc                                              	int3
103a56fb:	cc                                              	int3
103a56fc:	cc                                              	int3
103a56fd:	cc                                              	int3
103a56fe:	cc                                              	int3
103a56ff:	cc                                              	int3
