# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053ac30 (Query_GetObjectsOnLot)
Paired Ghidra pseudocode: 1053AC30_Query_GetObjectsOnLot.c
Window: [0x1053ac30, 0x1053acd0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053acd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053ac30: 55 8b ec 83 e4 f8 b8 1c 10 00 00 e8 b0 5c 55 00
1053ac40: 8d 44 24 1c 8b c8 8b d0 56 89 4c 24 0c 89 44 24
1053ac50: 18 8d 4c 24 08 51 8b 4d 0c 89 54 24 0c 8b 55 14
1053ac60: 8d 84 24 24 10 00 00 89 44 24 14 8b 45 10 52 50
1053ac70: 51 33 f6 c7 44 24 24 28 b5 b1 10 e8 a0 fd ff ff
1053ac80: 83 c4 10 85 c0 74 26 e8 94 04 02 00 8b 4c 24 08
1053ac90: 8b 54 24 0c 8b 30 2b d1 c1 fa 03 52 8b 55 08 51
1053aca0: 8b c8 8b 86 c0 00 00 00 52 ff d0 8b f0 8b 44 24
1053acb0: 08 85 c0 74 0f 3b 44 24 18 74 09 50 e8 cf e1 3d
1053acc0: 00 83 c4 04 8b c6 5e 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1053ac30 <.text+0x539c30>:
1053ac30:	55                                              	push   ebp
1053ac31:	8b ec                                           	mov    ebp,esp
1053ac33:	83 e4 f8                                        	and    esp,0xfffffff8
1053ac36:	b8 1c 10 00 00                                  	mov    eax,0x101c
1053ac3b:	e8 b0 5c 55 00                                  	call   0x10a908f0
1053ac40:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
1053ac44:	8b c8                                           	mov    ecx,eax
1053ac46:	8b d0                                           	mov    edx,eax
1053ac48:	56                                              	push   esi
1053ac49:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
1053ac4d:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1053ac51:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1053ac55:	51                                              	push   ecx
1053ac56:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
1053ac59:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
1053ac5d:	8b 55 14                                        	mov    edx,DWORD PTR [ebp+0x14]
1053ac60:	8d 84 24 24 10 00 00                            	lea    eax,[esp+0x1024]
1053ac67:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1053ac6b:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
1053ac6e:	52                                              	push   edx
1053ac6f:	50                                              	push   eax
1053ac70:	51                                              	push   ecx
1053ac71:	33 f6                                           	xor    esi,esi
1053ac73:	c7 44 24 24 28 b5 b1 10                         	mov    DWORD PTR [esp+0x24],0x10b1b528
1053ac7b:	e8 a0 fd ff ff                                  	call   0x1053aa20
1053ac80:	83 c4 10                                        	add    esp,0x10
1053ac83:	85 c0                                           	test   eax,eax
1053ac85:	74 26                                           	je     0x1053acad
1053ac87:	e8 94 04 02 00                                  	call   0x1055b120
1053ac8c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053ac90:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1053ac94:	8b 30                                           	mov    esi,DWORD PTR [eax]
1053ac96:	2b d1                                           	sub    edx,ecx
1053ac98:	c1 fa 03                                        	sar    edx,0x3
1053ac9b:	52                                              	push   edx
1053ac9c:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
1053ac9f:	51                                              	push   ecx
1053aca0:	8b c8                                           	mov    ecx,eax
1053aca2:	8b 86 c0 00 00 00                               	mov    eax,DWORD PTR [esi+0xc0]
1053aca8:	52                                              	push   edx
1053aca9:	ff d0                                           	call   eax
1053acab:	8b f0                                           	mov    esi,eax
1053acad:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1053acb1:	85 c0                                           	test   eax,eax
1053acb3:	74 0f                                           	je     0x1053acc4
1053acb5:	3b 44 24 18                                     	cmp    eax,DWORD PTR [esp+0x18]
1053acb9:	74 09                                           	je     0x1053acc4
1053acbb:	50                                              	push   eax
1053acbc:	e8 cf e1 3d 00                                  	call   0x10918e90
1053acc1:	83 c4 04                                        	add    esp,0x4
1053acc4:	8b c6                                           	mov    eax,esi
1053acc6:	5e                                              	pop    esi
1053acc7:	8b e5                                           	mov    esp,ebp
1053acc9:	5d                                              	pop    ebp
1053acca:	c3                                              	ret
1053accb:	cc                                              	int3
1053accc:	cc                                              	int3
1053accd:	cc                                              	int3
1053acce:	cc                                              	int3
1053accf:	cc                                              	int3
