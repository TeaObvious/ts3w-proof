# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074fe80, 0x0074ff6a); analyst name RouteGoal_RefreshStartContainmentFlags.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074fe80 <.text+0x34ee80>:
  74fe80:	55                   	push   ebp
  74fe81:	8b ec                	mov    ebp,esp
  74fe83:	83 e4 f0             	and    esp,0xfffffff0
  74fe86:	83 ec 24             	sub    esp,0x24
  74fe89:	53                   	push   ebx
  74fe8a:	8b 59 18             	mov    ebx,DWORD PTR [ecx+0x18]
  74fe8d:	56                   	push   esi
  74fe8e:	57                   	push   edi
  74fe8f:	8d 79 18             	lea    edi,[ecx+0x18]
  74fe92:	3b df                	cmp    ebx,edi
  74fe94:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  74fe98:	c6 41 49 01          	mov    BYTE PTR [ecx+0x49],0x1
  74fe9c:	c6 41 4a 00          	mov    BYTE PTR [ecx+0x4a],0x0
  74fea0:	0f 84 bb 00 00 00    	je     0x74ff61
  74fea6:	85 db                	test   ebx,ebx
  74fea8:	74 05                	je     0x74feaf
  74feaa:	8d 73 fc             	lea    esi,[ebx-0x4]
  74fead:	eb 02                	jmp    0x74feb1
  74feaf:	33 f6                	xor    esi,esi
  74feb1:	8b 06                	mov    eax,DWORD PTR [esi]
  74feb3:	8b 10                	mov    edx,DWORD PTR [eax]
  74feb5:	8b ce                	mov    ecx,esi
  74feb7:	ff d2                	call   edx
  74feb9:	3d ad 6a 21 07       	cmp    eax,0x7216aad
  74febe:	0f 84 95 00 00 00    	je     0x74ff59
  74fec4:	8b 06                	mov    eax,DWORD PTR [esi]
  74fec6:	8b 10                	mov    edx,DWORD PTR [eax]
  74fec8:	8b ce                	mov    ecx,esi
  74feca:	ff d2                	call   edx
  74fecc:	3d 82 6a 21 07       	cmp    eax,0x7216a82
  74fed1:	75 73                	jne    0x74ff46
  74fed3:	8b c7                	mov    eax,edi
  74fed5:	83 c9 ff             	or     ecx,0xffffffff
  74fed8:	8b 00                	mov    eax,DWORD PTR [eax]
  74feda:	83 c1 01             	add    ecx,0x1
  74fedd:	3b c7                	cmp    eax,edi
  74fedf:	75 f7                	jne    0x74fed8
  74fee1:	83 f9 01             	cmp    ecx,0x1
  74fee4:	75 60                	jne    0x74ff46
  74fee6:	85 db                	test   ebx,ebx
  74fee8:	74 05                	je     0x74feef
  74feea:	8d 43 fc             	lea    eax,[ebx-0x4]
  74feed:	eb 02                	jmp    0x74fef1
  74feef:	33 c0                	xor    eax,eax
  74fef1:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  74fef4:	0f 28 48 40          	movaps xmm1,XMMWORD PTR [eax+0x40]
  74fef8:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  74fefb:	0f 5c c1             	subps  xmm0,xmm1
  74fefe:	0f 59 c0             	mulps  xmm0,xmm0
  74ff01:	0f 28 c8             	movaps xmm1,xmm0
  74ff04:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  74ff08:	0f 28 d1             	movaps xmm2,xmm1
  74ff0b:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  74ff0f:	0f 58 c2             	addps  xmm0,xmm2
  74ff12:	0f 58 c1             	addps  xmm0,xmm1
  74ff15:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  74ff19:	0f 51 c0             	sqrtps xmm0,xmm0
  74ff1c:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  74ff22:	f3 0f 10 40 60       	movss  xmm0,DWORD PTR [eax+0x60]
  74ff27:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  74ff2b:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  74ff31:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  74ff37:	0f 2f 44 24 20       	comiss xmm0,DWORD PTR [esp+0x20]
  74ff3c:	72 08                	jb     0x74ff46
  74ff3e:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  74ff42:	c6 42 4a 01          	mov    BYTE PTR [edx+0x4a],0x1
  74ff46:	8b 1b                	mov    ebx,DWORD PTR [ebx]
  74ff48:	3b df                	cmp    ebx,edi
  74ff4a:	0f 85 56 ff ff ff    	jne    0x74fea6
  74ff50:	5f                   	pop    edi
  74ff51:	5e                   	pop    esi
  74ff52:	5b                   	pop    ebx
  74ff53:	8b e5                	mov    esp,ebp
  74ff55:	5d                   	pop    ebp
  74ff56:	c2 04 00             	ret    0x4
  74ff59:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  74ff5d:	c6 40 49 00          	mov    BYTE PTR [eax+0x49],0x0
  74ff61:	5f                   	pop    edi
  74ff62:	5e                   	pop    esi
  74ff63:	5b                   	pop    ebx
  74ff64:	8b e5                	mov    esp,ebp
  74ff66:	5d                   	pop    ebp
  74ff67:	c2 04 00             	ret    0x4
