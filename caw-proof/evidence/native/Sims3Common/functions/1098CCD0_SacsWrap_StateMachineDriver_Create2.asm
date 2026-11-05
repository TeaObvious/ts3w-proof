# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ccd0 (SacsWrap_StateMachineDriver_Create2)
Paired Ghidra pseudocode: 1098CCD0_SacsWrap_StateMachineDriver_Create2.c
Window: [0x1098ccd0, 0x1098cd20) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cd20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ccd0: 56 8b 74 24 08 85 f6 74 42 6a 00 6a 00 6a 00 6a
1098cce0: 00 68 d0 6f b9 10 68 4c 01 00 00 e8 c0 c1 f8 ff
1098ccf0: 83 c4 18 85 c0 74 1e 6a 00 56 8b c8 e8 8f 9a c6
1098cd00: ff 8b f0 85 f6 74 0a 8b 46 08 8b 10 8d 4e 08 ff
1098cd10: d2 8b c6 5e c3 33 f6 8b c6 5e c3 33 c0 5e c3 cc

LINEAR DISASSEMBLY
1098ccd0 <.text+0x98bcd0>:
1098ccd0:	56                                              	push   esi
1098ccd1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1098ccd5:	85 f6                                           	test   esi,esi
1098ccd7:	74 42                                           	je     0x1098cd1b
1098ccd9:	6a 00                                           	push   0x0
1098ccdb:	6a 00                                           	push   0x0
1098ccdd:	6a 00                                           	push   0x0
1098ccdf:	6a 00                                           	push   0x0
1098cce1:	68 d0 6f b9 10                                  	push   0x10b96fd0
1098cce6:	68 4c 01 00 00                                  	push   0x14c
1098cceb:	e8 c0 c1 f8 ff                                  	call   0x10918eb0
1098ccf0:	83 c4 18                                        	add    esp,0x18
1098ccf3:	85 c0                                           	test   eax,eax
1098ccf5:	74 1e                                           	je     0x1098cd15
1098ccf7:	6a 00                                           	push   0x0
1098ccf9:	56                                              	push   esi
1098ccfa:	8b c8                                           	mov    ecx,eax
1098ccfc:	e8 8f 9a c6 ff                                  	call   0x105f6790
1098cd01:	8b f0                                           	mov    esi,eax
1098cd03:	85 f6                                           	test   esi,esi
1098cd05:	74 0a                                           	je     0x1098cd11
1098cd07:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
1098cd0a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098cd0c:	8d 4e 08                                        	lea    ecx,[esi+0x8]
1098cd0f:	ff d2                                           	call   edx
1098cd11:	8b c6                                           	mov    eax,esi
1098cd13:	5e                                              	pop    esi
1098cd14:	c3                                              	ret
1098cd15:	33 f6                                           	xor    esi,esi
1098cd17:	8b c6                                           	mov    eax,esi
1098cd19:	5e                                              	pop    esi
1098cd1a:	c3                                              	ret
1098cd1b:	33 c0                                           	xor    eax,eax
1098cd1d:	5e                                              	pop    esi
1098cd1e:	c3                                              	ret
1098cd1f:	cc                                              	int3
