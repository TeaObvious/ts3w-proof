# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c22bf0..00c22c21; TerrainOptimizerOwner_BuildVerticesFromHeightMap
  c22bf0:	56                   	push   esi
  c22bf1:	8b f1                	mov    esi,ecx
  c22bf3:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c22bf6:	57                   	push   edi
  c22bf7:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  c22bfa:	8b cf                	mov    ecx,edi
  c22bfc:	e8 9f f6 91 ff       	call   0x5422a0
  c22c01:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c22c04:	8b 7f 14             	mov    edi,DWORD PTR [edi+0x14]
  c22c07:	d9 41 24             	fld    DWORD PTR [ecx+0x24]
  c22c0a:	51                   	push   ecx
  c22c0b:	d9 1c 24             	fstp   DWORD PTR [esp]
  c22c0e:	8d 57 ff             	lea    edx,[edi-0x1]
  c22c11:	52                   	push   edx
  c22c12:	8d 0c 3f             	lea    ecx,[edi+edi*1]
  c22c15:	51                   	push   ecx
  c22c16:	8b 4e 68             	mov    ecx,DWORD PTR [esi+0x68]
  c22c19:	50                   	push   eax
  c22c1a:	e8 11 57 06 00       	call   0xc88330
  c22c1f:	5f                   	pop    edi
  c22c20:	5e                   	pop    esi
  c22c21:	c3                   	ret
