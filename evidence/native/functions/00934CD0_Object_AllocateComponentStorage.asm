# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00934cd0, 0x00934e4f); analyst name Object_AllocateComponentStorage.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00934cd0 <.text+0x533cd0>:
  934cd0:	51                   	push   ecx
  934cd1:	53                   	push   ebx
  934cd2:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  934cd6:	8b cb                	mov    ecx,ebx
  934cd8:	d1 e9                	shr    ecx,1
  934cda:	81 e1 55 55 55 55    	and    ecx,0x55555555
  934ce0:	8b c3                	mov    eax,ebx
  934ce2:	2b c1                	sub    eax,ecx
  934ce4:	8b c8                	mov    ecx,eax
  934ce6:	25 33 33 33 33       	and    eax,0x33333333
  934ceb:	c1 e9 02             	shr    ecx,0x2
  934cee:	81 e1 33 33 33 33    	and    ecx,0x33333333
  934cf4:	03 c8                	add    ecx,eax
  934cf6:	8b c1                	mov    eax,ecx
  934cf8:	c1 e8 04             	shr    eax,0x4
  934cfb:	03 c1                	add    eax,ecx
  934cfd:	25 0f 0f 0f 0f       	and    eax,0xf0f0f0f
  934d02:	69 c0 01 01 01 01    	imul   eax,eax,0x1010101
  934d08:	55                   	push   ebp
  934d09:	c1 e8 18             	shr    eax,0x18
  934d0c:	83 f8 01             	cmp    eax,0x1
  934d0f:	56                   	push   esi
  934d10:	57                   	push   edi
  934d11:	7e 05                	jle    0x934d18
  934d13:	83 c0 ff             	add    eax,0xffffffff
  934d16:	eb 02                	jmp    0x934d1a
  934d18:	33 c0                	xor    eax,eax
  934d1a:	8d 34 85 38 00 00 00 	lea    esi,[eax*4+0x38]
  934d21:	89 74 24 20          	mov    DWORD PTR [esp+0x20],esi
  934d25:	bd 08 00 00 00       	mov    ebp,0x8
  934d2a:	e8 41 28 00 00       	call   0x937570
  934d2f:	85 db                	test   ebx,ebx
  934d31:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  934d35:	8b fb                	mov    edi,ebx
  934d37:	74 39                	je     0x934d72
  934d39:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  934d40:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  934d44:	8b d7                	mov    edx,edi
  934d46:	f7 da                	neg    edx
  934d48:	23 d7                	and    edx,edi
  934d4a:	52                   	push   edx
  934d4b:	e8 c0 28 00 00       	call   0x937610
  934d50:	85 c0                	test   eax,eax
  934d52:	74 17                	je     0x934d6b
  934d54:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  934d57:	8d 51 ff             	lea    edx,[ecx-0x1]
  934d5a:	8d 74 31 ff          	lea    esi,[ecx+esi*1-0x1]
  934d5e:	f7 d2                	not    edx
  934d60:	23 f2                	and    esi,edx
  934d62:	03 70 1c             	add    esi,DWORD PTR [eax+0x1c]
  934d65:	3b cd                	cmp    ecx,ebp
  934d67:	76 02                	jbe    0x934d6b
  934d69:	8b e9                	mov    ebp,ecx
  934d6b:	8d 47 ff             	lea    eax,[edi-0x1]
  934d6e:	23 f8                	and    edi,eax
  934d70:	75 ce                	jne    0x934d40
  934d72:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  934d76:	e8 a5 26 00 00       	call   0x937420
  934d7b:	8b 10                	mov    edx,DWORD PTR [eax]
  934d7d:	33 ff                	xor    edi,edi
  934d7f:	57                   	push   edi
  934d80:	55                   	push   ebp
  934d81:	57                   	push   edi
  934d82:	68 40 3d 04 01       	push   0x1043d40
  934d87:	8b c8                	mov    ecx,eax
  934d89:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  934d8c:	56                   	push   esi
  934d8d:	ff d0                	call   eax
  934d8f:	8b f0                	mov    esi,eax
  934d91:	3b f7                	cmp    esi,edi
  934d93:	75 08                	jne    0x934d9d
  934d95:	5f                   	pop    edi
  934d96:	5e                   	pop    esi
  934d97:	5d                   	pop    ebp
  934d98:	33 c0                	xor    eax,eax
  934d9a:	5b                   	pop    ebx
  934d9b:	59                   	pop    ecx
  934d9c:	c3                   	ret
  934d9d:	c7 06 a4 bb 02 01    	mov    DWORD PTR [esi],0x102bba4
  934da3:	33 c9                	xor    ecx,ecx
  934da5:	8d 56 04             	lea    edx,[esi+0x4]
  934da8:	87 0a                	xchg   DWORD PTR [edx],ecx
  934daa:	85 db                	test   ebx,ebx
  934dac:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  934db0:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  934db4:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  934db7:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  934dbb:	89 4e 0c             	mov    DWORD PTR [esi+0xc],ecx
  934dbe:	c7 06 c0 3c 04 01    	mov    DWORD PTR [esi],0x1043cc0
  934dc4:	8b 10                	mov    edx,DWORD PTR [eax]
  934dc6:	89 56 18             	mov    DWORD PTR [esi+0x18],edx
  934dc9:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  934dcc:	89 4e 1c             	mov    DWORD PTR [esi+0x1c],ecx
  934dcf:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  934dd2:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  934dd6:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  934dd9:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  934ddc:	89 7e 28             	mov    DWORD PTR [esi+0x28],edi
  934ddf:	89 7e 30             	mov    DWORD PTR [esi+0x30],edi
  934de2:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  934de5:	89 5e 2c             	mov    DWORD PTR [esi+0x2c],ebx
  934de8:	8d 3c 0e             	lea    edi,[esi+ecx*1]
  934deb:	74 5a                	je     0x934e47
  934ded:	8d 56 34             	lea    edx,[esi+0x34]
  934df0:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  934df4:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  934df8:	8b cb                	mov    ecx,ebx
  934dfa:	f7 d9                	neg    ecx
  934dfc:	23 cb                	and    ecx,ebx
  934dfe:	51                   	push   ecx
  934dff:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  934e03:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  934e09:	e8 02 28 00 00       	call   0x937610
  934e0e:	85 c0                	test   eax,eax
  934e10:	74 27                	je     0x934e39
  934e12:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  934e15:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  934e18:	8d 7c 39 ff          	lea    edi,[ecx+edi*1-0x1]
  934e1c:	83 c1 ff             	add    ecx,0xffffffff
  934e1f:	f7 d1                	not    ecx
  934e21:	23 f9                	and    edi,ecx
  934e23:	8b ef                	mov    ebp,edi
  934e25:	03 78 1c             	add    edi,DWORD PTR [eax+0x1c]
  934e28:	56                   	push   esi
  934e29:	55                   	push   ebp
  934e2a:	ff d2                	call   edx
  934e2c:	83 c4 08             	add    esp,0x8
  934e2f:	85 c0                	test   eax,eax
  934e31:	74 06                	je     0x934e39
  934e33:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  934e37:	89 28                	mov    DWORD PTR [eax],ebp
  934e39:	83 44 24 20 04       	add    DWORD PTR [esp+0x20],0x4
  934e3e:	8d 4b ff             	lea    ecx,[ebx-0x1]
  934e41:	23 d9                	and    ebx,ecx
  934e43:	85 db                	test   ebx,ebx
  934e45:	75 ad                	jne    0x934df4
  934e47:	5f                   	pop    edi
  934e48:	8b c6                	mov    eax,esi
  934e4a:	5e                   	pop    esi
  934e4b:	5d                   	pop    ebp
  934e4c:	5b                   	pop    ebx
  934e4d:	59                   	pop    ecx
  934e4e:	c3                   	ret
