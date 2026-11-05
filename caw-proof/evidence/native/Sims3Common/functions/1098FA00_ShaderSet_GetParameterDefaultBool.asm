# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fa00 (ShaderSet_GetParameterDefaultBool)
Paired Ghidra pseudocode: 1098FA00_ShaderSet_GetParameterDefaultBool.c
Window: [0x1098fa00, 0x1098fa30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fa30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fa00: 56 8b 74 24 0c 57 8b 7c 24 0c 56 8b cf e8 ae 38
1098fa10: c0 ff 83 f8 05 75 14 56 8b cf e8 f1 38 c0 ff 33
1098fa20: c9 39 08 5f 0f 95 c1 5e 8b c1 c3 5f 33 c0 5e c3

LINEAR DISASSEMBLY
1098fa00 <.text+0x98ea00>:
1098fa00:	56                                              	push   esi
1098fa01:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1098fa05:	57                                              	push   edi
1098fa06:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
1098fa0a:	56                                              	push   esi
1098fa0b:	8b cf                                           	mov    ecx,edi
1098fa0d:	e8 ae 38 c0 ff                                  	call   0x105932c0
1098fa12:	83 f8 05                                        	cmp    eax,0x5
1098fa15:	75 14                                           	jne    0x1098fa2b
1098fa17:	56                                              	push   esi
1098fa18:	8b cf                                           	mov    ecx,edi
1098fa1a:	e8 f1 38 c0 ff                                  	call   0x10593310
1098fa1f:	33 c9                                           	xor    ecx,ecx
1098fa21:	39 08                                           	cmp    DWORD PTR [eax],ecx
1098fa23:	5f                                              	pop    edi
1098fa24:	0f 95 c1                                        	setne  cl
1098fa27:	5e                                              	pop    esi
1098fa28:	8b c1                                           	mov    eax,ecx
1098fa2a:	c3                                              	ret
1098fa2b:	5f                                              	pop    edi
1098fa2c:	33 c0                                           	xor    eax,eax
1098fa2e:	5e                                              	pop    esi
1098fa2f:	c3                                              	ret
