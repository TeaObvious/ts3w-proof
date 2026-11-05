# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076fcf0 (ScriptCore.Slots::Slots_GetChildrenImpl)
Paired Ghidra pseudocode: 0076FCF0_ScriptCore_Slots_Slots_GetChildrenImpl.c
Window: [0x0076fcf0, 0x0076fe80) (400 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076fe80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076fcf0: 83 ec 34 53 55 56 57 e8 94 96 ff ff 8b e8 e8 6d
0076fd00: 78 1c 00 8b 4c 24 4c 8b 54 24 48 51 52 8b c8 e8
0076fd10: 6c 82 1c 00 85 c0 89 44 24 14 74 1e 8d 48 04 ba
0076fd20: 01 00 00 00 f0 0f c1 11 8b 0d 14 a1 1e 01 51 8b
0076fd30: c8 e8 2a 45 1c 00 8b d8 eb 02 33 db 33 f6 33 ff
0076fd40: 85 db 89 7c 24 20 89 74 24 24 89 74 24 28 c7 44
0076fd50: 24 2c 48 99 00 01 0f 84 9d 00 00 00 8b 54 24 50
0076fd60: 52 8b cb e8 e8 0b 1e 00 85 c0 0f 84 89 00 00 00
0076fd70: 8b 10 8b c8 8b 42 0c 6a 01 ff d0 85 c0 74 7a 50
0076fd80: 8d 4c 24 34 51 8b cb e8 24 1b 1e 00 8d 4c 24 30
0076fd90: e8 ab 11 1e 00 84 c0 74 60 8d a4 24 00 00 00 00
0076fda0: 8d 4c 24 30 e8 17 06 1e 00 85 c0 74 3b 3b 74 24
0076fdb0: 28 8b 48 08 8b 50 0c 89 4c 24 18 89 54 24 1c 73
0076fdc0: 14 8b c6 83 c6 08 85 c0 89 74 24 24 74 1a 89 08
0076fdd0: 89 50 04 eb 13 8d 54 24 18 52 56 8d 4c 24 28 e8
0076fde0: 7c 25 e0 ff 8b 74 24 24 8d 4c 24 30 e8 4f 11 1e
0076fdf0: 00 84 c0 75 ab 8b 7c 24 20 2b f7 c1 fe 03 c7 44
0076fe00: 24 10 00 00 00 00 74 29 8b 45 00 8b 90 88 00 00
0076fe10: 00 56 8d 4c 24 14 51 8b cd ff d2 8b 45 00 8b 90
0076fe20: a0 00 00 00 56 6a 00 57 8d 4c 24 1c 51 8b cd ff
0076fe30: d2 85 ff 8b 74 24 10 74 09 57 e8 a1 46 d7 ff 83
0076fe40: c4 04 8b 4c 24 14 85 c9 74 1e 8d 41 04 8b d0 83
0076fe50: cf ff f0 0f c1 3a 4f 75 0f ba 01 00 00 00 87 10
0076fe60: 8b 01 8b 10 6a 01 ff d2 5f 8b c6 5e 5d 5b 83 c4
0076fe70: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076fcf0 <.text+0x36ecf0>:
  76fcf0:	83 ec 34                                        	sub    esp,0x34
  76fcf3:	53                                              	push   ebx
  76fcf4:	55                                              	push   ebp
  76fcf5:	56                                              	push   esi
  76fcf6:	57                                              	push   edi
  76fcf7:	e8 94 96 ff ff                                  	call   0x769390
  76fcfc:	8b e8                                           	mov    ebp,eax
  76fcfe:	e8 6d 78 1c 00                                  	call   0x937570
  76fd03:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  76fd07:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
  76fd0b:	51                                              	push   ecx
  76fd0c:	52                                              	push   edx
  76fd0d:	8b c8                                           	mov    ecx,eax
  76fd0f:	e8 6c 82 1c 00                                  	call   0x937f80
  76fd14:	85 c0                                           	test   eax,eax
  76fd16:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  76fd1a:	74 1e                                           	je     0x76fd3a
  76fd1c:	8d 48 04                                        	lea    ecx,[eax+0x4]
  76fd1f:	ba 01 00 00 00                                  	mov    edx,0x1
  76fd24:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  76fd28:	8b 0d 14 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea114
  76fd2e:	51                                              	push   ecx
  76fd2f:	8b c8                                           	mov    ecx,eax
  76fd31:	e8 2a 45 1c 00                                  	call   0x934260
  76fd36:	8b d8                                           	mov    ebx,eax
  76fd38:	eb 02                                           	jmp    0x76fd3c
  76fd3a:	33 db                                           	xor    ebx,ebx
  76fd3c:	33 f6                                           	xor    esi,esi
  76fd3e:	33 ff                                           	xor    edi,edi
  76fd40:	85 db                                           	test   ebx,ebx
  76fd42:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  76fd46:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  76fd4a:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  76fd4e:	c7 44 24 2c 48 99 00 01                         	mov    DWORD PTR [esp+0x2c],0x1009948
  76fd56:	0f 84 9d 00 00 00                               	je     0x76fdf9
  76fd5c:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
  76fd60:	52                                              	push   edx
  76fd61:	8b cb                                           	mov    ecx,ebx
  76fd63:	e8 e8 0b 1e 00                                  	call   0x950950
  76fd68:	85 c0                                           	test   eax,eax
  76fd6a:	0f 84 89 00 00 00                               	je     0x76fdf9
  76fd70:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76fd72:	8b c8                                           	mov    ecx,eax
  76fd74:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  76fd77:	6a 01                                           	push   0x1
  76fd79:	ff d0                                           	call   eax
  76fd7b:	85 c0                                           	test   eax,eax
  76fd7d:	74 7a                                           	je     0x76fdf9
  76fd7f:	50                                              	push   eax
  76fd80:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  76fd84:	51                                              	push   ecx
  76fd85:	8b cb                                           	mov    ecx,ebx
  76fd87:	e8 24 1b 1e 00                                  	call   0x9518b0
  76fd8c:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  76fd90:	e8 ab 11 1e 00                                  	call   0x950f40
  76fd95:	84 c0                                           	test   al,al
  76fd97:	74 60                                           	je     0x76fdf9
  76fd99:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  76fda0:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  76fda4:	e8 17 06 1e 00                                  	call   0x9503c0
  76fda9:	85 c0                                           	test   eax,eax
  76fdab:	74 3b                                           	je     0x76fde8
  76fdad:	3b 74 24 28                                     	cmp    esi,DWORD PTR [esp+0x28]
  76fdb1:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  76fdb4:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  76fdb7:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  76fdbb:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  76fdbf:	73 14                                           	jae    0x76fdd5
  76fdc1:	8b c6                                           	mov    eax,esi
  76fdc3:	83 c6 08                                        	add    esi,0x8
  76fdc6:	85 c0                                           	test   eax,eax
  76fdc8:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  76fdcc:	74 1a                                           	je     0x76fde8
  76fdce:	89 08                                           	mov    DWORD PTR [eax],ecx
  76fdd0:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  76fdd3:	eb 13                                           	jmp    0x76fde8
  76fdd5:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  76fdd9:	52                                              	push   edx
  76fdda:	56                                              	push   esi
  76fddb:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  76fddf:	e8 7c 25 e0 ff                                  	call   0x572360
  76fde4:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
  76fde8:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  76fdec:	e8 4f 11 1e 00                                  	call   0x950f40
  76fdf1:	84 c0                                           	test   al,al
  76fdf3:	75 ab                                           	jne    0x76fda0
  76fdf5:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  76fdf9:	2b f7                                           	sub    esi,edi
  76fdfb:	c1 fe 03                                        	sar    esi,0x3
  76fdfe:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  76fe06:	74 29                                           	je     0x76fe31
  76fe08:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  76fe0b:	8b 90 88 00 00 00                               	mov    edx,DWORD PTR [eax+0x88]
  76fe11:	56                                              	push   esi
  76fe12:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  76fe16:	51                                              	push   ecx
  76fe17:	8b cd                                           	mov    ecx,ebp
  76fe19:	ff d2                                           	call   edx
  76fe1b:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  76fe1e:	8b 90 a0 00 00 00                               	mov    edx,DWORD PTR [eax+0xa0]
  76fe24:	56                                              	push   esi
  76fe25:	6a 00                                           	push   0x0
  76fe27:	57                                              	push   edi
  76fe28:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  76fe2c:	51                                              	push   ecx
  76fe2d:	8b cd                                           	mov    ecx,ebp
  76fe2f:	ff d2                                           	call   edx
  76fe31:	85 ff                                           	test   edi,edi
  76fe33:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  76fe37:	74 09                                           	je     0x76fe42
  76fe39:	57                                              	push   edi
  76fe3a:	e8 a1 46 d7 ff                                  	call   0x4e44e0
  76fe3f:	83 c4 04                                        	add    esp,0x4
  76fe42:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  76fe46:	85 c9                                           	test   ecx,ecx
  76fe48:	74 1e                                           	je     0x76fe68
  76fe4a:	8d 41 04                                        	lea    eax,[ecx+0x4]
  76fe4d:	8b d0                                           	mov    edx,eax
  76fe4f:	83 cf ff                                        	or     edi,0xffffffff
  76fe52:	f0 0f c1 3a                                     	lock xadd DWORD PTR [edx],edi
  76fe56:	4f                                              	dec    edi
  76fe57:	75 0f                                           	jne    0x76fe68
  76fe59:	ba 01 00 00 00                                  	mov    edx,0x1
  76fe5e:	87 10                                           	xchg   DWORD PTR [eax],edx
  76fe60:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  76fe62:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76fe64:	6a 01                                           	push   0x1
  76fe66:	ff d2                                           	call   edx
  76fe68:	5f                                              	pop    edi
  76fe69:	8b c6                                           	mov    eax,esi
  76fe6b:	5e                                              	pop    esi
  76fe6c:	5d                                              	pop    ebp
  76fe6d:	5b                                              	pop    ebx
  76fe6e:	83 c4 34                                        	add    esp,0x34
  76fe71:	c3                                              	ret
  76fe72:	cc                                              	int3
  76fe73:	cc                                              	int3
  76fe74:	cc                                              	int3
  76fe75:	cc                                              	int3
  76fe76:	cc                                              	int3
  76fe77:	cc                                              	int3
  76fe78:	cc                                              	int3
  76fe79:	cc                                              	int3
  76fe7a:	cc                                              	int3
  76fe7b:	cc                                              	int3
  76fe7c:	cc                                              	int3
  76fe7d:	cc                                              	int3
  76fe7e:	cc                                              	int3
  76fe7f:	cc                                              	int3
