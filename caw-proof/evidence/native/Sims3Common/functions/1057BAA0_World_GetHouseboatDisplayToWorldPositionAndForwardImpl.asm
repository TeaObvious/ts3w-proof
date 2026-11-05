# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057baa0 (World_GetHouseboatDisplayToWorldPositionAndForwardImpl)
Paired Ghidra pseudocode: 1057BAA0_World_GetHouseboatDisplayToWorldPositionAndForwardImpl.c
Window: [0x1057baa0, 0x1057baf0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057baf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057baa0: 8b 44 24 28 8b 4c 24 24 8b 54 24 18 50 51 8b 4c
1057bab0: 24 24 83 ec 0c 8b c4 89 10 8b 54 24 34 89 48 04
1057bac0: 8b 4c 24 20 89 50 08 8b 54 24 24 83 ec 0c 8b c4
1057bad0: 89 08 8b 4c 24 34 89 50 04 8b 54 24 28 89 48 08
1057bae0: 8b 44 24 24 52 50 e8 05 e6 ff ff 83 c4 28 c3 cc

LINEAR DISASSEMBLY
1057baa0 <.text+0x57aaa0>:
1057baa0:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1057baa4:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1057baa8:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1057baac:	50                                              	push   eax
1057baad:	51                                              	push   ecx
1057baae:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1057bab2:	83 ec 0c                                        	sub    esp,0xc
1057bab5:	8b c4                                           	mov    eax,esp
1057bab7:	89 10                                           	mov    DWORD PTR [eax],edx
1057bab9:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
1057babd:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1057bac0:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1057bac4:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1057bac7:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1057bacb:	83 ec 0c                                        	sub    esp,0xc
1057bace:	8b c4                                           	mov    eax,esp
1057bad0:	89 08                                           	mov    DWORD PTR [eax],ecx
1057bad2:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
1057bad6:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057bad9:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1057badd:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057bae0:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1057bae4:	52                                              	push   edx
1057bae5:	50                                              	push   eax
1057bae6:	e8 05 e6 ff ff                                  	call   0x1057a0f0
1057baeb:	83 c4 28                                        	add    esp,0x28
1057baee:	c3                                              	ret
1057baef:	cc                                              	int3
