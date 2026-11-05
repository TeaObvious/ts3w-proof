# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074e840 (ScriptCore.RouteManager::RouteManager_GetPositionAndOrientationForRailPathImpl)
Paired Ghidra pseudocode: 0074E840_ScriptCore_RouteManager_RouteManager_GetPositionAndOrientationForRailPathImpl.c
Window: [0x0074e840, 0x0074ee40) (1536 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074ee40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074e840: 55 8b ec 83 e4 f0 83 ec 74 53 56 57 e8 1f 8d 1e
0074e850: 00 85 c0 8b 7d 14 8b 75 10 74 2e 8b 4d 0c 8b 55
0074e860: 08 51 52 8b c8 e8 16 97 1e 00 85 c0 74 1b 8b 0d
0074e870: 38 a1 1e 01 51 8b c8 e8 e4 59 1e 00 85 c0 74 09
0074e880: 57 56 8b c8 e8 b7 38 20 00 8b 0d 40 a1 1d 01 85
0074e890: c9 89 4c 24 1c 0f 84 8f 05 00 00 e8 d0 43 17 00
0074e8a0: 85 f6 7d 02 33 f6 3b f0 7c 03 8d 70 ff 85 ff 7d
0074e8b0: 02 33 ff 3b f8 7c 03 8d 78 ff f3 0f 2a c7 f3 0f
0074e8c0: 2a ce f3 0f 5c c1 f3 0f 11 44 24 18 8b 54 24 18
0074e8d0: 81 e2 ff ff ff 7f 89 54 24 18 f3 0f 2a c0 f3 0f
0074e8e0: 59 05 b4 b5 f9 00 0f 2f 44 24 18 72 07 3b fe 0f
0074e8f0: 9f c3 eb 05 3b fe 0f 9c c3 84 db 75 03 83 c6 ff
0074e900: 85 f6 7d 03 8d 70 ff 8b 4c 24 1c 56 e8 cf dc 0e
0074e910: 00 85 c0 0f 84 11 05 00 00 84 db f3 0f 10 35 f8
0074e920: 98 f9 00 f3 0f 10 ee 0f c6 ed 00 74 0b 8b 00 0f
0074e930: 28 00 0f 28 50 40 eb 1e 8b 08 8b 40 04 2b c1 c1
0074e940: f8 05 8b d0 c1 e2 05 0f 28 44 0a e0 83 c0 fd c1
0074e950: e0 05 0f 28 14 08 0f 5c d0 0f 28 ca 0f 59 ca 0f
0074e960: 28 d9 0f c6 d9 01 0f 29 44 24 30 0f 28 c1 0f c6
0074e970: c1 02 0f 58 c3 f3 0f 10 1d b4 b5 f9 00 0f 58 c1
0074e980: 0f c6 c0 00 0f 52 e0 0f 28 fc 0f 59 fc 0f 59 f8
0074e990: 0f c6 db 00 0f 28 cd 0f 5c cf 0f 28 fb 0f 59 fc
0074e9a0: 0f 59 cf 0f 58 cc 0f 28 e1 0f 59 e1 0f 59 e0 f3
0074e9b0: 0f 11 74 24 24 0f 28 c5 0f 5c c4 0f 28 e3 0f 59
0074e9c0: e1 0f 59 c4 0f 58 c1 0f 57 c9 f3 0f 11 4c 24 2c
0074e9d0: f3 0f 11 4c 24 28 f3 0f 11 4c 24 20 0f 28 64 24
0074e9e0: 20 0f 59 c2 0f 28 d4 0f c6 d4 12 0f 28 f8 0f 28
0074e9f0: c8 0f c6 c8 09 0f 59 d1 0f 29 4c 24 50 0f c6 e4
0074ea00: 09 0f c6 f8 12 0f 59 e7 0f 5c e2 0f 28 d4 0f 59
0074ea10: d4 0f 28 ca 0f c6 ca 02 0f 28 f2 0f c6 f2 01 0f
0074ea20: 58 ce 0f 58 ca 0f c6 c9 00 0f 52 f1 0f 28 d6 0f
0074ea30: 59 d6 0f 59 d1 0f 29 4c 24 40 0f 29 54 24 20 0f
0074ea40: 28 4c 24 20 0f 28 d5 0f 5c d1 0f 28 cb 0f 59 ce
0074ea50: 0f 59 d1 0f 58 d6 0f 28 f2 0f 59 f2 0f 59 74 24
0074ea60: 40 0f 28 cd 0f 5c ce 0f 28 f3 0f 59 f2 0f 59 ce
0074ea70: 0f 58 ca 0f 59 cc 0f 28 f1 0f c6 f1 12 0f 59 74
0074ea80: 24 50 0f 28 d1 0f c6 d1 09 0f 59 d7 0f 5c f2 0f
0074ea90: 28 e6 0f 59 e6 0f 28 d4 0f c6 d4 02 0f 28 fc 0f
0074eaa0: c6 fc 01 0f 58 d7 0f 58 d4 0f c6 d2 00 0f 52 fa
0074eab0: 0f 28 e7 0f 59 e7 0f 59 e2 0f 29 54 24 40 0f 29
0074eac0: 64 24 50 0f 28 54 24 50 0f 28 e5 0f 5c e2 0f 28
0074ead0: d7 0f 59 d3 0f 59 e2 0f 58 e7 0f 28 fc 0f 59 fc
0074eae0: 0f 59 7c 24 40 0f 28 d5 0f 5c d7 0f 28 fc 0f 59
0074eaf0: fb 0f 59 d7 0f 58 d4 0f 59 d6 0f 28 f1 0f c6 f1
0074eb00: 00 0f 28 fe 0f 28 e2 0f c6 e2 55 0f 58 fc 0f 29
0074eb10: 64 24 60 0f 29 74 24 20 0f 28 e0 0f 29 7c 24 70
0074eb20: 0f c6 e0 aa 0f 28 f4 0f 58 f7 f3 0f 10 3d cc 4c
0074eb30: 0f 01 0f c6 ff 00 f3 0f 11 7c 24 40 f3 0f 11 74
0074eb40: 24 50 f3 0f 10 7c 24 50 0f 2f 7c 24 40 76 63 0f
0074eb50: 58 f5 0f 51 e6 0f 29 64 24 50 0f 28 f3 0f 5e f4
0074eb60: 0f 28 e1 0f c6 e1 55 0f 28 ea 0f c6 ea 00 0f 5c
0074eb70: e5 0f c6 c9 aa 0f 28 e8 0f c6 e8 00 0f 5c e9 0f
0074eb80: 28 ca 0f c6 ca aa 0f 28 54 24 50 0f 28 f8 0f c6
0074eb90: f8 55 0f 5c cf 0f 59 ce 0f 59 ee 0f 59 e6 0f 59
0074eba0: d3 0f c6 cd 10 0f c6 e2 32 0f c6 cc 88 e9 8c 01
0074ebb0: 00 00 f3 0f 10 74 24 20 f3 0f 11 74 24 50 0f 28
0074ebc0: 74 24 60 f3 0f 10 7c 24 50 f3 0f 11 74 24 60 0f
0074ebd0: 2f 7c 24 60 0f 86 90 00 00 00 f3 0f 10 7c 24 20
0074ebe0: f3 0f 11 7c 24 60 f3 0f 10 7c 24 60 f3 0f 11 64
0074ebf0: 24 50 0f 2f 7c 24 50 76 71 0f 58 e6 0f 28 74 24
0074ec00: 20 0f 5c f4 0f 28 e6 0f 58 e5 0f 51 ec 0f 28 e3
0074ec10: 0f 5e e5 0f 29 64 24 60 0f 28 f2 0f c6 f2 aa 0f
0074ec20: 28 e0 0f c6 e0 55 0f 5c f4 0f 28 e1 0f c6 e1 aa
0074ec30: 0f c6 c9 55 0f c6 d2 00 0f 58 ca 0f 28 54 24 60
0074ec40: 0f 28 f8 0f c6 f8 00 0f 58 e7 0f 59 eb 0f 59 ca
0074ec50: 0f c6 e9 10 0f 59 e2 0f 59 f2 0f c6 e6 32 0f c6
0074ec60: ec 88 0f 28 cd e9 d4 00 00 00 f3 0f 11 74 24 60
0074ec70: f3 0f 10 7c 24 60 f3 0f 11 64 24 50 0f 2f 7c 24
0074ec80: 50 76 65 0f 58 64 24 20 0f 5c f4 0f 58 f5 0f 51
0074ec90: e6 0f 29 64 24 60 0f 28 f3 0f 5e f4 0f 28 e1 0f
0074eca0: c6 e1 aa 0f 28 fa 0f c6 fa aa 0f 28 e8 0f c6 e8
0074ecb0: 00 0f 5c ec 0f c6 c9 55 0f c6 d2 00 0f 58 ca 0f
0074ecc0: 28 54 24 60 0f 28 e0 0f c6 e0 55 0f 58 e7 0f 59
0074ecd0: ce 0f 59 d3 0f 59 e6 0f 59 ee 0f c6 ca 10 0f c6
0074ece0: e5 32 0f c6 cc 88 eb 56 0f 5c 64 24 70 0f 58 e5
0074ecf0: 0f 51 f4 0f 28 e1 0f c6 e1 55 0f 28 ea 0f c6 ea
0074ed00: 00 0f 5c e5 0f c6 d2 aa 0f 28 e8 0f c6 e8 55 0f
0074ed10: 58 ea 0f c6 c9 aa 0f 28 d0 0f 28 fb 0f 5e fe 0f
0074ed20: c6 d0 00 0f 58 ca 0f 59 cf 0f 59 ef 0f 59 f3 0f
0074ed30: 59 e7 0f c6 cd 10 0f c6 f4 32 0f c6 ce 88 f3 0f
0074ed40: 10 15 00 51 00 01 0f 57 db 8b 45 18 f3 0f 11 54
0074ed50: 24 2c f3 0f 11 54 24 20 0f 28 e1 0f c6 e1 12 0f
0074ed60: 28 e9 0f c6 e9 09 f3 0f 11 5c 24 28 f3 0f 11 5c
0074ed70: 24 24 0f 28 5c 24 20 0f 28 d3 0f c6 d3 12 0f 59
0074ed80: d5 0f 28 f3 0f c6 f3 09 0f 59 f4 0f 5c d6 0f 28
0074ed90: f1 0f c6 f1 ff 0f 59 f3 0f 58 d6 0f 28 ca 0f c6
0074eda0: ca 12 0f 59 cd 0f 28 ea 0f c6 ea 09 f3 0f 10 15
0074edb0: 88 fd 03 01 0f c6 d2 00 0f 59 ec 0f 5c cd 0f 59
0074edc0: ca 0f 58 cb 0f 58 4c 24 30 0f 29 4c 24 70 f3 0f
0074edd0: 10 54 24 70 0f 29 4c 24 70 f3 0f 11 10 f3 0f 10
0074ede0: 54 24 74 0f 29 4c 24 70 f3 0f 10 4c 24 78 f3 0f
0074edf0: 11 48 08 f3 0f 11 50 04 8b 45 1c 0f 29 44 24 70
0074ee00: f3 0f 10 4c 24 70 0f 29 44 24 70 f3 0f 11 08 f3
0074ee10: 0f 10 4c 24 74 0f 29 44 24 70 f3 0f 10 44 24 78
0074ee20: f3 0f 11 48 04 f3 0f 11 40 08 5f 5e 5b 8b e5 5d
0074ee30: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074e840 <.text+0x34d840>:
  74e840:	55                                              	push   ebp
  74e841:	8b ec                                           	mov    ebp,esp
  74e843:	83 e4 f0                                        	and    esp,0xfffffff0
  74e846:	83 ec 74                                        	sub    esp,0x74
  74e849:	53                                              	push   ebx
  74e84a:	56                                              	push   esi
  74e84b:	57                                              	push   edi
  74e84c:	e8 1f 8d 1e 00                                  	call   0x937570
  74e851:	85 c0                                           	test   eax,eax
  74e853:	8b 7d 14                                        	mov    edi,DWORD PTR [ebp+0x14]
  74e856:	8b 75 10                                        	mov    esi,DWORD PTR [ebp+0x10]
  74e859:	74 2e                                           	je     0x74e889
  74e85b:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  74e85e:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  74e861:	51                                              	push   ecx
  74e862:	52                                              	push   edx
  74e863:	8b c8                                           	mov    ecx,eax
  74e865:	e8 16 97 1e 00                                  	call   0x937f80
  74e86a:	85 c0                                           	test   eax,eax
  74e86c:	74 1b                                           	je     0x74e889
  74e86e:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  74e874:	51                                              	push   ecx
  74e875:	8b c8                                           	mov    ecx,eax
  74e877:	e8 e4 59 1e 00                                  	call   0x934260
  74e87c:	85 c0                                           	test   eax,eax
  74e87e:	74 09                                           	je     0x74e889
  74e880:	57                                              	push   edi
  74e881:	56                                              	push   esi
  74e882:	8b c8                                           	mov    ecx,eax
  74e884:	e8 b7 38 20 00                                  	call   0x952140
  74e889:	8b 0d 40 a1 1d 01                               	mov    ecx,DWORD PTR ds:0x11da140
  74e88f:	85 c9                                           	test   ecx,ecx
  74e891:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  74e895:	0f 84 8f 05 00 00                               	je     0x74ee2a
  74e89b:	e8 d0 43 17 00                                  	call   0x8c2c70
  74e8a0:	85 f6                                           	test   esi,esi
  74e8a2:	7d 02                                           	jge    0x74e8a6
  74e8a4:	33 f6                                           	xor    esi,esi
  74e8a6:	3b f0                                           	cmp    esi,eax
  74e8a8:	7c 03                                           	jl     0x74e8ad
  74e8aa:	8d 70 ff                                        	lea    esi,[eax-0x1]
  74e8ad:	85 ff                                           	test   edi,edi
  74e8af:	7d 02                                           	jge    0x74e8b3
  74e8b1:	33 ff                                           	xor    edi,edi
  74e8b3:	3b f8                                           	cmp    edi,eax
  74e8b5:	7c 03                                           	jl     0x74e8ba
  74e8b7:	8d 78 ff                                        	lea    edi,[eax-0x1]
  74e8ba:	f3 0f 2a c7                                     	cvtsi2ss xmm0,edi
  74e8be:	f3 0f 2a ce                                     	cvtsi2ss xmm1,esi
  74e8c2:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  74e8c6:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  74e8cc:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  74e8d0:	81 e2 ff ff ff 7f                               	and    edx,0x7fffffff
  74e8d6:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  74e8da:	f3 0f 2a c0                                     	cvtsi2ss xmm0,eax
  74e8de:	f3 0f 59 05 b4 b5 f9 00                         	mulss  xmm0,DWORD PTR ds:0xf9b5b4
  74e8e6:	0f 2f 44 24 18                                  	comiss xmm0,DWORD PTR [esp+0x18]
  74e8eb:	72 07                                           	jb     0x74e8f4
  74e8ed:	3b fe                                           	cmp    edi,esi
  74e8ef:	0f 9f c3                                        	setg   bl
  74e8f2:	eb 05                                           	jmp    0x74e8f9
  74e8f4:	3b fe                                           	cmp    edi,esi
  74e8f6:	0f 9c c3                                        	setl   bl
  74e8f9:	84 db                                           	test   bl,bl
  74e8fb:	75 03                                           	jne    0x74e900
  74e8fd:	83 c6 ff                                        	add    esi,0xffffffff
  74e900:	85 f6                                           	test   esi,esi
  74e902:	7d 03                                           	jge    0x74e907
  74e904:	8d 70 ff                                        	lea    esi,[eax-0x1]
  74e907:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  74e90b:	56                                              	push   esi
  74e90c:	e8 cf dc 0e 00                                  	call   0x83c5e0
  74e911:	85 c0                                           	test   eax,eax
  74e913:	0f 84 11 05 00 00                               	je     0x74ee2a
  74e919:	84 db                                           	test   bl,bl
  74e91b:	f3 0f 10 35 f8 98 f9 00                         	movss  xmm6,DWORD PTR ds:0xf998f8
  74e923:	f3 0f 10 ee                                     	movss  xmm5,xmm6
  74e927:	0f c6 ed 00                                     	shufps xmm5,xmm5,0x0
  74e92b:	74 0b                                           	je     0x74e938
  74e92d:	8b 00                                           	mov    eax,DWORD PTR [eax]
  74e92f:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  74e932:	0f 28 50 40                                     	movaps xmm2,XMMWORD PTR [eax+0x40]
  74e936:	eb 1e                                           	jmp    0x74e956
  74e938:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  74e93a:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
  74e93d:	2b c1                                           	sub    eax,ecx
  74e93f:	c1 f8 05                                        	sar    eax,0x5
  74e942:	8b d0                                           	mov    edx,eax
  74e944:	c1 e2 05                                        	shl    edx,0x5
  74e947:	0f 28 44 0a e0                                  	movaps xmm0,XMMWORD PTR [edx+ecx*1-0x20]
  74e94c:	83 c0 fd                                        	add    eax,0xfffffffd
  74e94f:	c1 e0 05                                        	shl    eax,0x5
  74e952:	0f 28 14 08                                     	movaps xmm2,XMMWORD PTR [eax+ecx*1]
  74e956:	0f 5c d0                                        	subps  xmm2,xmm0
  74e959:	0f 28 ca                                        	movaps xmm1,xmm2
  74e95c:	0f 59 ca                                        	mulps  xmm1,xmm2
  74e95f:	0f 28 d9                                        	movaps xmm3,xmm1
  74e962:	0f c6 d9 01                                     	shufps xmm3,xmm1,0x1
  74e966:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  74e96b:	0f 28 c1                                        	movaps xmm0,xmm1
  74e96e:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
  74e972:	0f 58 c3                                        	addps  xmm0,xmm3
  74e975:	f3 0f 10 1d b4 b5 f9 00                         	movss  xmm3,DWORD PTR ds:0xf9b5b4
  74e97d:	0f 58 c1                                        	addps  xmm0,xmm1
  74e980:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  74e984:	0f 52 e0                                        	rsqrtps xmm4,xmm0
  74e987:	0f 28 fc                                        	movaps xmm7,xmm4
  74e98a:	0f 59 fc                                        	mulps  xmm7,xmm4
  74e98d:	0f 59 f8                                        	mulps  xmm7,xmm0
  74e990:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  74e994:	0f 28 cd                                        	movaps xmm1,xmm5
  74e997:	0f 5c cf                                        	subps  xmm1,xmm7
  74e99a:	0f 28 fb                                        	movaps xmm7,xmm3
  74e99d:	0f 59 fc                                        	mulps  xmm7,xmm4
  74e9a0:	0f 59 cf                                        	mulps  xmm1,xmm7
  74e9a3:	0f 58 cc                                        	addps  xmm1,xmm4
  74e9a6:	0f 28 e1                                        	movaps xmm4,xmm1
  74e9a9:	0f 59 e1                                        	mulps  xmm4,xmm1
  74e9ac:	0f 59 e0                                        	mulps  xmm4,xmm0
  74e9af:	f3 0f 11 74 24 24                               	movss  DWORD PTR [esp+0x24],xmm6
  74e9b5:	0f 28 c5                                        	movaps xmm0,xmm5
  74e9b8:	0f 5c c4                                        	subps  xmm0,xmm4
  74e9bb:	0f 28 e3                                        	movaps xmm4,xmm3
  74e9be:	0f 59 e1                                        	mulps  xmm4,xmm1
  74e9c1:	0f 59 c4                                        	mulps  xmm0,xmm4
  74e9c4:	0f 58 c1                                        	addps  xmm0,xmm1
  74e9c7:	0f 57 c9                                        	xorps  xmm1,xmm1
  74e9ca:	f3 0f 11 4c 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm1
  74e9d0:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [esp+0x28],xmm1
  74e9d6:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [esp+0x20],xmm1
  74e9dc:	0f 28 64 24 20                                  	movaps xmm4,XMMWORD PTR [esp+0x20]
  74e9e1:	0f 59 c2                                        	mulps  xmm0,xmm2
  74e9e4:	0f 28 d4                                        	movaps xmm2,xmm4
  74e9e7:	0f c6 d4 12                                     	shufps xmm2,xmm4,0x12
  74e9eb:	0f 28 f8                                        	movaps xmm7,xmm0
  74e9ee:	0f 28 c8                                        	movaps xmm1,xmm0
  74e9f1:	0f c6 c8 09                                     	shufps xmm1,xmm0,0x9
  74e9f5:	0f 59 d1                                        	mulps  xmm2,xmm1
  74e9f8:	0f 29 4c 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm1
  74e9fd:	0f c6 e4 09                                     	shufps xmm4,xmm4,0x9
  74ea01:	0f c6 f8 12                                     	shufps xmm7,xmm0,0x12
  74ea05:	0f 59 e7                                        	mulps  xmm4,xmm7
  74ea08:	0f 5c e2                                        	subps  xmm4,xmm2
  74ea0b:	0f 28 d4                                        	movaps xmm2,xmm4
  74ea0e:	0f 59 d4                                        	mulps  xmm2,xmm4
  74ea11:	0f 28 ca                                        	movaps xmm1,xmm2
  74ea14:	0f c6 ca 02                                     	shufps xmm1,xmm2,0x2
  74ea18:	0f 28 f2                                        	movaps xmm6,xmm2
  74ea1b:	0f c6 f2 01                                     	shufps xmm6,xmm2,0x1
  74ea1f:	0f 58 ce                                        	addps  xmm1,xmm6
  74ea22:	0f 58 ca                                        	addps  xmm1,xmm2
  74ea25:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  74ea29:	0f 52 f1                                        	rsqrtps xmm6,xmm1
  74ea2c:	0f 28 d6                                        	movaps xmm2,xmm6
  74ea2f:	0f 59 d6                                        	mulps  xmm2,xmm6
  74ea32:	0f 59 d1                                        	mulps  xmm2,xmm1
  74ea35:	0f 29 4c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm1
  74ea3a:	0f 29 54 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm2
  74ea3f:	0f 28 4c 24 20                                  	movaps xmm1,XMMWORD PTR [esp+0x20]
  74ea44:	0f 28 d5                                        	movaps xmm2,xmm5
  74ea47:	0f 5c d1                                        	subps  xmm2,xmm1
  74ea4a:	0f 28 cb                                        	movaps xmm1,xmm3
  74ea4d:	0f 59 ce                                        	mulps  xmm1,xmm6
  74ea50:	0f 59 d1                                        	mulps  xmm2,xmm1
  74ea53:	0f 58 d6                                        	addps  xmm2,xmm6
  74ea56:	0f 28 f2                                        	movaps xmm6,xmm2
  74ea59:	0f 59 f2                                        	mulps  xmm6,xmm2
  74ea5c:	0f 59 74 24 40                                  	mulps  xmm6,XMMWORD PTR [esp+0x40]
  74ea61:	0f 28 cd                                        	movaps xmm1,xmm5
  74ea64:	0f 5c ce                                        	subps  xmm1,xmm6
  74ea67:	0f 28 f3                                        	movaps xmm6,xmm3
  74ea6a:	0f 59 f2                                        	mulps  xmm6,xmm2
  74ea6d:	0f 59 ce                                        	mulps  xmm1,xmm6
  74ea70:	0f 58 ca                                        	addps  xmm1,xmm2
  74ea73:	0f 59 cc                                        	mulps  xmm1,xmm4
  74ea76:	0f 28 f1                                        	movaps xmm6,xmm1
  74ea79:	0f c6 f1 12                                     	shufps xmm6,xmm1,0x12
  74ea7d:	0f 59 74 24 50                                  	mulps  xmm6,XMMWORD PTR [esp+0x50]
  74ea82:	0f 28 d1                                        	movaps xmm2,xmm1
  74ea85:	0f c6 d1 09                                     	shufps xmm2,xmm1,0x9
  74ea89:	0f 59 d7                                        	mulps  xmm2,xmm7
  74ea8c:	0f 5c f2                                        	subps  xmm6,xmm2
  74ea8f:	0f 28 e6                                        	movaps xmm4,xmm6
  74ea92:	0f 59 e6                                        	mulps  xmm4,xmm6
  74ea95:	0f 28 d4                                        	movaps xmm2,xmm4
  74ea98:	0f c6 d4 02                                     	shufps xmm2,xmm4,0x2
  74ea9c:	0f 28 fc                                        	movaps xmm7,xmm4
  74ea9f:	0f c6 fc 01                                     	shufps xmm7,xmm4,0x1
  74eaa3:	0f 58 d7                                        	addps  xmm2,xmm7
  74eaa6:	0f 58 d4                                        	addps  xmm2,xmm4
  74eaa9:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  74eaad:	0f 52 fa                                        	rsqrtps xmm7,xmm2
  74eab0:	0f 28 e7                                        	movaps xmm4,xmm7
  74eab3:	0f 59 e7                                        	mulps  xmm4,xmm7
  74eab6:	0f 59 e2                                        	mulps  xmm4,xmm2
  74eab9:	0f 29 54 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm2
  74eabe:	0f 29 64 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm4
  74eac3:	0f 28 54 24 50                                  	movaps xmm2,XMMWORD PTR [esp+0x50]
  74eac8:	0f 28 e5                                        	movaps xmm4,xmm5
  74eacb:	0f 5c e2                                        	subps  xmm4,xmm2
  74eace:	0f 28 d7                                        	movaps xmm2,xmm7
  74ead1:	0f 59 d3                                        	mulps  xmm2,xmm3
  74ead4:	0f 59 e2                                        	mulps  xmm4,xmm2
  74ead7:	0f 58 e7                                        	addps  xmm4,xmm7
  74eada:	0f 28 fc                                        	movaps xmm7,xmm4
  74eadd:	0f 59 fc                                        	mulps  xmm7,xmm4
  74eae0:	0f 59 7c 24 40                                  	mulps  xmm7,XMMWORD PTR [esp+0x40]
  74eae5:	0f 28 d5                                        	movaps xmm2,xmm5
  74eae8:	0f 5c d7                                        	subps  xmm2,xmm7
  74eaeb:	0f 28 fc                                        	movaps xmm7,xmm4
  74eaee:	0f 59 fb                                        	mulps  xmm7,xmm3
  74eaf1:	0f 59 d7                                        	mulps  xmm2,xmm7
  74eaf4:	0f 58 d4                                        	addps  xmm2,xmm4
  74eaf7:	0f 59 d6                                        	mulps  xmm2,xmm6
  74eafa:	0f 28 f1                                        	movaps xmm6,xmm1
  74eafd:	0f c6 f1 00                                     	shufps xmm6,xmm1,0x0
  74eb01:	0f 28 fe                                        	movaps xmm7,xmm6
  74eb04:	0f 28 e2                                        	movaps xmm4,xmm2
  74eb07:	0f c6 e2 55                                     	shufps xmm4,xmm2,0x55
  74eb0b:	0f 58 fc                                        	addps  xmm7,xmm4
  74eb0e:	0f 29 64 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm4
  74eb13:	0f 29 74 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm6
  74eb18:	0f 28 e0                                        	movaps xmm4,xmm0
  74eb1b:	0f 29 7c 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm7
  74eb20:	0f c6 e0 aa                                     	shufps xmm4,xmm0,0xaa
  74eb24:	0f 28 f4                                        	movaps xmm6,xmm4
  74eb27:	0f 58 f7                                        	addps  xmm6,xmm7
  74eb2a:	f3 0f 10 3d cc 4c 0f 01                         	movss  xmm7,DWORD PTR ds:0x10f4ccc
  74eb32:	0f c6 ff 00                                     	shufps xmm7,xmm7,0x0
  74eb36:	f3 0f 11 7c 24 40                               	movss  DWORD PTR [esp+0x40],xmm7
  74eb3c:	f3 0f 11 74 24 50                               	movss  DWORD PTR [esp+0x50],xmm6
  74eb42:	f3 0f 10 7c 24 50                               	movss  xmm7,DWORD PTR [esp+0x50]
  74eb48:	0f 2f 7c 24 40                                  	comiss xmm7,DWORD PTR [esp+0x40]
  74eb4d:	76 63                                           	jbe    0x74ebb2
  74eb4f:	0f 58 f5                                        	addps  xmm6,xmm5
  74eb52:	0f 51 e6                                        	sqrtps xmm4,xmm6
  74eb55:	0f 29 64 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm4
  74eb5a:	0f 28 f3                                        	movaps xmm6,xmm3
  74eb5d:	0f 5e f4                                        	divps  xmm6,xmm4
  74eb60:	0f 28 e1                                        	movaps xmm4,xmm1
  74eb63:	0f c6 e1 55                                     	shufps xmm4,xmm1,0x55
  74eb67:	0f 28 ea                                        	movaps xmm5,xmm2
  74eb6a:	0f c6 ea 00                                     	shufps xmm5,xmm2,0x0
  74eb6e:	0f 5c e5                                        	subps  xmm4,xmm5
  74eb71:	0f c6 c9 aa                                     	shufps xmm1,xmm1,0xaa
  74eb75:	0f 28 e8                                        	movaps xmm5,xmm0
  74eb78:	0f c6 e8 00                                     	shufps xmm5,xmm0,0x0
  74eb7c:	0f 5c e9                                        	subps  xmm5,xmm1
  74eb7f:	0f 28 ca                                        	movaps xmm1,xmm2
  74eb82:	0f c6 ca aa                                     	shufps xmm1,xmm2,0xaa
  74eb86:	0f 28 54 24 50                                  	movaps xmm2,XMMWORD PTR [esp+0x50]
  74eb8b:	0f 28 f8                                        	movaps xmm7,xmm0
  74eb8e:	0f c6 f8 55                                     	shufps xmm7,xmm0,0x55
  74eb92:	0f 5c cf                                        	subps  xmm1,xmm7
  74eb95:	0f 59 ce                                        	mulps  xmm1,xmm6
  74eb98:	0f 59 ee                                        	mulps  xmm5,xmm6
  74eb9b:	0f 59 e6                                        	mulps  xmm4,xmm6
  74eb9e:	0f 59 d3                                        	mulps  xmm2,xmm3
  74eba1:	0f c6 cd 10                                     	shufps xmm1,xmm5,0x10
  74eba5:	0f c6 e2 32                                     	shufps xmm4,xmm2,0x32
  74eba9:	0f c6 cc 88                                     	shufps xmm1,xmm4,0x88
  74ebad:	e9 8c 01 00 00                                  	jmp    0x74ed3e
  74ebb2:	f3 0f 10 74 24 20                               	movss  xmm6,DWORD PTR [esp+0x20]
  74ebb8:	f3 0f 11 74 24 50                               	movss  DWORD PTR [esp+0x50],xmm6
  74ebbe:	0f 28 74 24 60                                  	movaps xmm6,XMMWORD PTR [esp+0x60]
  74ebc3:	f3 0f 10 7c 24 50                               	movss  xmm7,DWORD PTR [esp+0x50]
  74ebc9:	f3 0f 11 74 24 60                               	movss  DWORD PTR [esp+0x60],xmm6
  74ebcf:	0f 2f 7c 24 60                                  	comiss xmm7,DWORD PTR [esp+0x60]
  74ebd4:	0f 86 90 00 00 00                               	jbe    0x74ec6a
  74ebda:	f3 0f 10 7c 24 20                               	movss  xmm7,DWORD PTR [esp+0x20]
  74ebe0:	f3 0f 11 7c 24 60                               	movss  DWORD PTR [esp+0x60],xmm7
  74ebe6:	f3 0f 10 7c 24 60                               	movss  xmm7,DWORD PTR [esp+0x60]
  74ebec:	f3 0f 11 64 24 50                               	movss  DWORD PTR [esp+0x50],xmm4
  74ebf2:	0f 2f 7c 24 50                                  	comiss xmm7,DWORD PTR [esp+0x50]
  74ebf7:	76 71                                           	jbe    0x74ec6a
  74ebf9:	0f 58 e6                                        	addps  xmm4,xmm6
  74ebfc:	0f 28 74 24 20                                  	movaps xmm6,XMMWORD PTR [esp+0x20]
  74ec01:	0f 5c f4                                        	subps  xmm6,xmm4
  74ec04:	0f 28 e6                                        	movaps xmm4,xmm6
  74ec07:	0f 58 e5                                        	addps  xmm4,xmm5
  74ec0a:	0f 51 ec                                        	sqrtps xmm5,xmm4
  74ec0d:	0f 28 e3                                        	movaps xmm4,xmm3
  74ec10:	0f 5e e5                                        	divps  xmm4,xmm5
  74ec13:	0f 29 64 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm4
  74ec18:	0f 28 f2                                        	movaps xmm6,xmm2
  74ec1b:	0f c6 f2 aa                                     	shufps xmm6,xmm2,0xaa
  74ec1f:	0f 28 e0                                        	movaps xmm4,xmm0
  74ec22:	0f c6 e0 55                                     	shufps xmm4,xmm0,0x55
  74ec26:	0f 5c f4                                        	subps  xmm6,xmm4
  74ec29:	0f 28 e1                                        	movaps xmm4,xmm1
  74ec2c:	0f c6 e1 aa                                     	shufps xmm4,xmm1,0xaa
  74ec30:	0f c6 c9 55                                     	shufps xmm1,xmm1,0x55
  74ec34:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  74ec38:	0f 58 ca                                        	addps  xmm1,xmm2
  74ec3b:	0f 28 54 24 60                                  	movaps xmm2,XMMWORD PTR [esp+0x60]
  74ec40:	0f 28 f8                                        	movaps xmm7,xmm0
  74ec43:	0f c6 f8 00                                     	shufps xmm7,xmm0,0x0
  74ec47:	0f 58 e7                                        	addps  xmm4,xmm7
  74ec4a:	0f 59 eb                                        	mulps  xmm5,xmm3
  74ec4d:	0f 59 ca                                        	mulps  xmm1,xmm2
  74ec50:	0f c6 e9 10                                     	shufps xmm5,xmm1,0x10
  74ec54:	0f 59 e2                                        	mulps  xmm4,xmm2
  74ec57:	0f 59 f2                                        	mulps  xmm6,xmm2
  74ec5a:	0f c6 e6 32                                     	shufps xmm4,xmm6,0x32
  74ec5e:	0f c6 ec 88                                     	shufps xmm5,xmm4,0x88
  74ec62:	0f 28 cd                                        	movaps xmm1,xmm5
  74ec65:	e9 d4 00 00 00                                  	jmp    0x74ed3e
  74ec6a:	f3 0f 11 74 24 60                               	movss  DWORD PTR [esp+0x60],xmm6
  74ec70:	f3 0f 10 7c 24 60                               	movss  xmm7,DWORD PTR [esp+0x60]
  74ec76:	f3 0f 11 64 24 50                               	movss  DWORD PTR [esp+0x50],xmm4
  74ec7c:	0f 2f 7c 24 50                                  	comiss xmm7,DWORD PTR [esp+0x50]
  74ec81:	76 65                                           	jbe    0x74ece8
  74ec83:	0f 58 64 24 20                                  	addps  xmm4,XMMWORD PTR [esp+0x20]
  74ec88:	0f 5c f4                                        	subps  xmm6,xmm4
  74ec8b:	0f 58 f5                                        	addps  xmm6,xmm5
  74ec8e:	0f 51 e6                                        	sqrtps xmm4,xmm6
  74ec91:	0f 29 64 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm4
  74ec96:	0f 28 f3                                        	movaps xmm6,xmm3
  74ec99:	0f 5e f4                                        	divps  xmm6,xmm4
  74ec9c:	0f 28 e1                                        	movaps xmm4,xmm1
  74ec9f:	0f c6 e1 aa                                     	shufps xmm4,xmm1,0xaa
  74eca3:	0f 28 fa                                        	movaps xmm7,xmm2
  74eca6:	0f c6 fa aa                                     	shufps xmm7,xmm2,0xaa
  74ecaa:	0f 28 e8                                        	movaps xmm5,xmm0
  74ecad:	0f c6 e8 00                                     	shufps xmm5,xmm0,0x0
  74ecb1:	0f 5c ec                                        	subps  xmm5,xmm4
  74ecb4:	0f c6 c9 55                                     	shufps xmm1,xmm1,0x55
  74ecb8:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  74ecbc:	0f 58 ca                                        	addps  xmm1,xmm2
  74ecbf:	0f 28 54 24 60                                  	movaps xmm2,XMMWORD PTR [esp+0x60]
  74ecc4:	0f 28 e0                                        	movaps xmm4,xmm0
  74ecc7:	0f c6 e0 55                                     	shufps xmm4,xmm0,0x55
  74eccb:	0f 58 e7                                        	addps  xmm4,xmm7
  74ecce:	0f 59 ce                                        	mulps  xmm1,xmm6
  74ecd1:	0f 59 d3                                        	mulps  xmm2,xmm3
  74ecd4:	0f 59 e6                                        	mulps  xmm4,xmm6
  74ecd7:	0f 59 ee                                        	mulps  xmm5,xmm6
  74ecda:	0f c6 ca 10                                     	shufps xmm1,xmm2,0x10
  74ecde:	0f c6 e5 32                                     	shufps xmm4,xmm5,0x32
  74ece2:	0f c6 cc 88                                     	shufps xmm1,xmm4,0x88
  74ece6:	eb 56                                           	jmp    0x74ed3e
  74ece8:	0f 5c 64 24 70                                  	subps  xmm4,XMMWORD PTR [esp+0x70]
  74eced:	0f 58 e5                                        	addps  xmm4,xmm5
  74ecf0:	0f 51 f4                                        	sqrtps xmm6,xmm4
  74ecf3:	0f 28 e1                                        	movaps xmm4,xmm1
  74ecf6:	0f c6 e1 55                                     	shufps xmm4,xmm1,0x55
  74ecfa:	0f 28 ea                                        	movaps xmm5,xmm2
  74ecfd:	0f c6 ea 00                                     	shufps xmm5,xmm2,0x0
  74ed01:	0f 5c e5                                        	subps  xmm4,xmm5
  74ed04:	0f c6 d2 aa                                     	shufps xmm2,xmm2,0xaa
  74ed08:	0f 28 e8                                        	movaps xmm5,xmm0
  74ed0b:	0f c6 e8 55                                     	shufps xmm5,xmm0,0x55
  74ed0f:	0f 58 ea                                        	addps  xmm5,xmm2
  74ed12:	0f c6 c9 aa                                     	shufps xmm1,xmm1,0xaa
  74ed16:	0f 28 d0                                        	movaps xmm2,xmm0
  74ed19:	0f 28 fb                                        	movaps xmm7,xmm3
  74ed1c:	0f 5e fe                                        	divps  xmm7,xmm6
  74ed1f:	0f c6 d0 00                                     	shufps xmm2,xmm0,0x0
  74ed23:	0f 58 ca                                        	addps  xmm1,xmm2
  74ed26:	0f 59 cf                                        	mulps  xmm1,xmm7
  74ed29:	0f 59 ef                                        	mulps  xmm5,xmm7
  74ed2c:	0f 59 f3                                        	mulps  xmm6,xmm3
  74ed2f:	0f 59 e7                                        	mulps  xmm4,xmm7
  74ed32:	0f c6 cd 10                                     	shufps xmm1,xmm5,0x10
  74ed36:	0f c6 f4 32                                     	shufps xmm6,xmm4,0x32
  74ed3a:	0f c6 ce 88                                     	shufps xmm1,xmm6,0x88
  74ed3e:	f3 0f 10 15 00 51 00 01                         	movss  xmm2,DWORD PTR ds:0x1005100
  74ed46:	0f 57 db                                        	xorps  xmm3,xmm3
  74ed49:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
  74ed4c:	f3 0f 11 54 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm2
  74ed52:	f3 0f 11 54 24 20                               	movss  DWORD PTR [esp+0x20],xmm2
  74ed58:	0f 28 e1                                        	movaps xmm4,xmm1
  74ed5b:	0f c6 e1 12                                     	shufps xmm4,xmm1,0x12
  74ed5f:	0f 28 e9                                        	movaps xmm5,xmm1
  74ed62:	0f c6 e9 09                                     	shufps xmm5,xmm1,0x9
  74ed66:	f3 0f 11 5c 24 28                               	movss  DWORD PTR [esp+0x28],xmm3
  74ed6c:	f3 0f 11 5c 24 24                               	movss  DWORD PTR [esp+0x24],xmm3
  74ed72:	0f 28 5c 24 20                                  	movaps xmm3,XMMWORD PTR [esp+0x20]
  74ed77:	0f 28 d3                                        	movaps xmm2,xmm3
  74ed7a:	0f c6 d3 12                                     	shufps xmm2,xmm3,0x12
  74ed7e:	0f 59 d5                                        	mulps  xmm2,xmm5
  74ed81:	0f 28 f3                                        	movaps xmm6,xmm3
  74ed84:	0f c6 f3 09                                     	shufps xmm6,xmm3,0x9
  74ed88:	0f 59 f4                                        	mulps  xmm6,xmm4
  74ed8b:	0f 5c d6                                        	subps  xmm2,xmm6
  74ed8e:	0f 28 f1                                        	movaps xmm6,xmm1
  74ed91:	0f c6 f1 ff                                     	shufps xmm6,xmm1,0xff
  74ed95:	0f 59 f3                                        	mulps  xmm6,xmm3
  74ed98:	0f 58 d6                                        	addps  xmm2,xmm6
  74ed9b:	0f 28 ca                                        	movaps xmm1,xmm2
  74ed9e:	0f c6 ca 12                                     	shufps xmm1,xmm2,0x12
  74eda2:	0f 59 cd                                        	mulps  xmm1,xmm5
  74eda5:	0f 28 ea                                        	movaps xmm5,xmm2
  74eda8:	0f c6 ea 09                                     	shufps xmm5,xmm2,0x9
  74edac:	f3 0f 10 15 88 fd 03 01                         	movss  xmm2,DWORD PTR ds:0x103fd88
  74edb4:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  74edb8:	0f 59 ec                                        	mulps  xmm5,xmm4
  74edbb:	0f 5c cd                                        	subps  xmm1,xmm5
  74edbe:	0f 59 ca                                        	mulps  xmm1,xmm2
  74edc1:	0f 58 cb                                        	addps  xmm1,xmm3
  74edc4:	0f 58 4c 24 30                                  	addps  xmm1,XMMWORD PTR [esp+0x30]
  74edc9:	0f 29 4c 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm1
  74edce:	f3 0f 10 54 24 70                               	movss  xmm2,DWORD PTR [esp+0x70]
  74edd4:	0f 29 4c 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm1
  74edd9:	f3 0f 11 10                                     	movss  DWORD PTR [eax],xmm2
  74eddd:	f3 0f 10 54 24 74                               	movss  xmm2,DWORD PTR [esp+0x74]
  74ede3:	0f 29 4c 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm1
  74ede8:	f3 0f 10 4c 24 78                               	movss  xmm1,DWORD PTR [esp+0x78]
  74edee:	f3 0f 11 48 08                                  	movss  DWORD PTR [eax+0x8],xmm1
  74edf3:	f3 0f 11 50 04                                  	movss  DWORD PTR [eax+0x4],xmm2
  74edf8:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
  74edfb:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  74ee00:	f3 0f 10 4c 24 70                               	movss  xmm1,DWORD PTR [esp+0x70]
  74ee06:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  74ee0b:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  74ee0f:	f3 0f 10 4c 24 74                               	movss  xmm1,DWORD PTR [esp+0x74]
  74ee15:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  74ee1a:	f3 0f 10 44 24 78                               	movss  xmm0,DWORD PTR [esp+0x78]
  74ee20:	f3 0f 11 48 04                                  	movss  DWORD PTR [eax+0x4],xmm1
  74ee25:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
  74ee2a:	5f                                              	pop    edi
  74ee2b:	5e                                              	pop    esi
  74ee2c:	5b                                              	pop    ebx
  74ee2d:	8b e5                                           	mov    esp,ebp
  74ee2f:	5d                                              	pop    ebp
  74ee30:	c3                                              	ret
  74ee31:	cc                                              	int3
  74ee32:	cc                                              	int3
  74ee33:	cc                                              	int3
  74ee34:	cc                                              	int3
  74ee35:	cc                                              	int3
  74ee36:	cc                                              	int3
  74ee37:	cc                                              	int3
  74ee38:	cc                                              	int3
  74ee39:	cc                                              	int3
  74ee3a:	cc                                              	int3
  74ee3b:	cc                                              	int3
  74ee3c:	cc                                              	int3
  74ee3d:	cc                                              	int3
  74ee3e:	cc                                              	int3
  74ee3f:	cc                                              	int3
