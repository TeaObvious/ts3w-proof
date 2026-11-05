# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed envelope [0x00947ec0,0x00947f14); analyst name LightingComponent_InitializeResourceFromParameters.
# Original instructions govern paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00947ec0 <.text+0x546ec0>:
  947ec0:	83 ec 10             	sub    esp,0x10
  947ec3:	33 c0                	xor    eax,eax
  947ec5:	56                   	push   esi
  947ec6:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  947eca:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  947ece:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  947ed2:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  947ed6:	8d 44 24 04          	lea    eax,[esp+0x4]
  947eda:	50                   	push   eax
  947edb:	8b f1                	mov    esi,ecx
  947edd:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  947ee1:	68 b2 e9 c7 9c       	push   0x9cc7e9b2
  947ee6:	e8 a5 17 ff ff       	call   0x939690
  947eeb:	84 c0                	test   al,al
  947eed:	74 1c                	je     0x947f0b
  947eef:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  947ef3:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  947ef7:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  947efb:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  947efe:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  947f02:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
  947f05:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
  947f08:	89 4e 14             	mov    DWORD PTR [esi+0x14],ecx
  947f0b:	b0 01                	mov    al,0x1
  947f0d:	5e                   	pop    esi
  947f0e:	83 c4 10             	add    esp,0x10
  947f11:	c2 04 00             	ret    0x4
