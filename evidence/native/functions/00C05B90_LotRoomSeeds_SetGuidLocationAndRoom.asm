# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00c05b90,0x00c05d36); analyst name LotRoomSeeds_SetGuidLocationAndRoom.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c05b90 <.text+0x804b90>:
  c05b90:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  c05b94:	53                   	push   ebx
  c05b95:	8b d9                	mov    ebx,ecx
  c05b97:	56                   	push   esi
  c05b98:	8d 0c c5 00 00 00 00 	lea    ecx,[eax*8+0x0]
  c05b9f:	2b c8                	sub    ecx,eax
  c05ba1:	57                   	push   edi
  c05ba2:	8d 54 24 14          	lea    edx,[esp+0x14]
  c05ba6:	8d 74 8b 7c          	lea    esi,[ebx+ecx*4+0x7c]
  c05baa:	52                   	push   edx
  c05bab:	8d 44 24 14          	lea    eax,[esp+0x14]
  c05baf:	50                   	push   eax
  c05bb0:	8b ce                	mov    ecx,esi
  c05bb2:	e8 b9 e1 ff ff       	call   0xc03d70
  c05bb7:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  c05bbb:	8d 4e 04             	lea    ecx,[esi+0x4]
  c05bbe:	3b f9                	cmp    edi,ecx
  c05bc0:	0f 84 cb 00 00 00    	je     0xc05c91
  c05bc6:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  c05bca:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c05bcd:	3b 4f 20             	cmp    ecx,DWORD PTR [edi+0x20]
  c05bd0:	75 29                	jne    0xc05bfb
  c05bd2:	d9 06                	fld    DWORD PTR [esi]
  c05bd4:	d8 67 18             	fsub   DWORD PTR [edi+0x18]
  c05bd7:	d9 e1                	fabs
  c05bd9:	d9 05 7c 47 07 01    	fld    DWORD PTR ds:0x107477c
  c05bdf:	d9 c9                	fxch   st(1)
  c05be1:	df f1                	fcomip st,st(1)
  c05be3:	77 14                	ja     0xc05bf9
  c05be5:	d9 46 04             	fld    DWORD PTR [esi+0x4]
  c05be8:	d8 67 1c             	fsub   DWORD PTR [edi+0x1c]
  c05beb:	d9 e1                	fabs
  c05bed:	df f1                	fcomip st,st(1)
  c05bef:	dd d8                	fstp   st(0)
  c05bf1:	0f 86 39 01 00 00    	jbe    0xc05d30
  c05bf7:	eb 02                	jmp    0xc05bfb
  c05bf9:	dd d8                	fstp   st(0)
  c05bfb:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  c05bff:	0f 57 d2             	xorps  xmm2,xmm2
  c05c02:	0f 2f c2             	comiss xmm0,xmm2
  c05c05:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  c05c08:	f3 0f 10 4e 04       	movss  xmm1,DWORD PTR [esi+0x4]
  c05c0d:	72 65                	jb     0xc05c74
  c05c0f:	f3 0f 2a 98 74 01 00 00 	cvtsi2ss xmm3,DWORD PTR [eax+0x174]
  c05c17:	0f 2f d8             	comiss xmm3,xmm0
  c05c1a:	72 58                	jb     0xc05c74
  c05c1c:	0f 2f ca             	comiss xmm1,xmm2
  c05c1f:	72 53                	jb     0xc05c74
  c05c21:	f3 0f 2a 80 78 01 00 00 	cvtsi2ss xmm0,DWORD PTR [eax+0x178]
  c05c29:	0f 2f c1             	comiss xmm0,xmm1
  c05c2c:	72 46                	jb     0xc05c74
  c05c2e:	3b 88 7c 01 00 00    	cmp    ecx,DWORD PTR [eax+0x17c]
  c05c34:	7c 3e                	jl     0xc05c74
  c05c36:	3b 88 80 01 00 00    	cmp    ecx,DWORD PTR [eax+0x180]
  c05c3c:	7f 36                	jg     0xc05c74
  c05c3e:	83 ca ff             	or     edx,0xffffffff
  c05c41:	88 54 24 1c          	mov    BYTE PTR [esp+0x1c],dl
  c05c45:	88 54 24 1d          	mov    BYTE PTR [esp+0x1d],dl
  c05c49:	88 54 24 1f          	mov    BYTE PTR [esp+0x1f],dl
  c05c4d:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  c05c51:	52                   	push   edx
  c05c52:	56                   	push   esi
  c05c53:	c6 44 24 26 00       	mov    BYTE PTR [esp+0x26],0x0
  c05c58:	e8 53 21 ef ff       	call   0xaf7db0
  c05c5d:	83 c4 08             	add    esp,0x8
  c05c60:	6a 01                	push   0x1
  c05c62:	8d 44 24 20          	lea    eax,[esp+0x20]
  c05c66:	50                   	push   eax
  c05c67:	8b cb                	mov    ecx,ebx
  c05c69:	e8 52 e3 ff ff       	call   0xc03fc0
  c05c6e:	66 89 47 24          	mov    WORD PTR [edi+0x24],ax
  c05c72:	eb 06                	jmp    0xc05c7a
  c05c74:	66 c7 47 24 ff ff    	mov    WORD PTR [edi+0x24],0xffff
  c05c7a:	8b 0e                	mov    ecx,DWORD PTR [esi]
  c05c7c:	89 4f 18             	mov    DWORD PTR [edi+0x18],ecx
  c05c7f:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  c05c82:	89 57 1c             	mov    DWORD PTR [edi+0x1c],edx
  c05c85:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c05c88:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  c05c8b:	5f                   	pop    edi
  c05c8c:	5e                   	pop    esi
  c05c8d:	5b                   	pop    ebx
  c05c8e:	c2 10 00             	ret    0x10
  c05c91:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  c05c95:	51                   	push   ecx
  c05c96:	8b ce                	mov    ecx,esi
  c05c98:	e8 13 fb ff ff       	call   0xc057b0
  c05c9d:	0f 57 d2             	xorps  xmm2,xmm2
  c05ca0:	8b f0                	mov    esi,eax
  c05ca2:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  c05ca6:	8b 10                	mov    edx,DWORD PTR [eax]
  c05ca8:	89 16                	mov    DWORD PTR [esi],edx
  c05caa:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  c05cad:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  c05cb0:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  c05cb3:	89 56 08             	mov    DWORD PTR [esi+0x8],edx
  c05cb6:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  c05cba:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  c05cbd:	f3 0f 10 48 04       	movss  xmm1,DWORD PTR [eax+0x4]
  c05cc2:	83 ca ff             	or     edx,0xffffffff
  c05cc5:	0f 2f c2             	comiss xmm0,xmm2
  c05cc8:	72 62                	jb     0xc05d2c
  c05cca:	f3 0f 2a 99 74 01 00 00 	cvtsi2ss xmm3,DWORD PTR [ecx+0x174]
  c05cd2:	0f 2f d8             	comiss xmm3,xmm0
  c05cd5:	72 55                	jb     0xc05d2c
  c05cd7:	0f 2f ca             	comiss xmm1,xmm2
  c05cda:	72 50                	jb     0xc05d2c
  c05cdc:	f3 0f 2a 81 78 01 00 00 	cvtsi2ss xmm0,DWORD PTR [ecx+0x178]
  c05ce4:	0f 2f c1             	comiss xmm0,xmm1
  c05ce7:	72 43                	jb     0xc05d2c
  c05ce9:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  c05cec:	3b b9 7c 01 00 00    	cmp    edi,DWORD PTR [ecx+0x17c]
  c05cf2:	7c 38                	jl     0xc05d2c
  c05cf4:	3b b9 80 01 00 00    	cmp    edi,DWORD PTR [ecx+0x180]
  c05cfa:	7f 30                	jg     0xc05d2c
  c05cfc:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  c05d00:	51                   	push   ecx
  c05d01:	50                   	push   eax
  c05d02:	88 54 24 24          	mov    BYTE PTR [esp+0x24],dl
  c05d06:	88 54 24 25          	mov    BYTE PTR [esp+0x25],dl
  c05d0a:	c6 44 24 26 00       	mov    BYTE PTR [esp+0x26],0x0
  c05d0f:	88 54 24 27          	mov    BYTE PTR [esp+0x27],dl
  c05d13:	e8 98 20 ef ff       	call   0xaf7db0
  c05d18:	83 c4 08             	add    esp,0x8
  c05d1b:	6a 01                	push   0x1
  c05d1d:	8d 54 24 20          	lea    edx,[esp+0x20]
  c05d21:	52                   	push   edx
  c05d22:	8b cb                	mov    ecx,ebx
  c05d24:	e8 97 e2 ff ff       	call   0xc03fc0
  c05d29:	0f b7 d0             	movzx  edx,ax
  c05d2c:	66 89 56 0c          	mov    WORD PTR [esi+0xc],dx
  c05d30:	5f                   	pop    edi
  c05d31:	5e                   	pop    esi
  c05d32:	5b                   	pop    ebx
  c05d33:	c2 10 00             	ret    0x10
