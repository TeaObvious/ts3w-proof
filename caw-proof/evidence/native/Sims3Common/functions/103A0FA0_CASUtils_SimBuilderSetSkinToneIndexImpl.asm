# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a0fa0 (CASUtils_SimBuilderSetSkinToneIndexImpl)
Paired Ghidra pseudocode: 103A0FA0_CASUtils_SimBuilderSetSkinToneIndexImpl.c
Window: [0x103a0fa0, 0x103a0ff0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a0ff0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a0fa0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a0fb0: 35 75 2c e8 68 a1 1b 00 8b 10 8b c8 8b 82 cc 00
103a0fc0: 00 00 56 ff d0 85 c0 74 16 f3 0f 10 44 24 0c 81
103a0fd0: 48 1c 02 01 00 00 83 48 14 1f f3 0f 11 40 38 5e
103a0fe0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a0fa0 <.text+0x39ffa0>:
103a0fa0:	56                                              	push   esi
103a0fa1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a0fa5:	8b c6                                           	mov    eax,esi
103a0fa7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a0fac:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a0fb1:	75 2c                                           	jne    0x103a0fdf
103a0fb3:	e8 68 a1 1b 00                                  	call   0x1055b120
103a0fb8:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a0fba:	8b c8                                           	mov    ecx,eax
103a0fbc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a0fc2:	56                                              	push   esi
103a0fc3:	ff d0                                           	call   eax
103a0fc5:	85 c0                                           	test   eax,eax
103a0fc7:	74 16                                           	je     0x103a0fdf
103a0fc9:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
103a0fcf:	81 48 1c 02 01 00 00                            	or     DWORD PTR [eax+0x1c],0x102
103a0fd6:	83 48 14 1f                                     	or     DWORD PTR [eax+0x14],0x1f
103a0fda:	f3 0f 11 40 38                                  	movss  DWORD PTR [eax+0x38],xmm0
103a0fdf:	5e                                              	pop    esi
103a0fe0:	c3                                              	ret
103a0fe1:	cc                                              	int3
103a0fe2:	cc                                              	int3
103a0fe3:	cc                                              	int3
103a0fe4:	cc                                              	int3
103a0fe5:	cc                                              	int3
103a0fe6:	cc                                              	int3
103a0fe7:	cc                                              	int3
103a0fe8:	cc                                              	int3
103a0fe9:	cc                                              	int3
103a0fea:	cc                                              	int3
103a0feb:	cc                                              	int3
103a0fec:	cc                                              	int3
103a0fed:	cc                                              	int3
103a0fee:	cc                                              	int3
103a0fef:	cc                                              	int3
