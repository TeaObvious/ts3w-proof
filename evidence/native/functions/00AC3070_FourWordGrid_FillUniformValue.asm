# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ac3070 (FourWordGrid_FillUniformValue)
Paired actual Ghidra pseudocode: 00AC3070_FourWordGrid_FillUniformValue.c
Envelope [0x00ac3070,0x00ac3133); 195 bytes; exact owned ranges: [0x00ac3070,0x00ac3133)
Owned: 195 original bytes / 74 instructions.
Original owned instructions retain the independently reviewed objdump AT&T syntax.
Nonowned gap/alignment bytes are explicit .byte records, not additional owned instructions.
Stored prototypes are inferred projections; AL-only results and stack-flow caveats remain as annotated.

OWNED DISASSEMBLY AND EXPLICIT UNOWNED BYTES
00ac3070 <original>:
  ac3070:	8b 51 4c                                        	mov    0x4c(%ecx),%edx
  ac3073:	8b 41 48                                        	mov    0x48(%ecx),%eax
  ac3076:	83 ec 10                                        	sub    $0x10,%esp
  ac3079:	3b c2                                           	cmp    %edx,%eax
  ac307b:	74 0f                                           	je     0xac308c
  ac307d:	8d 49 00                                        	lea    0x0(%ecx),%ecx
  ac3080:	66 c7 00 00 80                                  	movw   $0x8000,(%eax)
  ac3085:	83 c0 02                                        	add    $0x2,%eax
  ac3088:	3b c2                                           	cmp    %edx,%eax
  ac308a:	75 f4                                           	jne    0xac3080
  ac308c:	8b 41 38                                        	mov    0x38(%ecx),%eax
  ac308f:	56                                              	push   %esi
  ac3090:	8b 71 3c                                        	mov    0x3c(%ecx),%esi
  ac3093:	3b c6                                           	cmp    %esi,%eax
  ac3095:	57                                              	push   %edi
  ac3096:	74 25                                           	je     0xac30bd
  ac3098:	8b 54 24 1c                                     	mov    0x1c(%esp),%edx
  ac309c:	8d 64 24 00                                     	lea    0x0(%esp),%esp
  ac30a0:	8b 3a                                           	mov    (%edx),%edi
  ac30a2:	89 38                                           	mov    %edi,(%eax)
  ac30a4:	8b 7a 04                                        	mov    0x4(%edx),%edi
  ac30a7:	89 78 04                                        	mov    %edi,0x4(%eax)
  ac30aa:	8b 7a 08                                        	mov    0x8(%edx),%edi
  ac30ad:	89 78 08                                        	mov    %edi,0x8(%eax)
  ac30b0:	8b 7a 0c                                        	mov    0xc(%edx),%edi
  ac30b3:	89 78 0c                                        	mov    %edi,0xc(%eax)
  ac30b6:	83 c0 10                                        	add    $0x10,%eax
  ac30b9:	3b c6                                           	cmp    %esi,%eax
  ac30bb:	75 e3                                           	jne    0xac30a0
  ac30bd:	8b 41 28                                        	mov    0x28(%ecx),%eax
  ac30c0:	8d 71 28                                        	lea    0x28(%ecx),%esi
  ac30c3:	8b c8                                           	mov    %eax,%ecx
  ac30c5:	2b c8                                           	sub    %eax,%ecx
  ac30c7:	c1 f9 04                                        	sar    $0x4,%ecx
  ac30ca:	89 46 04                                        	mov    %eax,0x4(%esi)
  ac30cd:	74 09                                           	je     0xac30d8
  ac30cf:	6a 00                                           	push   $0x0
  ac30d1:	8b ce                                           	mov    %esi,%ecx
  ac30d3:	e8 d8 d7 ff ff                                  	call   0xac08b0
  ac30d8:	8b 46 04                                        	mov    0x4(%esi),%eax
  ac30db:	2b 06                                           	sub    (%esi),%eax
  ac30dd:	8d 56 0c                                        	lea    0xc(%esi),%edx
  ac30e0:	52                                              	push   %edx
  ac30e1:	c1 f8 04                                        	sar    $0x4,%eax
  ac30e4:	50                                              	push   %eax
  ac30e5:	8d 4c 24 10                                     	lea    0x10(%esp),%ecx
  ac30e9:	e8 c2 f7 b8 ff                                  	call   0x6528b0
  ac30ee:	8b 54 24 1c                                     	mov    0x1c(%esp),%edx
  ac30f2:	8b 46 04                                        	mov    0x4(%esi),%eax
  ac30f5:	8b 7c 24 08                                     	mov    0x8(%esp),%edi
  ac30f9:	8b 0e                                           	mov    (%esi),%ecx
  ac30fb:	52                                              	push   %edx
  ac30fc:	57                                              	push   %edi
  ac30fd:	50                                              	push   %eax
  ac30fe:	51                                              	push   %ecx
  ac30ff:	8d 44 24 2c                                     	lea    0x2c(%esp),%eax
  ac3103:	50                                              	push   %eax
  ac3104:	e8 77 53 c0 ff                                  	call   0x6c8480
  ac3109:	8b 06                                           	mov    (%esi),%eax
  ac310b:	8b 4c 24 30                                     	mov    0x30(%esp),%ecx
  ac310f:	8b 54 24 24                                     	mov    0x24(%esp),%edx
  ac3113:	83 c4 14                                        	add    $0x14,%esp
  ac3116:	85 c0                                           	test   %eax,%eax
  ac3118:	89 3e                                           	mov    %edi,(%esi)
  ac311a:	89 4e 04                                        	mov    %ecx,0x4(%esi)
  ac311d:	5f                                              	pop    %edi
  ac311e:	89 56 08                                        	mov    %edx,0x8(%esi)
  ac3121:	5e                                              	pop    %esi
  ac3122:	74 09                                           	je     0xac312d
  ac3124:	50                                              	push   %eax
  ac3125:	e8 b6 13 a2 ff                                  	call   0x4e44e0
  ac312a:	83 c4 04                                        	add    $0x4,%esp
  ac312d:	83 c4 10                                        	add    $0x10,%esp
  ac3130:	c2 04 00                                        	ret    $0x4
