# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00566c00, 0x00566c56); analyst name AnimationSequenceEntry_CopyRetained.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00566c00 <.text+0x165c00>:
  566c00:	56                   	push   esi
  566c01:	57                   	push   edi
  566c02:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  566c06:	8b 07                	mov    eax,DWORD PTR [edi]
  566c08:	8b f1                	mov    esi,ecx
  566c0a:	8b 0e                	mov    ecx,DWORD PTR [esi]
  566c0c:	3b c1                	cmp    eax,ecx
  566c0e:	74 27                	je     0x566c37
  566c10:	85 c0                	test   eax,eax
  566c12:	ba 01 00 00 00       	mov    edx,0x1
  566c17:	74 03                	je     0x566c1c
  566c19:	01 50 04             	add    DWORD PTR [eax+0x4],edx
  566c1c:	85 c9                	test   ecx,ecx
  566c1e:	89 06                	mov    DWORD PTR [esi],eax
  566c20:	74 15                	je     0x566c37
  566c22:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  566c25:	83 c0 ff             	add    eax,0xffffffff
  566c28:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  566c2b:	75 0a                	jne    0x566c37
  566c2d:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  566c30:	8b 01                	mov    eax,DWORD PTR [ecx]
  566c32:	52                   	push   edx
  566c33:	8b 10                	mov    edx,DWORD PTR [eax]
  566c35:	ff d2                	call   edx
  566c37:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  566c3a:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  566c3d:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  566c40:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  566c43:	d9 47 0c             	fld    DWORD PTR [edi+0xc]
  566c46:	d9 5e 0c             	fstp   DWORD PTR [esi+0xc]
  566c49:	8b c6                	mov    eax,esi
  566c4b:	d9 47 10             	fld    DWORD PTR [edi+0x10]
  566c4e:	5f                   	pop    edi
  566c4f:	d9 5e 10             	fstp   DWORD PTR [esi+0x10]
  566c52:	5e                   	pop    esi
  566c53:	c2 04 00             	ret    0x4
