# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00c4d110 (WallRender_SetLevelVisibility)
Full Ghidra function-body envelope: 0x00c4d110..0x00c4d20f (exclusive end)
Ghidra body ranges: [[00c4d110, 00c4d20e]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c4d110 <.text+0x84c110>:
  c4d110:	55                   	push   ebp
  c4d111:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
  c4d115:	56                   	push   esi
  c4d116:	57                   	push   edi
  c4d117:	8b f1                	mov    esi,ecx
  c4d119:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  c4d11c:	8b fd                	mov    edi,ebp
  c4d11e:	2b 78 68             	sub    edi,DWORD PTR [eax+0x68]
  c4d121:	0f 88 e2 00 00 00    	js     0xc4d209
  c4d127:	8b 8e d4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1d4]
  c4d12d:	2b 8e d8 01 00 00    	sub    ecx,DWORD PTR [esi+0x1d8]
  c4d133:	b8 db 0a 46 7e       	mov    eax,0x7e460adb
  c4d138:	f7 e9                	imul   ecx
  c4d13a:	53                   	push   ebx
  c4d13b:	8b 9e e0 01 00 00    	mov    ebx,DWORD PTR [esi+0x1e0]
  c4d141:	2b 9e d0 01 00 00    	sub    ebx,DWORD PTR [esi+0x1d0]
  c4d147:	c1 fa 0a             	sar    edx,0xa
  c4d14a:	8b ca                	mov    ecx,edx
  c4d14c:	c1 e9 1f             	shr    ecx,0x1f
  c4d14f:	03 ca                	add    ecx,edx
  c4d151:	c1 fb 02             	sar    ebx,0x2
  c4d154:	8d 1c 99             	lea    ebx,[ecx+ebx*4]
  c4d157:	8b 8e cc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1cc]
  c4d15d:	2b 8e c4 01 00 00    	sub    ecx,DWORD PTR [esi+0x1c4]
  c4d163:	b8 db 0a 46 7e       	mov    eax,0x7e460adb
  c4d168:	f7 e9                	imul   ecx
  c4d16a:	c1 fa 0a             	sar    edx,0xa
  c4d16d:	8b c2                	mov    eax,edx
  c4d16f:	c1 e8 1f             	shr    eax,0x1f
  c4d172:	03 da                	add    ebx,edx
  c4d174:	8d 4c 18 fc          	lea    ecx,[eax+ebx*1-0x4]
  c4d178:	3b f9                	cmp    edi,ecx
  c4d17a:	0f 8d 88 00 00 00    	jge    0xc4d208
  c4d180:	8a 5c 24 18          	mov    bl,BYTE PTR [esp+0x18]
  c4d184:	33 ff                	xor    edi,edi
  c4d186:	83 ff 01             	cmp    edi,0x1
  c4d189:	74 1d                	je     0xc4d1a8
  c4d18b:	83 ff 04             	cmp    edi,0x4
  c4d18e:	74 18                	je     0xc4d1a8
  c4d190:	57                   	push   edi
  c4d191:	55                   	push   ebp
  c4d192:	8b ce                	mov    ecx,esi
  c4d194:	e8 b7 f0 ff ff       	call   0xc4c250
  c4d199:	8b 08                	mov    ecx,DWORD PTR [eax]
  c4d19b:	33 d2                	xor    edx,edx
  c4d19d:	84 db                	test   bl,bl
  c4d19f:	0f 94 c2             	sete   dl
  c4d1a2:	52                   	push   edx
  c4d1a3:	e8 38 bd fe ff       	call   0xc38ee0
  c4d1a8:	83 c7 01             	add    edi,0x1
  c4d1ab:	83 ff 07             	cmp    edi,0x7
  c4d1ae:	7c d6                	jl     0xc4d186
  c4d1b0:	e8 eb c1 b1 ff       	call   0x7693a0
  c4d1b5:	8b f8                	mov    edi,eax
  c4d1b7:	85 ff                	test   edi,edi
  c4d1b9:	74 4d                	je     0xc4d208
  c4d1bb:	6a 18                	push   0x18
  c4d1bd:	e8 8e 1f e9 ff       	call   0xadf150
  c4d1c2:	83 c4 04             	add    esp,0x4
  c4d1c5:	85 c0                	test   eax,eax
  c4d1c7:	74 15                	je     0xc4d1de
  c4d1c9:	c7 00 8c 5f 06 01    	mov    DWORD PTR [eax],0x1065f8c
  c4d1cf:	33 c9                	xor    ecx,ecx
  c4d1d1:	8d 50 04             	lea    edx,[eax+0x4]
  c4d1d4:	87 0a                	xchg   DWORD PTR [edx],ecx
  c4d1d6:	c7 00 8c 5f 06 01    	mov    DWORD PTR [eax],0x1065f8c
  c4d1dc:	eb 02                	jmp    0xc4d1e0
  c4d1de:	33 c0                	xor    eax,eax
  c4d1e0:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  c4d1e3:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c4d1e6:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  c4d1e9:	8b 56 14             	mov    edx,DWORD PTR [esi+0x14]
  c4d1ec:	6a 00                	push   0x0
  c4d1ee:	6a 00                	push   0x0
  c4d1f0:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  c4d1f3:	89 68 10             	mov    DWORD PTR [eax+0x10],ebp
  c4d1f6:	88 58 14             	mov    BYTE PTR [eax+0x14],bl
  c4d1f9:	8b 17                	mov    edx,DWORD PTR [edi]
  c4d1fb:	50                   	push   eax
  c4d1fc:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  c4d1ff:	68 67 f6 ad 04       	push   0x4adf667
  c4d204:	8b cf                	mov    ecx,edi
  c4d206:	ff d0                	call   eax
  c4d208:	5b                   	pop    ebx
  c4d209:	5f                   	pop    edi
  c4d20a:	5e                   	pop    esi
  c4d20b:	5d                   	pop    ebp
  c4d20c:	c2 08 00             	ret    0x8
