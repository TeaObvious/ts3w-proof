# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00801bd0 (SACS_ReleaseDestinationWait_801bd0)
Paired Ghidra pseudocode: 00801BD0_SACS_ReleaseDestinationWait_801bd0.c
Window: [0x00801bd0, 0x00801ca0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00801ca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00801bd0: 56 8b f1 8b 46 6c 83 f8 05 57 8d 7e 6c 74 47 8b
00801be0: 46 34 8b 7e 44 3b c7 8b 56 3c 8b 4e 40 0f 84 84
00801bf0: 00 00 00 f7 00 20 00 00 00 75 19 83 c0 08 3b c2
00801c00: 75 0c 8b 41 04 83 c1 04 8d 90 00 01 00 00 3b c7
00801c10: 75 e1 eb 63 8b 08 8b 50 04 83 e1 df 5f 89 08 89
00801c20: 50 04 5e c2 04 00 8b 0f 85 c9 7e 19 8b 4e 64 e8
00801c30: 7c 33 00 00 84 c0 74 0d 8b 4e 04 56 e8 0f e5 ff
00801c40: ff 84 c0 74 32 33 d2 87 17 8b 4e 64 85 c9 74 07
00801c50: 6a 00 e8 79 c8 1d 00 8b 46 04 c6 46 0c 01 c6 80
00801c60: 46 01 00 00 01 8b 0d 40 9d 1d 01 85 c9 74 08 6a
00801c70: 00 50 e8 09 b3 ff ff 8b 44 24 0c 85 c0 74 15 8b
00801c80: 40 08 8a 48 24 84 c9 c6 40 24 00 74 07 8b 46 08
00801c90: c6 40 24 01 5f 5e c2 04 00 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00801bd0 <.text+0x400bd0>:
  801bd0:	56                                              	push   esi
  801bd1:	8b f1                                           	mov    esi,ecx
  801bd3:	8b 46 6c                                        	mov    eax,DWORD PTR [esi+0x6c]
  801bd6:	83 f8 05                                        	cmp    eax,0x5
  801bd9:	57                                              	push   edi
  801bda:	8d 7e 6c                                        	lea    edi,[esi+0x6c]
  801bdd:	74 47                                           	je     0x801c26
  801bdf:	8b 46 34                                        	mov    eax,DWORD PTR [esi+0x34]
  801be2:	8b 7e 44                                        	mov    edi,DWORD PTR [esi+0x44]
  801be5:	3b c7                                           	cmp    eax,edi
  801be7:	8b 56 3c                                        	mov    edx,DWORD PTR [esi+0x3c]
  801bea:	8b 4e 40                                        	mov    ecx,DWORD PTR [esi+0x40]
  801bed:	0f 84 84 00 00 00                               	je     0x801c77
  801bf3:	f7 00 20 00 00 00                               	test   DWORD PTR [eax],0x20
  801bf9:	75 19                                           	jne    0x801c14
  801bfb:	83 c0 08                                        	add    eax,0x8
  801bfe:	3b c2                                           	cmp    eax,edx
  801c00:	75 0c                                           	jne    0x801c0e
  801c02:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  801c05:	83 c1 04                                        	add    ecx,0x4
  801c08:	8d 90 00 01 00 00                               	lea    edx,[eax+0x100]
  801c0e:	3b c7                                           	cmp    eax,edi
  801c10:	75 e1                                           	jne    0x801bf3
  801c12:	eb 63                                           	jmp    0x801c77
  801c14:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  801c16:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  801c19:	83 e1 df                                        	and    ecx,0xffffffdf
  801c1c:	5f                                              	pop    edi
  801c1d:	89 08                                           	mov    DWORD PTR [eax],ecx
  801c1f:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  801c22:	5e                                              	pop    esi
  801c23:	c2 04 00                                        	ret    0x4
  801c26:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  801c28:	85 c9                                           	test   ecx,ecx
  801c2a:	7e 19                                           	jle    0x801c45
  801c2c:	8b 4e 64                                        	mov    ecx,DWORD PTR [esi+0x64]
  801c2f:	e8 7c 33 00 00                                  	call   0x804fb0
  801c34:	84 c0                                           	test   al,al
  801c36:	74 0d                                           	je     0x801c45
  801c38:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  801c3b:	56                                              	push   esi
  801c3c:	e8 0f e5 ff ff                                  	call   0x800150
  801c41:	84 c0                                           	test   al,al
  801c43:	74 32                                           	je     0x801c77
  801c45:	33 d2                                           	xor    edx,edx
  801c47:	87 17                                           	xchg   DWORD PTR [edi],edx
  801c49:	8b 4e 64                                        	mov    ecx,DWORD PTR [esi+0x64]
  801c4c:	85 c9                                           	test   ecx,ecx
  801c4e:	74 07                                           	je     0x801c57
  801c50:	6a 00                                           	push   0x0
  801c52:	e8 79 c8 1d 00                                  	call   0x9de4d0
  801c57:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  801c5a:	c6 46 0c 01                                     	mov    BYTE PTR [esi+0xc],0x1
  801c5e:	c6 80 46 01 00 00 01                            	mov    BYTE PTR [eax+0x146],0x1
  801c65:	8b 0d 40 9d 1d 01                               	mov    ecx,DWORD PTR ds:0x11d9d40
  801c6b:	85 c9                                           	test   ecx,ecx
  801c6d:	74 08                                           	je     0x801c77
  801c6f:	6a 00                                           	push   0x0
  801c71:	50                                              	push   eax
  801c72:	e8 09 b3 ff ff                                  	call   0x7fcf80
  801c77:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  801c7b:	85 c0                                           	test   eax,eax
  801c7d:	74 15                                           	je     0x801c94
  801c7f:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  801c82:	8a 48 24                                        	mov    cl,BYTE PTR [eax+0x24]
  801c85:	84 c9                                           	test   cl,cl
  801c87:	c6 40 24 00                                     	mov    BYTE PTR [eax+0x24],0x0
  801c8b:	74 07                                           	je     0x801c94
  801c8d:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  801c90:	c6 40 24 01                                     	mov    BYTE PTR [eax+0x24],0x1
  801c94:	5f                                              	pop    edi
  801c95:	5e                                              	pop    esi
  801c96:	c2 04 00                                        	ret    0x4
  801c99:	cc                                              	int3
  801c9a:	cc                                              	int3
  801c9b:	cc                                              	int3
  801c9c:	cc                                              	int3
  801c9d:	cc                                              	int3
  801c9e:	cc                                              	int3
  801c9f:	cc                                              	int3
