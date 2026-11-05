# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00aa6dd0..00aa6e25; HeightMap_DeletingDestructor
  aa6dd0:	56                   	push   esi
  aa6dd1:	8b f1                	mov    esi,ecx
  aa6dd3:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
  aa6dd6:	50                   	push   eax
  aa6dd7:	c7 06 b8 50 06 01    	mov    DWORD PTR [esi],0x10650b8
  aa6ddd:	e8 fe d6 a3 ff       	call   0x4e44e0
  aa6de2:	83 c4 04             	add    esp,0x4
  aa6de5:	8b ce                	mov    ecx,esi
  aa6de7:	c7 46 38 00 00 00 00 	mov    DWORD PTR [esi+0x38],0x0
  aa6dee:	e8 6d ff ff ff       	call   0xaa6d60
  aa6df3:	c7 46 40 ff ff ff ff 	mov    DWORD PTR [esi+0x40],0xffffffff
  aa6dfa:	8b 46 44             	mov    eax,DWORD PTR [esi+0x44]
  aa6dfd:	85 c0                	test   eax,eax
  aa6dff:	74 09                	je     0xaa6e0a
  aa6e01:	50                   	push   eax
  aa6e02:	e8 d9 d6 a3 ff       	call   0x4e44e0
  aa6e07:	83 c4 04             	add    esp,0x4
  aa6e0a:	f6 44 24 08 01       	test   BYTE PTR [esp+0x8],0x1
  aa6e0f:	c7 06 a4 bb 02 01    	mov    DWORD PTR [esi],0x102bba4
  aa6e15:	74 09                	je     0xaa6e20
  aa6e17:	56                   	push   esi
  aa6e18:	e8 c3 d6 a3 ff       	call   0x4e44e0
  aa6e1d:	83 c4 04             	add    esp,0x4
  aa6e20:	8b c6                	mov    eax,esi
  aa6e22:	5e                   	pop    esi
  aa6e23:	c2 04 00             	ret    0x4
