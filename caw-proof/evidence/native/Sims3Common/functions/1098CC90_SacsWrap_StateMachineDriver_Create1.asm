# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cc90 (SacsWrap_StateMachineDriver_Create1)
Paired Ghidra pseudocode: 1098CC90_SacsWrap_StateMachineDriver_Create1.c
Window: [0x1098cc90, 0x1098ccd0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ccd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cc90: 6a 00 6a 00 6a 00 6a 00 68 d0 6f b9 10 68 4c 01
1098cca0: 00 00 e8 09 c2 f8 ff 83 c4 18 85 c0 74 1e 56 6a
1098ccb0: 00 8b c8 e8 e8 65 c6 ff 8b f0 85 f6 74 0c 8b 46
1098ccc0: 08 8b 10 8d 4e 08 ff d2 8b c6 5e c3 33 c0 c3 cc

LINEAR DISASSEMBLY
1098cc90 <.text+0x98bc90>:
1098cc90:	6a 00                                           	push   0x0
1098cc92:	6a 00                                           	push   0x0
1098cc94:	6a 00                                           	push   0x0
1098cc96:	6a 00                                           	push   0x0
1098cc98:	68 d0 6f b9 10                                  	push   0x10b96fd0
1098cc9d:	68 4c 01 00 00                                  	push   0x14c
1098cca2:	e8 09 c2 f8 ff                                  	call   0x10918eb0
1098cca7:	83 c4 18                                        	add    esp,0x18
1098ccaa:	85 c0                                           	test   eax,eax
1098ccac:	74 1e                                           	je     0x1098cccc
1098ccae:	56                                              	push   esi
1098ccaf:	6a 00                                           	push   0x0
1098ccb1:	8b c8                                           	mov    ecx,eax
1098ccb3:	e8 e8 65 c6 ff                                  	call   0x105f32a0
1098ccb8:	8b f0                                           	mov    esi,eax
1098ccba:	85 f6                                           	test   esi,esi
1098ccbc:	74 0c                                           	je     0x1098ccca
1098ccbe:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
1098ccc1:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098ccc3:	8d 4e 08                                        	lea    ecx,[esi+0x8]
1098ccc6:	ff d2                                           	call   edx
1098ccc8:	8b c6                                           	mov    eax,esi
1098ccca:	5e                                              	pop    esi
1098cccb:	c3                                              	ret
1098cccc:	33 c0                                           	xor    eax,eax
1098ccce:	c3                                              	ret
1098cccf:	cc                                              	int3
