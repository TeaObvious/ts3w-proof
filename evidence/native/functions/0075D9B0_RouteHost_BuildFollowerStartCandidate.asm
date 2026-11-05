# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0075d9b0, 0x0075dac9); analyst name RouteHost_BuildFollowerStartCandidate.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0075d9b0 <.text+0x35c9b0>:
  75d9b0:	55                   	push   ebp
  75d9b1:	8b ec                	mov    ebp,esp
  75d9b3:	83 e4 f0             	and    esp,0xfffffff0
  75d9b6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  75d9b9:	83 ec 64             	sub    esp,0x64
  75d9bc:	53                   	push   ebx
  75d9bd:	56                   	push   esi
  75d9be:	57                   	push   edi
  75d9bf:	8b f9                	mov    edi,ecx
  75d9c1:	50                   	push   eax
  75d9c2:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  75d9c6:	51                   	push   ecx
  75d9c7:	8d 54 24 18          	lea    edx,[esp+0x18]
  75d9cb:	52                   	push   edx
  75d9cc:	8b cf                	mov    ecx,edi
  75d9ce:	e8 7d 4c ff ff       	call   0x752650
  75d9d3:	8b d8                	mov    ebx,eax
  75d9d5:	83 fb 01             	cmp    ebx,0x1
  75d9d8:	0f 85 e2 00 00 00    	jne    0x75dac0
  75d9de:	e8 8d 9b 1d 00       	call   0x937570
  75d9e3:	85 c0                	test   eax,eax
  75d9e5:	0f 84 d3 00 00 00    	je     0x75dabe
  75d9eb:	8b 47 44             	mov    eax,DWORD PTR [edi+0x44]
  75d9ee:	8b 4f 40             	mov    ecx,DWORD PTR [edi+0x40]
  75d9f1:	50                   	push   eax
  75d9f2:	51                   	push   ecx
  75d9f3:	e8 78 9b 1d 00       	call   0x937570
  75d9f8:	8b c8                	mov    ecx,eax
  75d9fa:	e8 81 a5 1d 00       	call   0x937f80
  75d9ff:	8b f0                	mov    esi,eax
  75da01:	85 f6                	test   esi,esi
  75da03:	74 09                	je     0x75da0e
  75da05:	8d 56 04             	lea    edx,[esi+0x4]
  75da08:	8b c3                	mov    eax,ebx
  75da0a:	f0 0f c1 02          	lock xadd DWORD PTR [edx],eax
  75da0e:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  75da13:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  75da18:	0f 57 c0             	xorps  xmm0,xmm0
  75da1b:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  75da21:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  75da27:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  75da2d:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  75da33:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  75da38:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  75da3d:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  75da45:	56                   	push   esi
  75da46:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  75da4c:	e8 6f e7 fe ff       	call   0x74c1c0
  75da51:	8b 57 44             	mov    edx,DWORD PTR [edi+0x44]
  75da54:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  75da58:	33 c0                	xor    eax,eax
  75da5a:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  75da5e:	51                   	push   ecx
  75da5f:	89 44 24 60          	mov    DWORD PTR [esp+0x60],eax
  75da63:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  75da67:	89 44 24 68          	mov    DWORD PTR [esp+0x68],eax
  75da6b:	8b 47 40             	mov    eax,DWORD PTR [edi+0x40]
  75da6e:	52                   	push   edx
  75da6f:	50                   	push   eax
  75da70:	e8 9b e5 fe ff       	call   0x74c010
  75da75:	83 c4 10             	add    esp,0x10
  75da78:	84 c0                	test   al,al
  75da7a:	74 19                	je     0x75da95
  75da7c:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  75da81:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  75da85:	51                   	push   ecx
  75da86:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  75da89:	0f 29 44 24 44       	movaps XMMWORD PTR [esp+0x44],xmm0
  75da8e:	e8 ed 6e ef ff       	call   0x654980
  75da93:	eb 05                	jmp    0x75da9a
  75da95:	bb 02 00 00 00       	mov    ebx,0x2
  75da9a:	85 f6                	test   esi,esi
  75da9c:	74 20                	je     0x75dabe
  75da9e:	8d 46 04             	lea    eax,[esi+0x4]
  75daa1:	8b d0                	mov    edx,eax
  75daa3:	83 c9 ff             	or     ecx,0xffffffff
  75daa6:	f0 0f c1 0a          	lock xadd DWORD PTR [edx],ecx
  75daaa:	49                   	dec    ecx
  75daab:	75 11                	jne    0x75dabe
  75daad:	ba 01 00 00 00       	mov    edx,0x1
  75dab2:	87 10                	xchg   DWORD PTR [eax],edx
  75dab4:	8b 06                	mov    eax,DWORD PTR [esi]
  75dab6:	8b 10                	mov    edx,DWORD PTR [eax]
  75dab8:	6a 01                	push   0x1
  75daba:	8b ce                	mov    ecx,esi
  75dabc:	ff d2                	call   edx
  75dabe:	8b c3                	mov    eax,ebx
  75dac0:	5f                   	pop    edi
  75dac1:	5e                   	pop    esi
  75dac2:	5b                   	pop    ebx
  75dac3:	8b e5                	mov    esp,ebp
  75dac5:	5d                   	pop    ebp
  75dac6:	c2 08 00             	ret    0x8
