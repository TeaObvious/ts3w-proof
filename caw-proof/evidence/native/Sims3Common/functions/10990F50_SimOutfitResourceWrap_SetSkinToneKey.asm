# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990f50 (SimOutfitResourceWrap_SetSkinToneKey)
Paired Ghidra pseudocode: 10990F50_SimOutfitResourceWrap_SetSkinToneKey.c
Window: [0x10990f50, 0x10990f80) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990f80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990f50: 8b 44 24 04 8b 4c 24 10 8b 54 24 14 56 8b 74 24
10990f60: 0c 57 8b 7c 24 14 89 48 40 89 50 44 89 70 48 89
10990f70: 78 4c 5f 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990f50 <.text+0x98ff50>:
10990f50:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10990f54:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10990f58:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10990f5c:	56                                              	push   esi
10990f5d:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
10990f61:	57                                              	push   edi
10990f62:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
10990f66:	89 48 40                                        	mov    DWORD PTR [eax+0x40],ecx
10990f69:	89 50 44                                        	mov    DWORD PTR [eax+0x44],edx
10990f6c:	89 70 48                                        	mov    DWORD PTR [eax+0x48],esi
10990f6f:	89 78 4c                                        	mov    DWORD PTR [eax+0x4c],edi
10990f72:	5f                                              	pop    edi
10990f73:	5e                                              	pop    esi
10990f74:	c3                                              	ret
10990f75:	cc                                              	int3
10990f76:	cc                                              	int3
10990f77:	cc                                              	int3
10990f78:	cc                                              	int3
10990f79:	cc                                              	int3
10990f7a:	cc                                              	int3
10990f7b:	cc                                              	int3
10990f7c:	cc                                              	int3
10990f7d:	cc                                              	int3
10990f7e:	cc                                              	int3
10990f7f:	cc                                              	int3
