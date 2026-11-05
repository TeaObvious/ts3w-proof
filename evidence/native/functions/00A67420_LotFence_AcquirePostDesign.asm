# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00a67420 (LotFence_AcquirePostDesign)
Paired actual Ghidra pseudocode: 00A67420_LotFence_AcquirePostDesign.c
Envelope [0x00a67420,0x00a6749b); 123 bytes; exact owned ranges: [0x00a67420,0x00a6749b)
Owned: 123 original bytes / 47 instructions.
Original owned instructions retain the independently reviewed objdump AT&T syntax.
Nonowned gap/alignment bytes are explicit .byte records, not additional owned instructions.
Stored prototypes are inferred projections; AL-only results and stack-flow caveats remain as annotated.

OWNED DISASSEMBLY AND EXPLICIT UNOWNED BYTES
00a67420 <original>:
  a67420:	83 ec 08                                        	sub    $0x8,%esp
  a67423:	56                                              	push   %esi
  a67424:	8b 74 24 10                                     	mov    0x10(%esp),%esi
  a67428:	57                                              	push   %edi
  a67429:	56                                              	push   %esi
  a6742a:	8d 44 24 0c                                     	lea    0xc(%esp),%eax
  a6742e:	50                                              	push   %eax
  a6742f:	8b f9                                           	mov    %ecx,%edi
  a67431:	e8 9a f7 ff ff                                  	call   0xa66bd0
  a67436:	8b 4f 08                                        	mov    0x8(%edi),%ecx
  a67439:	8b 57 04                                        	mov    0x4(%edi),%edx
  a6743c:	8b 44 24 08                                     	mov    0x8(%esp),%eax
  a67440:	3b 04 8a                                        	cmp    (%edx,%ecx,4),%eax
  a67443:	75 47                                           	jne    0xa6748c
  a67445:	53                                              	push   %ebx
  a67446:	55                                              	push   %ebp
  a67447:	bd 01 00 00 00                                  	mov    $0x1,%ebp
  a6744c:	8b cf                                           	mov    %edi,%ecx
  a6744e:	89 6c 24 14                                     	mov    %ebp,0x14(%esp)
  a67452:	e8 89 f6 ff ff                                  	call   0xa66ae0
  a67457:	8b d8                                           	mov    %eax,%ebx
  a67459:	56                                              	push   %esi
  a6745a:	8b cf                                           	mov    %edi,%ecx
  a6745c:	89 5c 24 14                                     	mov    %ebx,0x14(%esp)
  a67460:	e8 9b fe ff ff                                  	call   0xa67300
  a67465:	89 18                                           	mov    %ebx,(%eax)
  a67467:	89 68 04                                        	mov    %ebp,0x4(%eax)
  a6746a:	8d 44 24 10                                     	lea    0x10(%esp),%eax
  a6746e:	50                                              	push   %eax
  a6746f:	8d 4f 20                                        	lea    0x20(%edi),%ecx
  a67472:	e8 a9 fa ff ff                                  	call   0xa66f20
  a67477:	5d                                              	pop    %ebp
  a67478:	8b f8                                           	mov    %eax,%edi
  a6747a:	b9 0c 00 00 00                                  	mov    $0xc,%ecx
  a6747f:	8b c3                                           	mov    %ebx,%eax
  a67481:	5b                                              	pop    %ebx
  a67482:	f3 a5                                           	rep movsl %ds:(%esi),%es:(%edi)
  a67484:	5f                                              	pop    %edi
  a67485:	5e                                              	pop    %esi
  a67486:	83 c4 08                                        	add    $0x8,%esp
  a67489:	c2 04 00                                        	ret    $0x4
  a6748c:	83 40 34 01                                     	addl   $0x1,0x34(%eax)
  a67490:	8b 40 30                                        	mov    0x30(%eax),%eax
  a67493:	5f                                              	pop    %edi
  a67494:	5e                                              	pop    %esi
  a67495:	83 c4 08                                        	add    $0x8,%esp
  a67498:	c2 04 00                                        	ret    $0x4
