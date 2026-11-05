# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a5d40 (CASUtils_SimOutfitSetPartPresetImpl)
Paired Ghidra pseudocode: 103A5D40_CASUtils_SimOutfitSetPartPresetImpl.c
Window: [0x103a5d40, 0x103a5d80) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a5d80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a5d40: 8b 44 24 18 8b 4c 24 08 8b 54 24 0c 50 83 ec 10
103a5d50: 8b c4 89 08 8b 4c 24 24 89 50 04 8b 54 24 28 89
103a5d60: 48 08 89 50 0c 8b 44 24 18 50 e8 e1 fd ff ff 83
103a5d70: c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a5d40 <.text+0x3a4d40>:
103a5d40:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
103a5d44:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a5d48:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
103a5d4c:	50                                              	push   eax
103a5d4d:	83 ec 10                                        	sub    esp,0x10
103a5d50:	8b c4                                           	mov    eax,esp
103a5d52:	89 08                                           	mov    DWORD PTR [eax],ecx
103a5d54:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
103a5d58:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a5d5b:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
103a5d5f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a5d62:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a5d65:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
103a5d69:	50                                              	push   eax
103a5d6a:	e8 e1 fd ff ff                                  	call   0x103a5b50
103a5d6f:	83 c4 18                                        	add    esp,0x18
103a5d72:	c3                                              	ret
103a5d73:	cc                                              	int3
103a5d74:	cc                                              	int3
103a5d75:	cc                                              	int3
103a5d76:	cc                                              	int3
103a5d77:	cc                                              	int3
103a5d78:	cc                                              	int3
103a5d79:	cc                                              	int3
103a5d7a:	cc                                              	int3
103a5d7b:	cc                                              	int3
103a5d7c:	cc                                              	int3
103a5d7d:	cc                                              	int3
103a5d7e:	cc                                              	int3
103a5d7f:	cc                                              	int3
