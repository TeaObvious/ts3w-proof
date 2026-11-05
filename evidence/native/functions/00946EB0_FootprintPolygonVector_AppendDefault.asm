# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00946eb0, 0x00946f2a); analyst name FootprintPolygonVector_AppendDefault.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00946eb0 <.text+0x545eb0>:
  946eb0:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  946eb3:	83 ec 40             	sub    esp,0x40
  946eb6:	53                   	push   ebx
  946eb7:	33 db                	xor    ebx,ebx
  946eb9:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  946ebc:	73 2a                	jae    0x946ee8
  946ebe:	3b c3                	cmp    eax,ebx
  946ec0:	8d 50 40             	lea    edx,[eax+0x40]
  946ec3:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  946ec6:	74 5d                	je     0x946f25
  946ec8:	0f 57 c0             	xorps  xmm0,xmm0
  946ecb:	88 58 05             	mov    BYTE PTR [eax+0x5],bl
  946ece:	f3 0f 11 40 1c       	movss  DWORD PTR [eax+0x1c],xmm0
  946ed3:	89 58 30             	mov    DWORD PTR [eax+0x30],ebx
  946ed6:	89 58 34             	mov    DWORD PTR [eax+0x34],ebx
  946ed9:	89 58 38             	mov    DWORD PTR [eax+0x38],ebx
  946edc:	c7 40 3c 38 2e 02 01 	mov    DWORD PTR [eax+0x3c],0x1022e38
  946ee3:	5b                   	pop    ebx
  946ee4:	83 c4 40             	add    esp,0x40
  946ee7:	c3                   	ret
  946ee8:	0f 57 c0             	xorps  xmm0,xmm0
  946eeb:	8d 54 24 04          	lea    edx,[esp+0x4]
  946eef:	52                   	push   edx
  946ef0:	50                   	push   eax
  946ef1:	88 5c 24 11          	mov    BYTE PTR [esp+0x11],bl
  946ef5:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  946efb:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  946eff:	89 5c 24 40          	mov    DWORD PTR [esp+0x40],ebx
  946f03:	89 5c 24 44          	mov    DWORD PTR [esp+0x44],ebx
  946f07:	c7 44 24 48 38 2e 02 01 	mov    DWORD PTR [esp+0x48],0x1022e38
  946f0f:	e8 0c 83 ee ff       	call   0x82f220
  946f14:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  946f18:	3b c3                	cmp    eax,ebx
  946f1a:	74 09                	je     0x946f25
  946f1c:	50                   	push   eax
  946f1d:	e8 be d5 b9 ff       	call   0x4e44e0
  946f22:	83 c4 04             	add    esp,0x4
  946f25:	5b                   	pop    ebx
  946f26:	83 c4 40             	add    esp,0x40
  946f29:	c3                   	ret
