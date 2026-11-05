# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0075bef0, 0x0075c35e); analyst name RadialRangeDestination_ExpandCandidates.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0075bef0 <.text+0x35aef0>:
  75bef0:	55                   	push   ebp
  75bef1:	8b ec                	mov    ebp,esp
  75bef3:	83 e4 f0             	and    esp,0xfffffff0
  75bef6:	81 ec 84 00 00 00    	sub    esp,0x84
  75befc:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  75beff:	53                   	push   ebx
  75bf00:	56                   	push   esi
  75bf01:	57                   	push   edi
  75bf02:	8b f1                	mov    esi,ecx
  75bf04:	50                   	push   eax
  75bf05:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  75bf09:	e8 62 0d ff ff       	call   0x74cc70
  75bf0e:	0f 28 46 40          	movaps xmm0,XMMWORD PTR [esi+0x40]
  75bf12:	8b 4e 50             	mov    ecx,DWORD PTR [esi+0x50]
  75bf15:	0b 4e 54             	or     ecx,DWORD PTR [esi+0x54]
  75bf18:	8d 5e 40             	lea    ebx,[esi+0x40]
  75bf1b:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  75bf20:	0f 28 46 30          	movaps xmm0,XMMWORD PTR [esi+0x30]
  75bf24:	c7 44 24 20 00 00 00 00 	mov    DWORD PTR [esp+0x20],0x0
  75bf2c:	0f 29 84 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm0
  75bf34:	0f 84 10 01 00 00    	je     0x75c04a
  75bf3a:	e8 31 b6 1d 00       	call   0x937570
  75bf3f:	8b 56 54             	mov    edx,DWORD PTR [esi+0x54]
  75bf42:	8b 4e 50             	mov    ecx,DWORD PTR [esi+0x50]
  75bf45:	52                   	push   edx
  75bf46:	51                   	push   ecx
  75bf47:	8b c8                	mov    ecx,eax
  75bf49:	e8 32 c0 1d 00       	call   0x937f80
  75bf4e:	8b f8                	mov    edi,eax
  75bf50:	85 ff                	test   edi,edi
  75bf52:	0f 84 eb 00 00 00    	je     0x75c043
  75bf58:	8b 15 58 a1 1e 01    	mov    edx,DWORD PTR ds:0x11ea158
  75bf5e:	52                   	push   edx
  75bf5f:	8b cf                	mov    ecx,edi
  75bf61:	e8 fa 82 1d 00       	call   0x934260
  75bf66:	85 c0                	test   eax,eax
  75bf68:	0f 84 c8 00 00 00    	je     0x75c036
  75bf6e:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  75bf72:	51                   	push   ecx
  75bf73:	8b c8                	mov    ecx,eax
  75bf75:	e8 96 b9 1f 00       	call   0x957910
  75bf7a:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [esp+0x40]
  75bf7f:	0f 28 0b             	movaps xmm1,XMMWORD PTR [ebx]
  75bf82:	0f 28 d0             	movaps xmm2,xmm0
  75bf85:	0f c6 d0 12          	shufps xmm2,xmm0,0x12
  75bf89:	0f 28 d8             	movaps xmm3,xmm0
  75bf8c:	0f c6 d8 09          	shufps xmm3,xmm0,0x9
  75bf90:	0f c6 c0 ff          	shufps xmm0,xmm0,0xff
  75bf94:	0f 28 e0             	movaps xmm4,xmm0
  75bf97:	0f 28 c1             	movaps xmm0,xmm1
  75bf9a:	0f c6 c1 12          	shufps xmm0,xmm1,0x12
  75bf9e:	0f 59 c3             	mulps  xmm0,xmm3
  75bfa1:	0f 28 e9             	movaps xmm5,xmm1
  75bfa4:	0f c6 e9 09          	shufps xmm5,xmm1,0x9
  75bfa8:	0f 59 ea             	mulps  xmm5,xmm2
  75bfab:	0f 5c c5             	subps  xmm0,xmm5
  75bfae:	0f 28 ec             	movaps xmm5,xmm4
  75bfb1:	0f 59 e9             	mulps  xmm5,xmm1
  75bfb4:	0f 58 c5             	addps  xmm0,xmm5
  75bfb7:	f3 0f 10 2d 88 fd 03 01 	movss  xmm5,DWORD PTR ds:0x103fd88
  75bfbf:	0f 28 f0             	movaps xmm6,xmm0
  75bfc2:	0f c6 f0 12          	shufps xmm6,xmm0,0x12
  75bfc6:	0f 59 f3             	mulps  xmm6,xmm3
  75bfc9:	0f 28 f8             	movaps xmm7,xmm0
  75bfcc:	0f c6 f8 09          	shufps xmm7,xmm0,0x9
  75bfd0:	0f 28 44 24 50       	movaps xmm0,XMMWORD PTR [esp+0x50]
  75bfd5:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  75bfd9:	0f 59 fa             	mulps  xmm7,xmm2
  75bfdc:	0f 5c f7             	subps  xmm6,xmm7
  75bfdf:	0f 59 f5             	mulps  xmm6,xmm5
  75bfe2:	0f 58 f1             	addps  xmm6,xmm1
  75bfe5:	0f 28 4e 30          	movaps xmm1,XMMWORD PTR [esi+0x30]
  75bfe9:	0f 58 f0             	addps  xmm6,xmm0
  75bfec:	0f 29 74 24 70       	movaps XMMWORD PTR [esp+0x70],xmm6
  75bff1:	0f 28 c1             	movaps xmm0,xmm1
  75bff4:	0f c6 c1 12          	shufps xmm0,xmm1,0x12
  75bff8:	0f 59 c3             	mulps  xmm0,xmm3
  75bffb:	0f 28 f1             	movaps xmm6,xmm1
  75bffe:	0f c6 f1 09          	shufps xmm6,xmm1,0x9
  75c002:	0f 59 f2             	mulps  xmm6,xmm2
  75c005:	0f 5c c6             	subps  xmm0,xmm6
  75c008:	0f 28 f1             	movaps xmm6,xmm1
  75c00b:	0f 59 f4             	mulps  xmm6,xmm4
  75c00e:	0f 58 c6             	addps  xmm0,xmm6
  75c011:	0f 28 e0             	movaps xmm4,xmm0
  75c014:	0f c6 e0 12          	shufps xmm4,xmm0,0x12
  75c018:	0f 59 e3             	mulps  xmm4,xmm3
  75c01b:	0f 28 d8             	movaps xmm3,xmm0
  75c01e:	0f c6 d8 09          	shufps xmm3,xmm0,0x9
  75c022:	0f 59 da             	mulps  xmm3,xmm2
  75c025:	0f 5c e3             	subps  xmm4,xmm3
  75c028:	0f 59 e5             	mulps  xmm4,xmm5
  75c02b:	0f 58 e1             	addps  xmm4,xmm1
  75c02e:	0f 29 a4 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm4
  75c036:	8d 54 24 20          	lea    edx,[esp+0x20]
  75c03a:	52                   	push   edx
  75c03b:	57                   	push   edi
  75c03c:	e8 df 00 ff ff       	call   0x74c120
  75c041:	eb 12                	jmp    0x75c055
  75c043:	8d 44 24 20          	lea    eax,[esp+0x20]
  75c047:	50                   	push   eax
  75c048:	eb 05                	jmp    0x75c04f
  75c04a:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  75c04e:	51                   	push   ecx
  75c04f:	53                   	push   ebx
  75c050:	e8 0b 00 ff ff       	call   0x74c060
  75c055:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  75c058:	83 c4 08             	add    esp,0x8
  75c05b:	8d 54 24 70          	lea    edx,[esp+0x70]
  75c05f:	52                   	push   edx
  75c060:	57                   	push   edi
  75c061:	8b ce                	mov    ecx,esi
  75c063:	8b d8                	mov    ebx,eax
  75c065:	e8 b6 38 ff ff       	call   0x74f920
  75c06a:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  75c06d:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  75c070:	0f 28 c8             	movaps xmm1,xmm0
  75c073:	0f c6 c8 55          	shufps xmm1,xmm0,0x55
  75c077:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [esp+0x70]
  75c07c:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  75c080:	0f 5c c8             	subps  xmm1,xmm0
  75c083:	0f 29 4c 24 40       	movaps XMMWORD PTR [esp+0x40],xmm1
  75c088:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  75c08c:	d9 e1                	fabs
  75c08e:	8b c8                	mov    ecx,eax
  75c090:	d9 e8                	fld1
  75c092:	89 4c 24 38          	mov    DWORD PTR [esp+0x38],ecx
  75c096:	df f1                	fcomip st,st(1)
  75c098:	dd d8                	fstp   st(0)
  75c09a:	76 3a                	jbe    0x75c0d6
  75c09c:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  75c09f:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  75c0a2:	50                   	push   eax
  75c0a3:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  75c0a6:	57                   	push   edi
  75c0a7:	51                   	push   ecx
  75c0a8:	8d 54 24 70          	lea    edx,[esp+0x70]
  75c0ac:	52                   	push   edx
  75c0ad:	50                   	push   eax
  75c0ae:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  75c0b1:	53                   	push   ebx
  75c0b2:	8d 8c 24 98 00 00 00 	lea    ecx,[esp+0x98]
  75c0b9:	51                   	push   ecx
  75c0ba:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  75c0bd:	8d 94 24 8c 00 00 00 	lea    edx,[esp+0x8c]
  75c0c4:	52                   	push   edx
  75c0c5:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  75c0c8:	50                   	push   eax
  75c0c9:	51                   	push   ecx
  75c0ca:	52                   	push   edx
  75c0cb:	8b ce                	mov    ecx,esi
  75c0cd:	e8 5e ef ff ff       	call   0x75b030
  75c0d2:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  75c0d6:	0f 57 d2             	xorps  xmm2,xmm2
  75c0d9:	f3 0f 10 4e 60       	movss  xmm1,DWORD PTR [esi+0x60]
  75c0de:	f3 0f 10 46 68       	movss  xmm0,DWORD PTR [esi+0x68]
  75c0e3:	0f 2f c2             	comiss xmm0,xmm2
  75c0e6:	f3 0f 11 54 24 3c    	movss  DWORD PTR [esp+0x3c],xmm2
  75c0ec:	c7 44 24 20 01 00 00 00 	mov    DWORD PTR [esp+0x20],0x1
  75c0f4:	f3 0f 11 4c 24 2c    	movss  DWORD PTR [esp+0x2c],xmm1
  75c0fa:	f3 0f 11 4c 24 34    	movss  DWORD PTR [esp+0x34],xmm1
  75c100:	72 06                	jb     0x75c108
  75c102:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  75c108:	f3 0f 10 46 64       	movss  xmm0,DWORD PTR [esi+0x64]
  75c10d:	d9 05 b4 b5 f9 00    	fld    DWORD PTR ds:0xf9b5b4
  75c113:	0f 2f c1             	comiss xmm0,xmm1
  75c116:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  75c11c:	76 68                	jbe    0x75c186
  75c11e:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  75c122:	c7 44 24 30 02 00 00 00 	mov    DWORD PTR [esp+0x30],0x2
  75c12a:	d8 64 24 2c          	fsub   DWORD PTR [esp+0x2c]
  75c12e:	d9 7c 24 1c          	fnstcw WORD PTR [esp+0x1c]
  75c132:	d9 c0                	fld    st(0)
  75c134:	0f b7 44 24 1c       	movzx  eax,WORD PTR [esp+0x1c]
  75c139:	d8 76 6c             	fdiv   DWORD PTR [esi+0x6c]
  75c13c:	0d 00 0c 00 00       	or     eax,0xc00
  75c141:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  75c145:	d8 c2                	fadd   st,st(2)
  75c147:	d9 6c 24 3c          	fldcw  WORD PTR [esp+0x3c]
  75c14b:	df 7c 24 40          	fistp  QWORD PTR [esp+0x40]
  75c14f:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  75c153:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  75c157:	83 f8 02             	cmp    eax,0x2
  75c15a:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  75c15e:	d9 6c 24 1c          	fldcw  WORD PTR [esp+0x1c]
  75c162:	77 04                	ja     0x75c168
  75c164:	8d 44 24 30          	lea    eax,[esp+0x30]
  75c168:	8b 00                	mov    eax,DWORD PTR [eax]
  75c16a:	85 c0                	test   eax,eax
  75c16c:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  75c170:	db 44 24 40          	fild   DWORD PTR [esp+0x40]
  75c174:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  75c178:	7d 06                	jge    0x75c180
  75c17a:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  75c180:	de f9                	fdivp  st(1),st
  75c182:	d9 5c 24 3c          	fstp   DWORD PTR [esp+0x3c]
  75c186:	0f 28 84 24 80 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0x80]
  75c18e:	0f 29 84 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm0
  75c196:	d9 84 24 88 00 00 00 	fld    DWORD PTR [esp+0x88]
  75c19d:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  75c1a2:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  75c1a6:	d9 f3                	fpatan
  75c1a8:	f3 0f 10 46 5c       	movss  xmm0,DWORD PTR [esi+0x5c]
  75c1ad:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  75c1b3:	0f 28 c8             	movaps xmm1,xmm0
  75c1b6:	f3 0f 5c 05 a8 51 00 01 	subss  xmm0,DWORD PTR ds:0x10051a8
  75c1be:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  75c1c4:	81 64 24 1c ff ff ff 7f 	and    DWORD PTR [esp+0x1c],0x7fffffff
  75c1cc:	f3 0f 10 05 9c 51 00 01 	movss  xmm0,DWORD PTR ds:0x100519c
  75c1d4:	0f 2f 44 24 1c       	comiss xmm0,DWORD PTR [esp+0x1c]
  75c1d9:	c6 44 24 1b 00       	mov    BYTE PTR [esp+0x1b],0x0
  75c1de:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  75c1e2:	de ca                	fmulp  st(2),st
  75c1e4:	de e1                	fsubrp st(1),st
  75c1e6:	d9 54 24 30          	fst    DWORD PTR [esp+0x30]
  75c1ea:	f3 0f 58 4c 24 30    	addss  xmm1,DWORD PTR [esp+0x30]
  75c1f0:	f3 0f 11 4c 24 2c    	movss  DWORD PTR [esp+0x2c],xmm1
  75c1f6:	76 05                	jbe    0x75c1fd
  75c1f8:	c6 44 24 1b 01       	mov    BYTE PTR [esp+0x1b],0x1
  75c1fd:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  75c201:	33 c0                	xor    eax,eax
  75c203:	c6 44 24 1c 00       	mov    BYTE PTR [esp+0x1c],0x0
  75c208:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  75c20c:	eb 14                	jmp    0x75c222
  75c20e:	8b ff                	mov    edi,edi
  75c210:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  75c214:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  75c218:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  75c21c:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  75c220:	d9 c9                	fxch   st(1)
  75c222:	8b d0                	mov    edx,eax
  75c224:	85 d2                	test   edx,edx
  75c226:	89 54 24 40          	mov    DWORD PTR [esp+0x40],edx
  75c22a:	db 44 24 40          	fild   DWORD PTR [esp+0x40]
  75c22e:	7d 06                	jge    0x75c236
  75c230:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  75c236:	d8 4c 24 3c          	fmul   DWORD PTR [esp+0x3c]
  75c23a:	f3 0f 10 44 24 34    	movss  xmm0,DWORD PTR [esp+0x34]
  75c240:	d8 46 60             	fadd   DWORD PTR [esi+0x60]
  75c243:	d9 54 24 40          	fst    DWORD PTR [esp+0x40]
  75c247:	f3 0f 5c 44 24 40    	subss  xmm0,DWORD PTR [esp+0x40]
  75c24d:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  75c253:	81 64 24 24 ff ff ff 7f 	and    DWORD PTR [esp+0x24],0x7fffffff
  75c25b:	f3 0f 10 05 9c 51 00 01 	movss  xmm0,DWORD PTR ds:0x100519c
  75c263:	0f 2f 44 24 24       	comiss xmm0,DWORD PTR [esp+0x24]
  75c268:	76 05                	jbe    0x75c26f
  75c26a:	c6 44 24 1c 01       	mov    BYTE PTR [esp+0x1c],0x1
  75c26f:	80 7c 24 1b 00       	cmp    BYTE PTR [esp+0x1b],0x0
  75c274:	75 0e                	jne    0x75c284
  75c276:	85 c0                	test   eax,eax
  75c278:	74 06                	je     0x75c280
  75c27a:	3b 44 24 20          	cmp    eax,DWORD PTR [esp+0x20]
  75c27e:	75 0e                	jne    0x75c28e
  75c280:	6a 01                	push   0x1
  75c282:	eb 0d                	jmp    0x75c291
  75c284:	3b 44 24 20          	cmp    eax,DWORD PTR [esp+0x20]
  75c288:	75 04                	jne    0x75c28e
  75c28a:	b0 01                	mov    al,0x1
  75c28c:	eb 02                	jmp    0x75c290
  75c28e:	32 c0                	xor    al,al
  75c290:	50                   	push   eax
  75c291:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  75c294:	d9 c9                	fxch   st(1)
  75c296:	50                   	push   eax
  75c297:	8d 94 24 88 00 00 00 	lea    edx,[esp+0x88]
  75c29e:	52                   	push   edx
  75c29f:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  75c2a2:	8d 44 24 4c          	lea    eax,[esp+0x4c]
  75c2a6:	50                   	push   eax
  75c2a7:	52                   	push   edx
  75c2a8:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  75c2ab:	8d 44 24 78          	lea    eax,[esp+0x78]
  75c2af:	50                   	push   eax
  75c2b0:	52                   	push   edx
  75c2b1:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  75c2b4:	57                   	push   edi
  75c2b5:	83 ec 08             	sub    esp,0x8
  75c2b8:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75c2bc:	8d 84 24 98 00 00 00 	lea    eax,[esp+0x98]
  75c2c3:	d9 c9                	fxch   st(1)
  75c2c5:	d9 1c 24             	fstp   DWORD PTR [esp]
  75c2c8:	53                   	push   ebx
  75c2c9:	51                   	push   ecx
  75c2ca:	d9 1c 24             	fstp   DWORD PTR [esp]
  75c2cd:	50                   	push   eax
  75c2ce:	51                   	push   ecx
  75c2cf:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  75c2d2:	51                   	push   ecx
  75c2d3:	52                   	push   edx
  75c2d4:	8b ce                	mov    ecx,esi
  75c2d6:	e8 c5 f3 ff ff       	call   0x75b6a0
  75c2db:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  75c2df:	83 c0 01             	add    eax,0x1
  75c2e2:	3b 44 24 20          	cmp    eax,DWORD PTR [esp+0x20]
  75c2e6:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  75c2ea:	0f 86 20 ff ff ff    	jbe    0x75c210
  75c2f0:	80 7c 24 1c 00       	cmp    BYTE PTR [esp+0x1c],0x0
  75c2f5:	75 56                	jne    0x75c34d
  75c2f7:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  75c2fa:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  75c2fe:	6a 00                	push   0x0
  75c300:	50                   	push   eax
  75c301:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  75c304:	8d 8c 24 88 00 00 00 	lea    ecx,[esp+0x88]
  75c30b:	51                   	push   ecx
  75c30c:	8b d1                	mov    edx,ecx
  75c30e:	52                   	push   edx
  75c30f:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  75c312:	50                   	push   eax
  75c313:	8d 4c 24 78          	lea    ecx,[esp+0x78]
  75c317:	51                   	push   ecx
  75c318:	52                   	push   edx
  75c319:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  75c31c:	57                   	push   edi
  75c31d:	83 ec 08             	sub    esp,0x8
  75c320:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75c324:	8d 84 24 98 00 00 00 	lea    eax,[esp+0x98]
  75c32b:	d9 44 24 58          	fld    DWORD PTR [esp+0x58]
  75c32f:	d9 1c 24             	fstp   DWORD PTR [esp]
  75c332:	53                   	push   ebx
  75c333:	d9 44 24 60          	fld    DWORD PTR [esp+0x60]
  75c337:	51                   	push   ecx
  75c338:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
  75c33c:	d9 1c 24             	fstp   DWORD PTR [esp]
  75c33f:	50                   	push   eax
  75c340:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  75c343:	51                   	push   ecx
  75c344:	52                   	push   edx
  75c345:	50                   	push   eax
  75c346:	8b ce                	mov    ecx,esi
  75c348:	e8 53 f3 ff ff       	call   0x75b6a0
  75c34d:	8b 0f                	mov    ecx,DWORD PTR [edi]
  75c34f:	3b 4f 04             	cmp    ecx,DWORD PTR [edi+0x4]
  75c352:	5f                   	pop    edi
  75c353:	5e                   	pop    esi
  75c354:	0f 95 c0             	setne  al
  75c357:	5b                   	pop    ebx
  75c358:	8b e5                	mov    esp,ebp
  75c35a:	5d                   	pop    ebp
  75c35b:	c2 20 00             	ret    0x20
