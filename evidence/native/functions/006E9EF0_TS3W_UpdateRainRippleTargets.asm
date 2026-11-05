# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x006e9ef0, 0x006ea0eb).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Disassembly of section .text:

006e9ef0 <.text+0x2e8ef0>:
  6e9ef0:	83 ec 40             	sub    esp,0x40
  6e9ef3:	56                   	push   esi
  6e9ef4:	8b f1                	mov    esi,ecx
  6e9ef6:	80 be f5 01 00 00 00 	cmp    BYTE PTR [esi+0x1f5],0x0
  6e9efd:	0f 84 e3 01 00 00    	je     0x6ea0e6
  6e9f03:	68 00 80 00 00       	push   0x8000
  6e9f08:	b9 e0 ed 1c 01       	mov    ecx,0x11cede0
  6e9f0d:	e8 8e 9e e3 ff       	call   0x523da0
  6e9f12:	84 c0                	test   al,al
  6e9f14:	0f 84 cc 01 00 00    	je     0x6ea0e6
  6e9f1a:	57                   	push   edi
  6e9f1b:	e8 f0 49 f2 ff       	call   0x60e910
  6e9f20:	8b f8                	mov    edi,eax
  6e9f22:	85 ff                	test   edi,edi
  6e9f24:	0f 84 b4 01 00 00    	je     0x6ea0de
  6e9f2a:	80 bf 8d 00 00 00 00 	cmp    BYTE PTR [edi+0x8d],0x0
  6e9f31:	0f 85 a7 01 00 00    	jne    0x6ea0de
  6e9f37:	8b cf                	mov    ecx,edi
  6e9f39:	e8 32 5d f2 ff       	call   0x60fc70
  6e9f3e:	3b 86 f8 01 00 00    	cmp    eax,DWORD PTR [esi+0x1f8]
  6e9f44:	74 0d                	je     0x6e9f53
  6e9f46:	89 86 f8 01 00 00    	mov    DWORD PTR [esi+0x1f8],eax
  6e9f4c:	c6 86 f4 01 00 00 00 	mov    BYTE PTR [esi+0x1f4],0x0
  6e9f53:	80 be f4 01 00 00 00 	cmp    BYTE PTR [esi+0x1f4],0x0
  6e9f5a:	74 24                	je     0x6e9f80
  6e9f5c:	b9 48 ed 1c 01       	mov    ecx,0x11ced48
  6e9f61:	e8 ea b0 ea ff       	call   0x595050
  6e9f66:	84 c0                	test   al,al
  6e9f68:	0f 85 77 01 00 00    	jne    0x6ea0e5
  6e9f6e:	b9 48 ed 1c 01       	mov    ecx,0x11ced48
  6e9f73:	e8 58 af ea ff       	call   0x594ed0
  6e9f78:	84 c0                	test   al,al
  6e9f7a:	0f 85 65 01 00 00    	jne    0x6ea0e5
  6e9f80:	8b 0d 30 25 1d 01    	mov    ecx,DWORD PTR ds:0x11d2530
  6e9f86:	68 2c ab 92 f3       	push   0xf392ab2c
  6e9f8b:	e8 30 76 ff ff       	call   0x6e15c0
  6e9f90:	84 c0                	test   al,al
  6e9f92:	75 18                	jne    0x6e9fac
  6e9f94:	8b 0d 30 25 1d 01    	mov    ecx,DWORD PTR ds:0x11d2530
  6e9f9a:	68 a2 fd c4 e8       	push   0xe8c4fda2
  6e9f9f:	e8 1c 76 ff ff       	call   0x6e15c0
  6e9fa4:	84 c0                	test   al,al
  6e9fa6:	0f 84 39 01 00 00    	je     0x6ea0e5
  6e9fac:	53                   	push   ebx
  6e9fad:	55                   	push   ebp
  6e9fae:	8d 44 24 20          	lea    eax,[esp+0x20]
  6e9fb2:	50                   	push   eax
  6e9fb3:	8b cf                	mov    ecx,edi
  6e9fb5:	e8 76 49 f2 ff       	call   0x60e930
  6e9fba:	8b cf                	mov    ecx,edi
  6e9fbc:	e8 df 52 f2 ff       	call   0x60f2a0
  6e9fc1:	8b 1d 9c 64 f9 00    	mov    ebx,DWORD PTR ds:0xf9649c
  6e9fc7:	8b 2d 30 85 1d 01    	mov    ebp,DWORD PTR ds:0x11d8530
  6e9fcd:	ff d3                	call   ebx
  6e9fcf:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  6e9fd3:	f3 0f 59 05 0c 96 ff 	mulss  xmm0,DWORD PTR ds:0xff960c
  6e9fda:	00
  6e9fdb:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  6e9fe1:	ff d3                	call   ebx
  6e9fe3:	8b 96 ec 01 00 00    	mov    edx,DWORD PTR [esi+0x1ec]
  6e9fe9:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  6e9fed:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  6e9ff1:	f3 0f 59 05 0c 96 ff 	mulss  xmm0,DWORD PTR ds:0xff960c
  6e9ff8:	00
  6e9ff9:	51                   	push   ecx
  6e9ffa:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6ea000:	0f 57 c0             	xorps  xmm0,xmm0
  6ea003:	52                   	push   edx
  6ea004:	8b cd                	mov    ecx,ebp
  6ea006:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  6ea00c:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  6ea012:	e8 a9 d8 f0 ff       	call   0x5f78c0
  6ea017:	80 be f4 01 00 00 00 	cmp    BYTE PTR [esi+0x1f4],0x0
  6ea01e:	5d                   	pop    ebp
  6ea01f:	5b                   	pop    ebx
  6ea020:	75 2c                	jne    0x6ea04e
  6ea022:	8b 8e 04 03 00 00    	mov    ecx,DWORD PTR [esi+0x304]
  6ea028:	6a 02                	push   0x2
  6ea02a:	e8 71 06 0b 00       	call   0x79a6a0
  6ea02f:	6a 02                	push   0x2
  6ea031:	8b cf                	mov    ecx,edi
  6ea033:	e8 a8 5f f2 ff       	call   0x60ffe0
  6ea038:	8b 8e 04 03 00 00    	mov    ecx,DWORD PTR [esi+0x304]
  6ea03e:	6a 00                	push   0x0
  6ea040:	6a 00                	push   0x0
  6ea042:	e8 89 06 0b 00       	call   0x79a6d0
  6ea047:	c6 86 f4 01 00 00 01 	mov    BYTE PTR [esi+0x1f4],0x1
  6ea04e:	83 be f0 01 00 00 00 	cmp    DWORD PTR [esi+0x1f0],0x0
  6ea055:	8d 86 f0 01 00 00    	lea    eax,[esi+0x1f0]
  6ea05b:	76 43                	jbe    0x6ea0a0
  6ea05d:	8b 0d a8 c1 15 01    	mov    ecx,DWORD PTR ds:0x115c1a8
  6ea063:	3b 08                	cmp    ecx,DWORD PTR [eax]
  6ea065:	8b c8                	mov    ecx,eax
  6ea067:	72 05                	jb     0x6ea06e
  6ea069:	b9 a8 c1 15 01       	mov    ecx,0x115c1a8
  6ea06e:	8b 86 50 02 00 00    	mov    eax,DWORD PTR [esi+0x250]
  6ea074:	33 d2                	xor    edx,edx
  6ea076:	f7 31                	div    DWORD PTR [ecx]
  6ea078:	85 d2                	test   edx,edx
  6ea07a:	75 24                	jne    0x6ea0a0
  6ea07c:	8b 8e 04 03 00 00    	mov    ecx,DWORD PTR [esi+0x304]
  6ea082:	52                   	push   edx
  6ea083:	e8 18 06 0b 00       	call   0x79a6a0
  6ea088:	6a 02                	push   0x2
  6ea08a:	8b cf                	mov    ecx,edi
  6ea08c:	e8 4f 5f f2 ff       	call   0x60ffe0
  6ea091:	8b 8e 04 03 00 00    	mov    ecx,DWORD PTR [esi+0x304]
  6ea097:	6a 00                	push   0x0
  6ea099:	6a 00                	push   0x0
  6ea09b:	e8 30 06 0b 00       	call   0x79a6d0
  6ea0a0:	8b 8e 04 03 00 00    	mov    ecx,DWORD PTR [esi+0x304]
  6ea0a6:	6a 01                	push   0x1
  6ea0a8:	e8 f3 05 0b 00       	call   0x79a6a0
  6ea0ad:	6a 02                	push   0x2
  6ea0af:	8b cf                	mov    ecx,edi
  6ea0b1:	e8 2a 5f f2 ff       	call   0x60ffe0
  6ea0b6:	8b 8e 04 03 00 00    	mov    ecx,DWORD PTR [esi+0x304]
  6ea0bc:	6a 00                	push   0x0
  6ea0be:	6a 00                	push   0x0
  6ea0c0:	e8 0b 06 0b 00       	call   0x79a6d0
  6ea0c5:	8b cf                	mov    ecx,edi
  6ea0c7:	e8 64 62 f2 ff       	call   0x610330
  6ea0cc:	8d 54 24 18          	lea    edx,[esp+0x18]
  6ea0d0:	52                   	push   edx
  6ea0d1:	8b cf                	mov    ecx,edi
  6ea0d3:	e8 88 49 f2 ff       	call   0x60ea60
  6ea0d8:	5f                   	pop    edi
  6ea0d9:	5e                   	pop    esi
  6ea0da:	83 c4 40             	add    esp,0x40
  6ea0dd:	c3                   	ret
  6ea0de:	c6 86 f4 01 00 00 00 	mov    BYTE PTR [esi+0x1f4],0x0
  6ea0e5:	5f                   	pop    edi
  6ea0e6:	5e                   	pop    esi
  6ea0e7:	83 c4 40             	add    esp,0x40
  6ea0ea:	c3                   	ret
