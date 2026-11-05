# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10568ed0 (Swarm_SetPosAndOrient)
Paired Ghidra pseudocode: 10568ED0_Swarm_SetPosAndOrient.c
Window: [0x10568ed0, 0x10568f30) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10568f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10568ed0: 8b 4c 24 24 8b 54 24 28 83 ec 0c 8b c4 89 08 8b
10568ee0: 4c 24 38 89 50 04 8b 54 24 24 89 48 08 8b 4c 24
10568ef0: 28 83 ec 0c 8b c4 89 10 8b 54 24 38 89 48 04 8b
10568f00: 4c 24 24 89 50 08 8b 54 24 28 83 ec 0c 8b c4 89
10568f10: 08 8b 4c 24 38 89 50 04 8b 54 24 2c 89 48 08 8b
10568f20: 44 24 28 52 50 e8 06 fe ff ff 83 c4 2c c3 cc cc

LINEAR DISASSEMBLY
10568ed0 <.text+0x567ed0>:
10568ed0:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10568ed4:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10568ed8:	83 ec 0c                                        	sub    esp,0xc
10568edb:	8b c4                                           	mov    eax,esp
10568edd:	89 08                                           	mov    DWORD PTR [eax],ecx
10568edf:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10568ee3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10568ee6:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10568eea:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10568eed:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10568ef1:	83 ec 0c                                        	sub    esp,0xc
10568ef4:	8b c4                                           	mov    eax,esp
10568ef6:	89 10                                           	mov    DWORD PTR [eax],edx
10568ef8:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
10568efc:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
10568eff:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10568f03:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
10568f06:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10568f0a:	83 ec 0c                                        	sub    esp,0xc
10568f0d:	8b c4                                           	mov    eax,esp
10568f0f:	89 08                                           	mov    DWORD PTR [eax],ecx
10568f11:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10568f15:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10568f18:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
10568f1c:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10568f1f:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10568f23:	52                                              	push   edx
10568f24:	50                                              	push   eax
10568f25:	e8 06 fe ff ff                                  	call   0x10568d30
10568f2a:	83 c4 2c                                        	add    esp,0x2c
10568f2d:	c3                                              	ret
10568f2e:	cc                                              	int3
10568f2f:	cc                                              	int3
