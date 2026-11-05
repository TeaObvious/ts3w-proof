# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fcc0 (SlotComponent_GetSlot)
Paired Ghidra pseudocode: 1097FCC0_SlotComponent_GetSlot.c
Window: [0x1097fcc0, 0x1097fdb0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fdb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fcc0: 8b 4c 24 04 85 c9 0f 84 c2 00 00 00 8b 44 24 08
1097fcd0: 83 f8 05 0f 87 b5 00 00 00 ff 24 85 94 fd 97 10
1097fce0: 83 7c 24 10 00 74 0b 8b 44 24 0c 50 e8 df 28 dc
1097fcf0: ff c3 8b 54 24 0c 52 e8 b4 28 dc ff c3 83 7c 24
1097fd00: 10 00 74 0b 8b 44 24 0c 50 e8 42 2e dc ff c3 8b
1097fd10: 54 24 0c 52 e8 f7 2d dc ff c3 83 7c 24 10 00 74
1097fd20: 0b 8b 44 24 0c 50 e8 05 29 dc ff c3 8b 54 24 0c
1097fd30: 52 e8 da 28 dc ff c3 83 7c 24 10 00 74 0b 8b 44
1097fd40: 24 0c 50 e8 48 29 dc ff c3 8b 54 24 0c 52 e8 1d
1097fd50: 29 dc ff c3 83 7c 24 10 00 74 0b 8b 44 24 0c 50
1097fd60: e8 8b 29 dc ff c3 8b 54 24 0c 52 e8 60 29 dc ff
1097fd70: c3 83 7c 24 10 00 74 0b 8b 44 24 0c 50 e8 4e 34
1097fd80: dc ff c3 8b 54 24 0c 52 e8 d3 33 dc ff c3 33 c0
1097fd90: c3 8d 49 00 71 fd 97 10 e0 fc 97 10 fd fc 97 10
1097fda0: 1a fd 97 10 37 fd 97 10 54 fd 97 10 cc cc cc cc

LINEAR DISASSEMBLY
1097fcc0 <.text+0x97ecc0>:
1097fcc0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097fcc4:	85 c9                                           	test   ecx,ecx
1097fcc6:	0f 84 c2 00 00 00                               	je     0x1097fd8e
1097fccc:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097fcd0:	83 f8 05                                        	cmp    eax,0x5
1097fcd3:	0f 87 b5 00 00 00                               	ja     0x1097fd8e
1097fcd9:	ff 24 85 94 fd 97 10                            	jmp    DWORD PTR [eax*4+0x1097fd94]
1097fce0:	83 7c 24 10 00                                  	cmp    DWORD PTR [esp+0x10],0x0
1097fce5:	74 0b                                           	je     0x1097fcf2
1097fce7:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1097fceb:	50                                              	push   eax
1097fcec:	e8 df 28 dc ff                                  	call   0x107425d0
1097fcf1:	c3                                              	ret
1097fcf2:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1097fcf6:	52                                              	push   edx
1097fcf7:	e8 b4 28 dc ff                                  	call   0x107425b0
1097fcfc:	c3                                              	ret
1097fcfd:	83 7c 24 10 00                                  	cmp    DWORD PTR [esp+0x10],0x0
1097fd02:	74 0b                                           	je     0x1097fd0f
1097fd04:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1097fd08:	50                                              	push   eax
1097fd09:	e8 42 2e dc ff                                  	call   0x10742b50
1097fd0e:	c3                                              	ret
1097fd0f:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1097fd13:	52                                              	push   edx
1097fd14:	e8 f7 2d dc ff                                  	call   0x10742b10
1097fd19:	c3                                              	ret
1097fd1a:	83 7c 24 10 00                                  	cmp    DWORD PTR [esp+0x10],0x0
1097fd1f:	74 0b                                           	je     0x1097fd2c
1097fd21:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1097fd25:	50                                              	push   eax
1097fd26:	e8 05 29 dc ff                                  	call   0x10742630
1097fd2b:	c3                                              	ret
1097fd2c:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1097fd30:	52                                              	push   edx
1097fd31:	e8 da 28 dc ff                                  	call   0x10742610
1097fd36:	c3                                              	ret
1097fd37:	83 7c 24 10 00                                  	cmp    DWORD PTR [esp+0x10],0x0
1097fd3c:	74 0b                                           	je     0x1097fd49
1097fd3e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1097fd42:	50                                              	push   eax
1097fd43:	e8 48 29 dc ff                                  	call   0x10742690
1097fd48:	c3                                              	ret
1097fd49:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1097fd4d:	52                                              	push   edx
1097fd4e:	e8 1d 29 dc ff                                  	call   0x10742670
1097fd53:	c3                                              	ret
1097fd54:	83 7c 24 10 00                                  	cmp    DWORD PTR [esp+0x10],0x0
1097fd59:	74 0b                                           	je     0x1097fd66
1097fd5b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1097fd5f:	50                                              	push   eax
1097fd60:	e8 8b 29 dc ff                                  	call   0x107426f0
1097fd65:	c3                                              	ret
1097fd66:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1097fd6a:	52                                              	push   edx
1097fd6b:	e8 60 29 dc ff                                  	call   0x107426d0
1097fd70:	c3                                              	ret
1097fd71:	83 7c 24 10 00                                  	cmp    DWORD PTR [esp+0x10],0x0
1097fd76:	74 0b                                           	je     0x1097fd83
1097fd78:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1097fd7c:	50                                              	push   eax
1097fd7d:	e8 4e 34 dc ff                                  	call   0x107431d0
1097fd82:	c3                                              	ret
1097fd83:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1097fd87:	52                                              	push   edx
1097fd88:	e8 d3 33 dc ff                                  	call   0x10743160
1097fd8d:	c3                                              	ret
1097fd8e:	33 c0                                           	xor    eax,eax
1097fd90:	c3                                              	ret
1097fd91:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1097fd94:	71 fd                                           	jno    0x1097fd93
1097fd96:	97                                              	xchg   edi,eax
1097fd97:	10 e0                                           	adc    al,ah
1097fd99:	fc                                              	cld
1097fd9a:	97                                              	xchg   edi,eax
1097fd9b:	10 fd                                           	adc    ch,bh
1097fd9d:	fc                                              	cld
1097fd9e:	97                                              	xchg   edi,eax
1097fd9f:	10 1a                                           	adc    BYTE PTR [edx],bl
1097fda1:	fd                                              	std
1097fda2:	97                                              	xchg   edi,eax
1097fda3:	10 37                                           	adc    BYTE PTR [edi],dh
1097fda5:	fd                                              	std
1097fda6:	97                                              	xchg   edi,eax
1097fda7:	10 54 fd 97                                     	adc    BYTE PTR [ebp+edi*8-0x69],dl
1097fdab:	10 cc                                           	adc    ah,cl
1097fdad:	cc                                              	int3
1097fdae:	cc                                              	int3
1097fdaf:	cc                                              	int3
