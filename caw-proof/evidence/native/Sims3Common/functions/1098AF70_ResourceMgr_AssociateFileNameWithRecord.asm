# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098af70 (ResourceMgr_AssociateFileNameWithRecord)
Paired Ghidra pseudocode: 1098AF70_ResourceMgr_AssociateFileNameWithRecord.c
Window: [0x1098af70, 0x1098afd0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098afd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098af70: 83 ec 08 56 8b 35 78 80 cb 10 8d 44 24 10 50 8d
1098af80: 4c 24 08 51 8b ce e8 85 d4 d1 ff 8b 56 08 8b 4e
1098af90: 04 8b 44 24 04 3b 04 91 75 07 32 c0 5e 83 c4 08
1098afa0: c3 8b 70 04 8b 16 8b 42 0c 8b ce ff d0 3d 92 84
1098afb0: 72 34 75 e6 8b 4c 24 14 6a 00 51 8b ce e8 4e 13
1098afc0: f5 ff 5e 83 c4 08 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098af70 <.text+0x989f70>:
1098af70:	83 ec 08                                        	sub    esp,0x8
1098af73:	56                                              	push   esi
1098af74:	8b 35 78 80 cb 10                               	mov    esi,DWORD PTR ds:0x10cb8078
1098af7a:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1098af7e:	50                                              	push   eax
1098af7f:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1098af83:	51                                              	push   ecx
1098af84:	8b ce                                           	mov    ecx,esi
1098af86:	e8 85 d4 d1 ff                                  	call   0x106a8410
1098af8b:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
1098af8e:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
1098af91:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098af95:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
1098af98:	75 07                                           	jne    0x1098afa1
1098af9a:	32 c0                                           	xor    al,al
1098af9c:	5e                                              	pop    esi
1098af9d:	83 c4 08                                        	add    esp,0x8
1098afa0:	c3                                              	ret
1098afa1:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
1098afa4:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098afa6:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1098afa9:	8b ce                                           	mov    ecx,esi
1098afab:	ff d0                                           	call   eax
1098afad:	3d 92 84 72 34                                  	cmp    eax,0x34728492
1098afb2:	75 e6                                           	jne    0x1098af9a
1098afb4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1098afb8:	6a 00                                           	push   0x0
1098afba:	51                                              	push   ecx
1098afbb:	8b ce                                           	mov    ecx,esi
1098afbd:	e8 4e 13 f5 ff                                  	call   0x108dc310
1098afc2:	5e                                              	pop    esi
1098afc3:	83 c4 08                                        	add    esp,0x8
1098afc6:	c3                                              	ret
1098afc7:	cc                                              	int3
1098afc8:	cc                                              	int3
1098afc9:	cc                                              	int3
1098afca:	cc                                              	int3
1098afcb:	cc                                              	int3
1098afcc:	cc                                              	int3
1098afcd:	cc                                              	int3
1098afce:	cc                                              	int3
1098afcf:	cc                                              	int3
