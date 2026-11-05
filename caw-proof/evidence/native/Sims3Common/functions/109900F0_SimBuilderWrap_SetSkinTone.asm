# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109900f0 (SimBuilderWrap_SetSkinTone)
Paired Ghidra pseudocode: 109900F0_SimBuilderWrap_SetSkinTone.c
Window: [0x109900f0, 0x10990120) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109900f0: 8b 44 24 04 8b 4c 24 10 8b 54 24 14 81 48 1c 01
10990100: 01 00 00 83 48 14 1f 56 8b 74 24 0c 57 8b 7c 24
10990110: 14 89 48 28 89 50 2c 89 70 30 89 78 34 5f 5e c3

LINEAR DISASSEMBLY
109900f0 <.text+0x98f0f0>:
109900f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109900f4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
109900f8:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
109900fc:	81 48 1c 01 01 00 00                            	or     DWORD PTR [eax+0x1c],0x101
10990103:	83 48 14 1f                                     	or     DWORD PTR [eax+0x14],0x1f
10990107:	56                                              	push   esi
10990108:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1099010c:	57                                              	push   edi
1099010d:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
10990111:	89 48 28                                        	mov    DWORD PTR [eax+0x28],ecx
10990114:	89 50 2c                                        	mov    DWORD PTR [eax+0x2c],edx
10990117:	89 70 30                                        	mov    DWORD PTR [eax+0x30],esi
1099011a:	89 78 34                                        	mov    DWORD PTR [eax+0x34],edi
1099011d:	5f                                              	pop    edi
1099011e:	5e                                              	pop    esi
1099011f:	c3                                              	ret
