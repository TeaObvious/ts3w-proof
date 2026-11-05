# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053acd0 (Query_GetGlobalObjects)
Paired Ghidra pseudocode: 1053ACD0_Query_GetGlobalObjects.c
Window: [0x1053acd0, 0x1053ad60) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053ad60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053acd0: 55 8b ec 83 e4 f8 b8 1c 10 00 00 e8 10 5c 55 00
1053ace0: 8d 44 24 1c 8b c8 89 4c 24 08 8b d0 56 89 44 24
1053acf0: 18 8d 4c 24 08 8d 84 24 20 10 00 00 51 33 f6 89
1053ad00: 54 24 0c 89 44 24 14 c7 44 24 18 28 b5 b1 10 e8
1053ad10: 9c fe ff ff 83 c4 04 85 c0 74 26 e8 00 04 02 00
1053ad20: 8b 4c 24 08 8b 54 24 0c 8b 30 2b d1 c1 fa 03 52
1053ad30: 8b 55 08 51 8b c8 8b 86 c0 00 00 00 52 ff d0 8b
1053ad40: f0 8b 44 24 08 85 c0 74 0f 3b 44 24 18 74 09 50
1053ad50: e8 3b e1 3d 00 83 c4 04 8b c6 5e 8b e5 5d c3 cc

LINEAR DISASSEMBLY
1053acd0 <.text+0x539cd0>:
1053acd0:	55                                              	push   ebp
1053acd1:	8b ec                                           	mov    ebp,esp
1053acd3:	83 e4 f8                                        	and    esp,0xfffffff8
1053acd6:	b8 1c 10 00 00                                  	mov    eax,0x101c
1053acdb:	e8 10 5c 55 00                                  	call   0x10a908f0
1053ace0:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
1053ace4:	8b c8                                           	mov    ecx,eax
1053ace6:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1053acea:	8b d0                                           	mov    edx,eax
1053acec:	56                                              	push   esi
1053aced:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1053acf1:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1053acf5:	8d 84 24 20 10 00 00                            	lea    eax,[esp+0x1020]
1053acfc:	51                                              	push   ecx
1053acfd:	33 f6                                           	xor    esi,esi
1053acff:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
1053ad03:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1053ad07:	c7 44 24 18 28 b5 b1 10                         	mov    DWORD PTR [esp+0x18],0x10b1b528
1053ad0f:	e8 9c fe ff ff                                  	call   0x1053abb0
1053ad14:	83 c4 04                                        	add    esp,0x4
1053ad17:	85 c0                                           	test   eax,eax
1053ad19:	74 26                                           	je     0x1053ad41
1053ad1b:	e8 00 04 02 00                                  	call   0x1055b120
1053ad20:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053ad24:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1053ad28:	8b 30                                           	mov    esi,DWORD PTR [eax]
1053ad2a:	2b d1                                           	sub    edx,ecx
1053ad2c:	c1 fa 03                                        	sar    edx,0x3
1053ad2f:	52                                              	push   edx
1053ad30:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
1053ad33:	51                                              	push   ecx
1053ad34:	8b c8                                           	mov    ecx,eax
1053ad36:	8b 86 c0 00 00 00                               	mov    eax,DWORD PTR [esi+0xc0]
1053ad3c:	52                                              	push   edx
1053ad3d:	ff d0                                           	call   eax
1053ad3f:	8b f0                                           	mov    esi,eax
1053ad41:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1053ad45:	85 c0                                           	test   eax,eax
1053ad47:	74 0f                                           	je     0x1053ad58
1053ad49:	3b 44 24 18                                     	cmp    eax,DWORD PTR [esp+0x18]
1053ad4d:	74 09                                           	je     0x1053ad58
1053ad4f:	50                                              	push   eax
1053ad50:	e8 3b e1 3d 00                                  	call   0x10918e90
1053ad55:	83 c4 04                                        	add    esp,0x4
1053ad58:	8b c6                                           	mov    eax,esi
1053ad5a:	5e                                              	pop    esi
1053ad5b:	8b e5                                           	mov    esp,ebp
1053ad5d:	5d                                              	pop    ebp
1053ad5e:	c3                                              	ret
1053ad5f:	cc                                              	int3
