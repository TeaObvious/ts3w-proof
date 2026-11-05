# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079fe00, 0x0079ff56); analyst name ShaderSet_EvaluateVariantProgram.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079fe00 <.text+0x39ee00>:
  79fe00:	8b 41 1c             	mov    eax,DWORD PTR [ecx+0x1c]
  79fe03:	81 ec 80 00 00 00    	sub    esp,0x80
  79fe09:	3b 41 20             	cmp    eax,DWORD PTR [ecx+0x20]
  79fe0c:	75 0b                	jne    0x79fe19
  79fe0e:	33 c0                	xor    eax,eax
  79fe10:	81 c4 80 00 00 00    	add    esp,0x80
  79fe16:	c2 08 00             	ret    0x8
  79fe19:	53                   	push   ebx
  79fe1a:	55                   	push   ebp
  79fe1b:	56                   	push   esi
  79fe1c:	57                   	push   edi
  79fe1d:	33 db                	xor    ebx,ebx
  79fe1f:	6a 7c                	push   0x7c
  79fe21:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  79fe25:	53                   	push   ebx
  79fe26:	51                   	push   ecx
  79fe27:	8b f0                	mov    esi,eax
  79fe29:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  79fe2d:	e8 66 f4 7d 00       	call   0xf7f298
  79fe32:	8b 16                	mov    edx,DWORD PTR [esi]
  79fe34:	8b 4c 96 04          	mov    ecx,DWORD PTR [esi+edx*4+0x4]
  79fe38:	8d 44 96 04          	lea    eax,[esi+edx*4+0x4]
  79fe3c:	8d 74 88 04          	lea    esi,[eax+ecx*4+0x4]
  79fe40:	8b 0e                	mov    ecx,DWORD PTR [esi]
  79fe42:	83 c4 0c             	add    esp,0xc
  79fe45:	83 c6 04             	add    esi,0x4
  79fe48:	85 c9                	test   ecx,ecx
  79fe4a:	0f 84 c7 00 00 00    	je     0x79ff17
  79fe50:	8b ac 24 94 00 00 00 	mov    ebp,DWORD PTR [esp+0x94]
  79fe57:	0f b7 c1             	movzx  eax,cx
  79fe5a:	83 c0 ff             	add    eax,0xffffffff
  79fe5d:	83 f8 0a             	cmp    eax,0xa
  79fe60:	0f 87 e0 00 00 00    	ja     0x79ff46
  79fe66:	ff 24 85 58 ff 79 00 	jmp    DWORD PTR [eax*4+0x79ff58]
  79fe6d:	8b d3                	mov    edx,ebx
  79fe6f:	d1 ea                	shr    edx,1
  79fe71:	83 cb fe             	or     ebx,0xfffffffe
  79fe74:	23 da                	and    ebx,edx
  79fe76:	e9 8f 00 00 00       	jmp    0x79ff0a
  79fe7b:	8b c3                	mov    eax,ebx
  79fe7d:	d1 e8                	shr    eax,1
  79fe7f:	83 e3 01             	and    ebx,0x1
  79fe82:	0b d8                	or     ebx,eax
  79fe84:	e9 81 00 00 00       	jmp    0x79ff0a
  79fe89:	83 f3 01             	xor    ebx,0x1
  79fe8c:	eb 7c                	jmp    0x79ff0a
  79fe8e:	f6 c3 01             	test   bl,0x1
  79fe91:	75 06                	jne    0x79fe99
  79fe93:	c1 e9 10             	shr    ecx,0x10
  79fe96:	8d 34 8e             	lea    esi,[esi+ecx*4]
  79fe99:	d1 eb                	shr    ebx,1
  79fe9b:	eb 6d                	jmp    0x79ff0a
  79fe9d:	f6 c3 01             	test   bl,0x1
  79fea0:	74 f7                	je     0x79fe99
  79fea2:	c1 e9 10             	shr    ecx,0x10
  79fea5:	d1 eb                	shr    ebx,1
  79fea7:	eb 5e                	jmp    0x79ff07
  79fea9:	8b 84 24 98 00 00 00 	mov    eax,DWORD PTR [esp+0x98]
  79feb0:	c1 e9 10             	shr    ecx,0x10
  79feb3:	ba 01 00 00 00       	mov    edx,0x1
  79feb8:	d3 e2                	shl    edx,cl
  79feba:	03 db                	add    ebx,ebx
  79febc:	85 d0                	test   eax,edx
  79febe:	74 4a                	je     0x79ff0a
  79fec0:	83 c3 01             	add    ebx,0x1
  79fec3:	eb 45                	jmp    0x79ff0a
  79fec5:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  79fec8:	03 db                	add    ebx,ebx
  79feca:	c1 e9 10             	shr    ecx,0x10
  79fecd:	33 c0                	xor    eax,eax
  79fecf:	85 d2                	test   edx,edx
  79fed1:	76 37                	jbe    0x79ff0a
  79fed3:	8d 7d 04             	lea    edi,[ebp+0x4]
  79fed6:	39 0f                	cmp    DWORD PTR [edi],ecx
  79fed8:	74 e6                	je     0x79fec0
  79feda:	83 c0 01             	add    eax,0x1
  79fedd:	83 c7 04             	add    edi,0x4
  79fee0:	3b c2                	cmp    eax,edx
  79fee2:	72 f2                	jb     0x79fed6
  79fee4:	eb 24                	jmp    0x79ff0a
  79fee6:	8b 16                	mov    edx,DWORD PTR [esi]
  79fee8:	c1 e9 10             	shr    ecx,0x10
  79feeb:	89 54 8c 10          	mov    DWORD PTR [esp+ecx*4+0x10],edx
  79feef:	83 c6 04             	add    esi,0x4
  79fef2:	eb 16                	jmp    0x79ff0a
  79fef4:	c1 e9 10             	shr    ecx,0x10
  79fef7:	8d 44 8c 10          	lea    eax,[esp+ecx*4+0x10]
  79fefb:	8b 0e                	mov    ecx,DWORD PTR [esi]
  79fefd:	01 08                	add    DWORD PTR [eax],ecx
  79feff:	83 c6 04             	add    esi,0x4
  79ff02:	eb 06                	jmp    0x79ff0a
  79ff04:	c1 e9 10             	shr    ecx,0x10
  79ff07:	8d 34 8e             	lea    esi,[esi+ecx*4]
  79ff0a:	8b 0e                	mov    ecx,DWORD PTR [esi]
  79ff0c:	83 c6 04             	add    esi,0x4
  79ff0f:	85 c9                	test   ecx,ecx
  79ff11:	0f 85 40 ff ff ff    	jne    0x79fe57
  79ff17:	33 c0                	xor    eax,eax
  79ff19:	33 c9                	xor    ecx,ecx
  79ff1b:	eb 03                	jmp    0x79ff20
  79ff1d:	8d 49 00             	lea    ecx,[ecx+0x0]
  79ff20:	8b 54 8c 1c          	mov    edx,DWORD PTR [esp+ecx*4+0x1c]
  79ff24:	03 54 8c 18          	add    edx,DWORD PTR [esp+ecx*4+0x18]
  79ff28:	83 c1 04             	add    ecx,0x4
  79ff2b:	03 54 8c 04          	add    edx,DWORD PTR [esp+ecx*4+0x4]
  79ff2f:	03 14 8c             	add    edx,DWORD PTR [esp+ecx*4]
  79ff32:	03 c2                	add    eax,edx
  79ff34:	83 f9 20             	cmp    ecx,0x20
  79ff37:	72 e7                	jb     0x79ff20
  79ff39:	5f                   	pop    edi
  79ff3a:	5e                   	pop    esi
  79ff3b:	5d                   	pop    ebp
  79ff3c:	5b                   	pop    ebx
  79ff3d:	81 c4 80 00 00 00    	add    esp,0x80
  79ff43:	c2 08 00             	ret    0x8
  79ff46:	5f                   	pop    edi
  79ff47:	5e                   	pop    esi
  79ff48:	5d                   	pop    ebp
  79ff49:	83 c8 ff             	or     eax,0xffffffff
  79ff4c:	5b                   	pop    ebx
  79ff4d:	81 c4 80 00 00 00    	add    esp,0x80
  79ff53:	c2 08 00             	ret    0x8
