# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098def0 (SacsWrap_CreatePropNode_Create)
Paired Ghidra pseudocode: 1098DEF0_SacsWrap_CreatePropNode_Create.c
Window: [0x1098def0, 0x1098df40) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098df40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098def0: 56 57 33 ff 57 57 57 57 68 cc 70 b9 10 6a 68 e8
1098df00: ac af f8 ff 8b f0 83 c4 18 3b f7 74 24 8b ce e8
1098df10: ec 17 c6 ff 89 7e 50 89 7e 54 c7 06 80 f6 b2 10
1098df20: 89 7e 58 89 7e 5c 89 7e 60 89 7e 64 5f 8b c6 5e
1098df30: c3 5f 33 c0 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098def0 <.text+0x98cef0>:
1098def0:	56                                              	push   esi
1098def1:	57                                              	push   edi
1098def2:	33 ff                                           	xor    edi,edi
1098def4:	57                                              	push   edi
1098def5:	57                                              	push   edi
1098def6:	57                                              	push   edi
1098def7:	57                                              	push   edi
1098def8:	68 cc 70 b9 10                                  	push   0x10b970cc
1098defd:	6a 68                                           	push   0x68
1098deff:	e8 ac af f8 ff                                  	call   0x10918eb0
1098df04:	8b f0                                           	mov    esi,eax
1098df06:	83 c4 18                                        	add    esp,0x18
1098df09:	3b f7                                           	cmp    esi,edi
1098df0b:	74 24                                           	je     0x1098df31
1098df0d:	8b ce                                           	mov    ecx,esi
1098df0f:	e8 ec 17 c6 ff                                  	call   0x105ef700
1098df14:	89 7e 50                                        	mov    DWORD PTR [esi+0x50],edi
1098df17:	89 7e 54                                        	mov    DWORD PTR [esi+0x54],edi
1098df1a:	c7 06 80 f6 b2 10                               	mov    DWORD PTR [esi],0x10b2f680
1098df20:	89 7e 58                                        	mov    DWORD PTR [esi+0x58],edi
1098df23:	89 7e 5c                                        	mov    DWORD PTR [esi+0x5c],edi
1098df26:	89 7e 60                                        	mov    DWORD PTR [esi+0x60],edi
1098df29:	89 7e 64                                        	mov    DWORD PTR [esi+0x64],edi
1098df2c:	5f                                              	pop    edi
1098df2d:	8b c6                                           	mov    eax,esi
1098df2f:	5e                                              	pop    esi
1098df30:	c3                                              	ret
1098df31:	5f                                              	pop    edi
1098df32:	33 c0                                           	xor    eax,eax
1098df34:	5e                                              	pop    esi
1098df35:	c3                                              	ret
1098df36:	cc                                              	int3
1098df37:	cc                                              	int3
1098df38:	cc                                              	int3
1098df39:	cc                                              	int3
1098df3a:	cc                                              	int3
1098df3b:	cc                                              	int3
1098df3c:	cc                                              	int3
1098df3d:	cc                                              	int3
1098df3e:	cc                                              	int3
1098df3f:	cc                                              	int3
