# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00abbce0 (FourWordGrid_InitializeStorage)
Paired actual Ghidra pseudocode: 00ABBCE0_FourWordGrid_InitializeStorage.c
Envelope [0x00abbce0,0x00abbd62); 130 bytes; exact owned ranges: [0x00abbce0,0x00abbd62)
Owned: 130 original bytes / 44 instructions.
Original owned instructions retain the independently reviewed objdump AT&T syntax.
Nonowned gap/alignment bytes are explicit .byte records, not additional owned instructions.
Stored prototypes are inferred projections; AL-only results and stack-flow caveats remain as annotated.

OWNED DISASSEMBLY AND EXPLICIT UNOWNED BYTES
00abbce0 <original>:
  abbce0:	8b 54 24 04                                     	mov    0x4(%esp),%edx
  abbce4:	8b c1                                           	mov    %ecx,%eax
  abbce6:	33 c9                                           	xor    %ecx,%ecx
  abbce8:	3b d1                                           	cmp    %ecx,%edx
  abbcea:	56                                              	push   %esi
  abbceb:	89 48 04                                        	mov    %ecx,0x4(%eax)
  abbcee:	89 48 08                                        	mov    %ecx,0x8(%eax)
  abbcf1:	89 48 0c                                        	mov    %ecx,0xc(%eax)
  abbcf4:	c7 00 a4 60 06 01                               	movl   $0x10660a4,(%eax)
  abbcfa:	8b f2                                           	mov    %edx,%esi
  abbcfc:	75 05                                           	jne    0xabbd03
  abbcfe:	be 7c 99 f9 00                                  	mov    $0xf9997c,%esi
  abbd03:	3b d1                                           	cmp    %ecx,%edx
  abbd05:	89 48 10                                        	mov    %ecx,0x10(%eax)
  abbd08:	89 48 14                                        	mov    %ecx,0x14(%eax)
  abbd0b:	89 48 18                                        	mov    %ecx,0x18(%eax)
  abbd0e:	89 70 1c                                        	mov    %esi,0x1c(%eax)
  abbd11:	c7 00 f0 60 06 01                               	movl   $0x10660f0,(%eax)
  abbd17:	89 48 20                                        	mov    %ecx,0x20(%eax)
  abbd1a:	89 48 24                                        	mov    %ecx,0x24(%eax)
  abbd1d:	8b f2                                           	mov    %edx,%esi
  abbd1f:	75 05                                           	jne    0xabbd26
  abbd21:	be 7c 99 f9 00                                  	mov    $0xf9997c,%esi
  abbd26:	3b d1                                           	cmp    %ecx,%edx
  abbd28:	89 48 28                                        	mov    %ecx,0x28(%eax)
  abbd2b:	89 48 2c                                        	mov    %ecx,0x2c(%eax)
  abbd2e:	89 48 30                                        	mov    %ecx,0x30(%eax)
  abbd31:	89 70 34                                        	mov    %esi,0x34(%eax)
  abbd34:	8b f2                                           	mov    %edx,%esi
  abbd36:	75 05                                           	jne    0xabbd3d
  abbd38:	be 7c 99 f9 00                                  	mov    $0xf9997c,%esi
  abbd3d:	3b d1                                           	cmp    %ecx,%edx
  abbd3f:	89 48 38                                        	mov    %ecx,0x38(%eax)
  abbd42:	89 48 3c                                        	mov    %ecx,0x3c(%eax)
  abbd45:	89 48 40                                        	mov    %ecx,0x40(%eax)
  abbd48:	89 70 44                                        	mov    %esi,0x44(%eax)
  abbd4b:	5e                                              	pop    %esi
  abbd4c:	75 05                                           	jne    0xabbd53
  abbd4e:	ba 7c 99 f9 00                                  	mov    $0xf9997c,%edx
  abbd53:	89 48 48                                        	mov    %ecx,0x48(%eax)
  abbd56:	89 48 4c                                        	mov    %ecx,0x4c(%eax)
  abbd59:	89 48 50                                        	mov    %ecx,0x50(%eax)
  abbd5c:	89 50 54                                        	mov    %edx,0x54(%eax)
  abbd5f:	c2 04 00                                        	ret    $0x4
