# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d990 (ScriptCore.World::World_ObjectSetPosition)
Paired Ghidra pseudocode: 0078D990_ScriptCore_World_World_ObjectSetPosition.c
Window: [0x0078d990, 0x0078da80) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078da80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d990: 55 8b ec 83 e4 f0 83 ec 48 56 57 e8 d0 9b 1a 00
0078d9a0: 85 c0 0f 84 ca 00 00 00 8b 4d 0c 8b 55 08 51 52
0078d9b0: 8b c8 e8 c9 a5 1a 00 8b f0 85 f6 0f 84 b1 00 00
0078d9c0: 00 8b 0d c4 db 1e 01 85 c9 74 19 d9 45 18 83 ec
0078d9d0: 08 d9 5c 24 04 d9 45 10 d9 1c 24 e8 f0 ad 4d 00
0078d9e0: 8b f8 eb 02 33 ff 8b ce e8 43 17 f0 ff 85 c0 74
0078d9f0: 0c 8b 10 6a 00 8b c8 8b 42 3c 56 ff d0 85 ff 74
0078da00: 71 f3 0f 10 4d 18 f3 0f 10 45 10 f3 0f 11 4c 24
0078da10: 18 f3 0f 10 4d 14 8d 4c 24 20 51 f3 0f 11 44 24
0078da20: 20 f3 0f 11 4c 24 18 f3 0f 11 44 24 14 0f 28 44
0078da30: 24 14 8d 54 24 14 52 8b cf 0f 29 44 24 18 e8 5d
0078da40: 97 32 00 0f 28 44 24 20 8b 4d 1c 8b 07 8b 50 34
0078da50: 51 0f 29 44 24 34 d9 44 24 3c 83 ec 08 d9 5c 24
0078da60: 04 0f 29 44 24 4c d9 44 24 4c 8b cf d9 1c 24 56
0078da70: ff d2 5f 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078d990 <.text+0x38c990>:
  78d990:	55                                              	push   ebp
  78d991:	8b ec                                           	mov    ebp,esp
  78d993:	83 e4 f0                                        	and    esp,0xfffffff0
  78d996:	83 ec 48                                        	sub    esp,0x48
  78d999:	56                                              	push   esi
  78d99a:	57                                              	push   edi
  78d99b:	e8 d0 9b 1a 00                                  	call   0x937570
  78d9a0:	85 c0                                           	test   eax,eax
  78d9a2:	0f 84 ca 00 00 00                               	je     0x78da72
  78d9a8:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  78d9ab:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  78d9ae:	51                                              	push   ecx
  78d9af:	52                                              	push   edx
  78d9b0:	8b c8                                           	mov    ecx,eax
  78d9b2:	e8 c9 a5 1a 00                                  	call   0x937f80
  78d9b7:	8b f0                                           	mov    esi,eax
  78d9b9:	85 f6                                           	test   esi,esi
  78d9bb:	0f 84 b1 00 00 00                               	je     0x78da72
  78d9c1:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78d9c7:	85 c9                                           	test   ecx,ecx
  78d9c9:	74 19                                           	je     0x78d9e4
  78d9cb:	d9 45 18                                        	fld    DWORD PTR [ebp+0x18]
  78d9ce:	83 ec 08                                        	sub    esp,0x8
  78d9d1:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78d9d5:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
  78d9d8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78d9db:	e8 f0 ad 4d 00                                  	call   0xc687d0
  78d9e0:	8b f8                                           	mov    edi,eax
  78d9e2:	eb 02                                           	jmp    0x78d9e6
  78d9e4:	33 ff                                           	xor    edi,edi
  78d9e6:	8b ce                                           	mov    ecx,esi
  78d9e8:	e8 43 17 f0 ff                                  	call   0x68f130
  78d9ed:	85 c0                                           	test   eax,eax
  78d9ef:	74 0c                                           	je     0x78d9fd
  78d9f1:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78d9f3:	6a 00                                           	push   0x0
  78d9f5:	8b c8                                           	mov    ecx,eax
  78d9f7:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  78d9fa:	56                                              	push   esi
  78d9fb:	ff d0                                           	call   eax
  78d9fd:	85 ff                                           	test   edi,edi
  78d9ff:	74 71                                           	je     0x78da72
  78da01:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  78da06:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
  78da0b:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  78da11:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  78da16:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  78da1a:	51                                              	push   ecx
  78da1b:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  78da21:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  78da27:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  78da2d:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
  78da32:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  78da36:	52                                              	push   edx
  78da37:	8b cf                                           	mov    ecx,edi
  78da39:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
  78da3e:	e8 5d 97 32 00                                  	call   0xab71a0
  78da43:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  78da48:	8b 4d 1c                                        	mov    ecx,DWORD PTR [ebp+0x1c]
  78da4b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  78da4d:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
  78da50:	51                                              	push   ecx
  78da51:	0f 29 44 24 34                                  	movaps XMMWORD PTR [esp+0x34],xmm0
  78da56:	d9 44 24 3c                                     	fld    DWORD PTR [esp+0x3c]
  78da5a:	83 ec 08                                        	sub    esp,0x8
  78da5d:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78da61:	0f 29 44 24 4c                                  	movaps XMMWORD PTR [esp+0x4c],xmm0
  78da66:	d9 44 24 4c                                     	fld    DWORD PTR [esp+0x4c]
  78da6a:	8b cf                                           	mov    ecx,edi
  78da6c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78da6f:	56                                              	push   esi
  78da70:	ff d2                                           	call   edx
  78da72:	5f                                              	pop    edi
  78da73:	5e                                              	pop    esi
  78da74:	8b e5                                           	mov    esp,ebp
  78da76:	5d                                              	pop    ebp
  78da77:	c3                                              	ret
  78da78:	cc                                              	int3
  78da79:	cc                                              	int3
  78da7a:	cc                                              	int3
  78da7b:	cc                                              	int3
  78da7c:	cc                                              	int3
  78da7d:	cc                                              	int3
  78da7e:	cc                                              	int3
  78da7f:	cc                                              	int3
