# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105890a0 (World_ObjectDesigner_GetBuildBuyDesignPresetImpl)
Paired Ghidra pseudocode: 105890A0_World_ObjectDesigner_GetBuildBuyDesignPresetImpl.c
Window: [0x105890a0, 0x105890d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105890d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105890a0: 8b 4c 24 08 8b 54 24 0c 83 ec 0c 8b c4 89 08 8b
105890b0: 4c 24 1c 89 50 04 8b 54 24 10 52 89 48 08 e8 6d
105890c0: ef ff ff 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105890a0 <.text+0x5880a0>:
105890a0:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105890a4:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
105890a8:	83 ec 0c                                        	sub    esp,0xc
105890ab:	8b c4                                           	mov    eax,esp
105890ad:	89 08                                           	mov    DWORD PTR [eax],ecx
105890af:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
105890b3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
105890b6:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105890ba:	52                                              	push   edx
105890bb:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
105890be:	e8 6d ef ff ff                                  	call   0x10588030
105890c3:	83 c4 10                                        	add    esp,0x10
105890c6:	c3                                              	ret
105890c7:	cc                                              	int3
105890c8:	cc                                              	int3
105890c9:	cc                                              	int3
105890ca:	cc                                              	int3
105890cb:	cc                                              	int3
105890cc:	cc                                              	int3
105890cd:	cc                                              	int3
105890ce:	cc                                              	int3
105890cf:	cc                                              	int3
