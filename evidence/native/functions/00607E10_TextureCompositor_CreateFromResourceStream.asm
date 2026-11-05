# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00607e10 (TextureCompositor_CreateFromResourceStream)
Paired actual Ghidra pseudocode: 00607E10_TextureCompositor_CreateFromResourceStream.c
Envelope [0x00607e10,0x00607f01); 241 bytes; exact owned ranges: [0x00607e10,0x00607f01)
Owned: 241 original bytes / 87 instructions.
Original owned instructions retain the independently reviewed objdump AT&T syntax.
Nonowned gap/alignment bytes are explicit .byte records, not additional owned instructions.
Stored prototypes are inferred projections; AL-only results and stack-flow caveats remain as annotated.

OWNED DISASSEMBLY AND EXPLICIT UNOWNED BYTES
00607e10 <original>:
  607e10:	83 ec 08                                        	sub    $0x8,%esp
  607e13:	53                                              	push   %ebx
  607e14:	57                                              	push   %edi
  607e15:	8b 7c 24 14                                     	mov    0x14(%esp),%edi
  607e19:	85 ff                                           	test   %edi,%edi
  607e1b:	0f 84 d8 00 00 00                               	je     0x607ef9
  607e21:	8b 5c 24 24                                     	mov    0x24(%esp),%ebx
  607e25:	85 db                                           	test   %ebx,%ebx
  607e27:	0f 84 cc 00 00 00                               	je     0x607ef9
  607e2d:	8b 44 24 1c                                     	mov    0x1c(%esp),%eax
  607e31:	3d 35 14 3a 03                                  	cmp    $0x33a1435,%eax
  607e36:	56                                              	push   %esi
  607e37:	c7 44 24 18 00 00 00 00                         	movl   $0x0,0x18(%esp)
  607e3f:	74 2f                                           	je     0x607e70
  607e41:	3d c9 ac 41 03                                  	cmp    $0x341acc9,%eax
  607e46:	0f 85 99 00 00 00                               	jne    0x607ee5
  607e4c:	6a 00                                           	push   $0x0
  607e4e:	6a 00                                           	push   $0x0
  607e50:	6a 00                                           	push   $0x0
  607e52:	6a 00                                           	push   $0x0
  607e54:	68 04 7b fe 00                                  	push   $0xfe7b04
  607e59:	6a 68                                           	push   $0x68
  607e5b:	e8 a0 c6 ed ff                                  	call   0x4e4500
  607e60:	83 c4 18                                        	add    $0x18,%esp
  607e63:	85 c0                                           	test   %eax,%eax
  607e65:	74 2d                                           	je     0x607e94
  607e67:	8b c8                                           	mov    %eax,%ecx
  607e69:	e8 62 8c ff ff                                  	call   0x600ad0
  607e6e:	eb 26                                           	jmp    0x607e96
  607e70:	6a 00                                           	push   $0x0
  607e72:	6a 00                                           	push   $0x0
  607e74:	6a 00                                           	push   $0x0
  607e76:	6a 00                                           	push   $0x0
  607e78:	68 04 7b fe 00                                  	push   $0xfe7b04
  607e7d:	6a 68                                           	push   $0x68
  607e7f:	e8 7c c6 ed ff                                  	call   0x4e4500
  607e84:	83 c4 18                                        	add    $0x18,%esp
  607e87:	85 c0                                           	test   %eax,%eax
  607e89:	74 09                                           	je     0x607e94
  607e8b:	8b c8                                           	mov    %eax,%ecx
  607e8d:	e8 9e 8b ff ff                                  	call   0x600a30
  607e92:	eb 02                                           	jmp    0x607e96
  607e94:	33 c0                                           	xor    %eax,%eax
  607e96:	50                                              	push   %eax
  607e97:	8d 4c 24 1c                                     	lea    0x1c(%esp),%ecx
  607e9b:	e8 60 0e 2c 00                                  	call   0x8c8d00
  607ea0:	8b 74 24 18                                     	mov    0x18(%esp),%esi
  607ea4:	85 f6                                           	test   %esi,%esi
  607ea6:	74 3d                                           	je     0x607ee5
  607ea8:	8b 44 24 24                                     	mov    0x24(%esp),%eax
  607eac:	8b 4c 24 1c                                     	mov    0x1c(%esp),%ecx
  607eb0:	89 44 24 10                                     	mov    %eax,0x10(%esp)
  607eb4:	f7 d8                                           	neg    %eax
  607eb6:	51                                              	push   %ecx
  607eb7:	1b c0                                           	sbb    %eax,%eax
  607eb9:	8d 54 24 10                                     	lea    0x10(%esp),%edx
  607ebd:	23 c2                                           	and    %edx,%eax
  607ebf:	50                                              	push   %eax
  607ec0:	57                                              	push   %edi
  607ec1:	8b ce                                           	mov    %esi,%ecx
  607ec3:	c7 44 24 18 48 77 fe 00                         	movl   $0xfe7748,0x18(%esp)
  607ecb:	e8 40 f7 ff ff                                  	call   0x607610
  607ed0:	84 c0                                           	test   %al,%al
  607ed2:	75 1a                                           	jne    0x607eee
  607ed4:	c7 44 24 0c 5c 8b fd 00                         	movl   $0xfd8b5c,0xc(%esp)
  607edc:	8b 06                                           	mov    (%esi),%eax
  607ede:	8b 50 04                                        	mov    0x4(%eax),%edx
  607ee1:	8b ce                                           	mov    %esi,%ecx
  607ee3:	ff d2                                           	call   *%edx
  607ee5:	5e                                              	pop    %esi
  607ee6:	5f                                              	pop    %edi
  607ee7:	32 c0                                           	xor    %al,%al
  607ee9:	5b                                              	pop    %ebx
  607eea:	83 c4 08                                        	add    $0x8,%esp
  607eed:	c3                                              	ret
  607eee:	89 33                                           	mov    %esi,(%ebx)
  607ef0:	5e                                              	pop    %esi
  607ef1:	5f                                              	pop    %edi
  607ef2:	b0 01                                           	mov    $0x1,%al
  607ef4:	5b                                              	pop    %ebx
  607ef5:	83 c4 08                                        	add    $0x8,%esp
  607ef8:	c3                                              	ret
  607ef9:	5f                                              	pop    %edi
  607efa:	32 c0                                           	xor    %al,%al
  607efc:	5b                                              	pop    %ebx
  607efd:	83 c4 08                                        	add    $0x8,%esp
  607f00:	c3                                              	ret
