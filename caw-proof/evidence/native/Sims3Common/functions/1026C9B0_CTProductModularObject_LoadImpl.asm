# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1026c9b0 (CTProductModularObject_LoadImpl)
Paired Ghidra pseudocode: 1026C9B0_CTProductModularObject_LoadImpl.c
Window: [0x1026c9b0, 0x1026c9e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1026c9e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1026c9b0: 8b 4c 24 04 8b 54 24 08 83 ec 10 8b c4 89 08 8b
1026c9c0: 4c 24 1c 89 50 04 8b 54 24 20 89 48 08 89 50 0c
1026c9d0: e8 3b ff ff ff 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1026c9b0 <.text+0x26b9b0>:
1026c9b0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1026c9b4:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1026c9b8:	83 ec 10                                        	sub    esp,0x10
1026c9bb:	8b c4                                           	mov    eax,esp
1026c9bd:	89 08                                           	mov    DWORD PTR [eax],ecx
1026c9bf:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1026c9c3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1026c9c6:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1026c9ca:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1026c9cd:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1026c9d0:	e8 3b ff ff ff                                  	call   0x1026c910
1026c9d5:	83 c4 10                                        	add    esp,0x10
1026c9d8:	c3                                              	ret
1026c9d9:	cc                                              	int3
1026c9da:	cc                                              	int3
1026c9db:	cc                                              	int3
1026c9dc:	cc                                              	int3
1026c9dd:	cc                                              	int3
1026c9de:	cc                                              	int3
1026c9df:	cc                                              	int3
