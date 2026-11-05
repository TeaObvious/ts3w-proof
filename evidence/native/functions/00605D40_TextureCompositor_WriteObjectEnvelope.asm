# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00605d40 (TextureCompositor_WriteObjectEnvelope)
Paired actual Ghidra pseudocode: 00605D40_TextureCompositor_WriteObjectEnvelope.c
Envelope [0x00605d40,0x00605d85); 69 bytes; exact owned ranges: [0x00605d40,0x00605d85)
Owned: 69 original bytes / 26 instructions.
Original owned instructions retain the independently reviewed objdump AT&T syntax.
Nonowned gap/alignment bytes are explicit .byte records, not additional owned instructions.
Stored prototypes are inferred projections; AL-only results and stack-flow caveats remain as annotated.

OWNED DISASSEMBLY AND EXPLICIT UNOWNED BYTES
00605d40 <original>:
  605d40:	8b 54 24 04                                     	mov    0x4(%esp),%edx
  605d44:	83 ec 08                                        	sub    $0x8,%esp
  605d47:	85 d2                                           	test   %edx,%edx
  605d49:	74 34                                           	je     0x605d7f
  605d4b:	8b 4c 24 10                                     	mov    0x10(%esp),%ecx
  605d4f:	85 c9                                           	test   %ecx,%ecx
  605d51:	74 2c                                           	je     0x605d7f
  605d53:	8b 44 24 18                                     	mov    0x18(%esp),%eax
  605d57:	56                                              	push   %esi
  605d58:	8b 74 24 18                                     	mov    0x18(%esp),%esi
  605d5c:	89 44 24 08                                     	mov    %eax,0x8(%esp)
  605d60:	56                                              	push   %esi
  605d61:	f7 d8                                           	neg    %eax
  605d63:	1b c0                                           	sbb    %eax,%eax
  605d65:	8d 74 24 08                                     	lea    0x8(%esp),%esi
  605d69:	23 c6                                           	and    %esi,%eax
  605d6b:	50                                              	push   %eax
  605d6c:	52                                              	push   %edx
  605d6d:	c7 44 24 10 48 77 fe 00                         	movl   $0xfe7748,0x10(%esp)
  605d75:	e8 b6 dd ff ff                                  	call   0x603b30
  605d7a:	5e                                              	pop    %esi
  605d7b:	83 c4 08                                        	add    $0x8,%esp
  605d7e:	c3                                              	ret
  605d7f:	32 c0                                           	xor    %al,%al
  605d81:	83 c4 08                                        	add    $0x8,%esp
  605d84:	c3                                              	ret
