# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ba50 (World_GetWorldToHouseboatDisplayPositionAndForwardImpl)
Paired Ghidra pseudocode: 1057BA50_World_GetWorldToHouseboatDisplayPositionAndForwardImpl.c
Window: [0x1057ba50, 0x1057baa0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057baa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ba50: 8b 44 24 28 8b 4c 24 24 8b 54 24 18 50 51 8b 4c
1057ba60: 24 24 83 ec 0c 8b c4 89 10 8b 54 24 34 89 48 04
1057ba70: 8b 4c 24 20 89 50 08 8b 54 24 24 83 ec 0c 8b c4
1057ba80: 89 08 8b 4c 24 34 89 50 04 8b 54 24 28 89 48 08
1057ba90: 8b 44 24 24 52 50 e8 c5 e4 ff ff 83 c4 28 c3 cc

LINEAR DISASSEMBLY
1057ba50 <.text+0x57aa50>:
1057ba50:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1057ba54:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1057ba58:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1057ba5c:	50                                              	push   eax
1057ba5d:	51                                              	push   ecx
1057ba5e:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1057ba62:	83 ec 0c                                        	sub    esp,0xc
1057ba65:	8b c4                                           	mov    eax,esp
1057ba67:	89 10                                           	mov    DWORD PTR [eax],edx
1057ba69:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
1057ba6d:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1057ba70:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1057ba74:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1057ba77:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1057ba7b:	83 ec 0c                                        	sub    esp,0xc
1057ba7e:	8b c4                                           	mov    eax,esp
1057ba80:	89 08                                           	mov    DWORD PTR [eax],ecx
1057ba82:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
1057ba86:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057ba89:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1057ba8d:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057ba90:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1057ba94:	52                                              	push   edx
1057ba95:	50                                              	push   eax
1057ba96:	e8 c5 e4 ff ff                                  	call   0x10579f60
1057ba9b:	83 c4 28                                        	add    esp,0x28
1057ba9e:	c3                                              	ret
1057ba9f:	cc                                              	int3
