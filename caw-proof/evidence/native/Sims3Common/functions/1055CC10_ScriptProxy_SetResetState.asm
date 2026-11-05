# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055cc10 (ScriptProxy_SetResetState)
Paired Ghidra pseudocode: 1055CC10_ScriptProxy_SetResetState.c
Window: [0x1055cc10, 0x1055cc60) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055cc60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055cc10: 53 e8 0a e5 ff ff 8b 4c 24 10 8b 10 8b 92 2c 01
1055cc20: 00 00 85 c9 0f 95 c3 6a 00 53 51 8b 4c 24 18 51
1055cc30: 8b 4c 24 18 51 8b c8 ff d2 5b c3 cc cc cc cc cc
1055cc40: 8b 44 24 04 c7 00 40 fd c2 10 c2 04 00 cc cc cc
1055cc50: b8 78 f0 b1 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055cc10 <.text+0x55bc10>:
1055cc10:	53                                              	push   ebx
1055cc11:	e8 0a e5 ff ff                                  	call   0x1055b120
1055cc16:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1055cc1a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055cc1c:	8b 92 2c 01 00 00                               	mov    edx,DWORD PTR [edx+0x12c]
1055cc22:	85 c9                                           	test   ecx,ecx
1055cc24:	0f 95 c3                                        	setne  bl
1055cc27:	6a 00                                           	push   0x0
1055cc29:	53                                              	push   ebx
1055cc2a:	51                                              	push   ecx
1055cc2b:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1055cc2f:	51                                              	push   ecx
1055cc30:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1055cc34:	51                                              	push   ecx
1055cc35:	8b c8                                           	mov    ecx,eax
1055cc37:	ff d2                                           	call   edx
1055cc39:	5b                                              	pop    ebx
1055cc3a:	c3                                              	ret
1055cc3b:	cc                                              	int3
1055cc3c:	cc                                              	int3
1055cc3d:	cc                                              	int3
1055cc3e:	cc                                              	int3
1055cc3f:	cc                                              	int3
1055cc40:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1055cc44:	c7 00 40 fd c2 10                               	mov    DWORD PTR [eax],0x10c2fd40
1055cc4a:	c2 04 00                                        	ret    0x4
1055cc4d:	cc                                              	int3
1055cc4e:	cc                                              	int3
1055cc4f:	cc                                              	int3
1055cc50:	b8 78 f0 b1 10                                  	mov    eax,0x10b1f078
1055cc55:	c3                                              	ret
1055cc56:	cc                                              	int3
1055cc57:	cc                                              	int3
1055cc58:	cc                                              	int3
1055cc59:	cc                                              	int3
1055cc5a:	cc                                              	int3
1055cc5b:	cc                                              	int3
1055cc5c:	cc                                              	int3
1055cc5d:	cc                                              	int3
1055cc5e:	cc                                              	int3
1055cc5f:	cc                                              	int3
