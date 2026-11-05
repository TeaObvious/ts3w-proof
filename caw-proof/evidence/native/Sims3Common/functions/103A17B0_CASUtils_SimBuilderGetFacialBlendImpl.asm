# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a17b0 (CASUtils_SimBuilderGetFacialBlendImpl)
Paired Ghidra pseudocode: 103A17B0_CASUtils_SimBuilderGetFacialBlendImpl.c
Window: [0x103a17b0, 0x103a17e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a17e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a17b0: 8b 4c 24 08 8b 54 24 0c 83 ec 10 8b c4 89 08 8b
103a17c0: 4c 24 20 89 50 04 8b 54 24 24 89 48 08 89 50 0c
103a17d0: 8b 44 24 14 50 e8 76 e6 ff ff 83 c4 14 c3 cc cc

LINEAR DISASSEMBLY
103a17b0 <.text+0x3a07b0>:
103a17b0:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a17b4:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
103a17b8:	83 ec 10                                        	sub    esp,0x10
103a17bb:	8b c4                                           	mov    eax,esp
103a17bd:	89 08                                           	mov    DWORD PTR [eax],ecx
103a17bf:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a17c3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a17c6:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
103a17ca:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a17cd:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a17d0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
103a17d4:	50                                              	push   eax
103a17d5:	e8 76 e6 ff ff                                  	call   0x1039fe50
103a17da:	83 c4 14                                        	add    esp,0x14
103a17dd:	c3                                              	ret
103a17de:	cc                                              	int3
103a17df:	cc                                              	int3
