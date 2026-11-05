# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ac8c80 (LotDataLayers_CreateMissingOwners)
Paired actual Ghidra pseudocode: 00AC8C80_LotDataLayers_CreateMissingOwners.c
Envelope [0x00ac8c80,0x00ac91c4); 1348 bytes; exact owned ranges: [0x00ac8c80,0x00ac91c4)
Owned: 1348 original bytes / 425 instructions.
Original owned instructions retain the independently reviewed objdump AT&T syntax.
Nonowned gap/alignment bytes are explicit .byte records, not additional owned instructions.
Stored prototypes are inferred projections; AL-only results and stack-flow caveats remain as annotated.

OWNED DISASSEMBLY AND EXPLICIT UNOWNED BYTES
00ac8c80 <original>:
  ac8c80:	83 ec 14                                        	sub    $0x14,%esp
  ac8c83:	56                                              	push   %esi
  ac8c84:	8b f1                                           	mov    %ecx,%esi
  ac8c86:	83 be 90 02 00 00 00                            	cmpl   $0x0,0x290(%esi)
  ac8c8d:	75 37                                           	jne    0xac8cc6
  ac8c8f:	6a 00                                           	push   $0x0
  ac8c91:	6a 00                                           	push   $0x0
  ac8c93:	6a 00                                           	push   $0x0
  ac8c95:	6a 00                                           	push   $0x0
  ac8c97:	68 f0 67 06 01                                  	push   $0x10667f0
  ac8c9c:	68 30 02 00 00                                  	push   $0x230
  ac8ca1:	e8 5a b8 a1 ff                                  	call   0x4e4500
  ac8ca6:	83 c4 18                                        	add    $0x18,%esp
  ac8ca9:	85 c0                                           	test   %eax,%eax
  ac8cab:	74 09                                           	je     0xac8cb6
  ac8cad:	8b c8                                           	mov    %eax,%ecx
  ac8caf:	e8 dc 9f fc ff                                  	call   0xa92c90
  ac8cb4:	eb 02                                           	jmp    0xac8cb8
  ac8cb6:	33 c0                                           	xor    %eax,%eax
  ac8cb8:	56                                              	push   %esi
  ac8cb9:	8b c8                                           	mov    %eax,%ecx
  ac8cbb:	89 86 90 02 00 00                               	mov    %eax,0x290(%esi)
  ac8cc1:	e8 3a 50 fc ff                                  	call   0xa8dd00
  ac8cc6:	8b 8e 90 02 00 00                               	mov    0x290(%esi),%ecx
  ac8ccc:	e8 7f ed fc ff                                  	call   0xa97a50
  ac8cd1:	83 be a4 02 00 00 00                            	cmpl   $0x0,0x2a4(%esi)
  ac8cd8:	75 70                                           	jne    0xac8d4a
  ac8cda:	6a 00                                           	push   $0x0
  ac8cdc:	6a 00                                           	push   $0x0
  ac8cde:	6a 00                                           	push   $0x0
  ac8ce0:	6a 00                                           	push   $0x0
  ac8ce2:	68 6c 64 06 01                                  	push   $0x106646c
  ac8ce7:	6a 58                                           	push   $0x58
  ac8ce9:	e8 12 b8 a1 ff                                  	call   0x4e4500
  ac8cee:	83 c4 18                                        	add    $0x18,%esp
  ac8cf1:	85 c0                                           	test   %eax,%eax
  ac8cf3:	74 0e                                           	je     0xac8d03
  ac8cf5:	68 6c 64 06 01                                  	push   $0x106646c
  ac8cfa:	8b c8                                           	mov    %eax,%ecx
  ac8cfc:	e8 df 2f ff ff                                  	call   0xabbce0
  ac8d01:	eb 02                                           	jmp    0xac8d05
  ac8d03:	33 c0                                           	xor    %eax,%eax
  ac8d05:	8b 8e 84 01 00 00                               	mov    0x184(%esi),%ecx
  ac8d0b:	8b 96 78 01 00 00                               	mov    0x178(%esi),%edx
  ac8d11:	51                                              	push   %ecx
  ac8d12:	8b 8e 74 01 00 00                               	mov    0x174(%esi),%ecx
  ac8d18:	52                                              	push   %edx
  ac8d19:	51                                              	push   %ecx
  ac8d1a:	8b c8                                           	mov    %eax,%ecx
  ac8d1c:	89 86 a4 02 00 00                               	mov    %eax,0x2a4(%esi)
  ac8d22:	e8 e9 a7 ff ff                                  	call   0xac3510
  ac8d27:	8b 8e a4 02 00 00                               	mov    0x2a4(%esi),%ecx
  ac8d2d:	83 c8 ff                                        	or     $0xffffffff,%eax
  ac8d30:	8d 54 24 08                                     	lea    0x8(%esp),%edx
  ac8d34:	52                                              	push   %edx
  ac8d35:	89 44 24 0c                                     	mov    %eax,0xc(%esp)
  ac8d39:	89 44 24 10                                     	mov    %eax,0x10(%esp)
  ac8d3d:	89 44 24 14                                     	mov    %eax,0x14(%esp)
  ac8d41:	89 44 24 18                                     	mov    %eax,0x18(%esp)
  ac8d45:	e8 26 a3 ff ff                                  	call   0xac3070
  ac8d4a:	83 be a8 02 00 00 00                            	cmpl   $0x0,0x2a8(%esi)
  ac8d51:	75 6e                                           	jne    0xac8dc1
  ac8d53:	6a 00                                           	push   $0x0
  ac8d55:	6a 00                                           	push   $0x0
  ac8d57:	6a 00                                           	push   $0x0
  ac8d59:	6a 00                                           	push   $0x0
  ac8d5b:	68 dc 67 06 01                                  	push   $0x10667dc
  ac8d60:	6a 58                                           	push   $0x58
  ac8d62:	e8 99 b7 a1 ff                                  	call   0x4e4500
  ac8d67:	83 c4 18                                        	add    $0x18,%esp
  ac8d6a:	85 c0                                           	test   %eax,%eax
  ac8d6c:	74 0e                                           	je     0xac8d7c
  ac8d6e:	68 dc 67 06 01                                  	push   $0x10667dc
  ac8d73:	8b c8                                           	mov    %eax,%ecx
  ac8d75:	e8 86 58 fc ff                                  	call   0xa8e600
  ac8d7a:	eb 02                                           	jmp    0xac8d7e
  ac8d7c:	33 c0                                           	xor    %eax,%eax
  ac8d7e:	57                                              	push   %edi
  ac8d7f:	8b be 7c 01 00 00                               	mov    0x17c(%esi),%edi
  ac8d85:	f7 df                                           	neg    %edi
  ac8d87:	89 86 a8 02 00 00                               	mov    %eax,0x2a8(%esi)
  ac8d8d:	79 02                                           	jns    0xac8d91
  ac8d8f:	33 ff                                           	xor    %edi,%edi
  ac8d91:	8b 8e 78 01 00 00                               	mov    0x178(%esi),%ecx
  ac8d97:	8b 96 74 01 00 00                               	mov    0x174(%esi),%edx
  ac8d9d:	57                                              	push   %edi
  ac8d9e:	51                                              	push   %ecx
  ac8d9f:	52                                              	push   %edx
  ac8da0:	8b c8                                           	mov    %eax,%ecx
  ac8da2:	e8 a9 ca fc ff                                  	call   0xa95850
  ac8da7:	85 ff                                           	test   %edi,%edi
  ac8da9:	5f                                              	pop    %edi
  ac8daa:	7e 15                                           	jle    0xac8dc1
  ac8dac:	8b 8e a8 02 00 00                               	mov    0x2a8(%esi),%ecx
  ac8db2:	8d 44 24 07                                     	lea    0x7(%esp),%eax
  ac8db6:	50                                              	push   %eax
  ac8db7:	c6 44 24 0b 00                                  	movb   $0x0,0xb(%esp)
  ac8dbc:	e8 cf c0 fc ff                                  	call   0xa94e90
  ac8dc1:	83 be 94 02 00 00 00                            	cmpl   $0x0,0x294(%esi)
  ac8dc8:	75 42                                           	jne    0xac8e0c
  ac8dca:	6a 00                                           	push   $0x0
  ac8dcc:	6a 00                                           	push   $0x0
  ac8dce:	6a 00                                           	push   $0x0
  ac8dd0:	6a 00                                           	push   $0x0
  ac8dd2:	68 cc 67 06 01                                  	push   $0x10667cc
  ac8dd7:	68 68 01 00 00                                  	push   $0x168
  ac8ddc:	e8 1f b7 a1 ff                                  	call   0x4e4500
  ac8de1:	83 c4 18                                        	add    $0x18,%esp
  ac8de4:	85 c0                                           	test   %eax,%eax
  ac8de6:	74 09                                           	je     0xac8df1
  ac8de8:	8b c8                                           	mov    %eax,%ecx
  ac8dea:	e8 21 31 02 00                                  	call   0xaebf10
  ac8def:	eb 02                                           	jmp    0xac8df3
  ac8df1:	33 c0                                           	xor    %eax,%eax
  ac8df3:	56                                              	push   %esi
  ac8df4:	8b c8                                           	mov    %eax,%ecx
  ac8df6:	89 86 94 02 00 00                               	mov    %eax,0x294(%esi)
  ac8dfc:	e8 ef 0d 02 00                                  	call   0xae9bf0
  ac8e01:	8b 8e 94 02 00 00                               	mov    0x294(%esi),%ecx
  ac8e07:	e8 f4 70 02 00                                  	call   0xaeff00
  ac8e0c:	83 be 98 02 00 00 00                            	cmpl   $0x0,0x298(%esi)
  ac8e13:	75 42                                           	jne    0xac8e57
  ac8e15:	6a 00                                           	push   $0x0
  ac8e17:	6a 00                                           	push   $0x0
  ac8e19:	6a 00                                           	push   $0x0
  ac8e1b:	6a 00                                           	push   $0x0
  ac8e1d:	68 b4 67 06 01                                  	push   $0x10667b4
  ac8e22:	68 90 02 00 00                                  	push   $0x290
  ac8e27:	e8 d4 b6 a1 ff                                  	call   0x4e4500
  ac8e2c:	83 c4 18                                        	add    $0x18,%esp
  ac8e2f:	85 c0                                           	test   %eax,%eax
  ac8e31:	74 09                                           	je     0xac8e3c
  ac8e33:	8b c8                                           	mov    %eax,%ecx
  ac8e35:	e8 56 66 08 00                                  	call   0xb4f490
  ac8e3a:	eb 02                                           	jmp    0xac8e3e
  ac8e3c:	33 c0                                           	xor    %eax,%eax
  ac8e3e:	56                                              	push   %esi
  ac8e3f:	8b c8                                           	mov    %eax,%ecx
  ac8e41:	89 86 98 02 00 00                               	mov    %eax,0x298(%esi)
  ac8e47:	e8 74 e7 07 00                                  	call   0xb475c0
  ac8e4c:	8b 8e 98 02 00 00                               	mov    0x298(%esi),%ecx
  ac8e52:	e8 69 84 08 00                                  	call   0xb512c0
  ac8e57:	83 be ac 02 00 00 00                            	cmpl   $0x0,0x2ac(%esi)
  ac8e5e:	75 37                                           	jne    0xac8e97
  ac8e60:	6a 00                                           	push   $0x0
  ac8e62:	6a 00                                           	push   $0x0
  ac8e64:	6a 00                                           	push   $0x0
  ac8e66:	6a 00                                           	push   $0x0
  ac8e68:	68 a4 67 06 01                                  	push   $0x10667a4
  ac8e6d:	68 d0 00 00 00                                  	push   $0xd0
  ac8e72:	e8 89 b6 a1 ff                                  	call   0x4e4500
  ac8e77:	83 c4 18                                        	add    $0x18,%esp
  ac8e7a:	85 c0                                           	test   %eax,%eax
  ac8e7c:	74 09                                           	je     0xac8e87
  ac8e7e:	8b c8                                           	mov    %eax,%ecx
  ac8e80:	e8 ab 04 0d 00                                  	call   0xb99330
  ac8e85:	eb 02                                           	jmp    0xac8e89
  ac8e87:	33 c0                                           	xor    %eax,%eax
  ac8e89:	56                                              	push   %esi
  ac8e8a:	8b c8                                           	mov    %eax,%ecx
  ac8e8c:	89 86 ac 02 00 00                               	mov    %eax,0x2ac(%esi)
  ac8e92:	e8 99 1c 0d 00                                  	call   0xb9ab30
  ac8e97:	83 be b0 02 00 00 00                            	cmpl   $0x0,0x2b0(%esi)
  ac8e9e:	75 34                                           	jne    0xac8ed4
  ac8ea0:	6a 00                                           	push   $0x0
  ac8ea2:	6a 00                                           	push   $0x0
  ac8ea4:	6a 00                                           	push   $0x0
  ac8ea6:	6a 00                                           	push   $0x0
  ac8ea8:	68 6c 07 06 01                                  	push   $0x106076c
  ac8ead:	6a 30                                           	push   $0x30
  ac8eaf:	e8 4c b6 a1 ff                                  	call   0x4e4500
  ac8eb4:	83 c4 18                                        	add    $0x18,%esp
  ac8eb7:	85 c0                                           	test   %eax,%eax
  ac8eb9:	74 09                                           	je     0xac8ec4
  ac8ebb:	8b c8                                           	mov    %eax,%ecx
  ac8ebd:	e8 fe f9 f7 ff                                  	call   0xa488c0
  ac8ec2:	eb 02                                           	jmp    0xac8ec6
  ac8ec4:	33 c0                                           	xor    %eax,%eax
  ac8ec6:	56                                              	push   %esi
  ac8ec7:	8b c8                                           	mov    %eax,%ecx
  ac8ec9:	89 86 b0 02 00 00                               	mov    %eax,0x2b0(%esi)
  ac8ecf:	e8 5c f9 f7 ff                                  	call   0xa48830
  ac8ed4:	83 be b4 02 00 00 00                            	cmpl   $0x0,0x2b4(%esi)
  ac8edb:	75 37                                           	jne    0xac8f14
  ac8edd:	6a 00                                           	push   $0x0
  ac8edf:	6a 00                                           	push   $0x0
  ac8ee1:	6a 00                                           	push   $0x0
  ac8ee3:	6a 00                                           	push   $0x0
  ac8ee5:	68 88 67 06 01                                  	push   $0x1066788
  ac8eea:	68 dc 00 00 00                                  	push   $0xdc
  ac8eef:	e8 0c b6 a1 ff                                  	call   0x4e4500
  ac8ef4:	83 c4 18                                        	add    $0x18,%esp
  ac8ef7:	85 c0                                           	test   %eax,%eax
  ac8ef9:	74 09                                           	je     0xac8f04
  ac8efb:	8b c8                                           	mov    %eax,%ecx
  ac8efd:	e8 4e 49 05 00                                  	call   0xb1d850
  ac8f02:	eb 02                                           	jmp    0xac8f06
  ac8f04:	33 c0                                           	xor    %eax,%eax
  ac8f06:	56                                              	push   %esi
  ac8f07:	8b c8                                           	mov    %eax,%ecx
  ac8f09:	89 86 b4 02 00 00                               	mov    %eax,0x2b4(%esi)
  ac8f0f:	e8 9c c1 04 00                                  	call   0xb150b0
  ac8f14:	83 be b8 02 00 00 00                            	cmpl   $0x0,0x2b8(%esi)
  ac8f1b:	75 34                                           	jne    0xac8f51
  ac8f1d:	6a 00                                           	push   $0x0
  ac8f1f:	6a 00                                           	push   $0x0
  ac8f21:	6a 00                                           	push   $0x0
  ac8f23:	6a 00                                           	push   $0x0
  ac8f25:	68 68 67 06 01                                  	push   $0x1066768
  ac8f2a:	6a 7c                                           	push   $0x7c
  ac8f2c:	e8 cf b5 a1 ff                                  	call   0x4e4500
  ac8f31:	83 c4 18                                        	add    $0x18,%esp
  ac8f34:	85 c0                                           	test   %eax,%eax
  ac8f36:	74 09                                           	je     0xac8f41
  ac8f38:	8b c8                                           	mov    %eax,%ecx
  ac8f3a:	e8 51 32 15 00                                  	call   0xc1c190
  ac8f3f:	eb 02                                           	jmp    0xac8f43
  ac8f41:	33 c0                                           	xor    %eax,%eax
  ac8f43:	56                                              	push   %esi
  ac8f44:	8b c8                                           	mov    %eax,%ecx
  ac8f46:	89 86 b8 02 00 00                               	mov    %eax,0x2b8(%esi)
  ac8f4c:	e8 5f 51 15 00                                  	call   0xc1e0b0
  ac8f51:	83 be bc 02 00 00 00                            	cmpl   $0x0,0x2bc(%esi)
  ac8f58:	75 34                                           	jne    0xac8f8e
  ac8f5a:	6a 00                                           	push   $0x0
  ac8f5c:	6a 00                                           	push   $0x0
  ac8f5e:	6a 00                                           	push   $0x0
  ac8f60:	6a 00                                           	push   $0x0
  ac8f62:	68 58 67 06 01                                  	push   $0x1066758
  ac8f67:	6a 24                                           	push   $0x24
  ac8f69:	e8 92 b5 a1 ff                                  	call   0x4e4500
  ac8f6e:	83 c4 18                                        	add    $0x18,%esp
  ac8f71:	85 c0                                           	test   %eax,%eax
  ac8f73:	74 09                                           	je     0xac8f7e
  ac8f75:	8b c8                                           	mov    %eax,%ecx
  ac8f77:	e8 34 fd 09 00                                  	call   0xb68cb0
  ac8f7c:	eb 02                                           	jmp    0xac8f80
  ac8f7e:	33 c0                                           	xor    %eax,%eax
  ac8f80:	56                                              	push   %esi
  ac8f81:	8b c8                                           	mov    %eax,%ecx
  ac8f83:	89 86 bc 02 00 00                               	mov    %eax,0x2bc(%esi)
  ac8f89:	e8 22 f1 09 00                                  	call   0xb680b0
  ac8f8e:	83 be c0 02 00 00 00                            	cmpl   $0x0,0x2c0(%esi)
  ac8f95:	75 34                                           	jne    0xac8fcb
  ac8f97:	6a 00                                           	push   $0x0
  ac8f99:	6a 00                                           	push   $0x0
  ac8f9b:	6a 00                                           	push   $0x0
  ac8f9d:	6a 00                                           	push   $0x0
  ac8f9f:	68 44 67 06 01                                  	push   $0x1066744
  ac8fa4:	6a 48                                           	push   $0x48
  ac8fa6:	e8 55 b5 a1 ff                                  	call   0x4e4500
  ac8fab:	83 c4 18                                        	add    $0x18,%esp
  ac8fae:	85 c0                                           	test   %eax,%eax
  ac8fb0:	74 09                                           	je     0xac8fbb
  ac8fb2:	8b c8                                           	mov    %eax,%ecx
  ac8fb4:	e8 27 bb 08 00                                  	call   0xb54ae0
  ac8fb9:	eb 02                                           	jmp    0xac8fbd
  ac8fbb:	33 c0                                           	xor    %eax,%eax
  ac8fbd:	56                                              	push   %esi
  ac8fbe:	8b c8                                           	mov    %eax,%ecx
  ac8fc0:	89 86 c0 02 00 00                               	mov    %eax,0x2c0(%esi)
  ac8fc6:	e8 e5 f0 09 00                                  	call   0xb680b0
  ac8fcb:	83 be c4 02 00 00 00                            	cmpl   $0x0,0x2c4(%esi)
  ac8fd2:	75 34                                           	jne    0xac9008
  ac8fd4:	6a 00                                           	push   $0x0
  ac8fd6:	6a 00                                           	push   $0x0
  ac8fd8:	6a 00                                           	push   $0x0
  ac8fda:	6a 00                                           	push   $0x0
  ac8fdc:	68 4c 12 06 01                                  	push   $0x106124c
  ac8fe1:	6a 24                                           	push   $0x24
  ac8fe3:	e8 18 b5 a1 ff                                  	call   0x4e4500
  ac8fe8:	83 c4 18                                        	add    $0x18,%esp
  ac8feb:	85 c0                                           	test   %eax,%eax
  ac8fed:	74 09                                           	je     0xac8ff8
  ac8fef:	8b c8                                           	mov    %eax,%ecx
  ac8ff1:	e8 aa 12 f9 ff                                  	call   0xa5a2a0
  ac8ff6:	eb 02                                           	jmp    0xac8ffa
  ac8ff8:	33 c0                                           	xor    %eax,%eax
  ac8ffa:	56                                              	push   %esi
  ac8ffb:	8b c8                                           	mov    %eax,%ecx
  ac8ffd:	89 86 c4 02 00 00                               	mov    %eax,0x2c4(%esi)
  ac9003:	e8 a8 f0 09 00                                  	call   0xb680b0
  ac9008:	83 be c8 02 00 00 00                            	cmpl   $0x0,0x2c8(%esi)
  ac900f:	75 34                                           	jne    0xac9045
  ac9011:	6a 00                                           	push   $0x0
  ac9013:	6a 00                                           	push   $0x0
  ac9015:	6a 00                                           	push   $0x0
  ac9017:	6a 00                                           	push   $0x0
  ac9019:	68 34 67 06 01                                  	push   $0x1066734
  ac901e:	6a 60                                           	push   $0x60
  ac9020:	e8 db b4 a1 ff                                  	call   0x4e4500
  ac9025:	83 c4 18                                        	add    $0x18,%esp
  ac9028:	85 c0                                           	test   %eax,%eax
  ac902a:	74 09                                           	je     0xac9035
  ac902c:	8b c8                                           	mov    %eax,%ecx
  ac902e:	e8 fd a9 09 00                                  	call   0xb63a30
  ac9033:	eb 02                                           	jmp    0xac9037
  ac9035:	33 c0                                           	xor    %eax,%eax
  ac9037:	56                                              	push   %esi
  ac9038:	8b c8                                           	mov    %eax,%ecx
  ac903a:	89 86 c8 02 00 00                               	mov    %eax,0x2c8(%esi)
  ac9040:	e8 eb 9c 09 00                                  	call   0xb62d30
  ac9045:	83 be cc 02 00 00 00                            	cmpl   $0x0,0x2cc(%esi)
  ac904c:	75 34                                           	jne    0xac9082
  ac904e:	6a 00                                           	push   $0x0
  ac9050:	6a 00                                           	push   $0x0
  ac9052:	6a 00                                           	push   $0x0
  ac9054:	6a 00                                           	push   $0x0
  ac9056:	68 1c 67 06 01                                  	push   $0x106671c
  ac905b:	6a 28                                           	push   $0x28
  ac905d:	e8 9e b4 a1 ff                                  	call   0x4e4500
  ac9062:	83 c4 18                                        	add    $0x18,%esp
  ac9065:	85 c0                                           	test   %eax,%eax
  ac9067:	74 09                                           	je     0xac9072
  ac9069:	8b c8                                           	mov    %eax,%ecx
  ac906b:	e8 10 d2 fa ff                                  	call   0xa76280
  ac9070:	eb 02                                           	jmp    0xac9074
  ac9072:	33 c0                                           	xor    %eax,%eax
  ac9074:	56                                              	push   %esi
  ac9075:	8b c8                                           	mov    %eax,%ecx
  ac9077:	89 86 cc 02 00 00                               	mov    %eax,0x2cc(%esi)
  ac907d:	e8 be eb 40 00                                  	call   0xed7c40
  ac9082:	83 be d4 02 00 00 00                            	cmpl   $0x0,0x2d4(%esi)
  ac9089:	75 34                                           	jne    0xac90bf
  ac908b:	6a 00                                           	push   $0x0
  ac908d:	6a 00                                           	push   $0x0
  ac908f:	6a 00                                           	push   $0x0
  ac9091:	6a 00                                           	push   $0x0
  ac9093:	68 00 67 06 01                                  	push   $0x1066700
  ac9098:	6a 74                                           	push   $0x74
  ac909a:	e8 61 b4 a1 ff                                  	call   0x4e4500
  ac909f:	83 c4 18                                        	add    $0x18,%esp
  ac90a2:	85 c0                                           	test   %eax,%eax
  ac90a4:	74 09                                           	je     0xac90af
  ac90a6:	8b c8                                           	mov    %eax,%ecx
  ac90a8:	e8 53 ae 00 00                                  	call   0xad3f00
  ac90ad:	eb 02                                           	jmp    0xac90b1
  ac90af:	33 c0                                           	xor    %eax,%eax
  ac90b1:	56                                              	push   %esi
  ac90b2:	8b c8                                           	mov    %eax,%ecx
  ac90b4:	89 86 d4 02 00 00                               	mov    %eax,0x2d4(%esi)
  ac90ba:	e8 61 9c 00 00                                  	call   0xad2d20
  ac90bf:	83 be d8 02 00 00 00                            	cmpl   $0x0,0x2d8(%esi)
  ac90c6:	75 34                                           	jne    0xac90fc
  ac90c8:	6a 00                                           	push   $0x0
  ac90ca:	6a 00                                           	push   $0x0
  ac90cc:	6a 00                                           	push   $0x0
  ac90ce:	6a 00                                           	push   $0x0
  ac90d0:	68 f0 66 06 01                                  	push   $0x10666f0
  ac90d5:	6a 38                                           	push   $0x38
  ac90d7:	e8 24 b4 a1 ff                                  	call   0x4e4500
  ac90dc:	83 c4 18                                        	add    $0x18,%esp
  ac90df:	85 c0                                           	test   %eax,%eax
  ac90e1:	74 09                                           	je     0xac90ec
  ac90e3:	8b c8                                           	mov    %eax,%ecx
  ac90e5:	e8 b6 08 14 00                                  	call   0xc099a0
  ac90ea:	eb 02                                           	jmp    0xac90ee
  ac90ec:	33 c0                                           	xor    %eax,%eax
  ac90ee:	56                                              	push   %esi
  ac90ef:	8b c8                                           	mov    %eax,%ecx
  ac90f1:	89 86 d8 02 00 00                               	mov    %eax,0x2d8(%esi)
  ac90f7:	e8 34 08 14 00                                  	call   0xc09930
  ac90fc:	68 00 80 00 00                                  	push   $0x8000
  ac9101:	b9 e0 ed 1c 01                                  	mov    $0x11cede0,%ecx
  ac9106:	e8 95 ac a5 ff                                  	call   0x523da0
  ac910b:	84 c0                                           	test   %al,%al
  ac910d:	74 3d                                           	je     0xac914c
  ac910f:	83 be e0 02 00 00 00                            	cmpl   $0x0,0x2e0(%esi)
  ac9116:	75 34                                           	jne    0xac914c
  ac9118:	6a 00                                           	push   $0x0
  ac911a:	6a 00                                           	push   $0x0
  ac911c:	6a 00                                           	push   $0x0
  ac911e:	6a 00                                           	push   $0x0
  ac9120:	68 d8 66 06 01                                  	push   $0x10666d8
  ac9125:	6a 3c                                           	push   $0x3c
  ac9127:	e8 d4 b3 a1 ff                                  	call   0x4e4500
  ac912c:	83 c4 18                                        	add    $0x18,%esp
  ac912f:	85 c0                                           	test   %eax,%eax
  ac9131:	74 09                                           	je     0xac913c
  ac9133:	8b c8                                           	mov    %eax,%ecx
  ac9135:	e8 36 54 0a 00                                  	call   0xb6e570
  ac913a:	eb 02                                           	jmp    0xac913e
  ac913c:	33 c0                                           	xor    %eax,%eax
  ac913e:	56                                              	push   %esi
  ac913f:	8b c8                                           	mov    %eax,%ecx
  ac9141:	89 86 e0 02 00 00                               	mov    %eax,0x2e0(%esi)
  ac9147:	e8 04 55 0a 00                                  	call   0xb6e650
  ac914c:	68 00 00 04 00                                  	push   $0x40000
  ac9151:	b9 e0 ed 1c 01                                  	mov    $0x11cede0,%ecx
  ac9156:	e8 45 ac a5 ff                                  	call   0x523da0
  ac915b:	84 c0                                           	test   %al,%al
  ac915d:	74 60                                           	je     0xac91bf
  ac915f:	83 be e4 02 00 00 00                            	cmpl   $0x0,0x2e4(%esi)
  ac9166:	75 57                                           	jne    0xac91bf
  ac9168:	83 be 08 04 00 00 01                            	cmpl   $0x1,0x408(%esi)
  ac916f:	75 4e                                           	jne    0xac91bf
  ac9171:	83 be 0c 04 00 00 50                            	cmpl   $0x50,0x40c(%esi)
  ac9178:	75 45                                           	jne    0xac91bf
  ac917a:	6a 00                                           	push   $0x0
  ac917c:	6a 00                                           	push   $0x0
  ac917e:	6a 00                                           	push   $0x0
  ac9180:	6a 00                                           	push   $0x0
  ac9182:	68 c0 66 06 01                                  	push   $0x10666c0
  ac9187:	6a 18                                           	push   $0x18
  ac9189:	e8 72 b3 a1 ff                                  	call   0x4e4500
  ac918e:	83 c4 18                                        	add    $0x18,%esp
  ac9191:	85 c0                                           	test   %eax,%eax
  ac9193:	74 1a                                           	je     0xac91af
  ac9195:	8b c8                                           	mov    %eax,%ecx
  ac9197:	e8 64 4d 14 00                                  	call   0xc0df00
  ac919c:	56                                              	push   %esi
  ac919d:	8b c8                                           	mov    %eax,%ecx
  ac919f:	89 86 e4 02 00 00                               	mov    %eax,0x2e4(%esi)
  ac91a5:	e8 66 4e 14 00                                  	call   0xc0e010
  ac91aa:	5e                                              	pop    %esi
  ac91ab:	83 c4 14                                        	add    $0x14,%esp
  ac91ae:	c3                                              	ret
  ac91af:	33 c0                                           	xor    %eax,%eax
  ac91b1:	56                                              	push   %esi
  ac91b2:	8b c8                                           	mov    %eax,%ecx
  ac91b4:	89 86 e4 02 00 00                               	mov    %eax,0x2e4(%esi)
  ac91ba:	e8 51 4e 14 00                                  	call   0xc0e010
  ac91bf:	5e                                              	pop    %esi
  ac91c0:	83 c4 14                                        	add    $0x14,%esp
  ac91c3:	c3                                              	ret
