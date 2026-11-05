# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00b0ea00, 0x00b0ec1a).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

; Analyst-assigned name: Seasons_GetObjectComponentBoundsPolygon
; Original machine bytes and instructions, verified Ghidra function envelope 0x00b0ea00..0x00b0ec19.
; Alignment gaps inside non-contiguous Ghidra bodies are included in this envelope.

PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b0ea00 <.text+0x70da00>:
  b0ea00:	55                   	push   ebp
  b0ea01:	8b ec                	mov    ebp,esp
  b0ea03:	83 e4 f0             	and    esp,0xfffffff0
  b0ea06:	81 ec 14 01 00 00    	sub    esp,0x114
  b0ea0c:	53                   	push   ebx
  b0ea0d:	56                   	push   esi
  b0ea0e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  b0ea11:	85 f6                	test   esi,esi
  b0ea13:	57                   	push   edi
  b0ea14:	0f 84 f7 01 00 00    	je     0xb0ec11
  b0ea1a:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  b0ea1f:	50                   	push   eax
  b0ea20:	8b ce                	mov    ecx,esi
  b0ea22:	e8 39 58 e2 ff       	call   0x934260
  b0ea27:	8b 0d c4 9f 1e 01    	mov    ecx,DWORD PTR ds:0x11e9fc4
  b0ea2d:	51                   	push   ecx
  b0ea2e:	8b ce                	mov    ecx,esi
  b0ea30:	8b f8                	mov    edi,eax
  b0ea32:	e8 29 58 e2 ff       	call   0x934260
  b0ea37:	8b 15 90 a2 1e 01    	mov    edx,DWORD PTR ds:0x11ea290
  b0ea3d:	52                   	push   edx
  b0ea3e:	8b ce                	mov    ecx,esi
  b0ea40:	8b d8                	mov    ebx,eax
  b0ea42:	e8 19 58 e2 ff       	call   0x934260
  b0ea47:	85 ff                	test   edi,edi
  b0ea49:	0f 84 c2 01 00 00    	je     0xb0ec11
  b0ea4f:	85 db                	test   ebx,ebx
  b0ea51:	0f 85 85 00 00 00    	jne    0xb0eadc
  b0ea57:	85 c0                	test   eax,eax
  b0ea59:	0f 84 b2 01 00 00    	je     0xb0ec11
  b0ea5f:	8b c8                	mov    ecx,eax
  b0ea61:	e8 da bb e4 ff       	call   0x95a640
  b0ea66:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  b0ea69:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  b0ea6e:	0f 28 40 10          	movaps xmm0,XMMWORD PTR [eax+0x10]
  b0ea72:	8d 44 24 60          	lea    eax,[esp+0x60]
  b0ea76:	50                   	push   eax
  b0ea77:	8d 8c 24 e4 00 00 00 	lea    ecx,[esp+0xe4]
  b0ea7e:	51                   	push   ecx
  b0ea7f:	8b cf                	mov    ecx,edi
  b0ea81:	0f 29 44 24 58       	movaps XMMWORD PTR [esp+0x58],xmm0
  b0ea86:	e8 05 90 e4 ff       	call   0x957a90
  b0ea8b:	50                   	push   eax
  b0ea8c:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  b0ea90:	e8 2b ef b7 ff       	call   0x68d9c0
  b0ea95:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [esp+0x60]
  b0ea9a:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  b0ea9d:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  b0eaa0:	3b 46 08             	cmp    eax,DWORD PTR [esi+0x8]
  b0eaa3:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  b0eaa8:	f3 0f 10 4c 24 28    	movss  xmm1,DWORD PTR [esp+0x28]
  b0eaae:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  b0eab3:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  b0eab9:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  b0eabf:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  b0eac5:	73 1e                	jae    0xb0eae5
  b0eac7:	85 c0                	test   eax,eax
  b0eac9:	8d 50 08             	lea    edx,[eax+0x8]
  b0eacc:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  b0eacf:	74 21                	je     0xb0eaf2
  b0ead1:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  b0ead5:	f3 0f 11 48 04       	movss  DWORD PTR [eax+0x4],xmm1
  b0eada:	eb 16                	jmp    0xb0eaf2
  b0eadc:	8b cb                	mov    ecx,ebx
  b0eade:	e8 9d 9d e3 ff       	call   0x948880
  b0eae3:	eb 81                	jmp    0xb0ea66
  b0eae5:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  b0eae9:	51                   	push   ecx
  b0eaea:	50                   	push   eax
  b0eaeb:	8b ce                	mov    ecx,esi
  b0eaed:	e8 1e 71 8f ff       	call   0x405c10
  b0eaf2:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [esp+0x70]
  b0eaf7:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  b0eafa:	3b 46 08             	cmp    eax,DWORD PTR [esi+0x8]
  b0eafd:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  b0eb02:	f3 0f 10 4c 24 38    	movss  xmm1,DWORD PTR [esp+0x38]
  b0eb08:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  b0eb0d:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  b0eb13:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  b0eb19:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  b0eb1f:	73 15                	jae    0xb0eb36
  b0eb21:	85 c0                	test   eax,eax
  b0eb23:	8d 50 08             	lea    edx,[eax+0x8]
  b0eb26:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  b0eb29:	74 18                	je     0xb0eb43
  b0eb2b:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  b0eb2f:	f3 0f 11 48 04       	movss  DWORD PTR [eax+0x4],xmm1
  b0eb34:	eb 0d                	jmp    0xb0eb43
  b0eb36:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  b0eb3a:	51                   	push   ecx
  b0eb3b:	50                   	push   eax
  b0eb3c:	8b ce                	mov    ecx,esi
  b0eb3e:	e8 cd 70 8f ff       	call   0x405c10
  b0eb43:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [esp+0xb0]
  b0eb4a:	00
  b0eb4b:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  b0eb4e:	3b 46 08             	cmp    eax,DWORD PTR [esi+0x8]
  b0eb51:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  b0eb56:	f3 0f 10 4c 24 28    	movss  xmm1,DWORD PTR [esp+0x28]
  b0eb5c:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  b0eb61:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  b0eb67:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  b0eb6d:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  b0eb73:	73 15                	jae    0xb0eb8a
  b0eb75:	85 c0                	test   eax,eax
  b0eb77:	8d 50 08             	lea    edx,[eax+0x8]
  b0eb7a:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  b0eb7d:	74 18                	je     0xb0eb97
  b0eb7f:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  b0eb83:	f3 0f 11 48 04       	movss  DWORD PTR [eax+0x4],xmm1
  b0eb88:	eb 0d                	jmp    0xb0eb97
  b0eb8a:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  b0eb8e:	51                   	push   ecx
  b0eb8f:	50                   	push   eax
  b0eb90:	8b ce                	mov    ecx,esi
  b0eb92:	e8 79 70 8f ff       	call   0x405c10
  b0eb97:	0f 28 84 24 c0 00 00 	movaps xmm0,XMMWORD PTR [esp+0xc0]
  b0eb9e:	00
  b0eb9f:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  b0eba2:	3b 46 08             	cmp    eax,DWORD PTR [esi+0x8]
  b0eba5:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  b0ebaa:	f3 0f 10 4c 24 28    	movss  xmm1,DWORD PTR [esp+0x28]
  b0ebb0:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  b0ebb5:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  b0ebbb:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  b0ebc1:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  b0ebc7:	73 27                	jae    0xb0ebf0
  b0ebc9:	85 c0                	test   eax,eax
  b0ebcb:	8d 50 08             	lea    edx,[eax+0x8]
  b0ebce:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  b0ebd1:	74 2a                	je     0xb0ebfd
  b0ebd3:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  b0ebd6:	52                   	push   edx
  b0ebd7:	56                   	push   esi
  b0ebd8:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  b0ebdc:	f3 0f 11 48 04       	movss  DWORD PTR [eax+0x4],xmm1
  b0ebe1:	e8 da f5 cb ff       	call   0x7ce1c0
  b0ebe6:	83 c4 08             	add    esp,0x8
  b0ebe9:	5f                   	pop    edi
  b0ebea:	5e                   	pop    esi
  b0ebeb:	5b                   	pop    ebx
  b0ebec:	8b e5                	mov    esp,ebp
  b0ebee:	5d                   	pop    ebp
  b0ebef:	c3                   	ret
  b0ebf0:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  b0ebf4:	51                   	push   ecx
  b0ebf5:	50                   	push   eax
  b0ebf6:	8b ce                	mov    ecx,esi
  b0ebf8:	e8 13 70 8f ff       	call   0x405c10
  b0ebfd:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  b0ec00:	52                   	push   edx
  b0ec01:	56                   	push   esi
  b0ec02:	e8 b9 f5 cb ff       	call   0x7ce1c0
  b0ec07:	83 c4 08             	add    esp,0x8
  b0ec0a:	5f                   	pop    edi
  b0ec0b:	5e                   	pop    esi
  b0ec0c:	5b                   	pop    ebx
  b0ec0d:	8b e5                	mov    esp,ebp
  b0ec0f:	5d                   	pop    ebp
  b0ec10:	c3                   	ret
  b0ec11:	5f                   	pop    edi
  b0ec12:	5e                   	pop    esi
  b0ec13:	32 c0                	xor    al,al
  b0ec15:	5b                   	pop    ebx
  b0ec16:	8b e5                	mov    esp,ebp
  b0ec18:	5d                   	pop    ebp
  b0ec19:	c3                   	ret
