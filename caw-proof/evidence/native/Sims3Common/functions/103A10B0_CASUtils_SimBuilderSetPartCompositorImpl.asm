# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a10b0 (CASUtils_SimBuilderSetPartCompositorImpl)
Paired Ghidra pseudocode: 103A10B0_CASUtils_SimBuilderSetPartCompositorImpl.c
Window: [0x103a10b0, 0x103a1100) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a10b0: 8b 44 24 28 8b 4c 24 24 8b 54 24 20 50 8b 44 24
103a10c0: 20 51 8b 4c 24 20 52 8b 54 24 14 50 51 8b 4c 24
103a10d0: 20 83 ec 10 8b c4 89 10 8b 54 24 34 89 48 04 8b
103a10e0: 4c 24 38 89 50 08 8b 54 24 28 52 89 48 0c e8 5d
103a10f0: e4 ff ff 83 c4 28 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a10b0 <.text+0x3a00b0>:
103a10b0:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
103a10b4:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
103a10b8:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
103a10bc:	50                                              	push   eax
103a10bd:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
103a10c1:	51                                              	push   ecx
103a10c2:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a10c6:	52                                              	push   edx
103a10c7:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
103a10cb:	50                                              	push   eax
103a10cc:	51                                              	push   ecx
103a10cd:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a10d1:	83 ec 10                                        	sub    esp,0x10
103a10d4:	8b c4                                           	mov    eax,esp
103a10d6:	89 10                                           	mov    DWORD PTR [eax],edx
103a10d8:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
103a10dc:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
103a10df:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
103a10e3:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
103a10e6:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
103a10ea:	52                                              	push   edx
103a10eb:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
103a10ee:	e8 5d e4 ff ff                                  	call   0x1039f550
103a10f3:	83 c4 28                                        	add    esp,0x28
103a10f6:	c3                                              	ret
103a10f7:	cc                                              	int3
103a10f8:	cc                                              	int3
103a10f9:	cc                                              	int3
103a10fa:	cc                                              	int3
103a10fb:	cc                                              	int3
103a10fc:	cc                                              	int3
103a10fd:	cc                                              	int3
103a10fe:	cc                                              	int3
103a10ff:	cc                                              	int3
