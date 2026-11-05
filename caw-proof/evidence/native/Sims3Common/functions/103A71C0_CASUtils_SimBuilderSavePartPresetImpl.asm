# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a71c0 (CASUtils_SimBuilderSavePartPresetImpl)
Paired Ghidra pseudocode: 103A71C0_CASUtils_SimBuilderSavePartPresetImpl.c
Window: [0x103a71c0, 0x103a7200) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a7200
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a71c0: 8b 44 24 1c 8b 4c 24 18 8b 54 24 08 50 51 8b 4c
103a71d0: 24 14 83 ec 10 8b c4 89 10 8b 54 24 28 89 48 04
103a71e0: 8b 4c 24 2c 89 50 08 8b 54 24 1c 52 89 48 0c e8
103a71f0: 3c ef ff ff 83 c4 1c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a71c0 <.text+0x3a61c0>:
103a71c0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
103a71c4:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
103a71c8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
103a71cc:	50                                              	push   eax
103a71cd:	51                                              	push   ecx
103a71ce:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
103a71d2:	83 ec 10                                        	sub    esp,0x10
103a71d5:	8b c4                                           	mov    eax,esp
103a71d7:	89 10                                           	mov    DWORD PTR [eax],edx
103a71d9:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
103a71dd:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
103a71e0:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
103a71e4:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
103a71e7:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
103a71eb:	52                                              	push   edx
103a71ec:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
103a71ef:	e8 3c ef ff ff                                  	call   0x103a6130
103a71f4:	83 c4 1c                                        	add    esp,0x1c
103a71f7:	c3                                              	ret
103a71f8:	cc                                              	int3
103a71f9:	cc                                              	int3
103a71fa:	cc                                              	int3
103a71fb:	cc                                              	int3
103a71fc:	cc                                              	int3
103a71fd:	cc                                              	int3
103a71fe:	cc                                              	int3
103a71ff:	cc                                              	int3
