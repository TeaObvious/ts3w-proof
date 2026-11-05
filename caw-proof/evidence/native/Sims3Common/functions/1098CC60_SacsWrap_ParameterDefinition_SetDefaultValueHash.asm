# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cc60 (SacsWrap_ParameterDefinition_SetDefaultValueHash)
Paired Ghidra pseudocode: 1098CC60_SacsWrap_ParameterDefinition_SetDefaultValueHash.c
Window: [0x1098cc60, 0x1098cc90) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cc90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cc60: 56 8b 74 24 08 85 f6 74 1e 8b 46 38 85 c0 74 09
1098cc70: 50 e8 1a c2 f8 ff 83 c4 04 8b 44 24 0c 89 46 34
1098cc80: c7 46 38 00 00 00 00 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cc60 <.text+0x98bc60>:
1098cc60:	56                                              	push   esi
1098cc61:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1098cc65:	85 f6                                           	test   esi,esi
1098cc67:	74 1e                                           	je     0x1098cc87
1098cc69:	8b 46 38                                        	mov    eax,DWORD PTR [esi+0x38]
1098cc6c:	85 c0                                           	test   eax,eax
1098cc6e:	74 09                                           	je     0x1098cc79
1098cc70:	50                                              	push   eax
1098cc71:	e8 1a c2 f8 ff                                  	call   0x10918e90
1098cc76:	83 c4 04                                        	add    esp,0x4
1098cc79:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098cc7d:	89 46 34                                        	mov    DWORD PTR [esi+0x34],eax
1098cc80:	c7 46 38 00 00 00 00                            	mov    DWORD PTR [esi+0x38],0x0
1098cc87:	5e                                              	pop    esi
1098cc88:	c3                                              	ret
1098cc89:	cc                                              	int3
1098cc8a:	cc                                              	int3
1098cc8b:	cc                                              	int3
1098cc8c:	cc                                              	int3
1098cc8d:	cc                                              	int3
1098cc8e:	cc                                              	int3
1098cc8f:	cc                                              	int3
