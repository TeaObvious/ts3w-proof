# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00d68890, 0x00d68b63).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_SpawnMissingGroundSplashes (analyst-assigned)
Entry: 0x00d68890
Ghidra body envelope: 0x00d68890..0x00d68b62 inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00d68890 <.text+0x967890>:
  d68890:	55                   	push   ebp
  d68891:	8b ec                	mov    ebp,esp
  d68893:	83 e4 f0             	and    esp,0xfffffff0
  d68896:	81 ec b4 00 00 00    	sub    esp,0xb4
  d6889c:	a1 c4 db 1e 01       	mov    eax,ds:0x11edbc4
  d688a1:	53                   	push   ebx
  d688a2:	56                   	push   esi
  d688a3:	57                   	push   edi
  d688a4:	33 db                	xor    ebx,ebx
  d688a6:	3b c3                	cmp    eax,ebx
  d688a8:	8b f9                	mov    edi,ecx
  d688aa:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  d688ae:	0f 84 a8 02 00 00    	je     0xd68b5c
  d688b4:	8b 48 74             	mov    ecx,DWORD PTR [eax+0x74]
  d688b7:	3b cb                	cmp    ecx,ebx
  d688b9:	0f 84 9d 02 00 00    	je     0xd68b5c
  d688bf:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  d688c6:	00
  d688c7:	f3 0f 10 0d 18 b2 fa 	movss  xmm1,DWORD PTR ds:0xfab218
  d688ce:	00
  d688cf:	8d 44 24 50          	lea    eax,[esp+0x50]
  d688d3:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  d688d9:	0f 57 c0             	xorps  xmm0,xmm0
  d688dc:	50                   	push   eax
  d688dd:	89 5c 24 54          	mov    DWORD PTR [esp+0x54],ebx
  d688e1:	f3 0f 11 44 24 5c    	movss  DWORD PTR [esp+0x5c],xmm0
  d688e7:	89 5c 24 60          	mov    DWORD PTR [esp+0x60],ebx
  d688eb:	f3 0f 11 44 24 64    	movss  DWORD PTR [esp+0x64],xmm0
  d688f1:	f3 0f 11 44 24 68    	movss  DWORD PTR [esp+0x68],xmm0
  d688f7:	f3 0f 11 44 24 6c    	movss  DWORD PTR [esp+0x6c],xmm0
  d688fd:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  d68903:	f3 0f 11 44 24 74    	movss  DWORD PTR [esp+0x74],xmm0
  d68909:	88 5c 24 78          	mov    BYTE PTR [esp+0x78],bl
  d6890d:	f3 0f 11 44 24 7c    	movss  DWORD PTR [esp+0x7c],xmm0
  d68913:	c6 84 24 80 00 00 00 	mov    BYTE PTR [esp+0x80],0x1
  d6891a:	01
  d6891b:	f3 0f 11 84 24 84 00 	movss  DWORD PTR [esp+0x84],xmm0
  d68922:	00 00
  d68924:	f3 0f 11 8c 24 88 00 	movss  DWORD PTR [esp+0x88],xmm1
  d6892b:	00 00
  d6892d:	f3 0f 11 84 24 98 00 	movss  DWORD PTR [esp+0x98],xmm0
  d68934:	00 00
  d68936:	f3 0f 11 84 24 9c 00 	movss  DWORD PTR [esp+0x9c],xmm0
  d6893d:	00 00
  d6893f:	f3 0f 11 84 24 a0 00 	movss  DWORD PTR [esp+0xa0],xmm0
  d68946:	00 00
  d68948:	f3 0f 11 84 24 a4 00 	movss  DWORD PTR [esp+0xa4],xmm0
  d6894f:	00 00
  d68951:	f3 0f 11 84 24 a8 00 	movss  DWORD PTR [esp+0xa8],xmm0
  d68958:	00 00
  d6895a:	f3 0f 11 84 24 ac 00 	movss  DWORD PTR [esp+0xac],xmm0
  d68961:	00 00
  d68963:	e8 68 10 00 00       	call   0xd699d0
  d68968:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  d6896c:	83 e8 01             	sub    eax,0x1
  d6896f:	74 12                	je     0xd68983
  d68971:	83 e8 01             	sub    eax,0x1
  d68974:	0f 84 63 01 00 00    	je     0xd68add
  d6897a:	83 e8 03             	sub    eax,0x3
  d6897d:	0f 85 d9 01 00 00    	jne    0xd68b5c
  d68983:	88 5c 24 12          	mov    BYTE PTR [esp+0x12],bl
  d68987:	f3 0f 10 0d 34 c9 fb 	movss  xmm1,DWORD PTR ds:0xfbc934
  d6898e:	00
  d6898f:	f3 0f 10 44 24 54    	movss  xmm0,DWORD PTR [esp+0x54]
  d68995:	f3 0f 10 15 f0 98 f9 	movss  xmm2,DWORD PTR ds:0xf998f0
  d6899c:	00
  d6899d:	f3 0f 59 c1          	mulss  xmm0,xmm1
  d689a1:	f3 0f 5c d0          	subss  xmm2,xmm0
  d689a5:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  d689ab:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  d689af:	0f 57 d2             	xorps  xmm2,xmm2
  d689b2:	c1 f8 1f             	sar    eax,0x1f
  d689b5:	8b c8                	mov    ecx,eax
  d689b7:	f7 d1                	not    ecx
  d689b9:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  d689bf:	23 4c 24 0c          	and    ecx,DWORD PTR [esp+0xc]
  d689c3:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  d689c9:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  d689cd:	23 d0                	and    edx,eax
  d689cf:	0b ca                	or     ecx,edx
  d689d1:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  d689d5:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  d689db:	0f 28 d1             	movaps xmm2,xmm1
  d689de:	f3 0f 5c d0          	subss  xmm2,xmm0
  d689e2:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  d689e8:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  d689ec:	c1 f8 1f             	sar    eax,0x1f
  d689ef:	8b c8                	mov    ecx,eax
  d689f1:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  d689f7:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  d689fb:	23 d0                	and    edx,eax
  d689fd:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  d68a00:	2b 47 0c             	sub    eax,DWORD PTR [edi+0xc]
  d68a03:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  d68a09:	f7 d1                	not    ecx
  d68a0b:	23 4c 24 0c          	and    ecx,DWORD PTR [esp+0xc]
  d68a0f:	83 c7 0c             	add    edi,0xc
  d68a12:	0b ca                	or     ecx,edx
  d68a14:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  d68a18:	f3 0f 2c 74 24 0c    	cvttss2si esi,DWORD PTR [esp+0xc]
  d68a1e:	c1 f8 05             	sar    eax,0x5
  d68a21:	2b f0                	sub    esi,eax
  d68a23:	3b f3                	cmp    esi,ebx
  d68a25:	0f 8e 31 01 00 00    	jle    0xd68b5c
  d68a2b:	83 fe 05             	cmp    esi,0x5
  d68a2e:	7e 05                	jle    0xd68a35
  d68a30:	be 05 00 00 00       	mov    esi,0x5
  d68a35:	3b f3                	cmp    esi,ebx
  d68a37:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
  d68a3b:	0f 8e 1b 01 00 00    	jle    0xd68b5c
  d68a41:	8d 4c 24 13          	lea    ecx,[esp+0x13]
  d68a45:	51                   	push   ecx
  d68a46:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  d68a4a:	8d 94 24 b4 00 00 00 	lea    edx,[esp+0xb4]
  d68a51:	52                   	push   edx
  d68a52:	e8 59 f3 ff ff       	call   0xd67db0
  d68a57:	84 c0                	test   al,al
  d68a59:	0f 84 fd 00 00 00    	je     0xd68b5c
  d68a5f:	38 5c 24 12          	cmp    BYTE PTR [esp+0x12],bl
  d68a63:	74 0b                	je     0xd68a70
  d68a65:	38 5c 24 13          	cmp    BYTE PTR [esp+0x13],bl
  d68a69:	c6 44 24 14 01       	mov    BYTE PTR [esp+0x14],0x1
  d68a6e:	74 04                	je     0xd68a74
  d68a70:	88 5c 24 14          	mov    BYTE PTR [esp+0x14],bl
  d68a74:	0f 57 c0             	xorps  xmm0,xmm0
  d68a77:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  d68a7b:	50                   	push   eax
  d68a7c:	8d 8c 24 b4 00 00 00 	lea    ecx,[esp+0xb4]
  d68a83:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  d68a89:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  d68a8f:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  d68a95:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  d68a9b:	0f 28 44 24 24       	movaps xmm0,XMMWORD PTR [esp+0x24]
  d68aa0:	51                   	push   ecx
  d68aa1:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  d68aa5:	0f 29 44 24 38       	movaps XMMWORD PTR [esp+0x38],xmm0
  d68aaa:	89 5c 24 48          	mov    DWORD PTR [esp+0x48],ebx
  d68aae:	88 5c 24 4c          	mov    BYTE PTR [esp+0x4c],bl
  d68ab2:	88 5c 24 4d          	mov    BYTE PTR [esp+0x4d],bl
  d68ab6:	e8 a5 f3 ff ff       	call   0xd67e60
  d68abb:	84 c0                	test   al,al
  d68abd:	74 77                	je     0xd68b36
  d68abf:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  d68ac2:	3b 4f 08             	cmp    ecx,DWORD PTR [edi+0x8]
  d68ac5:	73 20                	jae    0xd68ae7
  d68ac7:	3b cb                	cmp    ecx,ebx
  d68ac9:	8d 51 20             	lea    edx,[ecx+0x20]
  d68acc:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
  d68acf:	74 23                	je     0xd68af4
  d68ad1:	8d 44 24 30          	lea    eax,[esp+0x30]
  d68ad5:	50                   	push   eax
  d68ad6:	e8 35 f2 ff ff       	call   0xd67d10
  d68adb:	eb 17                	jmp    0xd68af4
  d68add:	c6 44 24 12 01       	mov    BYTE PTR [esp+0x12],0x1
  d68ae2:	e9 a0 fe ff ff       	jmp    0xd68987
  d68ae7:	8d 54 24 30          	lea    edx,[esp+0x30]
  d68aeb:	52                   	push   edx
  d68aec:	51                   	push   ecx
  d68aed:	8b cf                	mov    ecx,edi
  d68aef:	e8 fc f7 ff ff       	call   0xd682f0
  d68af4:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  d68af8:	3b cb                	cmp    ecx,ebx
  d68afa:	74 20                	je     0xd68b1c
  d68afc:	8d 41 04             	lea    eax,[ecx+0x4]
  d68aff:	8b d0                	mov    edx,eax
  d68b01:	83 cb ff             	or     ebx,0xffffffff
  d68b04:	f0 0f c1 1a          	lock xadd DWORD PTR [edx],ebx
  d68b08:	4b                   	dec    ebx
  d68b09:	75 0f                	jne    0xd68b1a
  d68b0b:	ba 01 00 00 00       	mov    edx,0x1
  d68b10:	87 10                	xchg   DWORD PTR [eax],edx
  d68b12:	8b 01                	mov    eax,DWORD PTR [ecx]
  d68b14:	8b 10                	mov    edx,DWORD PTR [eax]
  d68b16:	6a 01                	push   0x1
  d68b18:	ff d2                	call   edx
  d68b1a:	33 db                	xor    ebx,ebx
  d68b1c:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  d68b20:	83 c0 01             	add    eax,0x1
  d68b23:	3b c6                	cmp    eax,esi
  d68b25:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  d68b29:	0f 8c 12 ff ff ff    	jl     0xd68a41
  d68b2f:	5f                   	pop    edi
  d68b30:	5e                   	pop    esi
  d68b31:	5b                   	pop    ebx
  d68b32:	8b e5                	mov    esp,ebp
  d68b34:	5d                   	pop    ebp
  d68b35:	c3                   	ret
  d68b36:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  d68b3a:	3b cb                	cmp    ecx,ebx
  d68b3c:	74 1e                	je     0xd68b5c
  d68b3e:	8d 41 04             	lea    eax,[ecx+0x4]
  d68b41:	8b d0                	mov    edx,eax
  d68b43:	83 ce ff             	or     esi,0xffffffff
  d68b46:	f0 0f c1 32          	lock xadd DWORD PTR [edx],esi
  d68b4a:	4e                   	dec    esi
  d68b4b:	75 0f                	jne    0xd68b5c
  d68b4d:	ba 01 00 00 00       	mov    edx,0x1
  d68b52:	87 10                	xchg   DWORD PTR [eax],edx
  d68b54:	8b 01                	mov    eax,DWORD PTR [ecx]
  d68b56:	8b 10                	mov    edx,DWORD PTR [eax]
  d68b58:	6a 01                	push   0x1
  d68b5a:	ff d2                	call   edx
  d68b5c:	5f                   	pop    edi
  d68b5d:	5e                   	pop    esi
  d68b5e:	5b                   	pop    ebx
  d68b5f:	8b e5                	mov    esp,ebp
  d68b61:	5d                   	pop    ebp
  d68b62:	c3                   	ret
