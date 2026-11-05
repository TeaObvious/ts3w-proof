# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a0ff0 (CASUtils_SimBuilderSetSecondaryNormalMapWeightImpl)
Paired Ghidra pseudocode: 103A0FF0_CASUtils_SimBuilderSetSecondaryNormalMapWeightImpl.c
Window: [0x103a0ff0, 0x103a1040) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a0ff0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1000: 35 75 2d e8 18 a1 1b 00 8b 10 8b c8 8b 82 cc 00
103a1010: 00 00 56 ff d0 85 c0 74 17 8b 4c 24 0c f3 0f 10
103a1020: 44 24 10 f3 0f 11 44 88 3c 81 48 1c 00 00 01 00
103a1030: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a0ff0 <.text+0x39fff0>:
103a0ff0:	56                                              	push   esi
103a0ff1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a0ff5:	8b c6                                           	mov    eax,esi
103a0ff7:	25 00 00 00 ff                                  	and    eax,0xff000000
103a0ffc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1001:	75 2d                                           	jne    0x103a1030
103a1003:	e8 18 a1 1b 00                                  	call   0x1055b120
103a1008:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a100a:	8b c8                                           	mov    ecx,eax
103a100c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a1012:	56                                              	push   esi
103a1013:	ff d0                                           	call   eax
103a1015:	85 c0                                           	test   eax,eax
103a1017:	74 17                                           	je     0x103a1030
103a1019:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
103a101d:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
103a1023:	f3 0f 11 44 88 3c                               	movss  DWORD PTR [eax+ecx*4+0x3c],xmm0
103a1029:	81 48 1c 00 00 01 00                            	or     DWORD PTR [eax+0x1c],0x10000
103a1030:	5e                                              	pop    esi
103a1031:	c3                                              	ret
103a1032:	cc                                              	int3
103a1033:	cc                                              	int3
103a1034:	cc                                              	int3
103a1035:	cc                                              	int3
103a1036:	cc                                              	int3
103a1037:	cc                                              	int3
103a1038:	cc                                              	int3
103a1039:	cc                                              	int3
103a103a:	cc                                              	int3
103a103b:	cc                                              	int3
103a103c:	cc                                              	int3
103a103d:	cc                                              	int3
103a103e:	cc                                              	int3
103a103f:	cc                                              	int3
