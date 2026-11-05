# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055eb90 (Simulator_DoCPPProfile)
Paired Ghidra pseudocode: 1055EB90_Simulator_DoCPPProfile.c
Window: [0x1055eb90, 0x1055ec80) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055ec80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055eb90: 8b 44 24 08 56 57 83 ce ff 83 cf ff 83 f8 04 0f
1055eba0: 87 ab 00 00 00 8b 4c 24 0c 83 e9 00 74 66 83 e9
1055ebb0: 01 74 4c 83 e9 01 0f 85 94 00 00 00 ff 24 85 58
1055ebc0: ec 55 10 e8 78 fe ff ff 8b d7 5f 8b c6 5e c3 e8
1055ebd0: ac fe ff ff 8b d7 5f 8b c6 5e c3 e8 e0 fe ff ff
1055ebe0: 8b d7 5f 8b c6 5e c3 e8 24 ff ff ff 8b d7 5f 8b
1055ebf0: c6 5e c3 e8 58 ff ff ff 8b d7 5f 8b c6 5e c3 8b
1055ec00: 3c c5 fc af c7 10 8b 34 c5 f8 af c7 10 8b d7 5f
1055ec10: 8b c6 5e c3 ff 24 85 6c ec 55 10 e8 30 fd ff ff
1055ec20: 8b d7 5f 8b c6 5e c3 e8 54 fd ff ff 8b d7 5f 8b
1055ec30: c6 5e c3 e8 78 fd ff ff 8b d7 5f 8b c6 5e c3 e8
1055ec40: 9c fd ff ff 8b d7 5f 8b c6 5e c3 e8 c0 fd ff ff
1055ec50: 8b d7 5f 8b c6 5e c3 90 c3 eb 55 10 cf eb 55 10
1055ec60: db eb 55 10 e7 eb 55 10 f3 eb 55 10 1b ec 55 10
1055ec70: 27 ec 55 10 33 ec 55 10 3f ec 55 10 4b ec 55 10

