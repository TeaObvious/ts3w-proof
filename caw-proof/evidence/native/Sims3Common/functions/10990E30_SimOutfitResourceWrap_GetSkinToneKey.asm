# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990e30 (SimOutfitResourceWrap_GetSkinToneKey)
Paired Ghidra pseudocode: 10990E30_SimOutfitResourceWrap_GetSkinToneKey.c
Window: [0x10990e30, 0x10990e60) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990e60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990e30: 8b 44 24 08 8b 48 40 8b 50 44 56 8b 70 48 57 8b
10990e40: 78 4c 8b 44 24 0c 89 78 04 5f 89 30 89 48 08 89
10990e50: 50 0c 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990e30 <.text+0x98fe30>:
10990e30:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10990e34:	8b 48 40                                        	mov    ecx,DWORD PTR [eax+0x40]
10990e37:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
10990e3a:	56                                              	push   esi
10990e3b:	8b 70 48                                        	mov    esi,DWORD PTR [eax+0x48]
10990e3e:	57                                              	push   edi
10990e3f:	8b 78 4c                                        	mov    edi,DWORD PTR [eax+0x4c]
10990e42:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10990e46:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
10990e49:	5f                                              	pop    edi
10990e4a:	89 30                                           	mov    DWORD PTR [eax],esi
10990e4c:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10990e4f:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10990e52:	5e                                              	pop    esi
10990e53:	c3                                              	ret
10990e54:	cc                                              	int3
10990e55:	cc                                              	int3
10990e56:	cc                                              	int3
10990e57:	cc                                              	int3
10990e58:	cc                                              	int3
10990e59:	cc                                              	int3
10990e5a:	cc                                              	int3
10990e5b:	cc                                              	int3
10990e5c:	cc                                              	int3
10990e5d:	cc                                              	int3
10990e5e:	cc                                              	int3
10990e5f:	cc                                              	int3
