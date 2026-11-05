# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0075dd80 (ScriptCore.RouteManager::RouteManager_AddPrivateFootprint)
Paired Ghidra pseudocode: 0075DD80_ScriptCore_RouteManager_RouteManager_AddPrivateFootprint.c
Window: [0x0075dd80, 0x0075df20) (416 bytes; stop exclusive)
Next defined Ghidra entry: 0x0075df20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0075dd80: 55 8b ec 83 e4 f0 83 ec 44 53 56 57 e8 ff b5 00
0075dd90: 00 8b f0 85 f6 0f 84 70 01 00 00 e8 d0 97 1d 00
0075dda0: 85 c0 0f 84 63 01 00 00 8b 4d 0c 8b 55 08 51 52
0075ddb0: 8b c8 e8 c9 a1 1d 00 8b f8 85 ff 74 0c 8d 47 04
0075ddc0: b9 01 00 00 00 f0 0f c1 08 e8 22 af 0c 00 8b d8
0075ddd0: 33 c0 3b f8 89 5c 24 1c 0f 84 2d 01 00 00 3b d8
0075dde0: 0f 84 05 01 00 00 8b 16 8b 52 78 89 44 24 20 89
0075ddf0: 44 24 24 89 44 24 28 89 44 24 14 89 44 24 18 8d
0075de00: 44 24 18 50 8b 45 10 8d 4c 24 18 51 8b 08 51 8b
0075de10: ce c7 44 24 38 74 58 00 01 ff d2 8b 45 14 85 c0
0075de20: 7e 7c 8b 54 24 14 8b d8 8b 44 24 24 33 f6 8b ff
0075de30: 3b 44 24 28 f3 0f 10 4c 16 08 f3 0f 10 04 16 f3
0075de40: 0f 11 4c 24 38 f3 0f 10 4c 16 04 f3 0f 11 44 24
0075de50: 3c f3 0f 11 4c 24 34 f3 0f 11 44 24 30 0f 28 44
0075de60: 24 30 0f 29 44 24 40 73 12 8b c8 83 c0 10 85 c9
0075de70: 89 44 24 24 74 1c 0f 29 01 eb 0f 8d 4c 24 40 51
0075de80: 50 8d 4c 24 28 e8 e6 1a e7 ff 8b 54 24 14 8b 44
0075de90: 24 24 83 c6 0c 83 eb 01 75 96 8b 5c 24 1c 8b 55
0075dea0: 18 52 8d 44 24 24 50 57 8b cb e8 31 38 0d 00 8a
0075deb0: d8 8b 44 24 20 85 c0 74 09 50 e8 21 66 d8 ff 83
0075dec0: c4 04 8d 47 04 8b c8 83 ca ff f0 0f c1 11 4a 75
0075ded0: 11 b9 01 00 00 00 87 08 8b 17 8b 02 6a 01 8b cf
0075dee0: ff d0 8a c3 5f 5e 5b 8b e5 5d c3 8d 47 04 8b c8
0075def0: 83 ca ff f0 0f c1 11 4a 75 11 b9 01 00 00 00 87
0075df00: 08 8b 17 8b 02 6a 01 8b cf ff d0 5f 5e 32 c0 5b
0075df10: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0075dd80 <.text+0x35cd80>:
  75dd80:	55                                              	push   ebp
  75dd81:	8b ec                                           	mov    ebp,esp
  75dd83:	83 e4 f0                                        	and    esp,0xfffffff0
  75dd86:	83 ec 44                                        	sub    esp,0x44
  75dd89:	53                                              	push   ebx
  75dd8a:	56                                              	push   esi
  75dd8b:	57                                              	push   edi
  75dd8c:	e8 ff b5 00 00                                  	call   0x769390
  75dd91:	8b f0                                           	mov    esi,eax
  75dd93:	85 f6                                           	test   esi,esi
  75dd95:	0f 84 70 01 00 00                               	je     0x75df0b
  75dd9b:	e8 d0 97 1d 00                                  	call   0x937570
  75dda0:	85 c0                                           	test   eax,eax
  75dda2:	0f 84 63 01 00 00                               	je     0x75df0b
  75dda8:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  75ddab:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  75ddae:	51                                              	push   ecx
  75ddaf:	52                                              	push   edx
  75ddb0:	8b c8                                           	mov    ecx,eax
  75ddb2:	e8 c9 a1 1d 00                                  	call   0x937f80
  75ddb7:	8b f8                                           	mov    edi,eax
  75ddb9:	85 ff                                           	test   edi,edi
  75ddbb:	74 0c                                           	je     0x75ddc9
  75ddbd:	8d 47 04                                        	lea    eax,[edi+0x4]
  75ddc0:	b9 01 00 00 00                                  	mov    ecx,0x1
  75ddc5:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  75ddc9:	e8 22 af 0c 00                                  	call   0x828cf0
  75ddce:	8b d8                                           	mov    ebx,eax
  75ddd0:	33 c0                                           	xor    eax,eax
  75ddd2:	3b f8                                           	cmp    edi,eax
  75ddd4:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  75ddd8:	0f 84 2d 01 00 00                               	je     0x75df0b
  75ddde:	3b d8                                           	cmp    ebx,eax
  75dde0:	0f 84 05 01 00 00                               	je     0x75deeb
  75dde6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75dde8:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
  75ddeb:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  75ddef:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  75ddf3:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  75ddf7:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  75ddfb:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  75ddff:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  75de03:	50                                              	push   eax
  75de04:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  75de07:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  75de0b:	51                                              	push   ecx
  75de0c:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  75de0e:	51                                              	push   ecx
  75de0f:	8b ce                                           	mov    ecx,esi
  75de11:	c7 44 24 38 74 58 00 01                         	mov    DWORD PTR [esp+0x38],0x1005874
  75de19:	ff d2                                           	call   edx
  75de1b:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  75de1e:	85 c0                                           	test   eax,eax
  75de20:	7e 7c                                           	jle    0x75de9e
  75de22:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  75de26:	8b d8                                           	mov    ebx,eax
  75de28:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  75de2c:	33 f6                                           	xor    esi,esi
  75de2e:	8b ff                                           	mov    edi,edi
  75de30:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
  75de34:	f3 0f 10 4c 16 08                               	movss  xmm1,DWORD PTR [esi+edx*1+0x8]
  75de3a:	f3 0f 10 04 16                                  	movss  xmm0,DWORD PTR [esi+edx*1]
  75de3f:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
  75de45:	f3 0f 10 4c 16 04                               	movss  xmm1,DWORD PTR [esi+edx*1+0x4]
  75de4b:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  75de51:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
  75de57:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  75de5d:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
  75de62:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  75de67:	73 12                                           	jae    0x75de7b
  75de69:	8b c8                                           	mov    ecx,eax
  75de6b:	83 c0 10                                        	add    eax,0x10
  75de6e:	85 c9                                           	test   ecx,ecx
  75de70:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  75de74:	74 1c                                           	je     0x75de92
  75de76:	0f 29 01                                        	movaps XMMWORD PTR [ecx],xmm0
  75de79:	eb 0f                                           	jmp    0x75de8a
  75de7b:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  75de7f:	51                                              	push   ecx
  75de80:	50                                              	push   eax
  75de81:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  75de85:	e8 e6 1a e7 ff                                  	call   0x5cf970
  75de8a:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  75de8e:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  75de92:	83 c6 0c                                        	add    esi,0xc
  75de95:	83 eb 01                                        	sub    ebx,0x1
  75de98:	75 96                                           	jne    0x75de30
  75de9a:	8b 5c 24 1c                                     	mov    ebx,DWORD PTR [esp+0x1c]
  75de9e:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
  75dea1:	52                                              	push   edx
  75dea2:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  75dea6:	50                                              	push   eax
  75dea7:	57                                              	push   edi
  75dea8:	8b cb                                           	mov    ecx,ebx
  75deaa:	e8 31 38 0d 00                                  	call   0x8316e0
  75deaf:	8a d8                                           	mov    bl,al
  75deb1:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  75deb5:	85 c0                                           	test   eax,eax
  75deb7:	74 09                                           	je     0x75dec2
  75deb9:	50                                              	push   eax
  75deba:	e8 21 66 d8 ff                                  	call   0x4e44e0
  75debf:	83 c4 04                                        	add    esp,0x4
  75dec2:	8d 47 04                                        	lea    eax,[edi+0x4]
  75dec5:	8b c8                                           	mov    ecx,eax
  75dec7:	83 ca ff                                        	or     edx,0xffffffff
  75deca:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  75dece:	4a                                              	dec    edx
  75decf:	75 11                                           	jne    0x75dee2
  75ded1:	b9 01 00 00 00                                  	mov    ecx,0x1
  75ded6:	87 08                                           	xchg   DWORD PTR [eax],ecx
  75ded8:	8b 17                                           	mov    edx,DWORD PTR [edi]
  75deda:	8b 02                                           	mov    eax,DWORD PTR [edx]
  75dedc:	6a 01                                           	push   0x1
  75dede:	8b cf                                           	mov    ecx,edi
  75dee0:	ff d0                                           	call   eax
  75dee2:	8a c3                                           	mov    al,bl
  75dee4:	5f                                              	pop    edi
  75dee5:	5e                                              	pop    esi
  75dee6:	5b                                              	pop    ebx
  75dee7:	8b e5                                           	mov    esp,ebp
  75dee9:	5d                                              	pop    ebp
  75deea:	c3                                              	ret
  75deeb:	8d 47 04                                        	lea    eax,[edi+0x4]
  75deee:	8b c8                                           	mov    ecx,eax
  75def0:	83 ca ff                                        	or     edx,0xffffffff
  75def3:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  75def7:	4a                                              	dec    edx
  75def8:	75 11                                           	jne    0x75df0b
  75defa:	b9 01 00 00 00                                  	mov    ecx,0x1
  75deff:	87 08                                           	xchg   DWORD PTR [eax],ecx
  75df01:	8b 17                                           	mov    edx,DWORD PTR [edi]
  75df03:	8b 02                                           	mov    eax,DWORD PTR [edx]
  75df05:	6a 01                                           	push   0x1
  75df07:	8b cf                                           	mov    ecx,edi
  75df09:	ff d0                                           	call   eax
  75df0b:	5f                                              	pop    edi
  75df0c:	5e                                              	pop    esi
  75df0d:	32 c0                                           	xor    al,al
  75df0f:	5b                                              	pop    ebx
  75df10:	8b e5                                           	mov    esp,ebp
  75df12:	5d                                              	pop    ebp
  75df13:	c3                                              	ret
  75df14:	cc                                              	int3
  75df15:	cc                                              	int3
  75df16:	cc                                              	int3
  75df17:	cc                                              	int3
  75df18:	cc                                              	int3
  75df19:	cc                                              	int3
  75df1a:	cc                                              	int3
  75df1b:	cc                                              	int3
  75df1c:	cc                                              	int3
  75df1d:	cc                                              	int3
  75df1e:	cc                                              	int3
  75df1f:	cc                                              	int3
