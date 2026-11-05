# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009549e0,0x00954b22); analyst name Steering_BeginAnimatedStairs.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009549e0 <.text+0x5539e0>:
  9549e0:	55                   	push   ebp
  9549e1:	8b ec                	mov    ebp,esp
  9549e3:	83 e4 f0             	and    esp,0xfffffff0
  9549e6:	83 ec 14             	sub    esp,0x14
  9549e9:	53                   	push   ebx
  9549ea:	56                   	push   esi
  9549eb:	57                   	push   edi
  9549ec:	8b f1                	mov    esi,ecx
  9549ee:	e8 2d ed ff ff       	call   0x953720
  9549f3:	8d 5e 08             	lea    ebx,[esi+0x8]
  9549f6:	6a 00                	push   0x0
  9549f8:	8b cb                	mov    ecx,ebx
  9549fa:	e8 81 4f ee ff       	call   0x839980
  9549ff:	8b 8e 98 00 00 00    	mov    ecx,DWORD PTR [esi+0x98]
  954a05:	85 c9                	test   ecx,ecx
  954a07:	74 11                	je     0x954a1a
  954a09:	c7 86 98 00 00 00 00 00 00 00 	mov    DWORD PTR [esi+0x98],0x0
  954a13:	8b 01                	mov    eax,DWORD PTR [ecx]
  954a15:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
  954a18:	ff d2                	call   edx
  954a1a:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  954a1d:	85 c9                	test   ecx,ecx
  954a1f:	74 27                	je     0x954a48
  954a21:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  954a26:	50                   	push   eax
  954a27:	e8 34 f8 fd ff       	call   0x934260
  954a2c:	85 c0                	test   eax,eax
  954a2e:	74 18                	je     0x954a48
  954a30:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  954a34:	51                   	push   ecx
  954a35:	8b c8                	mov    ecx,eax
  954a37:	e8 f4 2f 00 00       	call   0x957a30
  954a3c:	50                   	push   eax
  954a3d:	8b ce                	mov    ecx,esi
  954a3f:	e8 2c e2 ff ff       	call   0x952c70
  954a44:	84 c0                	test   al,al
  954a46:	75 27                	jne    0x954a6f
  954a48:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  954a4b:	8d 57 30             	lea    edx,[edi+0x30]
  954a4e:	52                   	push   edx
  954a4f:	8b ce                	mov    ecx,esi
  954a51:	e8 1a e2 ff ff       	call   0x952c70
  954a56:	84 c0                	test   al,al
  954a58:	75 18                	jne    0x954a72
  954a5a:	8d 47 50             	lea    eax,[edi+0x50]
  954a5d:	50                   	push   eax
  954a5e:	8b ce                	mov    ecx,esi
  954a60:	e8 0b e2 ff ff       	call   0x952c70
  954a65:	84 c0                	test   al,al
  954a67:	0f 84 96 00 00 00    	je     0x954b03
  954a6d:	eb 03                	jmp    0x954a72
  954a6f:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  954a72:	83 be 94 00 00 00 01 	cmp    DWORD PTR [esi+0x94],0x1
  954a79:	0f 85 84 00 00 00    	jne    0x954b03
  954a7f:	6a 00                	push   0x0
  954a81:	6a 00                	push   0x0
  954a83:	6a 00                	push   0x0
  954a85:	6a 00                	push   0x0
  954a87:	68 6c 55 04 01       	push   0x104556c
  954a8c:	68 60 01 00 00       	push   0x160
  954a91:	e8 6a fa b8 ff       	call   0x4e4500
  954a96:	8b f8                	mov    edi,eax
  954a98:	83 c4 18             	add    esp,0x18
  954a9b:	85 ff                	test   edi,edi
  954a9d:	74 36                	je     0x954ad5
  954a9f:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  954aa2:	85 c9                	test   ecx,ecx
  954aa4:	74 20                	je     0x954ac6
  954aa6:	8b 15 84 d4 1d 01    	mov    edx,DWORD PTR ds:0x11dd484
  954aac:	52                   	push   edx
  954aad:	e8 ae f7 fd ff       	call   0x934260
  954ab2:	85 c0                	test   eax,eax
  954ab4:	74 10                	je     0x954ac6
  954ab6:	83 c0 08             	add    eax,0x8
  954ab9:	50                   	push   eax
  954aba:	53                   	push   ebx
  954abb:	8b cf                	mov    ecx,edi
  954abd:	e8 8e f6 ef ff       	call   0x854150
  954ac2:	8b f8                	mov    edi,eax
  954ac4:	eb 11                	jmp    0x954ad7
  954ac6:	33 c0                	xor    eax,eax
  954ac8:	50                   	push   eax
  954ac9:	53                   	push   ebx
  954aca:	8b cf                	mov    ecx,edi
  954acc:	e8 7f f6 ef ff       	call   0x854150
  954ad1:	8b f8                	mov    edi,eax
  954ad3:	eb 02                	jmp    0x954ad7
  954ad5:	33 ff                	xor    edi,edi
  954ad7:	57                   	push   edi
  954ad8:	8b cb                	mov    ecx,ebx
  954ada:	e8 01 4d ee ff       	call   0x8397e0
  954adf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  954ae2:	50                   	push   eax
  954ae3:	8b cf                	mov    ecx,edi
  954ae5:	e8 a6 00 f0 ff       	call   0x854b90
  954aea:	84 c0                	test   al,al
  954aec:	74 0b                	je     0x954af9
  954aee:	33 c0                	xor    eax,eax
  954af0:	5f                   	pop    edi
  954af1:	5e                   	pop    esi
  954af2:	5b                   	pop    ebx
  954af3:	8b e5                	mov    esp,ebp
  954af5:	5d                   	pop    ebp
  954af6:	c2 04 00             	ret    0x4
  954af9:	8b ce                	mov    ecx,esi
  954afb:	e8 20 ec ff ff       	call   0x953720
  954b00:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  954b03:	8b 13                	mov    edx,DWORD PTR [ebx]
  954b05:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  954b08:	8d 47 60             	lea    eax,[edi+0x60]
  954b0b:	50                   	push   eax
  954b0c:	83 c7 50             	add    edi,0x50
  954b0f:	57                   	push   edi
  954b10:	8b cb                	mov    ecx,ebx
  954b12:	ff d2                	call   edx
  954b14:	5f                   	pop    edi
  954b15:	5e                   	pop    esi
  954b16:	b8 02 00 00 00       	mov    eax,0x2
  954b1b:	5b                   	pop    ebx
  954b1c:	8b e5                	mov    esp,ebp
  954b1e:	5d                   	pop    ebp
  954b1f:	c2 04 00             	ret    0x4
