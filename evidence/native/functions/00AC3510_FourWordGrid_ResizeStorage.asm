# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ac3510 (FourWordGrid_ResizeStorage)
Paired actual Ghidra pseudocode: 00AC3510_FourWordGrid_ResizeStorage.c
Envelope [0x00ac3510,0x00ac358c); 124 bytes; exact owned ranges: [0x00ac3510,0x00ac3569),[0x00ac3570,0x00ac358c)
Owned: 117 original bytes / 47 instructions.
Original owned instructions retain the independently reviewed objdump AT&T syntax.
Nonowned gap/alignment bytes are explicit .byte records, not additional owned instructions.
Stored prototypes are inferred projections; AL-only results and stack-flow caveats remain as annotated.

OWNED DISASSEMBLY AND EXPLICIT UNOWNED BYTES
00ac3510 <original>:
  ac3510:	8b 44 24 04                                     	mov    0x4(%esp),%eax
  ac3514:	8b 54 24 08                                     	mov    0x8(%esp),%edx
  ac3518:	53                                              	push   %ebx
  ac3519:	55                                              	push   %ebp
  ac351a:	8b 6c 24 14                                     	mov    0x14(%esp),%ebp
  ac351e:	56                                              	push   %esi
  ac351f:	8b f1                                           	mov    %ecx,%esi
  ac3521:	89 46 04                                        	mov    %eax,0x4(%esi)
  ac3524:	8d 48 03                                        	lea    0x3(%eax),%ecx
  ac3527:	8d 42 03                                        	lea    0x3(%edx),%eax
  ac352a:	c1 f8 02                                        	sar    $0x2,%eax
  ac352d:	c1 f9 02                                        	sar    $0x2,%ecx
  ac3530:	89 46 24                                        	mov    %eax,0x24(%esi)
  ac3533:	0f af c1                                        	imul   %ecx,%eax
  ac3536:	0f af c5                                        	imul   %ebp,%eax
  ac3539:	57                                              	push   %edi
  ac353a:	89 6e 0c                                        	mov    %ebp,0xc(%esi)
  ac353d:	89 4e 20                                        	mov    %ecx,0x20(%esi)
  ac3540:	8d 5e 48                                        	lea    0x48(%esi),%ebx
  ac3543:	89 56 08                                        	mov    %edx,0x8(%esi)
  ac3546:	8b 7b 04                                        	mov    0x4(%ebx),%edi
  ac3549:	2b 3b                                           	sub    (%ebx),%edi
  ac354b:	8b e8                                           	mov    %eax,%ebp
  ac354d:	55                                              	push   %ebp
  ac354e:	8b cb                                           	mov    %ebx,%ecx
  ac3550:	d1 ff                                           	sar    $1,%edi
  ac3552:	e8 89 c0 bb ff                                  	call   0x67f5e0
  ac3557:	3b ef                                           	cmp    %edi,%ebp
  ac3559:	7e 21                                           	jle    0xac357c
  ac355b:	8b 03                                           	mov    (%ebx),%eax
  ac355d:	8b 4e 4c                                        	mov    0x4c(%esi),%ecx
  ac3560:	8d 04 78                                        	lea    (%eax,%edi,2),%eax
  ac3563:	3b c1                                           	cmp    %ecx,%eax
  ac3565:	74 15                                           	je     0xac357c
  ac3567:	eb 07                                           	jmp    0xac3570
  ac3569:	8d a4 24 00 00 00 00	.byte 0x8d,0xa4,0x24,0x00,0x00,0x00,0x00  # NONOWNED GAP/ALIGNMENT
  ac3570:	66 c7 00 00 80                                  	movw   $0x8000,(%eax)
  ac3575:	83 c0 02                                        	add    $0x2,%eax
  ac3578:	3b c1                                           	cmp    %ecx,%eax
  ac357a:	75 f4                                           	jne    0xac3570
  ac357c:	55                                              	push   %ebp
  ac357d:	8d 4e 38                                        	lea    0x38(%esi),%ecx
  ac3580:	e8 2b d3 ff ff                                  	call   0xac08b0
  ac3585:	5f                                              	pop    %edi
  ac3586:	5e                                              	pop    %esi
  ac3587:	5d                                              	pop    %ebp
  ac3588:	5b                                              	pop    %ebx
  ac3589:	c2 0c 00                                        	ret    $0xc
