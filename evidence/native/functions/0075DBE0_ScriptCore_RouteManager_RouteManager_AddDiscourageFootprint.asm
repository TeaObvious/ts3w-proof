# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0075dbe0 (ScriptCore.RouteManager::RouteManager_AddDiscourageFootprint)
Paired Ghidra pseudocode: 0075DBE0_ScriptCore_RouteManager_RouteManager_AddDiscourageFootprint.c
Window: [0x0075dbe0, 0x0075dd80) (416 bytes; stop exclusive)
Next defined Ghidra entry: 0x0075dd80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0075dbe0: 55 8b ec 83 e4 f0 83 ec 44 53 56 57 e8 9f b7 00
0075dbf0: 00 8b f0 85 f6 0f 84 78 01 00 00 e8 70 99 1d 00
0075dc00: 85 c0 0f 84 6b 01 00 00 8b 4d 0c 8b 55 08 51 52
0075dc10: 8b c8 e8 69 a3 1d 00 8b f8 85 ff 74 0c 8d 47 04
0075dc20: b9 01 00 00 00 f0 0f c1 08 e8 c2 b0 0c 00 8b d8
0075dc30: 33 c0 3b f8 89 5c 24 1c 0f 84 35 01 00 00 3b d8
0075dc40: 0f 84 0d 01 00 00 8b 16 8b 52 78 89 44 24 20 89
0075dc50: 44 24 24 89 44 24 28 89 44 24 14 89 44 24 18 8d
0075dc60: 44 24 18 50 8b 45 10 8d 4c 24 18 51 8b 08 51 8b
0075dc70: ce c7 44 24 38 54 58 00 01 ff d2 8b 45 14 85 c0
0075dc80: 7e 7c 8b 54 24 14 8b d8 8b 44 24 24 33 f6 8b ff
0075dc90: 3b 44 24 28 f3 0f 10 4c 16 08 f3 0f 10 04 16 f3
0075dca0: 0f 11 4c 24 38 f3 0f 10 4c 16 04 f3 0f 11 44 24
0075dcb0: 3c f3 0f 11 4c 24 34 f3 0f 11 44 24 30 0f 28 44
0075dcc0: 24 30 0f 29 44 24 40 73 12 8b c8 83 c0 10 85 c9
0075dcd0: 89 44 24 24 74 1c 0f 29 01 eb 0f 8d 4c 24 40 51
0075dce0: 50 8d 4c 24 28 e8 86 1c e7 ff 8b 54 24 14 8b 44
0075dcf0: 24 24 83 c6 0c 83 eb 01 75 96 8b 5c 24 1c 8b 55
0075dd00: 20 8b 45 1c 8b 4d 18 52 50 51 8d 54 24 2c 52 57
0075dd10: 8b cb e8 99 61 0d 00 8a d8 8b 44 24 20 85 c0 74
0075dd20: 09 50 e8 b9 67 d8 ff 83 c4 04 8d 47 04 8b c8 83
0075dd30: ca ff f0 0f c1 11 4a 75 11 b9 01 00 00 00 87 08
0075dd40: 8b 17 8b 02 6a 01 8b cf ff d0 8a c3 5f 5e 5b 8b
0075dd50: e5 5d c3 8d 47 04 8b c8 83 ca ff f0 0f c1 11 4a
0075dd60: 75 11 b9 01 00 00 00 87 08 8b 17 8b 02 6a 01 8b
0075dd70: cf ff d0 5f 5e 32 c0 5b 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
0075dbe0 <.text+0x35cbe0>:
  75dbe0:	55                                              	push   ebp
  75dbe1:	8b ec                                           	mov    ebp,esp
  75dbe3:	83 e4 f0                                        	and    esp,0xfffffff0
  75dbe6:	83 ec 44                                        	sub    esp,0x44
  75dbe9:	53                                              	push   ebx
  75dbea:	56                                              	push   esi
  75dbeb:	57                                              	push   edi
  75dbec:	e8 9f b7 00 00                                  	call   0x769390
  75dbf1:	8b f0                                           	mov    esi,eax
  75dbf3:	85 f6                                           	test   esi,esi
  75dbf5:	0f 84 78 01 00 00                               	je     0x75dd73
  75dbfb:	e8 70 99 1d 00                                  	call   0x937570
  75dc00:	85 c0                                           	test   eax,eax
  75dc02:	0f 84 6b 01 00 00                               	je     0x75dd73
  75dc08:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  75dc0b:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  75dc0e:	51                                              	push   ecx
  75dc0f:	52                                              	push   edx
  75dc10:	8b c8                                           	mov    ecx,eax
  75dc12:	e8 69 a3 1d 00                                  	call   0x937f80
  75dc17:	8b f8                                           	mov    edi,eax
  75dc19:	85 ff                                           	test   edi,edi
  75dc1b:	74 0c                                           	je     0x75dc29
  75dc1d:	8d 47 04                                        	lea    eax,[edi+0x4]
  75dc20:	b9 01 00 00 00                                  	mov    ecx,0x1
  75dc25:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  75dc29:	e8 c2 b0 0c 00                                  	call   0x828cf0
  75dc2e:	8b d8                                           	mov    ebx,eax
  75dc30:	33 c0                                           	xor    eax,eax
  75dc32:	3b f8                                           	cmp    edi,eax
  75dc34:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  75dc38:	0f 84 35 01 00 00                               	je     0x75dd73
  75dc3e:	3b d8                                           	cmp    ebx,eax
  75dc40:	0f 84 0d 01 00 00                               	je     0x75dd53
  75dc46:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75dc48:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
  75dc4b:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  75dc4f:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  75dc53:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  75dc57:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  75dc5b:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  75dc5f:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  75dc63:	50                                              	push   eax
  75dc64:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  75dc67:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  75dc6b:	51                                              	push   ecx
  75dc6c:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  75dc6e:	51                                              	push   ecx
  75dc6f:	8b ce                                           	mov    ecx,esi
  75dc71:	c7 44 24 38 54 58 00 01                         	mov    DWORD PTR [esp+0x38],0x1005854
  75dc79:	ff d2                                           	call   edx
  75dc7b:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  75dc7e:	85 c0                                           	test   eax,eax
  75dc80:	7e 7c                                           	jle    0x75dcfe
  75dc82:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  75dc86:	8b d8                                           	mov    ebx,eax
  75dc88:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  75dc8c:	33 f6                                           	xor    esi,esi
  75dc8e:	8b ff                                           	mov    edi,edi
  75dc90:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
  75dc94:	f3 0f 10 4c 16 08                               	movss  xmm1,DWORD PTR [esi+edx*1+0x8]
  75dc9a:	f3 0f 10 04 16                                  	movss  xmm0,DWORD PTR [esi+edx*1]
  75dc9f:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
  75dca5:	f3 0f 10 4c 16 04                               	movss  xmm1,DWORD PTR [esi+edx*1+0x4]
  75dcab:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  75dcb1:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
  75dcb7:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  75dcbd:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
  75dcc2:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  75dcc7:	73 12                                           	jae    0x75dcdb
  75dcc9:	8b c8                                           	mov    ecx,eax
  75dccb:	83 c0 10                                        	add    eax,0x10
  75dcce:	85 c9                                           	test   ecx,ecx
  75dcd0:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  75dcd4:	74 1c                                           	je     0x75dcf2
  75dcd6:	0f 29 01                                        	movaps XMMWORD PTR [ecx],xmm0
  75dcd9:	eb 0f                                           	jmp    0x75dcea
  75dcdb:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  75dcdf:	51                                              	push   ecx
  75dce0:	50                                              	push   eax
  75dce1:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  75dce5:	e8 86 1c e7 ff                                  	call   0x5cf970
  75dcea:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  75dcee:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  75dcf2:	83 c6 0c                                        	add    esi,0xc
  75dcf5:	83 eb 01                                        	sub    ebx,0x1
  75dcf8:	75 96                                           	jne    0x75dc90
  75dcfa:	8b 5c 24 1c                                     	mov    ebx,DWORD PTR [esp+0x1c]
  75dcfe:	8b 55 20                                        	mov    edx,DWORD PTR [ebp+0x20]
  75dd01:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
  75dd04:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
  75dd07:	52                                              	push   edx
  75dd08:	50                                              	push   eax
  75dd09:	51                                              	push   ecx
  75dd0a:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  75dd0e:	52                                              	push   edx
  75dd0f:	57                                              	push   edi
  75dd10:	8b cb                                           	mov    ecx,ebx
  75dd12:	e8 99 61 0d 00                                  	call   0x833eb0
  75dd17:	8a d8                                           	mov    bl,al
  75dd19:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  75dd1d:	85 c0                                           	test   eax,eax
  75dd1f:	74 09                                           	je     0x75dd2a
  75dd21:	50                                              	push   eax
  75dd22:	e8 b9 67 d8 ff                                  	call   0x4e44e0
  75dd27:	83 c4 04                                        	add    esp,0x4
  75dd2a:	8d 47 04                                        	lea    eax,[edi+0x4]
  75dd2d:	8b c8                                           	mov    ecx,eax
  75dd2f:	83 ca ff                                        	or     edx,0xffffffff
  75dd32:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  75dd36:	4a                                              	dec    edx
  75dd37:	75 11                                           	jne    0x75dd4a
  75dd39:	b9 01 00 00 00                                  	mov    ecx,0x1
  75dd3e:	87 08                                           	xchg   DWORD PTR [eax],ecx
  75dd40:	8b 17                                           	mov    edx,DWORD PTR [edi]
  75dd42:	8b 02                                           	mov    eax,DWORD PTR [edx]
  75dd44:	6a 01                                           	push   0x1
  75dd46:	8b cf                                           	mov    ecx,edi
  75dd48:	ff d0                                           	call   eax
  75dd4a:	8a c3                                           	mov    al,bl
  75dd4c:	5f                                              	pop    edi
  75dd4d:	5e                                              	pop    esi
  75dd4e:	5b                                              	pop    ebx
  75dd4f:	8b e5                                           	mov    esp,ebp
  75dd51:	5d                                              	pop    ebp
  75dd52:	c3                                              	ret
  75dd53:	8d 47 04                                        	lea    eax,[edi+0x4]
  75dd56:	8b c8                                           	mov    ecx,eax
  75dd58:	83 ca ff                                        	or     edx,0xffffffff
  75dd5b:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  75dd5f:	4a                                              	dec    edx
  75dd60:	75 11                                           	jne    0x75dd73
  75dd62:	b9 01 00 00 00                                  	mov    ecx,0x1
  75dd67:	87 08                                           	xchg   DWORD PTR [eax],ecx
  75dd69:	8b 17                                           	mov    edx,DWORD PTR [edi]
  75dd6b:	8b 02                                           	mov    eax,DWORD PTR [edx]
  75dd6d:	6a 01                                           	push   0x1
  75dd6f:	8b cf                                           	mov    ecx,edi
  75dd71:	ff d0                                           	call   eax
  75dd73:	5f                                              	pop    edi
  75dd74:	5e                                              	pop    esi
  75dd75:	32 c0                                           	xor    al,al
  75dd77:	5b                                              	pop    ebx
  75dd78:	8b e5                                           	mov    esp,ebp
  75dd7a:	5d                                              	pop    ebp
  75dd7b:	c3                                              	ret
  75dd7c:	cc                                              	int3
  75dd7d:	cc                                              	int3
  75dd7e:	cc                                              	int3
  75dd7f:	cc                                              	int3
