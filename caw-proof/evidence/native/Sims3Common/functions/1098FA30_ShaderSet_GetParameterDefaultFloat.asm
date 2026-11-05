# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fa30 (ShaderSet_GetParameterDefaultFloat)
Paired Ghidra pseudocode: 1098FA30_ShaderSet_GetParameterDefaultFloat.c
Window: [0x1098fa30, 0x1098fa60) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fa60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fa30: 56 8b 74 24 0c 57 8b 7c 24 0c 56 8b cf e8 7e 38
1098fa40: c0 ff 83 f8 01 75 0d 56 8b cf e8 c1 38 c0 ff d9
1098fa50: 00 5f 5e c3 d9 ee 5f 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098fa30 <.text+0x98ea30>:
1098fa30:	56                                              	push   esi
1098fa31:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1098fa35:	57                                              	push   edi
1098fa36:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
1098fa3a:	56                                              	push   esi
1098fa3b:	8b cf                                           	mov    ecx,edi
1098fa3d:	e8 7e 38 c0 ff                                  	call   0x105932c0
1098fa42:	83 f8 01                                        	cmp    eax,0x1
1098fa45:	75 0d                                           	jne    0x1098fa54
1098fa47:	56                                              	push   esi
1098fa48:	8b cf                                           	mov    ecx,edi
1098fa4a:	e8 c1 38 c0 ff                                  	call   0x10593310
1098fa4f:	d9 00                                           	fld    DWORD PTR [eax]
1098fa51:	5f                                              	pop    edi
1098fa52:	5e                                              	pop    esi
1098fa53:	c3                                              	ret
1098fa54:	d9 ee                                           	fldz
1098fa56:	5f                                              	pop    edi
1098fa57:	5e                                              	pop    esi
1098fa58:	c3                                              	ret
1098fa59:	cc                                              	int3
1098fa5a:	cc                                              	int3
1098fa5b:	cc                                              	int3
1098fa5c:	cc                                              	int3
1098fa5d:	cc                                              	int3
1098fa5e:	cc                                              	int3
1098fa5f:	cc                                              	int3
