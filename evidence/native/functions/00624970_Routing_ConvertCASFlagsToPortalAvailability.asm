# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00624970,0x00624bb4); analyst name Routing_ConvertCASFlagsToPortalAvailability.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00624970 <.text+0x223970>:
  624970:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  624974:	8b c1                	mov    eax,ecx
  624976:	c1 e8 14             	shr    eax,0x14
  624979:	8b d1                	mov    edx,ecx
  62497b:	c1 ea 0c             	shr    edx,0xc
  62497e:	83 e0 03             	and    eax,0x3
  624981:	83 e2 03             	and    edx,0x3
  624984:	c1 e2 07             	shl    edx,0x7
  624987:	56                   	push   esi
  624988:	c1 e0 09             	shl    eax,0x9
  62498b:	8b f1                	mov    esi,ecx
  62498d:	0b c2                	or     eax,edx
  62498f:	81 e1 00 cf 00 00    	and    ecx,0xcf00
  624995:	33 d2                	xor    edx,edx
  624997:	83 e6 7f             	and    esi,0x7f
  62499a:	81 f9 00 0b 00 00    	cmp    ecx,0xb00
  6249a0:	0f 87 42 01 00 00    	ja     0x624ae8
  6249a6:	0f 84 35 01 00 00    	je     0x624ae1
  6249ac:	81 f9 00 06 00 00    	cmp    ecx,0x600
  6249b2:	0f 87 e3 00 00 00    	ja     0x624a9b
  6249b8:	0f 84 d6 00 00 00    	je     0x624a94
  6249be:	81 f9 00 03 00 00    	cmp    ecx,0x300
  6249c4:	77 6a                	ja     0x624a30
  6249c6:	74 40                	je     0x624a08
  6249c8:	81 f9 00 01 00 00    	cmp    ecx,0x100
  6249ce:	74 34                	je     0x624a04
  6249d0:	81 f9 00 02 00 00    	cmp    ecx,0x200
  6249d6:	0f 85 d6 01 00 00    	jne    0x624bb2
  6249dc:	83 fe 04             	cmp    esi,0x4
  6249df:	75 07                	jne    0x6249e8
  6249e1:	0d 00 10 00 00       	or     eax,0x1000
  6249e6:	5e                   	pop    esi
  6249e7:	c3                   	ret
  6249e8:	83 fe 20             	cmp    esi,0x20
  6249eb:	75 07                	jne    0x6249f4
  6249ed:	0d 00 20 00 00       	or     eax,0x2000
  6249f2:	5e                   	pop    esi
  6249f3:	c3                   	ret
  6249f4:	83 fe 40             	cmp    esi,0x40
  6249f7:	0f 85 b5 01 00 00    	jne    0x624bb2
  6249fd:	0d 00 40 00 00       	or     eax,0x4000
  624a02:	5e                   	pop    esi
  624a03:	c3                   	ret
  624a04:	0b c6                	or     eax,esi
  624a06:	5e                   	pop    esi
  624a07:	c3                   	ret
  624a08:	83 fe 04             	cmp    esi,0x4
  624a0b:	75 07                	jne    0x624a14
  624a0d:	0d 00 80 00 00       	or     eax,0x8000
  624a12:	5e                   	pop    esi
  624a13:	c3                   	ret
  624a14:	83 fe 20             	cmp    esi,0x20
  624a17:	75 07                	jne    0x624a20
  624a19:	0d 00 00 01 00       	or     eax,0x10000
  624a1e:	5e                   	pop    esi
  624a1f:	c3                   	ret
  624a20:	83 fe 40             	cmp    esi,0x40
  624a23:	0f 85 89 01 00 00    	jne    0x624bb2
  624a29:	0d 00 00 02 00       	or     eax,0x20000
  624a2e:	5e                   	pop    esi
  624a2f:	c3                   	ret
  624a30:	81 f9 00 04 00 00    	cmp    ecx,0x400
  624a36:	74 34                	je     0x624a6c
  624a38:	81 f9 00 05 00 00    	cmp    ecx,0x500
  624a3e:	0f 85 6e 01 00 00    	jne    0x624bb2
  624a44:	83 fe 04             	cmp    esi,0x4
  624a47:	75 07                	jne    0x624a50
  624a49:	0d 00 00 20 00       	or     eax,0x200000
  624a4e:	5e                   	pop    esi
  624a4f:	c3                   	ret
  624a50:	83 fe 20             	cmp    esi,0x20
  624a53:	75 07                	jne    0x624a5c
  624a55:	0d 00 00 40 00       	or     eax,0x400000
  624a5a:	5e                   	pop    esi
  624a5b:	c3                   	ret
  624a5c:	83 fe 40             	cmp    esi,0x40
  624a5f:	0f 85 4d 01 00 00    	jne    0x624bb2
  624a65:	0d 00 00 80 00       	or     eax,0x800000
  624a6a:	5e                   	pop    esi
  624a6b:	c3                   	ret
  624a6c:	83 fe 04             	cmp    esi,0x4
  624a6f:	75 07                	jne    0x624a78
  624a71:	0d 00 00 04 00       	or     eax,0x40000
  624a76:	5e                   	pop    esi
  624a77:	c3                   	ret
  624a78:	83 fe 20             	cmp    esi,0x20
  624a7b:	75 07                	jne    0x624a84
  624a7d:	0d 00 00 08 00       	or     eax,0x80000
  624a82:	5e                   	pop    esi
  624a83:	c3                   	ret
  624a84:	83 fe 40             	cmp    esi,0x40
  624a87:	0f 85 25 01 00 00    	jne    0x624bb2
  624a8d:	0d 00 00 10 00       	or     eax,0x100000
  624a92:	5e                   	pop    esi
  624a93:	c3                   	ret
  624a94:	0d 00 00 00 01       	or     eax,0x1000000
  624a99:	5e                   	pop    esi
  624a9a:	c3                   	ret
  624a9b:	81 f9 00 09 00 00    	cmp    ecx,0x900
  624aa1:	77 2b                	ja     0x624ace
  624aa3:	74 22                	je     0x624ac7
  624aa5:	81 f9 00 07 00 00    	cmp    ecx,0x700
  624aab:	74 13                	je     0x624ac0
  624aad:	81 f9 00 08 00 00    	cmp    ecx,0x800
  624ab3:	0f 85 f9 00 00 00    	jne    0x624bb2
  624ab9:	0d 00 00 00 04       	or     eax,0x4000000
  624abe:	5e                   	pop    esi
  624abf:	c3                   	ret
  624ac0:	0d 00 00 00 02       	or     eax,0x2000000
  624ac5:	5e                   	pop    esi
  624ac6:	c3                   	ret
  624ac7:	0d 00 00 00 08       	or     eax,0x8000000
  624acc:	5e                   	pop    esi
  624acd:	c3                   	ret
  624ace:	81 f9 00 0a 00 00    	cmp    ecx,0xa00
  624ad4:	0f 85 d8 00 00 00    	jne    0x624bb2
  624ada:	0d 00 00 00 10       	or     eax,0x10000000
  624adf:	5e                   	pop    esi
  624ae0:	c3                   	ret
  624ae1:	0d 00 00 00 20       	or     eax,0x20000000
  624ae6:	5e                   	pop    esi
  624ae7:	c3                   	ret
  624ae8:	81 f9 00 42 00 00    	cmp    ecx,0x4200
  624aee:	77 79                	ja     0x624b69
  624af0:	74 72                	je     0x624b64
  624af2:	81 f9 00 0e 00 00    	cmp    ecx,0xe00
  624af8:	77 29                	ja     0x624b23
  624afa:	74 22                	je     0x624b1e
  624afc:	81 f9 00 0c 00 00    	cmp    ecx,0xc00
  624b02:	74 13                	je     0x624b17
  624b04:	81 f9 00 0d 00 00    	cmp    ecx,0xd00
  624b0a:	0f 85 a2 00 00 00    	jne    0x624bb2
  624b10:	0d 00 00 00 80       	or     eax,0x80000000
  624b15:	5e                   	pop    esi
  624b16:	c3                   	ret
  624b17:	0d 00 00 00 40       	or     eax,0x40000000
  624b1c:	5e                   	pop    esi
  624b1d:	c3                   	ret
  624b1e:	83 ca 01             	or     edx,0x1
  624b21:	5e                   	pop    esi
  624b22:	c3                   	ret
  624b23:	81 f9 00 0f 00 00    	cmp    ecx,0xf00
  624b29:	74 34                	je     0x624b5f
  624b2b:	81 f9 00 41 00 00    	cmp    ecx,0x4100
  624b31:	75 7f                	jne    0x624bb2
  624b33:	83 fe 04             	cmp    esi,0x4
  624b36:	75 08                	jne    0x624b40
  624b38:	81 ca 00 02 00 00    	or     edx,0x200
  624b3e:	5e                   	pop    esi
  624b3f:	c3                   	ret
  624b40:	83 fe 08             	cmp    esi,0x8
  624b43:	75 08                	jne    0x624b4d
  624b45:	81 ca 00 04 00 00    	or     edx,0x400
  624b4b:	5e                   	pop    esi
  624b4c:	c3                   	ret
  624b4d:	83 fe 40             	cmp    esi,0x40
  624b50:	75 08                	jne    0x624b5a
  624b52:	81 ca 00 08 00 00    	or     edx,0x800
  624b58:	5e                   	pop    esi
  624b59:	c3                   	ret
  624b5a:	83 ca 04             	or     edx,0x4
  624b5d:	5e                   	pop    esi
  624b5e:	c3                   	ret
  624b5f:	83 ca 02             	or     edx,0x2
  624b62:	5e                   	pop    esi
  624b63:	c3                   	ret
  624b64:	83 ca 08             	or     edx,0x8
  624b67:	5e                   	pop    esi
  624b68:	c3                   	ret
  624b69:	81 f9 00 45 00 00    	cmp    ecx,0x4500
  624b6f:	77 21                	ja     0x624b92
  624b71:	74 1a                	je     0x624b8d
  624b73:	81 f9 00 43 00 00    	cmp    ecx,0x4300
  624b79:	74 0d                	je     0x624b88
  624b7b:	81 f9 00 44 00 00    	cmp    ecx,0x4400
  624b81:	75 2f                	jne    0x624bb2
  624b83:	83 ca 20             	or     edx,0x20
  624b86:	5e                   	pop    esi
  624b87:	c3                   	ret
  624b88:	83 ca 10             	or     edx,0x10
  624b8b:	5e                   	pop    esi
  624b8c:	c3                   	ret
  624b8d:	83 ca 40             	or     edx,0x40
  624b90:	5e                   	pop    esi
  624b91:	c3                   	ret
  624b92:	81 f9 00 46 00 00    	cmp    ecx,0x4600
  624b98:	75 18                	jne    0x624bb2
  624b9a:	83 fe 04             	cmp    esi,0x4
  624b9d:	75 08                	jne    0x624ba7
  624b9f:	81 ca 80 00 00 00    	or     edx,0x80
  624ba5:	5e                   	pop    esi
  624ba6:	c3                   	ret
  624ba7:	83 fe 20             	cmp    esi,0x20
  624baa:	75 06                	jne    0x624bb2
  624bac:	81 ca 00 01 00 00    	or     edx,0x100
  624bb2:	5e                   	pop    esi
  624bb3:	c3                   	ret
