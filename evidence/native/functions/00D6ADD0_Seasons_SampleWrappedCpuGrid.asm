# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00d6add0, 0x00d6b061).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_SampleWrappedCpuGrid (analyst-assigned)
Entry: 0x00d6add0
Ghidra body envelope: 0x00d6add0..0x00d6b060 inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00d6add0 <.text+0x969dd0>:
  d6add0:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  d6add4:	db 44 24 0c          	fild   DWORD PTR [esp+0xc]
  d6add8:	83 ec 10             	sub    esp,0x10
  d6addb:	85 c0                	test   eax,eax
  d6addd:	53                   	push   ebx
  d6adde:	55                   	push   ebp
  d6addf:	56                   	push   esi
  d6ade0:	57                   	push   edi
  d6ade1:	7d 06                	jge    0xd6ade9
  d6ade3:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  d6ade9:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  d6aded:	83 ec 08             	sub    esp,0x8
  d6adf0:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  d6adf4:	dd 1c 24             	fstp   QWORD PTR [esp]
  d6adf7:	e8 d4 49 21 00       	call   0xf7f7d0
  d6adfc:	d8 6c 24 2c          	fsubr  DWORD PTR [esp+0x2c]
  d6ae00:	d8 4c 24 18          	fmul   DWORD PTR [esp+0x18]
  d6ae04:	d8 25 b4 b5 f9 00    	fsub   DWORD PTR ds:0xf9b5b4
  d6ae0a:	d9 5c 24 2c          	fstp   DWORD PTR [esp+0x2c]
  d6ae0e:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  d6ae12:	dd 1c 24             	fstp   QWORD PTR [esp]
  d6ae15:	e8 b6 49 21 00       	call   0xf7f7d0
  d6ae1a:	d8 6c 24 30          	fsubr  DWORD PTR [esp+0x30]
  d6ae1e:	d8 4c 24 18          	fmul   DWORD PTR [esp+0x18]
  d6ae22:	d8 25 b4 b5 f9 00    	fsub   DWORD PTR ds:0xf9b5b4
  d6ae28:	d9 5c 24 30          	fstp   DWORD PTR [esp+0x30]
  d6ae2c:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  d6ae30:	dd 1c 24             	fstp   QWORD PTR [esp]
  d6ae33:	e8 98 49 21 00       	call   0xf7f7d0
  d6ae38:	d8 6c 24 2c          	fsubr  DWORD PTR [esp+0x2c]
  d6ae3c:	d9 5c 24 20          	fstp   DWORD PTR [esp+0x20]
  d6ae40:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  d6ae44:	dd 1c 24             	fstp   QWORD PTR [esp]
  d6ae47:	e8 84 49 21 00       	call   0xf7f7d0
  d6ae4c:	f3 0f 2c 74 24 30    	cvttss2si esi,DWORD PTR [esp+0x30]
  d6ae52:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  d6ae56:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
  d6ae5a:	d9 c0                	fld    st(0)
  d6ae5c:	f3 0f 2c 7c 24 2c    	cvttss2si edi,DWORD PTR [esp+0x2c]
  d6ae62:	de e2                	fsubrp st(2),st
  d6ae64:	8b 6c 24 68          	mov    ebp,DWORD PTR [esp+0x68]
  d6ae68:	d9 c9                	fxch   st(1)
  d6ae6a:	8b c6                	mov    eax,esi
  d6ae6c:	c1 f8 02             	sar    eax,0x2
  d6ae6f:	d9 5c 24 24          	fstp   DWORD PTR [esp+0x24]
  d6ae73:	0f af c3             	imul   eax,ebx
  d6ae76:	8b cf                	mov    ecx,edi
  d6ae78:	c1 f9 02             	sar    ecx,0x2
  d6ae7b:	03 c1                	add    eax,ecx
  d6ae7d:	0f b7 4c 45 00       	movzx  ecx,WORD PTR [ebp+eax*2+0x0]
  d6ae82:	8b d1                	mov    edx,ecx
  d6ae84:	c1 ea 0f             	shr    edx,0xf
  d6ae87:	83 c4 08             	add    esp,0x8
  d6ae8a:	f6 c2 01             	test   dl,0x1
  d6ae8d:	74 08                	je     0xd6ae97
  d6ae8f:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  d6ae93:	03 c1                	add    eax,ecx
  d6ae95:	eb 17                	jmp    0xd6aeae
  d6ae97:	0f b7 d1             	movzx  edx,cx
  d6ae9a:	8b c6                	mov    eax,esi
  d6ae9c:	83 e0 03             	and    eax,0x3
  d6ae9f:	8d 0c 90             	lea    ecx,[eax+edx*4]
  d6aea2:	8b d7                	mov    edx,edi
  d6aea4:	83 e2 03             	and    edx,0x3
  d6aea7:	03 54 24 50          	add    edx,DWORD PTR [esp+0x50]
  d6aeab:	8d 04 8a             	lea    eax,[edx+ecx*4]
  d6aeae:	8a 00                	mov    al,BYTE PTR [eax]
  d6aeb0:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  d6aeb4:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al
  d6aeb8:	d9 7c 24 24          	fnstcw WORD PTR [esp+0x24]
  d6aebc:	0f b7 44 24 24       	movzx  eax,WORD PTR [esp+0x24]
  d6aec1:	0d 00 0c 00 00       	or     eax,0xc00
  d6aec6:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  d6aeca:	33 d2                	xor    edx,edx
  d6aecc:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
  d6aed0:	df 7c 24 10          	fistp  QWORD PTR [esp+0x10]
  d6aed4:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  d6aed8:	83 c0 01             	add    eax,0x1
  d6aedb:	f7 74 24 2c          	div    DWORD PTR [esp+0x2c]
  d6aedf:	d9 6c 24 24          	fldcw  WORD PTR [esp+0x24]
  d6aee3:	8b c6                	mov    eax,esi
  d6aee5:	c1 f8 02             	sar    eax,0x2
  d6aee8:	0f af c3             	imul   eax,ebx
  d6aeeb:	8b ca                	mov    ecx,edx
  d6aeed:	c1 fa 02             	sar    edx,0x2
  d6aef0:	03 c2                	add    eax,edx
  d6aef2:	0f b7 54 45 00       	movzx  edx,WORD PTR [ebp+eax*2+0x0]
  d6aef7:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  d6aefb:	c1 ea 0f             	shr    edx,0xf
  d6aefe:	f6 c2 01             	test   dl,0x1
  d6af01:	74 09                	je     0xd6af0c
  d6af03:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  d6af07:	8d 34 02             	lea    esi,[edx+eax*1]
  d6af0a:	eb 17                	jmp    0xd6af23
  d6af0c:	0f b7 44 24 24       	movzx  eax,WORD PTR [esp+0x24]
  d6af11:	83 e6 03             	and    esi,0x3
  d6af14:	8d 14 86             	lea    edx,[esi+eax*4]
  d6af17:	8b c1                	mov    eax,ecx
  d6af19:	83 e0 03             	and    eax,0x3
  d6af1c:	03 44 24 50          	add    eax,DWORD PTR [esp+0x50]
  d6af20:	8d 34 90             	lea    esi,[eax+edx*4]
  d6af23:	8a 16                	mov    dl,BYTE PTR [esi]
  d6af25:	d9 7c 24 24          	fnstcw WORD PTR [esp+0x24]
  d6af29:	0f b7 44 24 24       	movzx  eax,WORD PTR [esp+0x24]
  d6af2e:	0d 00 0c 00 00       	or     eax,0xc00
  d6af33:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  d6af37:	88 54 24 29          	mov    BYTE PTR [esp+0x29],dl
  d6af3b:	33 d2                	xor    edx,edx
  d6af3d:	d9 6c 24 10          	fldcw  WORD PTR [esp+0x10]
  d6af41:	df 7c 24 10          	fistp  QWORD PTR [esp+0x10]
  d6af45:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  d6af49:	83 c0 01             	add    eax,0x1
  d6af4c:	f7 74 24 2c          	div    DWORD PTR [esp+0x2c]
  d6af50:	d9 6c 24 24          	fldcw  WORD PTR [esp+0x24]
  d6af54:	8b f2                	mov    esi,edx
  d6af56:	8b c2                	mov    eax,edx
  d6af58:	c1 f8 02             	sar    eax,0x2
  d6af5b:	0f af c3             	imul   eax,ebx
  d6af5e:	8b d1                	mov    edx,ecx
  d6af60:	c1 fa 02             	sar    edx,0x2
  d6af63:	03 c2                	add    eax,edx
  d6af65:	0f b7 54 45 00       	movzx  edx,WORD PTR [ebp+eax*2+0x0]
  d6af6a:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
  d6af6e:	c1 ea 0f             	shr    edx,0xf
  d6af71:	f6 c2 01             	test   dl,0x1
  d6af74:	74 08                	je     0xd6af7e
  d6af76:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  d6af7a:	03 c1                	add    eax,ecx
  d6af7c:	eb 17                	jmp    0xd6af95
  d6af7e:	0f b7 54 24 2c       	movzx  edx,WORD PTR [esp+0x2c]
  d6af83:	8b c6                	mov    eax,esi
  d6af85:	83 e0 03             	and    eax,0x3
  d6af88:	83 e1 03             	and    ecx,0x3
  d6af8b:	03 4c 24 50          	add    ecx,DWORD PTR [esp+0x50]
  d6af8f:	8d 14 90             	lea    edx,[eax+edx*4]
  d6af92:	8d 04 91             	lea    eax,[ecx+edx*4]
  d6af95:	8a 10                	mov    dl,BYTE PTR [eax]
  d6af97:	8b c6                	mov    eax,esi
  d6af99:	c1 f8 02             	sar    eax,0x2
  d6af9c:	0f af c3             	imul   eax,ebx
  d6af9f:	8b cf                	mov    ecx,edi
  d6afa1:	c1 f9 02             	sar    ecx,0x2
  d6afa4:	03 c1                	add    eax,ecx
  d6afa6:	0f b7 4c 45 00       	movzx  ecx,WORD PTR [ebp+eax*2+0x0]
  d6afab:	8b d9                	mov    ebx,ecx
  d6afad:	c1 eb 0f             	shr    ebx,0xf
  d6afb0:	f6 c3 01             	test   bl,0x1
  d6afb3:	74 08                	je     0xd6afbd
  d6afb5:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  d6afb9:	03 c1                	add    eax,ecx
  d6afbb:	eb 13                	jmp    0xd6afd0
  d6afbd:	0f b7 c1             	movzx  eax,cx
  d6afc0:	83 e6 03             	and    esi,0x3
  d6afc3:	83 e7 03             	and    edi,0x3
  d6afc6:	03 7c 24 50          	add    edi,DWORD PTR [esp+0x50]
  d6afca:	8d 0c 86             	lea    ecx,[esi+eax*4]
  d6afcd:	8d 04 8f             	lea    eax,[edi+ecx*4]
  d6afd0:	85 ed                	test   ebp,ebp
  d6afd2:	0f b6 4c 24 28       	movzx  ecx,BYTE PTR [esp+0x28]
  d6afd7:	8a 00                	mov    al,BYTE PTR [eax]
  d6afd9:	f3 0f 10 54 24 18    	movss  xmm2,DWORD PTR [esp+0x18]
  d6afdf:	f3 0f 2a c9          	cvtsi2ss xmm1,ecx
  d6afe3:	0f b6 4c 24 29       	movzx  ecx,BYTE PTR [esp+0x29]
  d6afe8:	f3 0f 2a c1          	cvtsi2ss xmm0,ecx
  d6afec:	f3 0f 5c c1          	subss  xmm0,xmm1
  d6aff0:	0f b6 c0             	movzx  eax,al
  d6aff3:	0f b6 ca             	movzx  ecx,dl
  d6aff6:	f3 0f 59 c2          	mulss  xmm0,xmm2
  d6affa:	f3 0f 58 c1          	addss  xmm0,xmm1
  d6affe:	f3 0f 2a c8          	cvtsi2ss xmm1,eax
  d6b002:	f3 0f 2a d9          	cvtsi2ss xmm3,ecx
  d6b006:	f3 0f 5c d9          	subss  xmm3,xmm1
  d6b00a:	f3 0f 59 da          	mulss  xmm3,xmm2
  d6b00e:	f3 0f 58 d9          	addss  xmm3,xmm1
  d6b012:	f3 0f 5c d8          	subss  xmm3,xmm0
  d6b016:	f3 0f 59 5c 24 1c    	mulss  xmm3,DWORD PTR [esp+0x1c]
  d6b01c:	f3 0f 58 d8          	addss  xmm3,xmm0
  d6b020:	f3 0f 11 5c 24 2c    	movss  DWORD PTR [esp+0x2c],xmm3
  d6b026:	74 09                	je     0xd6b031
  d6b028:	55                   	push   ebp
  d6b029:	e8 b2 94 77 ff       	call   0x4e44e0
  d6b02e:	83 c4 04             	add    esp,0x4
  d6b031:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  d6b035:	85 c0                	test   eax,eax
  d6b037:	5f                   	pop    edi
  d6b038:	5e                   	pop    esi
  d6b039:	5d                   	pop    ebp
  d6b03a:	5b                   	pop    ebx
  d6b03b:	74 09                	je     0xd6b046
  d6b03d:	50                   	push   eax
  d6b03e:	e8 9d 94 77 ff       	call   0x4e44e0
  d6b043:	83 c4 04             	add    esp,0x4
  d6b046:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  d6b04a:	85 c0                	test   eax,eax
  d6b04c:	74 09                	je     0xd6b057
  d6b04e:	50                   	push   eax
  d6b04f:	e8 8c 94 77 ff       	call   0x4e44e0
  d6b054:	83 c4 04             	add    esp,0x4
  d6b057:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  d6b05b:	83 c4 10             	add    esp,0x10
  d6b05e:	c2 50 00             	ret    0x50
