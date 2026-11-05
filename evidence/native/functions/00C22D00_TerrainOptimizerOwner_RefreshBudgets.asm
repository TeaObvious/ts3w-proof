# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c22d00..00c22d46; TerrainOptimizerOwner_RefreshBudgets
  c22d00:	57                   	push   edi
  c22d01:	8b f9                	mov    edi,ecx
  c22d03:	80 7f 48 00          	cmp    BYTE PTR [edi+0x48],0x0
  c22d07:	75 0b                	jne    0xc22d14
  c22d09:	e8 22 ff ff ff       	call   0xc22c30
  c22d0e:	c6 47 48 01          	mov    BYTE PTR [edi+0x48],0x1
  c22d12:	5f                   	pop    edi
  c22d13:	c3                   	ret
  c22d14:	53                   	push   ebx
  c22d15:	56                   	push   esi
  c22d16:	8d 77 54             	lea    esi,[edi+0x54]
  c22d19:	bb 02 00 00 00       	mov    ebx,0x2
  c22d1e:	8b ff                	mov    edi,edi
  c22d20:	8b 4f 68             	mov    ecx,DWORD PTR [edi+0x68]
  c22d23:	85 c9                	test   ecx,ecx
  c22d25:	74 14                	je     0xc22d3b
  c22d27:	8b 46 f8             	mov    eax,DWORD PTR [esi-0x8]
  c22d2a:	8b 56 fc             	mov    edx,DWORD PTR [esi-0x4]
  c22d2d:	50                   	push   eax
  c22d2e:	68 00 01 00 00       	push   0x100
  c22d33:	52                   	push   edx
  c22d34:	e8 47 5d 06 00       	call   0xc88a80
  c22d39:	d9 1e                	fstp   DWORD PTR [esi]
  c22d3b:	83 c6 0c             	add    esi,0xc
  c22d3e:	83 eb 01             	sub    ebx,0x1
  c22d41:	75 dd                	jne    0xc22d20
  c22d43:	5e                   	pop    esi
  c22d44:	5b                   	pop    ebx
  c22d45:	5f                   	pop    edi
  c22d46:	c3                   	ret
