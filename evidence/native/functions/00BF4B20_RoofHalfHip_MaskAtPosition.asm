# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00bf4b20 (RoofHalfHip_MaskAtPosition)
Complete Ghidra function body: 0x00bf4b20..0x00bf4c90 (exclusive end)
Ghidra body ranges: [[00bf4b20, 00bf4c8f]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00bf4b20 <.text+0x7f3b20>:
  bf4b20:	f3 0f 10 41 10                                  	movss  xmm0,DWORD PTR [ecx+0x10]
  bf4b25:	83 ec 14                                        	sub    esp,0x14
  bf4b28:	0f 2f 41 1c                                     	comiss xmm0,DWORD PTR [ecx+0x1c]
  bf4b2c:	53                                              	push   ebx
  bf4b2d:	56                                              	push   esi
  bf4b2e:	57                                              	push   edi
  bf4b2f:	8d 79 1c                                        	lea    edi,[ecx+0x1c]
  bf4b32:	8d 59 10                                        	lea    ebx,[ecx+0x10]
  bf4b35:	8b c7                                           	mov    eax,edi
  bf4b37:	77 02                                           	ja     0xbf4b3b
  bf4b39:	8b c3                                           	mov    eax,ebx
  bf4b3b:	f3 0f 10 10                                     	movss  xmm2,DWORD PTR [eax]
  bf4b3f:	f3 0f 10 41 14                                  	movss  xmm0,DWORD PTR [ecx+0x14]
  bf4b44:	0f 2f 41 20                                     	comiss xmm0,DWORD PTR [ecx+0x20]
  bf4b48:	8d 41 20                                        	lea    eax,[ecx+0x20]
  bf4b4b:	8d 51 14                                        	lea    edx,[ecx+0x14]
  bf4b4e:	8b f0                                           	mov    esi,eax
  bf4b50:	77 02                                           	ja     0xbf4b54
  bf4b52:	8b f2                                           	mov    esi,edx
  bf4b54:	80 79 30 00                                     	cmp    BYTE PTR [ecx+0x30],0x0
  bf4b58:	d9 03                                           	fld    DWORD PTR [ebx]
  bf4b5a:	d8 27                                           	fsub   DWORD PTR [edi]
  bf4b5c:	f3 0f 10 0e                                     	movss  xmm1,DWORD PTR [esi]
  bf4b60:	d9 e1                                           	fabs
  bf4b62:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  bf4b66:	d9 02                                           	fld    DWORD PTR [edx]
  bf4b68:	d8 20                                           	fsub   DWORD PTR [eax]
  bf4b6a:	d9 e1                                           	fabs
  bf4b6c:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  bf4b70:	74 35                                           	je     0xbf4ba7
  bf4b72:	f3 0f 10 41 34                                  	movss  xmm0,DWORD PTR [ecx+0x34]
  bf4b77:	f3 0f 10 5c 24 10                               	movss  xmm3,DWORD PTR [esp+0x10]
  bf4b7d:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  bf4b81:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  bf4b85:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  bf4b8d:	f3 0f 58 d8                                     	addss  xmm3,xmm0
  bf4b91:	f3 0f 11 5c 24 10                               	movss  DWORD PTR [esp+0x10],xmm3
  bf4b97:	f3 0f 10 5c 24 0c                               	movss  xmm3,DWORD PTR [esp+0xc]
  bf4b9d:	f3 0f 58 d8                                     	addss  xmm3,xmm0
  bf4ba1:	f3 0f 11 5c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm3
  bf4ba7:	f3 0f 10 5c 24 24                               	movss  xmm3,DWORD PTR [esp+0x24]
  bf4bad:	f3 0f 10 05 88 fd 03 01                         	movss  xmm0,DWORD PTR ds:0x103fd88
  bf4bb5:	f3 0f 5c da                                     	subss  xmm3,xmm2
  bf4bb9:	f3 0f 10 54 24 28                               	movss  xmm2,DWORD PTR [esp+0x28]
  bf4bbf:	f3 0f 5c d1                                     	subss  xmm2,xmm1
  bf4bc3:	f3 0f 59 d8                                     	mulss  xmm3,xmm0
  bf4bc7:	f3 0f 59 d0                                     	mulss  xmm2,xmm0
  bf4bcb:	f3 0f 11 5c 24 14                               	movss  DWORD PTR [esp+0x14],xmm3
  bf4bd1:	f3 0f 11 54 24 18                               	movss  DWORD PTR [esp+0x18],xmm2
  bf4bd7:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  bf4bdb:	db 54 24 28                                     	fist   DWORD PTR [esp+0x28]
  bf4bdf:	db 44 24 28                                     	fild   DWORD PTR [esp+0x28]
  bf4be3:	de e9                                           	fsubp  st(1),st
  bf4be5:	d9 5c 24 24                                     	fstp   DWORD PTR [esp+0x24]
  bf4be9:	81 7c 24 24 01 00 00 80                         	cmp    DWORD PTR [esp+0x24],0x80000001
  bf4bf1:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  bf4bf5:	83 d0 ff                                        	adc    eax,0xffffffff
  bf4bf8:	8b d0                                           	mov    edx,eax
  bf4bfa:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  bf4bfe:	db 54 24 28                                     	fist   DWORD PTR [esp+0x28]
  bf4c02:	db 44 24 28                                     	fild   DWORD PTR [esp+0x28]
  bf4c06:	de e9                                           	fsubp  st(1),st
  bf4c08:	d9 5c 24 24                                     	fstp   DWORD PTR [esp+0x24]
  bf4c0c:	81 7c 24 24 01 00 00 80                         	cmp    DWORD PTR [esp+0x24],0x80000001
  bf4c14:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  bf4c18:	83 d0 ff                                        	adc    eax,0xffffffff
  bf4c1b:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  bf4c1f:	8b f0                                           	mov    esi,eax
  bf4c21:	d9 7c 24 24                                     	fnstcw WORD PTR [esp+0x24]
  bf4c25:	0f b6 41 3a                                     	movzx  eax,BYTE PTR [ecx+0x3a]
  bf4c29:	0f b6 49 39                                     	movzx  ecx,BYTE PTR [ecx+0x39]
  bf4c2d:	50                                              	push   eax
  bf4c2e:	0f b7 44 24 28                                  	movzx  eax,WORD PTR [esp+0x28]
  bf4c33:	0d 00 0c 00 00                                  	or     eax,0xc00
  bf4c38:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  bf4c3c:	51                                              	push   ecx
  bf4c3d:	d9 6c 24 30                                     	fldcw  WORD PTR [esp+0x30]
  bf4c41:	df 7c 24 20                                     	fistp  QWORD PTR [esp+0x20]
  bf4c45:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  bf4c49:	8d 4c 00 01                                     	lea    ecx,[eax+eax*1+0x1]
  bf4c4d:	51                                              	push   ecx
  bf4c4e:	d9 6c 24 30                                     	fldcw  WORD PTR [esp+0x30]
  bf4c52:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  bf4c56:	d9 7c 24 30                                     	fnstcw WORD PTR [esp+0x30]
  bf4c5a:	0f b7 44 24 30                                  	movzx  eax,WORD PTR [esp+0x30]
  bf4c5f:	0d 00 0c 00 00                                  	or     eax,0xc00
  bf4c64:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
  bf4c68:	d9 6c 24 34                                     	fldcw  WORD PTR [esp+0x34]
  bf4c6c:	df 7c 24 24                                     	fistp  QWORD PTR [esp+0x24]
  bf4c70:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  bf4c74:	8d 4c 00 01                                     	lea    ecx,[eax+eax*1+0x1]
  bf4c78:	51                                              	push   ecx
  bf4c79:	56                                              	push   esi
  bf4c7a:	d9 6c 24 38                                     	fldcw  WORD PTR [esp+0x38]
  bf4c7e:	52                                              	push   edx
  bf4c7f:	e8 ec e0 00 00                                  	call   0xc02d70
  bf4c84:	83 c4 18                                        	add    esp,0x18
  bf4c87:	5f                                              	pop    edi
  bf4c88:	5e                                              	pop    esi
  bf4c89:	5b                                              	pop    ebx
  bf4c8a:	83 c4 14                                        	add    esp,0x14
  bf4c8d:	c2 08 00                                        	ret    0x8
