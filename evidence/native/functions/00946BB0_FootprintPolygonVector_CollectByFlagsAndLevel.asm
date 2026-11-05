# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00946bb0, 0x00946cbb); analyst name FootprintPolygonVector_CollectByFlagsAndLevel.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00946bb0 <.text+0x545bb0>:
  946bb0:	51                   	push   ecx
  946bb1:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  946bb5:	53                   	push   ebx
  946bb6:	55                   	push   ebp
  946bb7:	8b 68 04             	mov    ebp,DWORD PTR [eax+0x4]
  946bba:	2b 28                	sub    ebp,DWORD PTR [eax]
  946bbc:	bb 00 00 00 00       	mov    ebx,0x0
  946bc1:	c1 fd 06             	sar    ebp,0x6
  946bc4:	89 6c 24 08          	mov    DWORD PTR [esp+0x8],ebp
  946bc8:	0f 84 d4 00 00 00    	je     0x946ca2
  946bce:	56                   	push   esi
  946bcf:	57                   	push   edi
  946bd0:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
  946bd4:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
  946bd8:	eb 0a                	jmp    0x946be4
  946bda:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  946be0:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  946be4:	8b 30                	mov    esi,DWORD PTR [eax]
  946be6:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  946bea:	8b 08                	mov    ecx,DWORD PTR [eax]
  946bec:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
  946bef:	03 74 24 20          	add    esi,DWORD PTR [esp+0x20]
  946bf3:	8d 0c 99             	lea    ecx,[ecx+ebx*4]
  946bf6:	8b 09                	mov    ecx,DWORD PTR [ecx]
  946bf8:	8b d1                	mov    edx,ecx
  946bfa:	23 d0                	and    edx,eax
  946bfc:	3b d0                	cmp    edx,eax
  946bfe:	0f 85 8c 00 00 00    	jne    0x946c90
  946c04:	85 4f 10             	test   DWORD PTR [edi+0x10],ecx
  946c07:	0f 85 83 00 00 00    	jne    0x946c90
  946c0d:	8a 46 05             	mov    al,BYTE PTR [esi+0x5]
  946c10:	3a 47 14             	cmp    al,BYTE PTR [edi+0x14]
  946c13:	75 7b                	jne    0x946c90
  946c15:	8b 07                	mov    eax,DWORD PTR [edi]
  946c17:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  946c1a:	3b 48 08             	cmp    ecx,DWORD PTR [eax+0x8]
  946c1d:	8d 56 30             	lea    edx,[esi+0x30]
  946c20:	73 33                	jae    0x946c55
  946c22:	85 c9                	test   ecx,ecx
  946c24:	8d 69 10             	lea    ebp,[ecx+0x10]
  946c27:	89 68 04             	mov    DWORD PTR [eax+0x4],ebp
  946c2a:	74 06                	je     0x946c32
  946c2c:	52                   	push   edx
  946c2d:	e8 be 1d ce ff       	call   0x6289f0
  946c32:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  946c36:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  946c39:	85 c9                	test   ecx,ecx
  946c3b:	74 2a                	je     0x946c67
  946c3d:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  946c40:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  946c43:	73 1b                	jae    0x946c60
  946c45:	85 c0                	test   eax,eax
  946c47:	8d 50 04             	lea    edx,[eax+0x4]
  946c4a:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  946c4d:	74 18                	je     0x946c67
  946c4f:	8b 0e                	mov    ecx,DWORD PTR [esi]
  946c51:	89 08                	mov    DWORD PTR [eax],ecx
  946c53:	eb 12                	jmp    0x946c67
  946c55:	52                   	push   edx
  946c56:	51                   	push   ecx
  946c57:	8b c8                	mov    ecx,eax
  946c59:	e8 e2 14 ec ff       	call   0x808140
  946c5e:	eb d6                	jmp    0x946c36
  946c60:	56                   	push   esi
  946c61:	50                   	push   eax
  946c62:	e8 b9 b7 03 00       	call   0x982420
  946c67:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  946c6a:	85 c9                	test   ecx,ecx
  946c6c:	74 22                	je     0x946c90
  946c6e:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  946c71:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  946c74:	8d 56 1c             	lea    edx,[esi+0x1c]
  946c77:	73 10                	jae    0x946c89
  946c79:	85 c0                	test   eax,eax
  946c7b:	8d 70 04             	lea    esi,[eax+0x4]
  946c7e:	89 71 04             	mov    DWORD PTR [ecx+0x4],esi
  946c81:	74 0d                	je     0x946c90
  946c83:	d9 02                	fld    DWORD PTR [edx]
  946c85:	d9 18                	fstp   DWORD PTR [eax]
  946c87:	eb 07                	jmp    0x946c90
  946c89:	52                   	push   edx
  946c8a:	50                   	push   eax
  946c8b:	e8 f0 f2 ab ff       	call   0x405f80
  946c90:	83 44 24 20 40       	add    DWORD PTR [esp+0x20],0x40
  946c95:	83 c3 01             	add    ebx,0x1
  946c98:	3b dd                	cmp    ebx,ebp
  946c9a:	0f 82 40 ff ff ff    	jb     0x946be0
  946ca0:	5f                   	pop    edi
  946ca1:	5e                   	pop    esi
  946ca2:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  946ca6:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  946ca9:	2b 10                	sub    edx,DWORD PTR [eax]
  946cab:	33 c0                	xor    eax,eax
  946cad:	c1 fa 02             	sar    edx,0x2
  946cb0:	3b ea                	cmp    ebp,edx
  946cb2:	5d                   	pop    ebp
  946cb3:	0f 94 c0             	sete   al
  946cb6:	5b                   	pop    ebx
  946cb7:	59                   	pop    ecx
  946cb8:	c2 0c 00             	ret    0xc
