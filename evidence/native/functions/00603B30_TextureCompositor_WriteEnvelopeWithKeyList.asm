# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00603b30 (TextureCompositor_WriteEnvelopeWithKeyList)
Paired actual Ghidra pseudocode: 00603B30_TextureCompositor_WriteEnvelopeWithKeyList.c
Envelope [0x00603b30,0x00603e7d); 845 bytes; exact owned ranges: [0x00603b30,0x00603e7d)
Owned: 845 original bytes / 280 instructions.
Original owned instructions retain the independently reviewed objdump AT&T syntax.
Nonowned gap/alignment bytes are explicit .byte records, not additional owned instructions.
Stored prototypes are inferred projections; AL-only results and stack-flow caveats remain as annotated.

OWNED DISASSEMBLY AND EXPLICIT UNOWNED BYTES
00603b30 <original>:
  603b30:	83 ec 3c                                        	sub    $0x3c,%esp
  603b33:	8b 44 24 40                                     	mov    0x40(%esp),%eax
  603b37:	53                                              	push   %ebx
  603b38:	55                                              	push   %ebp
  603b39:	56                                              	push   %esi
  603b3a:	57                                              	push   %edi
  603b3b:	6a 01                                           	push   $0x1
  603b3d:	8b f1                                           	mov    %ecx,%esi
  603b3f:	50                                              	push   %eax
  603b40:	8d 4c 24 3c                                     	lea    0x3c(%esp),%ecx
  603b44:	e8 97 58 1d 00                                  	call   0x7d93e0
  603b49:	8b 6c 24 54                                     	mov    0x54(%esp),%ebp
  603b4d:	33 ff                                           	xor    %edi,%edi
  603b4f:	3b ef                                           	cmp    %edi,%ebp
  603b51:	c7 44 24 20 28 78 fe 00                         	movl   $0xfe7828,0x20(%esp)
  603b59:	89 7c 24 24                                     	mov    %edi,0x24(%esp)
  603b5d:	89 7c 24 28                                     	mov    %edi,0x28(%esp)
  603b61:	89 7c 24 2c                                     	mov    %edi,0x2c(%esp)
  603b65:	c7 44 24 30 14 78 fe 00                         	movl   $0xfe7814,0x30(%esp)
  603b6d:	75 04                                           	jne    0x603b73
  603b6f:	8d 6c 24 20                                     	lea    0x20(%esp),%ebp
  603b73:	8b 4c 24 44                                     	mov    0x44(%esp),%ecx
  603b77:	8b 54 24 3c                                     	mov    0x3c(%esp),%edx
  603b7b:	51                                              	push   %ecx
  603b7c:	6a 08                                           	push   $0x8
  603b7e:	52                                              	push   %edx
  603b7f:	e8 ec a3 ed ff                                  	call   0x4ddf70
  603b84:	83 c4 0c                                        	add    $0xc,%esp
  603b87:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603b8b:	50                                              	push   %eax
  603b8c:	e8 5f 3e 1d 00                                  	call   0x7d79f0
  603b91:	8b 4c 24 3c                                     	mov    0x3c(%esp),%ecx
  603b95:	8b 01                                           	mov    (%ecx),%eax
  603b97:	8b 50 24                                        	mov    0x24(%eax),%edx
  603b9a:	57                                              	push   %edi
  603b9b:	ff d2                                           	call   *%edx
  603b9d:	8b 4c 24 3c                                     	mov    0x3c(%esp),%ecx
  603ba1:	89 44 24 54                                     	mov    %eax,0x54(%esp)
  603ba5:	8b 44 24 44                                     	mov    0x44(%esp),%eax
  603ba9:	50                                              	push   %eax
  603baa:	57                                              	push   %edi
  603bab:	51                                              	push   %ecx
  603bac:	e8 bf a3 ed ff                                  	call   0x4ddf70
  603bb1:	83 c4 0c                                        	add    $0xc,%esp
  603bb4:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603bb8:	50                                              	push   %eax
  603bb9:	e8 32 3e 1d 00                                  	call   0x7d79f0
  603bbe:	8b 54 24 3c                                     	mov    0x3c(%esp),%edx
  603bc2:	57                                              	push   %edi
  603bc3:	52                                              	push   %edx
  603bc4:	e8 67 a2 ed ff                                  	call   0x4dde30
  603bc9:	83 c4 08                                        	add    $0x8,%esp
  603bcc:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603bd0:	50                                              	push   %eax
  603bd1:	e8 1a 3e 1d 00                                  	call   0x7d79f0
  603bd6:	8b 4c 24 44                                     	mov    0x44(%esp),%ecx
  603bda:	8b 46 54                                        	mov    0x54(%esi),%eax
  603bdd:	8b 54 24 3c                                     	mov    0x3c(%esp),%edx
  603be1:	51                                              	push   %ecx
  603be2:	50                                              	push   %eax
  603be3:	52                                              	push   %edx
  603be4:	e8 77 a4 ed ff                                  	call   0x4de060
  603be9:	83 c4 0c                                        	add    $0xc,%esp
  603bec:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603bf0:	50                                              	push   %eax
  603bf1:	e8 fa 3d 1d 00                                  	call   0x7d79f0
  603bf6:	8b 4c 24 44                                     	mov    0x44(%esp),%ecx
  603bfa:	8b 46 58                                        	mov    0x58(%esi),%eax
  603bfd:	8b 54 24 3c                                     	mov    0x3c(%esp),%edx
  603c01:	51                                              	push   %ecx
  603c02:	50                                              	push   %eax
  603c03:	52                                              	push   %edx
  603c04:	e8 57 a4 ed ff                                  	call   0x4de060
  603c09:	83 c4 0c                                        	add    $0xc,%esp
  603c0c:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603c10:	50                                              	push   %eax
  603c11:	e8 da 3d 1d 00                                  	call   0x7d79f0
  603c16:	8a 46 62                                        	mov    0x62(%esi),%al
  603c19:	8b 54 24 3c                                     	mov    0x3c(%esp),%edx
  603c1d:	88 44 24 50                                     	mov    %al,0x50(%esp)
  603c21:	8b 4c 24 50                                     	mov    0x50(%esp),%ecx
  603c25:	51                                              	push   %ecx
  603c26:	52                                              	push   %edx
  603c27:	e8 d4 a1 ed ff                                  	call   0x4dde00
  603c2c:	83 c4 08                                        	add    $0x8,%esp
  603c2f:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603c33:	50                                              	push   %eax
  603c34:	e8 b7 3d 1d 00                                  	call   0x7d79f0
  603c39:	0f b6 5e 60                                     	movzbl 0x60(%esi),%ebx
  603c3d:	8b 44 24 44                                     	mov    0x44(%esp),%eax
  603c41:	8b 4c 24 3c                                     	mov    0x3c(%esp),%ecx
  603c45:	50                                              	push   %eax
  603c46:	53                                              	push   %ebx
  603c47:	51                                              	push   %ecx
  603c48:	e8 13 a4 ed ff                                  	call   0x4de060
  603c4d:	83 c4 0c                                        	add    $0xc,%esp
  603c50:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603c54:	50                                              	push   %eax
  603c55:	e8 96 3d 1d 00                                  	call   0x7d79f0
  603c5a:	8b 7c 24 58                                     	mov    0x58(%esp),%edi
  603c5e:	85 ff                                           	test   %edi,%edi
  603c60:	74 66                                           	je     0x603cc8
  603c62:	8b 54 24 3c                                     	mov    0x3c(%esp),%edx
  603c66:	6a 01                                           	push   $0x1
  603c68:	52                                              	push   %edx
  603c69:	e8 92 a1 ed ff                                  	call   0x4dde00
  603c6e:	83 c4 08                                        	add    $0x8,%esp
  603c71:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603c75:	50                                              	push   %eax
  603c76:	e8 75 3d 1d 00                                  	call   0x7d79f0
  603c7b:	8b 4c 24 44                                     	mov    0x44(%esp),%ecx
  603c7f:	8b 46 5c                                        	mov    0x5c(%esi),%eax
  603c82:	8b 54 24 3c                                     	mov    0x3c(%esp),%edx
  603c86:	51                                              	push   %ecx
  603c87:	53                                              	push   %ebx
  603c88:	50                                              	push   %eax
  603c89:	52                                              	push   %edx
  603c8a:	e8 31 a3 ed ff                                  	call   0x4ddfc0
  603c8f:	83 c4 10                                        	add    $0x10,%esp
  603c92:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603c96:	50                                              	push   %eax
  603c97:	e8 54 3d 1d 00                                  	call   0x7d79f0
  603c9c:	8b 46 5c                                        	mov    0x5c(%esi),%eax
  603c9f:	53                                              	push   %ebx
  603ca0:	50                                              	push   %eax
  603ca1:	8b cf                                           	mov    %edi,%ecx
  603ca3:	e8 b8 ef ff ff                                  	call   0x602c60
  603ca8:	8b 4c 24 3c                                     	mov    0x3c(%esp),%ecx
  603cac:	8b 11                                           	mov    (%ecx),%edx
  603cae:	8b 42 24                                        	mov    0x24(%edx),%eax
  603cb1:	6a 00                                           	push   $0x0
  603cb3:	ff d0                                           	call   *%eax
  603cb5:	83 f8 ff                                        	cmp    $0xffffffff,%eax
  603cb8:	0f 85 8d 00 00 00                               	jne    0x603d4b
  603cbe:	c6 44 24 48 00                                  	movb   $0x0,0x48(%esp)
  603cc3:	e9 97 00 00 00                                  	jmp    0x603d5f
  603cc8:	8b 4c 24 3c                                     	mov    0x3c(%esp),%ecx
  603ccc:	6a 00                                           	push   $0x0
  603cce:	51                                              	push   %ecx
  603ccf:	e8 2c a1 ed ff                                  	call   0x4dde00
  603cd4:	83 c4 08                                        	add    $0x8,%esp
  603cd7:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603cdb:	50                                              	push   %eax
  603cdc:	e8 0f 3d 1d 00                                  	call   0x7d79f0
  603ce1:	33 ff                                           	xor    %edi,%edi
  603ce3:	85 db                                           	test   %ebx,%ebx
  603ce5:	7e c1                                           	jle    0x603ca8
  603ce7:	8b 56 5c                                        	mov    0x5c(%esi),%edx
  603cea:	8b 04 ba                                        	mov    (%edx,%edi,4),%eax
  603ced:	c1 e8 08                                        	shr    $0x8,%eax
  603cf0:	50                                              	push   %eax
  603cf1:	e8 2a ec ff ff                                  	call   0x602920
  603cf6:	83 c4 04                                        	add    $0x4,%esp
  603cf9:	6a 00                                           	push   $0x0
  603cfb:	55                                              	push   %ebp
  603cfc:	8d 4c 24 3c                                     	lea    0x3c(%esp),%ecx
  603d00:	51                                              	push   %ecx
  603d01:	8b c8                                           	mov    %eax,%ecx
  603d03:	e8 38 d4 ff ff                                  	call   0x601140
  603d08:	84 c0                                           	test   %al,%al
  603d0a:	74 09                                           	je     0x603d15
  603d0c:	83 c7 01                                        	add    $0x1,%edi
  603d0f:	3b fb                                           	cmp    %ebx,%edi
  603d11:	7c d4                                           	jl     0x603ce7
  603d13:	eb 93                                           	jmp    0x603ca8
  603d15:	8b 44 24 24                                     	mov    0x24(%esp),%eax
  603d19:	85 c0                                           	test   %eax,%eax
  603d1b:	c7 44 24 20 28 78 fe 00                         	movl   $0xfe7828,0x20(%esp)
  603d23:	74 09                                           	je     0x603d2e
  603d25:	50                                              	push   %eax
  603d26:	e8 b5 07 ee ff                                  	call   0x4e44e0
  603d2b:	83 c4 04                                        	add    $0x4,%esp
  603d2e:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603d32:	c7 44 24 20 5c 8b fd 00                         	movl   $0xfd8b5c,0x20(%esp)
  603d3a:	e8 51 3c 1d 00                                  	call   0x7d7990
  603d3f:	5f                                              	pop    %edi
  603d40:	5e                                              	pop    %esi
  603d41:	5d                                              	pop    %ebp
  603d42:	32 c0                                           	xor    %al,%al
  603d44:	5b                                              	pop    %ebx
  603d45:	83 c4 3c                                        	add    $0x3c,%esp
  603d48:	c2 0c 00                                        	ret    $0xc
  603d4b:	8b 4c 24 54                                     	mov    0x54(%esp),%ecx
  603d4f:	2b c1                                           	sub    %ecx,%eax
  603d51:	83 e8 04                                        	sub    $0x4,%eax
  603d54:	50                                              	push   %eax
  603d55:	51                                              	push   %ecx
  603d56:	8d 4c 24 3c                                     	lea    0x3c(%esp),%ecx
  603d5a:	e8 e1 b0 fb ff                                  	call   0x5bee40
  603d5f:	8b 5c 24 28                                     	mov    0x28(%esp),%ebx
  603d63:	2b 5c 24 24                                     	sub    0x24(%esp),%ebx
  603d67:	8b 54 24 3c                                     	mov    0x3c(%esp),%edx
  603d6b:	c1 fb 04                                        	sar    $0x4,%ebx
  603d6e:	88 5c 24 50                                     	mov    %bl,0x50(%esp)
  603d72:	8b 4c 24 50                                     	mov    0x50(%esp),%ecx
  603d76:	51                                              	push   %ecx
  603d77:	52                                              	push   %edx
  603d78:	e8 b3 a0 ed ff                                  	call   0x4dde30
  603d7d:	83 c4 08                                        	add    $0x8,%esp
  603d80:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603d84:	50                                              	push   %eax
  603d85:	e8 66 3c 1d 00                                  	call   0x7d79f0
  603d8a:	33 f6                                           	xor    %esi,%esi
  603d8c:	33 ff                                           	xor    %edi,%edi
  603d8e:	33 ed                                           	xor    %ebp,%ebp
  603d90:	84 db                                           	test   %bl,%bl
  603d92:	89 74 24 1c                                     	mov    %esi,0x1c(%esp)
  603d96:	c6 44 24 50 00                                  	movb   $0x0,0x50(%esp)
  603d9b:	0f 86 a2 00 00 00                               	jbe    0x603e43
  603da1:	66 0f b6 44 24 50                               	movzbw 0x50(%esp),%ax
  603da7:	8b 54 24 28                                     	mov    0x28(%esp),%edx
  603dab:	8b 4c 24 24                                     	mov    0x24(%esp),%ecx
  603daf:	0f b7 c0                                        	movzwl %ax,%eax
  603db2:	2b d1                                           	sub    %ecx,%edx
  603db4:	0f b7 c0                                        	movzwl %ax,%eax
  603db7:	c1 fa 04                                        	sar    $0x4,%edx
  603dba:	3b c2                                           	cmp    %edx,%eax
  603dbc:	73 17                                           	jae    0x603dd5
  603dbe:	c1 e0 04                                        	shl    $0x4,%eax
  603dc1:	8b 34 08                                        	mov    (%eax,%ecx,1),%esi
  603dc4:	8b 7c 08 04                                     	mov    0x4(%eax,%ecx,1),%edi
  603dc8:	8b 6c 08 08                                     	mov    0x8(%eax,%ecx,1),%ebp
  603dcc:	03 c1                                           	add    %ecx,%eax
  603dce:	8b 40 0c                                        	mov    0xc(%eax),%eax
  603dd1:	89 44 24 1c                                     	mov    %eax,0x1c(%esp)
  603dd5:	8b 4c 24 44                                     	mov    0x44(%esp),%ecx
  603dd9:	8b 54 24 3c                                     	mov    0x3c(%esp),%edx
  603ddd:	51                                              	push   %ecx
  603dde:	57                                              	push   %edi
  603ddf:	56                                              	push   %esi
  603de0:	52                                              	push   %edx
  603de1:	e8 da a2 ed ff                                  	call   0x4de0c0
  603de6:	83 c4 10                                        	add    $0x10,%esp
  603de9:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603ded:	50                                              	push   %eax
  603dee:	e8 fd 3b 1d 00                                  	call   0x7d79f0
  603df3:	8b 44 24 44                                     	mov    0x44(%esp),%eax
  603df7:	8b 4c 24 1c                                     	mov    0x1c(%esp),%ecx
  603dfb:	8b 54 24 3c                                     	mov    0x3c(%esp),%edx
  603dff:	50                                              	push   %eax
  603e00:	51                                              	push   %ecx
  603e01:	52                                              	push   %edx
  603e02:	e8 69 a1 ed ff                                  	call   0x4ddf70
  603e07:	83 c4 0c                                        	add    $0xc,%esp
  603e0a:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603e0e:	50                                              	push   %eax
  603e0f:	e8 dc 3b 1d 00                                  	call   0x7d79f0
  603e14:	8b 44 24 44                                     	mov    0x44(%esp),%eax
  603e18:	8b 4c 24 3c                                     	mov    0x3c(%esp),%ecx
  603e1c:	50                                              	push   %eax
  603e1d:	55                                              	push   %ebp
  603e1e:	51                                              	push   %ecx
  603e1f:	e8 4c a1 ed ff                                  	call   0x4ddf70
  603e24:	83 c4 0c                                        	add    $0xc,%esp
  603e27:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603e2b:	50                                              	push   %eax
  603e2c:	e8 bf 3b 1d 00                                  	call   0x7d79f0
  603e31:	8a 44 24 50                                     	mov    0x50(%esp),%al
  603e35:	04 01                                           	add    $0x1,%al
  603e37:	3a c3                                           	cmp    %bl,%al
  603e39:	88 44 24 50                                     	mov    %al,0x50(%esp)
  603e3d:	0f 82 5e ff ff ff                               	jb     0x603da1
  603e43:	8b 44 24 24                                     	mov    0x24(%esp),%eax
  603e47:	85 c0                                           	test   %eax,%eax
  603e49:	8a 5c 24 48                                     	mov    0x48(%esp),%bl
  603e4d:	c7 44 24 20 28 78 fe 00                         	movl   $0xfe7828,0x20(%esp)
  603e55:	74 09                                           	je     0x603e60
  603e57:	50                                              	push   %eax
  603e58:	e8 83 06 ee ff                                  	call   0x4e44e0
  603e5d:	83 c4 04                                        	add    $0x4,%esp
  603e60:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  603e64:	c7 44 24 20 5c 8b fd 00                         	movl   $0xfd8b5c,0x20(%esp)
  603e6c:	e8 1f 3b 1d 00                                  	call   0x7d7990
  603e71:	5f                                              	pop    %edi
  603e72:	5e                                              	pop    %esi
  603e73:	5d                                              	pop    %ebp
  603e74:	8a c3                                           	mov    %bl,%al
  603e76:	5b                                              	pop    %ebx
  603e77:	83 c4 3c                                        	add    $0x3c,%esp
  603e7a:	c2 0c 00                                        	ret    $0xc
