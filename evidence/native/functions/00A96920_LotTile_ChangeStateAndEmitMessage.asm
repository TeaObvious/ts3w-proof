# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00a96920 LotTile_ChangeStateAndEmitMessage
# Complete Ghidra body [00a96920, 00a96abe] inclusive: 147 body instructions, 415 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 415 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00A96920_LotTile_ChangeStateAndEmitMessage.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00a96920 <.text+0x695920>:
  a96920:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  a96924:	53                                              	push   ebx
  a96925:	56                                              	push   esi
  a96926:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  a9692a:	56                                              	push   esi
  a9692b:	50                                              	push   eax
  a9692c:	8b d9                                           	mov    ebx,ecx
  a9692e:	e8 fd 67 ff ff                                  	call   0xa8d130
  a96933:	80 7b 01 00                                     	cmp    BYTE PTR [ebx+0x1],0x0
  a96937:	0f 84 7d 01 00 00                               	je     0xa96aba
  a9693d:	55                                              	push   ebp
  a9693e:	57                                              	push   edi
  a9693f:	e8 ac 5b 9b ff                                  	call   0x44c4f0
  a96944:	68 90 00 00 00                                  	push   0x90
  a96949:	e8 02 88 04 00                                  	call   0xadf150
  a9694e:	83 c4 04                                        	add    esp,0x4
  a96951:	85 c0                                           	test   eax,eax
  a96953:	74 0b                                           	je     0xa96960
  a96955:	8b c8                                           	mov    ecx,eax
  a96957:	e8 14 47 ff ff                                  	call   0xa8b070
  a9695c:	8b e8                                           	mov    ebp,eax
  a9695e:	eb 02                                           	jmp    0xa96962
  a96960:	33 ed                                           	xor    ebp,ebp
  a96962:	80 7c 24 14 00                                  	cmp    BYTE PTR [esp+0x14],0x0
  a96967:	8b 43 04                                        	mov    eax,DWORD PTR [ebx+0x4]
  a9696a:	8b 48 48                                        	mov    ecx,DWORD PTR [eax+0x48]
  a9696d:	89 4d 08                                        	mov    DWORD PTR [ebp+0x8],ecx
  a96970:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  a96973:	89 55 0c                                        	mov    DWORD PTR [ebp+0xc],edx
  a96976:	8b 06                                           	mov    eax,DWORD PTR [esi]
  a96978:	89 45 10                                        	mov    DWORD PTR [ebp+0x10],eax
  a9697b:	74 16                                           	je     0xa96993
  a9697d:	8d 45 18                                        	lea    eax,[ebp+0x18]
  a96980:	50                                              	push   eax
  a96981:	56                                              	push   esi
  a96982:	8b cb                                           	mov    ecx,ebx
  a96984:	e8 37 68 ff ff                                  	call   0xa8d1c0
  a96989:	8b cb                                           	mov    ecx,ebx
  a9698b:	50                                              	push   eax
  a9698c:	e8 af 84 ff ff                                  	call   0xa8ee40
  a96991:	eb 13                                           	jmp    0xa969a6
  a96993:	8d 7d 18                                        	lea    edi,[ebp+0x18]
  a96996:	b9 10 00 00 00                                  	mov    ecx,0x10
  a9699b:	be 20 c9 1e 01                                  	mov    esi,0x11ec920
  a969a0:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  a969a2:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  a969a6:	8d 4d 58                                        	lea    ecx,[ebp+0x58]
  a969a9:	51                                              	push   ecx
  a969aa:	8d 45 18                                        	lea    eax,[ebp+0x18]
  a969ad:	50                                              	push   eax
  a969ae:	8b cb                                           	mov    ecx,ebx
  a969b0:	e8 0b a8 ff ff                                  	call   0xa911c0
  a969b5:	0f be 56 02                                     	movsx  edx,BYTE PTR [esi+0x2]
  a969b9:	2b 53 10                                        	sub    edx,DWORD PTR [ebx+0x10]
  a969bc:	0f be 46 01                                     	movsx  eax,BYTE PTR [esi+0x1]
  a969c0:	0f be 0e                                        	movsx  ecx,BYTE PTR [esi]
  a969c3:	52                                              	push   edx
  a969c4:	50                                              	push   eax
  a969c5:	51                                              	push   ecx
  a969c6:	8b 4b 30                                        	mov    ecx,DWORD PTR [ebx+0x30]
  a969c9:	e8 e2 49 ff ff                                  	call   0xa8b3b0
  a969ce:	8a 00                                           	mov    al,BYTE PTR [eax]
  a969d0:	88 45 5a                                        	mov    BYTE PTR [ebp+0x5a],al
  a969d3:	8a 56 03                                        	mov    dl,BYTE PTR [esi+0x3]
  a969d6:	f6 d2                                           	not    dl
  a969d8:	f6 c2 10                                        	test   dl,0x10
  a969db:	74 1a                                           	je     0xa969f7
  a969dd:	8b 43 04                                        	mov    eax,DWORD PTR [ebx+0x4]
  a969e0:	6a 00                                           	push   0x0
  a969e2:	56                                              	push   esi
  a969e3:	50                                              	push   eax
  a969e4:	e8 77 83 06 00                                  	call   0xafed60
  a969e9:	83 c4 0c                                        	add    esp,0xc
  a969ec:	84 c0                                           	test   al,al
  a969ee:	74 07                                           	je     0xa969f7
  a969f0:	b8 01 00 00 00                                  	mov    eax,0x1
  a969f5:	eb 02                                           	jmp    0xa969f9
  a969f7:	33 c0                                           	xor    eax,eax
  a969f9:	6a 00                                           	push   0x0
  a969fb:	6a 01                                           	push   0x1
  a969fd:	88 85 84 00 00 00                               	mov    BYTE PTR [ebp+0x84],al
  a96a03:	8b 4b 04                                        	mov    ecx,DWORD PTR [ebx+0x4]
  a96a06:	56                                              	push   esi
  a96a07:	51                                              	push   ecx
  a96a08:	e8 13 90 03 00                                  	call   0xacfa20
  a96a0d:	83 c4 10                                        	add    esp,0x10
  a96a10:	6a 01                                           	push   0x1
  a96a12:	56                                              	push   esi
  a96a13:	8b cb                                           	mov    ecx,ebx
  a96a15:	88 85 85 00 00 00                               	mov    BYTE PTR [ebp+0x85],al
  a96a1b:	e8 80 ca ff ff                                  	call   0xa934a0
  a96a20:	6a 00                                           	push   0x0
  a96a22:	88 45 5b                                        	mov    BYTE PTR [ebp+0x5b],al
  a96a25:	8b 53 04                                        	mov    edx,DWORD PTR [ebx+0x4]
  a96a28:	8b 8a 98 02 00 00                               	mov    ecx,DWORD PTR [edx+0x298]
  a96a2e:	6a 00                                           	push   0x0
  a96a30:	56                                              	push   esi
  a96a31:	e8 aa 06 0b 00                                  	call   0xb470e0
  a96a36:	66 89 45 5e                                     	mov    WORD PTR [ebp+0x5e],ax
  a96a3a:	8b 43 04                                        	mov    eax,DWORD PTR [ebx+0x4]
  a96a3d:	8d 7d 10                                        	lea    edi,[ebp+0x10]
  a96a40:	57                                              	push   edi
  a96a41:	50                                              	push   eax
  a96a42:	e8 39 a9 03 00                                  	call   0xad1380
  a96a47:	8a 4d 13                                        	mov    cl,BYTE PTR [ebp+0x13]
  a96a4a:	f6 d1                                           	not    cl
  a96a4c:	83 c4 08                                        	add    esp,0x8
  a96a4f:	f6 c1 10                                        	test   cl,0x10
  a96a52:	88 85 86 00 00 00                               	mov    BYTE PTR [ebp+0x86],al
  a96a58:	74 1c                                           	je     0xa96a76
  a96a5a:	8b 53 04                                        	mov    edx,DWORD PTR [ebx+0x4]
  a96a5d:	6a 00                                           	push   0x0
  a96a5f:	6a 01                                           	push   0x1
  a96a61:	57                                              	push   edi
  a96a62:	52                                              	push   edx
  a96a63:	e8 b8 8d 03 00                                  	call   0xacf820
  a96a68:	83 c4 10                                        	add    esp,0x10
  a96a6b:	84 c0                                           	test   al,al
  a96a6d:	74 07                                           	je     0xa96a76
  a96a6f:	b8 01 00 00 00                                  	mov    eax,0x1
  a96a74:	eb 02                                           	jmp    0xa96a78
  a96a76:	33 c0                                           	xor    eax,eax
  a96a78:	6a 00                                           	push   0x0
  a96a7a:	6a 01                                           	push   0x1
  a96a7c:	88 45 5c                                        	mov    BYTE PTR [ebp+0x5c],al
  a96a7f:	8b 43 04                                        	mov    eax,DWORD PTR [ebx+0x4]
  a96a82:	56                                              	push   esi
  a96a83:	50                                              	push   eax
  a96a84:	e8 97 8f 03 00                                  	call   0xacfa20
  a96a89:	83 c4 10                                        	add    esp,0x10
  a96a8c:	88 85 85 00 00 00                               	mov    BYTE PTR [ebp+0x85],al
  a96a92:	8b 4b 04                                        	mov    ecx,DWORD PTR [ebx+0x4]
  a96a95:	57                                              	push   edi
  a96a96:	e8 65 cf 01 00                                  	call   0xab3a00
  a96a9b:	55                                              	push   ebp
  a96a9c:	68 42 ae 75 31                                  	push   0x3175ae42
  a96aa1:	88 85 88 00 00 00                               	mov    BYTE PTR [ebp+0x88],al
  a96aa7:	e8 64 c7 d3 ff                                  	call   0x7d3210
  a96aac:	8b 4b 04                                        	mov    ecx,DWORD PTR [ebx+0x4]
  a96aaf:	83 c4 08                                        	add    esp,0x8
  a96ab2:	56                                              	push   esi
  a96ab3:	e8 c8 9a 02 00                                  	call   0xac0580
  a96ab8:	5f                                              	pop    edi
  a96ab9:	5d                                              	pop    ebp
  a96aba:	5e                                              	pop    esi
  a96abb:	5b                                              	pop    ebx
  a96abc:	c2 08 00                                        	ret    0x8
