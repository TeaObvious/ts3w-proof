# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ac3140 (FourWordGrid_ImportLevelXZCells)
Paired actual Ghidra pseudocode: 00AC3140_FourWordGrid_ImportLevelXZCells.c
Envelope [0x00ac3140,0x00ac32b4); 372 bytes; exact owned ranges: [0x00ac3140,0x00ac32b4)
Owned: 372 original bytes / 130 instructions.
Original owned instructions retain the independently reviewed objdump AT&T syntax.
Nonowned gap/alignment bytes are explicit .byte records, not additional owned instructions.
Stored prototypes are inferred projections; AL-only results and stack-flow caveats remain as annotated.

OWNED DISASSEMBLY AND EXPLICIT UNOWNED BYTES
00ac3140 <original>:
  ac3140:	83 ec 20                                        	sub    $0x20,%esp
  ac3143:	53                                              	push   %ebx
  ac3144:	55                                              	push   %ebp
  ac3145:	56                                              	push   %esi
  ac3146:	8b f1                                           	mov    %ecx,%esi
  ac3148:	8b 46 4c                                        	mov    0x4c(%esi),%eax
  ac314b:	2b 46 48                                        	sub    0x48(%esi),%eax
  ac314e:	57                                              	push   %edi
  ac314f:	8b 7e 24                                        	mov    0x24(%esi),%edi
  ac3152:	0f af 7e 20                                     	imul   0x20(%esi),%edi
  ac3156:	0f af 7e 0c                                     	imul   0xc(%esi),%edi
  ac315a:	8d 4e 48                                        	lea    0x48(%esi),%ecx
  ac315d:	33 ed                                           	xor    %ebp,%ebp
  ac315f:	d1 f8                                           	sar    $1,%eax
  ac3161:	3b c7                                           	cmp    %edi,%eax
  ac3163:	89 6c 24 10                                     	mov    %ebp,0x10(%esp)
  ac3167:	74 0f                                           	je     0xac3178
  ac3169:	57                                              	push   %edi
  ac316a:	e8 71 c4 bb ff                                  	call   0x67f5e0
  ac316f:	57                                              	push   %edi
  ac3170:	8d 4e 38                                        	lea    0x38(%esi),%ecx
  ac3173:	e8 38 d7 ff ff                                  	call   0xac08b0
  ac3178:	8b 4e 28                                        	mov    0x28(%esi),%ecx
  ac317b:	8d 7e 28                                        	lea    0x28(%esi),%edi
  ac317e:	8b d1                                           	mov    %ecx,%edx
  ac3180:	2b d1                                           	sub    %ecx,%edx
  ac3182:	c1 fa 04                                        	sar    $0x4,%edx
  ac3185:	89 4f 04                                        	mov    %ecx,0x4(%edi)
  ac3188:	74 08                                           	je     0xac3192
  ac318a:	55                                              	push   %ebp
  ac318b:	8b cf                                           	mov    %edi,%ecx
  ac318d:	e8 1e d7 ff ff                                  	call   0xac08b0
  ac3192:	8b 4f 04                                        	mov    0x4(%edi),%ecx
  ac3195:	2b 0f                                           	sub    (%edi),%ecx
  ac3197:	8d 47 0c                                        	lea    0xc(%edi),%eax
  ac319a:	c1 f9 04                                        	sar    $0x4,%ecx
  ac319d:	50                                              	push   %eax
  ac319e:	51                                              	push   %ecx
  ac319f:	8d 4c 24 28                                     	lea    0x28(%esp),%ecx
  ac31a3:	e8 08 f7 b8 ff                                  	call   0x6528b0
  ac31a8:	8b 54 24 34                                     	mov    0x34(%esp),%edx
  ac31ac:	8b 47 04                                        	mov    0x4(%edi),%eax
  ac31af:	8b 5c 24 20                                     	mov    0x20(%esp),%ebx
  ac31b3:	8b 0f                                           	mov    (%edi),%ecx
  ac31b5:	52                                              	push   %edx
  ac31b6:	53                                              	push   %ebx
  ac31b7:	50                                              	push   %eax
  ac31b8:	51                                              	push   %ecx
  ac31b9:	8d 44 24 2c                                     	lea    0x2c(%esp),%eax
  ac31bd:	50                                              	push   %eax
  ac31be:	e8 bd 52 c0 ff                                  	call   0x6c8480
  ac31c3:	8b 07                                           	mov    (%edi),%eax
  ac31c5:	8b 4c 24 30                                     	mov    0x30(%esp),%ecx
  ac31c9:	8b 54 24 3c                                     	mov    0x3c(%esp),%edx
  ac31cd:	89 1f                                           	mov    %ebx,(%edi)
  ac31cf:	83 c4 14                                        	add    $0x14,%esp
  ac31d2:	3b c5                                           	cmp    %ebp,%eax
  ac31d4:	89 4f 04                                        	mov    %ecx,0x4(%edi)
  ac31d7:	89 57 08                                        	mov    %edx,0x8(%edi)
  ac31da:	74 09                                           	je     0xac31e5
  ac31dc:	50                                              	push   %eax
  ac31dd:	e8 fe 12 a2 ff                                  	call   0x4e44e0
  ac31e2:	83 c4 04                                        	add    $0x4,%esp
  ac31e5:	39 6e 0c                                        	cmp    %ebp,0xc(%esi)
  ac31e8:	89 6c 24 1c                                     	mov    %ebp,0x1c(%esp)
  ac31ec:	89 6c 24 14                                     	mov    %ebp,0x14(%esp)
  ac31f0:	0f 8e b4 00 00 00                               	jle    0xac32aa
  ac31f6:	33 c0                                           	xor    %eax,%eax
  ac31f8:	39 46 04                                        	cmp    %eax,0x4(%esi)
  ac31fb:	89 44 24 18                                     	mov    %eax,0x18(%esp)
  ac31ff:	0f 8e 91 00 00 00                               	jle    0xac3296
  ac3205:	33 ff                                           	xor    %edi,%edi
  ac3207:	39 7e 08                                        	cmp    %edi,0x8(%esi)
  ac320a:	7e 7a                                           	jle    0xac3286
  ac320c:	8b 5c 24 10                                     	mov    0x10(%esp),%ebx
  ac3210:	8b 6c 24 14                                     	mov    0x14(%esp),%ebp
  ac3214:	c1 e3 04                                        	shl    $0x4,%ebx
  ac3217:	c1 e5 04                                        	shl    $0x4,%ebp
  ac321a:	8d 9b 00 00 00 00                               	lea    0x0(%ebx),%ebx
  ac3220:	8b 4c 24 34                                     	mov    0x34(%esp),%ecx
  ac3224:	8b 09                                           	mov    (%ecx),%ecx
  ac3226:	8b d7                                           	mov    %edi,%edx
  ac3228:	0b d0                                           	or     %eax,%edx
  ac322a:	03 cd                                           	add    %ebp,%ecx
  ac322c:	f6 c2 03                                        	test   $0x3,%dl
  ac322f:	75 32                                           	jne    0xac3263
  ac3231:	8b 46 48                                        	mov    0x48(%esi),%eax
  ac3234:	8b 54 24 10                                     	mov    0x10(%esp),%edx
  ac3238:	83 44 24 10 01                                  	addl   $0x1,0x10(%esp)
  ac323d:	66 c7 04 50 00 80                               	movw   $0x8000,(%eax,%edx,2)
  ac3243:	8b 46 38                                        	mov    0x38(%esi),%eax
  ac3246:	8b 11                                           	mov    (%ecx),%edx
  ac3248:	03 c3                                           	add    %ebx,%eax
  ac324a:	89 10                                           	mov    %edx,(%eax)
  ac324c:	8b 51 04                                        	mov    0x4(%ecx),%edx
  ac324f:	89 50 04                                        	mov    %edx,0x4(%eax)
  ac3252:	8b 51 08                                        	mov    0x8(%ecx),%edx
  ac3255:	89 50 08                                        	mov    %edx,0x8(%eax)
  ac3258:	8b 49 0c                                        	mov    0xc(%ecx),%ecx
  ac325b:	89 48 0c                                        	mov    %ecx,0xc(%eax)
  ac325e:	83 c3 10                                        	add    $0x10,%ebx
  ac3261:	eb 0f                                           	jmp    0xac3272
  ac3263:	8b 54 24 1c                                     	mov    0x1c(%esp),%edx
  ac3267:	52                                              	push   %edx
  ac3268:	57                                              	push   %edi
  ac3269:	50                                              	push   %eax
  ac326a:	51                                              	push   %ecx
  ac326b:	8b ce                                           	mov    %esi,%ecx
  ac326d:	e8 5e fc ff ff                                  	call   0xac2ed0
  ac3272:	83 44 24 14 01                                  	addl   $0x1,0x14(%esp)
  ac3277:	8b 44 24 18                                     	mov    0x18(%esp),%eax
  ac327b:	83 c7 01                                        	add    $0x1,%edi
  ac327e:	83 c5 10                                        	add    $0x10,%ebp
  ac3281:	3b 7e 08                                        	cmp    0x8(%esi),%edi
  ac3284:	7c 9a                                           	jl     0xac3220
  ac3286:	83 c0 01                                        	add    $0x1,%eax
  ac3289:	3b 46 04                                        	cmp    0x4(%esi),%eax
  ac328c:	89 44 24 18                                     	mov    %eax,0x18(%esp)
  ac3290:	0f 8c 6f ff ff ff                               	jl     0xac3205
  ac3296:	8b 44 24 1c                                     	mov    0x1c(%esp),%eax
  ac329a:	83 c0 01                                        	add    $0x1,%eax
  ac329d:	3b 46 0c                                        	cmp    0xc(%esi),%eax
  ac32a0:	89 44 24 1c                                     	mov    %eax,0x1c(%esp)
  ac32a4:	0f 8c 4c ff ff ff                               	jl     0xac31f6
  ac32aa:	5f                                              	pop    %edi
  ac32ab:	5e                                              	pop    %esi
  ac32ac:	5d                                              	pop    %ebp
  ac32ad:	5b                                              	pop    %ebx
  ac32ae:	83 c4 20                                        	add    $0x20,%esp
  ac32b1:	c2 04 00                                        	ret    $0x4
