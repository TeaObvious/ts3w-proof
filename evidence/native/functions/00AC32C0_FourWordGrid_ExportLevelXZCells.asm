# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ac32c0 (FourWordGrid_ExportLevelXZCells)
Paired actual Ghidra pseudocode: 00AC32C0_FourWordGrid_ExportLevelXZCells.c
Envelope [0x00ac32c0,0x00ac33d8); 280 bytes; exact owned ranges: [0x00ac32c0,0x00ac332c),[0x00ac3330,0x00ac33d8)
Owned: 276 original bytes / 92 instructions.
Original owned instructions retain the independently reviewed objdump AT&T syntax.
Nonowned gap/alignment bytes are explicit .byte records, not additional owned instructions.
Stored prototypes are inferred projections; AL-only results and stack-flow caveats remain as annotated.

OWNED DISASSEMBLY AND EXPLICIT UNOWNED BYTES
00ac32c0 <original>:
  ac32c0:	83 ec 0c                                        	sub    $0xc,%esp
  ac32c3:	53                                              	push   %ebx
  ac32c4:	56                                              	push   %esi
  ac32c5:	8b f1                                           	mov    %ecx,%esi
  ac32c7:	8b 46 08                                        	mov    0x8(%esi),%eax
  ac32ca:	0f af 46 04                                     	imul   0x4(%esi),%eax
  ac32ce:	0f af 46 0c                                     	imul   0xc(%esi),%eax
  ac32d2:	8b 4c 24 18                                     	mov    0x18(%esp),%ecx
  ac32d6:	8b 51 04                                        	mov    0x4(%ecx),%edx
  ac32d9:	2b 11                                           	sub    (%ecx),%edx
  ac32db:	c1 fa 04                                        	sar    $0x4,%edx
  ac32de:	3b c2                                           	cmp    %edx,%eax
  ac32e0:	74 06                                           	je     0xac32e8
  ac32e2:	50                                              	push   %eax
  ac32e3:	e8 c8 d5 ff ff                                  	call   0xac08b0
  ac32e8:	33 db                                           	xor    %ebx,%ebx
  ac32ea:	39 5e 0c                                        	cmp    %ebx,0xc(%esi)
  ac32ed:	89 5c 24 0c                                     	mov    %ebx,0xc(%esp)
  ac32f1:	0f 8e d9 00 00 00                               	jle    0xac33d0
  ac32f7:	55                                              	push   %ebp
  ac32f8:	57                                              	push   %edi
  ac32f9:	8d a4 24 00 00 00 00                            	lea    0x0(%esp),%esp
  ac3300:	33 ed                                           	xor    %ebp,%ebp
  ac3302:	39 6e 04                                        	cmp    %ebp,0x4(%esi)
  ac3305:	89 6c 24 10                                     	mov    %ebp,0x10(%esp)
  ac3309:	0f 8e ab 00 00 00                               	jle    0xac33ba
  ac330f:	8b 46 08                                        	mov    0x8(%esi),%eax
  ac3312:	33 d2                                           	xor    %edx,%edx
  ac3314:	85 c0                                           	test   %eax,%eax
  ac3316:	0f 8e 8e 00 00 00                               	jle    0xac33aa
  ac331c:	8b cd                                           	mov    %ebp,%ecx
  ac331e:	c1 f9 02                                        	sar    $0x2,%ecx
  ac3321:	8b fb                                           	mov    %ebx,%edi
  ac3323:	89 4c 24 18                                     	mov    %ecx,0x18(%esp)
  ac3327:	c1 e7 04                                        	shl    $0x4,%edi
  ac332a:	eb 08                                           	jmp    0xac3334
  ac332c:	8d 64 24 00	.byte 0x8d,0x64,0x24,0x00  # NONOWNED GAP/ALIGNMENT
  ac3330:	8b 4c 24 18                                     	mov    0x18(%esp),%ecx
  ac3334:	8b 46 20                                        	mov    0x20(%esi),%eax
  ac3337:	0f af 44 24 14                                  	imul   0x14(%esp),%eax
  ac333c:	03 c1                                           	add    %ecx,%eax
  ac333e:	0f af 46 24                                     	imul   0x24(%esi),%eax
  ac3342:	8b ca                                           	mov    %edx,%ecx
  ac3344:	c1 f9 02                                        	sar    $0x2,%ecx
  ac3347:	03 c1                                           	add    %ecx,%eax
  ac3349:	8b 4e 48                                        	mov    0x48(%esi),%ecx
  ac334c:	0f b7 0c 41                                     	movzwl (%ecx,%eax,2),%ecx
  ac3350:	f7 c1 00 80 00 00                               	test   $0x8000,%ecx
  ac3356:	74 08                                           	je     0xac3360
  ac3358:	c1 e0 04                                        	shl    $0x4,%eax
  ac335b:	03 46 38                                        	add    0x38(%esi),%eax
  ac335e:	eb 18                                           	jmp    0xac3378
  ac3360:	0f b7 c1                                        	movzwl %cx,%eax
  ac3363:	83 e5 03                                        	and    $0x3,%ebp
  ac3366:	8d 4c 85 00                                     	lea    0x0(%ebp,%eax,4),%ecx
  ac336a:	8b c2                                           	mov    %edx,%eax
  ac336c:	83 e0 03                                        	and    $0x3,%eax
  ac336f:	8d 04 88                                        	lea    (%eax,%ecx,4),%eax
  ac3372:	c1 e0 04                                        	shl    $0x4,%eax
  ac3375:	03 46 28                                        	add    0x28(%esi),%eax
  ac3378:	8b 28                                           	mov    (%eax),%ebp
  ac337a:	8b 4c 24 20                                     	mov    0x20(%esp),%ecx
  ac337e:	8b 09                                           	mov    (%ecx),%ecx
  ac3380:	03 cf                                           	add    %edi,%ecx
  ac3382:	89 29                                           	mov    %ebp,(%ecx)
  ac3384:	8b 68 04                                        	mov    0x4(%eax),%ebp
  ac3387:	89 69 04                                        	mov    %ebp,0x4(%ecx)
  ac338a:	8b 68 08                                        	mov    0x8(%eax),%ebp
  ac338d:	89 69 08                                        	mov    %ebp,0x8(%ecx)
  ac3390:	8b 40 0c                                        	mov    0xc(%eax),%eax
  ac3393:	8b 6c 24 10                                     	mov    0x10(%esp),%ebp
  ac3397:	89 41 0c                                        	mov    %eax,0xc(%ecx)
  ac339a:	8b 46 08                                        	mov    0x8(%esi),%eax
  ac339d:	83 c2 01                                        	add    $0x1,%edx
  ac33a0:	83 c3 01                                        	add    $0x1,%ebx
  ac33a3:	83 c7 10                                        	add    $0x10,%edi
  ac33a6:	3b d0                                           	cmp    %eax,%edx
  ac33a8:	7c 86                                           	jl     0xac3330
  ac33aa:	83 c5 01                                        	add    $0x1,%ebp
  ac33ad:	3b 6e 04                                        	cmp    0x4(%esi),%ebp
  ac33b0:	89 6c 24 10                                     	mov    %ebp,0x10(%esp)
  ac33b4:	0f 8c 58 ff ff ff                               	jl     0xac3312
  ac33ba:	8b 44 24 14                                     	mov    0x14(%esp),%eax
  ac33be:	83 c0 01                                        	add    $0x1,%eax
  ac33c1:	3b 46 0c                                        	cmp    0xc(%esi),%eax
  ac33c4:	89 44 24 14                                     	mov    %eax,0x14(%esp)
  ac33c8:	0f 8c 32 ff ff ff                               	jl     0xac3300
  ac33ce:	5f                                              	pop    %edi
  ac33cf:	5d                                              	pop    %ebp
  ac33d0:	5e                                              	pop    %esi
  ac33d1:	5b                                              	pop    %ebx
  ac33d2:	83 c4 0c                                        	add    $0xc,%esp
  ac33d5:	c2 04 00                                        	ret    $0x4