LINEAR DISASSEMBLY
1055eb90 <.text+0x55db90>:
1055eb90:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1055eb94:	56                                              	push   esi
1055eb95:	57                                              	push   edi
1055eb96:	83 ce ff                                        	or     esi,0xffffffff
1055eb99:	83 cf ff                                        	or     edi,0xffffffff
1055eb9c:	83 f8 04                                        	cmp    eax,0x4
1055eb9f:	0f 87 ab 00 00 00                               	ja     0x1055ec50
1055eba5:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055eba9:	83 e9 00                                        	sub    ecx,0x0
1055ebac:	74 66                                           	je     0x1055ec14
1055ebae:	83 e9 01                                        	sub    ecx,0x1
1055ebb1:	74 4c                                           	je     0x1055ebff
1055ebb3:	83 e9 01                                        	sub    ecx,0x1
1055ebb6:	0f 85 94 00 00 00                               	jne    0x1055ec50
1055ebbc:	ff 24 85 58 ec 55 10                            	jmp    DWORD PTR [eax*4+0x1055ec58]
1055ebc3:	e8 78 fe ff ff                                  	call   0x1055ea40
1055ebc8:	8b d7                                           	mov    edx,edi
1055ebca:	5f                                              	pop    edi
1055ebcb:	8b c6                                           	mov    eax,esi
1055ebcd:	5e                                              	pop    esi
1055ebce:	c3                                              	ret
1055ebcf:	e8 ac fe ff ff                                  	call   0x1055ea80
1055ebd4:	8b d7                                           	mov    edx,edi
1055ebd6:	5f                                              	pop    edi
1055ebd7:	8b c6                                           	mov    eax,esi
1055ebd9:	5e                                              	pop    esi
1055ebda:	c3                                              	ret
1055ebdb:	e8 e0 fe ff ff                                  	call   0x1055eac0
1055ebe0:	8b d7                                           	mov    edx,edi
1055ebe2:	5f                                              	pop    edi
1055ebe3:	8b c6                                           	mov    eax,esi
1055ebe5:	5e                                              	pop    esi
1055ebe6:	c3                                              	ret
1055ebe7:	e8 24 ff ff ff                                  	call   0x1055eb10
1055ebec:	8b d7                                           	mov    edx,edi
1055ebee:	5f                                              	pop    edi
1055ebef:	8b c6                                           	mov    eax,esi
1055ebf1:	5e                                              	pop    esi
1055ebf2:	c3                                              	ret
1055ebf3:	e8 58 ff ff ff                                  	call   0x1055eb50
1055ebf8:	8b d7                                           	mov    edx,edi
1055ebfa:	5f                                              	pop    edi
1055ebfb:	8b c6                                           	mov    eax,esi
1055ebfd:	5e                                              	pop    esi
1055ebfe:	c3                                              	ret
1055ebff:	8b 3c c5 fc af c7 10                            	mov    edi,DWORD PTR [eax*8+0x10c7affc]
1055ec06:	8b 34 c5 f8 af c7 10                            	mov    esi,DWORD PTR [eax*8+0x10c7aff8]
1055ec0d:	8b d7                                           	mov    edx,edi
1055ec0f:	5f                                              	pop    edi
1055ec10:	8b c6                                           	mov    eax,esi
1055ec12:	5e                                              	pop    esi
1055ec13:	c3                                              	ret
1055ec14:	ff 24 85 6c ec 55 10                            	jmp    DWORD PTR [eax*4+0x1055ec6c]
1055ec1b:	e8 30 fd ff ff                                  	call   0x1055e950
1055ec20:	8b d7                                           	mov    edx,edi
1055ec22:	5f                                              	pop    edi
1055ec23:	8b c6                                           	mov    eax,esi
1055ec25:	5e                                              	pop    esi
1055ec26:	c3                                              	ret
1055ec27:	e8 54 fd ff ff                                  	call   0x1055e980
1055ec2c:	8b d7                                           	mov    edx,edi
1055ec2e:	5f                                              	pop    edi
1055ec2f:	8b c6                                           	mov    eax,esi
1055ec31:	5e                                              	pop    esi
1055ec32:	c3                                              	ret
1055ec33:	e8 78 fd ff ff                                  	call   0x1055e9b0
1055ec38:	8b d7                                           	mov    edx,edi
1055ec3a:	5f                                              	pop    edi
1055ec3b:	8b c6                                           	mov    eax,esi
1055ec3d:	5e                                              	pop    esi
1055ec3e:	c3                                              	ret
1055ec3f:	e8 9c fd ff ff                                  	call   0x1055e9e0
1055ec44:	8b d7                                           	mov    edx,edi
1055ec46:	5f                                              	pop    edi
1055ec47:	8b c6                                           	mov    eax,esi
1055ec49:	5e                                              	pop    esi
1055ec4a:	c3                                              	ret
1055ec4b:	e8 c0 fd ff ff                                  	call   0x1055ea10
1055ec50:	8b d7                                           	mov    edx,edi
1055ec52:	5f                                              	pop    edi
1055ec53:	8b c6                                           	mov    eax,esi
1055ec55:	5e                                              	pop    esi
1055ec56:	c3                                              	ret
1055ec57:	90                                              	nop
1055ec58:	c3                                              	ret
1055ec59:	eb 55                                           	jmp    0x1055ecb0
1055ec5b:	10 cf                                           	adc    bh,cl
1055ec5d:	eb 55                                           	jmp    0x1055ecb4
1055ec5f:	10 db                                           	adc    bl,bl
1055ec61:	eb 55                                           	jmp    0x1055ecb8
1055ec63:	10 e7                                           	adc    bh,ah
1055ec65:	eb 55                                           	jmp    0x1055ecbc
1055ec67:	10 f3                                           	adc    bl,dh
1055ec69:	eb 55                                           	jmp    0x1055ecc0
1055ec6b:	10 1b                                           	adc    BYTE PTR [ebx],bl
1055ec6d:	ec                                              	in     al,dx
1055ec6e:	55                                              	push   ebp
1055ec6f:	10 27                                           	adc    BYTE PTR [edi],ah
1055ec71:	ec                                              	in     al,dx
1055ec72:	55                                              	push   ebp
1055ec73:	10 33                                           	adc    BYTE PTR [ebx],dh
1055ec75:	ec                                              	in     al,dx
1055ec76:	55                                              	push   ebp
1055ec77:	10 3f                                           	adc    BYTE PTR [edi],bh
1055ec79:	ec                                              	in     al,dx
1055ec7a:	55                                              	push   ebp
1055ec7b:	10 4b ec                                        	adc    BYTE PTR [ebx-0x14],cl
1055ec7e:	55                                              	push   ebp
1055ec7f:	10                                            	adc    al,ch
