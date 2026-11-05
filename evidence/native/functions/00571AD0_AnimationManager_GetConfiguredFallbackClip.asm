# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00571ad0, 0x00571b4a).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Original PC 1.67 TS3W.exe, virtual addresses; image base 0x00400000.
Analyst name: AnimationManager_GetConfiguredFallbackClip.
Paired annotated Ghidra pseudocode: 00571AD0_AnimationManager_GetConfiguredFallbackClip.c
Ghidra function-body envelope [0x00571ad0, 0x00571b4a); inferred boundaries.
Includes any internal gaps; machine instructions govern the decompiler interpretation.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00571ad0 <.text+0x170ad0>:
  571ad0:	83 ec 10             	sub    esp,0x10
  571ad3:	56                   	push   esi
  571ad4:	8b f1                	mov    esi,ecx
  571ad6:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  571ad9:	85 c0                	test   eax,eax
  571adb:	57                   	push   edi
  571adc:	8d 7e 14             	lea    edi,[esi+0x14]
  571adf:	74 10                	je     0x571af1
  571ae1:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  571ae4:	3b 4e 40             	cmp    ecx,DWORD PTR [esi+0x40]
  571ae7:	75 08                	jne    0x571af1
  571ae9:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  571aec:	3b 56 44             	cmp    edx,DWORD PTR [esi+0x44]
  571aef:	74 53                	je     0x571b44
  571af1:	53                   	push   ebx
  571af2:	e8 89 e3 f3 ff       	call   0x4afe80
  571af7:	8b 4e 44             	mov    ecx,DWORD PTR [esi+0x44]
  571afa:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  571afe:	8b 0f                	mov    ecx,DWORD PTR [edi]
  571b00:	85 c9                	test   ecx,ecx
  571b02:	8b d8                	mov    ebx,eax
  571b04:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  571b07:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  571b0b:	c7 44 24 14 f3 c4 20 	mov    DWORD PTR [esp+0x14],0x6b20c4f3
  571b12:	6b
  571b13:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  571b1a:	00
  571b1b:	74 0d                	je     0x571b2a
  571b1d:	c7 07 00 00 00 00    	mov    DWORD PTR [edi],0x0
  571b23:	8b 11                	mov    edx,DWORD PTR [ecx]
  571b25:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  571b28:	ff d0                	call   eax
  571b2a:	8b 13                	mov    edx,DWORD PTR [ebx]
  571b2c:	8b 52 0c             	mov    edx,DWORD PTR [edx+0xc]
  571b2f:	6a 00                	push   0x0
  571b31:	6a 00                	push   0x0
  571b33:	6a 00                	push   0x0
  571b35:	6a 00                	push   0x0
  571b37:	57                   	push   edi
  571b38:	8d 44 24 20          	lea    eax,[esp+0x20]
  571b3c:	50                   	push   eax
  571b3d:	8b cb                	mov    ecx,ebx
  571b3f:	ff d2                	call   edx
  571b41:	8b 07                	mov    eax,DWORD PTR [edi]
  571b43:	5b                   	pop    ebx
  571b44:	5f                   	pop    edi
  571b45:	5e                   	pop    esi
  571b46:	83 c4 10             	add    esp,0x10
  571b49:	c3                   	ret
