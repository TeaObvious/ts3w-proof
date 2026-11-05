# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00c8b0b0, 0x00c8b1a2); analyst name LocationComponent_ResolveAndSetOwningLot.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c8b0b0 <.text+0x88a0b0>:
  c8b0b0:	55                   	push   ebp
  c8b0b1:	8b ec                	mov    ebp,esp
  c8b0b3:	83 e4 f0             	and    esp,0xfffffff0
  c8b0b6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  c8b0b9:	83 ec 38             	sub    esp,0x38
  c8b0bc:	85 c0                	test   eax,eax
  c8b0be:	56                   	push   esi
  c8b0bf:	57                   	push   edi
  c8b0c0:	8b f9                	mov    edi,ecx
  c8b0c2:	0f 85 ca 00 00 00    	jne    0xc8b192
  c8b0c8:	8b 35 c4 db 1e 01    	mov    esi,DWORD PTR ds:0x11edbc4
  c8b0ce:	85 f6                	test   esi,esi
  c8b0d0:	0f 84 bc 00 00 00    	je     0xc8b192
  c8b0d6:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  c8b0d9:	85 c9                	test   ecx,ecx
  c8b0db:	0f 84 b9 00 00 00    	je     0xc8b19a
  c8b0e1:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  c8b0e6:	50                   	push   eax
  c8b0e7:	e8 74 91 ca ff       	call   0x934260
  c8b0ec:	85 c0                	test   eax,eax
  c8b0ee:	0f 84 a6 00 00 00    	je     0xc8b19a
  c8b0f4:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  c8b0f8:	51                   	push   ecx
  c8b0f9:	8b c8                	mov    ecx,eax
  c8b0fb:	e8 30 c9 cc ff       	call   0x957a30
  c8b100:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  c8b105:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  c8b10a:	f3 0f 10 4c 24 20    	movss  xmm1,DWORD PTR [esp+0x20]
  c8b110:	0f 2f 8e b4 00 00 00 	comiss xmm1,DWORD PTR [esi+0xb4]
  c8b117:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  c8b11c:	72 6e                	jb     0xc8b18c
  c8b11e:	f3 0f 10 54 24 38    	movss  xmm2,DWORD PTR [esp+0x38]
  c8b124:	0f 2f 96 b8 00 00 00 	comiss xmm2,DWORD PTR [esi+0xb8]
  c8b12b:	72 5f                	jb     0xc8b18c
  c8b12d:	f3 0f 10 9e bc 00 00 00 	movss  xmm3,DWORD PTR [esi+0xbc]
  c8b135:	0f 2f d9             	comiss xmm3,xmm1
  c8b138:	76 52                	jbe    0xc8b18c
  c8b13a:	f3 0f 10 8e c4 00 00 00 	movss  xmm1,DWORD PTR [esi+0xc4]
  c8b142:	f3 0f 58 8e c0 00 00 00 	addss  xmm1,DWORD PTR [esi+0xc0]
  c8b14a:	0f 2f ca             	comiss xmm1,xmm2
  c8b14d:	76 3d                	jbe    0xc8b18c
  c8b14f:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  c8b154:	d9 44 24 38          	fld    DWORD PTR [esp+0x38]
  c8b158:	83 ec 08             	sub    esp,0x8
  c8b15b:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  c8b15f:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  c8b164:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  c8b168:	8b ce                	mov    ecx,esi
  c8b16a:	d9 1c 24             	fstp   DWORD PTR [esp]
  c8b16d:	e8 5e d6 fd ff       	call   0xc687d0
  c8b172:	85 c0                	test   eax,eax
  c8b174:	74 16                	je     0xc8b18c
  c8b176:	8b 8e b0 00 00 00    	mov    ecx,DWORD PTR [esi+0xb0]
  c8b17c:	8b 50 48             	mov    edx,DWORD PTR [eax+0x48]
  c8b17f:	3b 51 48             	cmp    edx,DWORD PTR [ecx+0x48]
  c8b182:	75 0e                	jne    0xc8b192
  c8b184:	8b 50 4c             	mov    edx,DWORD PTR [eax+0x4c]
  c8b187:	3b 51 4c             	cmp    edx,DWORD PTR [ecx+0x4c]
  c8b18a:	75 06                	jne    0xc8b192
  c8b18c:	8b 86 b0 00 00 00    	mov    eax,DWORD PTR [esi+0xb0]
  c8b192:	50                   	push   eax
  c8b193:	8b cf                	mov    ecx,edi
  c8b195:	e8 06 fd ff ff       	call   0xc8aea0
  c8b19a:	5f                   	pop    edi
  c8b19b:	5e                   	pop    esi
  c8b19c:	8b e5                	mov    esp,ebp
  c8b19e:	5d                   	pop    ebp
  c8b19f:	c2 04 00             	ret    0x4
