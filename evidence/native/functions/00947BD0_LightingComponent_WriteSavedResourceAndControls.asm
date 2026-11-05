# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed envelope [0x00947bd0,0x00947c38); analyst name LightingComponent_WriteSavedResourceAndControls.
# Original instructions govern paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00947bd0 <.text+0x546bd0>:
  947bd0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  947bd4:	56                   	push   esi
  947bd5:	57                   	push   edi
  947bd6:	8b f9                	mov    edi,ecx
  947bd8:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
  947bdb:	6a 00                	push   0x0
  947bdd:	8d 57 08             	lea    edx,[edi+0x8]
  947be0:	52                   	push   edx
  947be1:	e8 7a f8 e8 ff       	call   0x7d7460
  947be6:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  947bea:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  947bed:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  947bf0:	0f b7 c0             	movzx  eax,ax
  947bf3:	51                   	push   ecx
  947bf4:	50                   	push   eax
  947bf5:	52                   	push   edx
  947bf6:	e8 75 62 b9 ff       	call   0x4dde70
  947bfb:	83 c4 0c             	add    esp,0xc
  947bfe:	8b ce                	mov    ecx,esi
  947c00:	50                   	push   eax
  947c01:	e8 ea fd e8 ff       	call   0x7d79f0
  947c06:	d9 47 18             	fld    DWORD PTR [edi+0x18]
  947c09:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  947c0c:	50                   	push   eax
  947c0d:	51                   	push   ecx
  947c0e:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  947c11:	d9 1c 24             	fstp   DWORD PTR [esp]
  947c14:	51                   	push   ecx
  947c15:	e8 76 67 b9 ff       	call   0x4de390
  947c1a:	83 c4 0c             	add    esp,0xc
  947c1d:	8b ce                	mov    ecx,esi
  947c1f:	50                   	push   eax
  947c20:	e8 cb fd e8 ff       	call   0x7d79f0
  947c25:	83 c7 1c             	add    edi,0x1c
  947c28:	57                   	push   edi
  947c29:	8b ce                	mov    ecx,esi
  947c2b:	e8 60 ff e8 ff       	call   0x7d7b90
  947c30:	8a 46 14             	mov    al,BYTE PTR [esi+0x14]
  947c33:	5f                   	pop    edi
  947c34:	5e                   	pop    esi
  947c35:	c2 08 00             	ret    0x8
