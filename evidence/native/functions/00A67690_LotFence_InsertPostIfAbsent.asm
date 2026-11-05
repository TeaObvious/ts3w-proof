# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00a67690 (LotFence_InsertPostIfAbsent)
Paired actual Ghidra pseudocode: 00A67690_LotFence_InsertPostIfAbsent.c
Envelope [0x00a67690,0x00a6771d); 141 bytes; exact owned ranges: [0x00a67690,0x00a6771d)
Owned: 141 original bytes / 53 instructions.
Original owned instructions retain the independently reviewed objdump AT&T syntax.
Nonowned gap/alignment bytes are explicit .byte records, not additional owned instructions.
Stored prototypes are inferred projections; AL-only results and stack-flow caveats remain as annotated.

OWNED DISASSEMBLY AND EXPLICIT UNOWNED BYTES
00a67690 <original>:
  a67690:	83 ec 24                                        	sub    $0x24,%esp
  a67693:	8b 44 24 28                                     	mov    0x28(%esp),%eax
  a67697:	56                                              	push   %esi
  a67698:	57                                              	push   %edi
  a67699:	8b f1                                           	mov    %ecx,%esi
  a6769b:	50                                              	push   %eax
  a6769c:	8d 4c 24 10                                     	lea    0x10(%esp),%ecx
  a676a0:	8d 7e 04                                        	lea    0x4(%esi),%edi
  a676a3:	51                                              	push   %ecx
  a676a4:	8b cf                                           	mov    %edi,%ecx
  a676a6:	89 7c 24 10                                     	mov    %edi,0x10(%esp)
  a676aa:	e8 71 f6 ff ff                                  	call   0xa66d20
  a676af:	8b 44 24 0c                                     	mov    0xc(%esp),%eax
  a676b3:	3b 44 24 10                                     	cmp    0x10(%esp),%eax
  a676b7:	74 04                                           	je     0xa676bd
  a676b9:	8b f8                                           	mov    %eax,%edi
  a676bb:	eb 03                                           	jmp    0xa676c0
  a676bd:	8b 7f 04                                        	mov    0x4(%edi),%edi
  a676c0:	3b 7e 08                                        	cmp    0x8(%esi),%edi
  a676c3:	75 4e                                           	jne    0xa67713
  a676c5:	8b 44 24 34                                     	mov    0x34(%esp),%eax
  a676c9:	8b 30                                           	mov    (%eax),%esi
  a676cb:	8b 78 04                                        	mov    0x4(%eax),%edi
  a676ce:	66 8b 54 24 38                                  	mov    0x38(%esp),%dx
  a676d3:	8b 4c 24 08                                     	mov    0x8(%esp),%ecx
  a676d7:	53                                              	push   %ebx
  a676d8:	8b 58 08                                        	mov    0x8(%eax),%ebx
  a676db:	55                                              	push   %ebp
  a676dc:	8b 68 0c                                        	mov    0xc(%eax),%ebp
  a676df:	8b 44 24 38                                     	mov    0x38(%esp),%eax
  a676e3:	50                                              	push   %eax
  a676e4:	66 89 54 24 30                                  	mov    %dx,0x30(%esp)
  a676e9:	e8 22 fe ff ff                                  	call   0xa67510
  a676ee:	8b 4c 24 2c                                     	mov    0x2c(%esp),%ecx
  a676f2:	8b 54 24 30                                     	mov    0x30(%esp),%edx
  a676f6:	89 30                                           	mov    %esi,(%eax)
  a676f8:	89 78 04                                        	mov    %edi,0x4(%eax)
  a676fb:	89 58 08                                        	mov    %ebx,0x8(%eax)
  a676fe:	89 68 0c                                        	mov    %ebp,0xc(%eax)
  a67701:	5d                                              	pop    %ebp
  a67702:	5b                                              	pop    %ebx
  a67703:	89 48 10                                        	mov    %ecx,0x10(%eax)
  a67706:	5f                                              	pop    %edi
  a67707:	89 50 14                                        	mov    %edx,0x14(%eax)
  a6770a:	b0 01                                           	mov    $0x1,%al
  a6770c:	5e                                              	pop    %esi
  a6770d:	83 c4 24                                        	add    $0x24,%esp
  a67710:	c2 0c 00                                        	ret    $0xc
  a67713:	5f                                              	pop    %edi
  a67714:	32 c0                                           	xor    %al,%al
  a67716:	5e                                              	pop    %esi
  a67717:	83 c4 24                                        	add    $0x24,%esp
  a6771a:	c2 0c 00                                        	ret    $0xc
