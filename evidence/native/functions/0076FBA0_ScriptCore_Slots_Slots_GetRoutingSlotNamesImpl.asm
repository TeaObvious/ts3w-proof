# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076fba0 (ScriptCore.Slots::Slots_GetRoutingSlotNamesImpl)
Paired Ghidra pseudocode: 0076FBA0_ScriptCore_Slots_Slots_GetRoutingSlotNamesImpl.c
Window: [0x0076fba0, 0x0076fcf0) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076fcf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076fba0: 83 ec 20 53 55 56 57 e8 e4 97 ff ff 89 44 24 1c
0076fbb0: e8 bb 79 1c 00 8b 4c 24 38 8b 54 24 34 51 52 8b
0076fbc0: c8 e8 ba 83 1c 00 8b f8 33 f6 3b fe 89 7c 24 14
0076fbd0: 74 2b 8d 47 04 b9 01 00 00 00 f0 0f c1 08 8b 15
0076fbe0: 58 a1 1e 01 52 8b cf e8 74 46 1c 00 a1 14 a1 1e
0076fbf0: 01 50 8b cf e8 67 46 1c 00 8b e8 eb 02 33 ed 33
0076fc00: db 85 ed 89 74 24 20 89 74 24 24 89 5c 24 28 c7
0076fc10: 44 24 2c 48 99 00 01 74 4d 8b 5d 08 33 ff 85 db
0076fc20: 7e 40 57 8b cd e8 26 02 1e 00 3b 74 24 28 8b 40
0076fc30: 04 89 44 24 18 73 11 8b ce 83 c6 04 85 c9 89 74
0076fc40: 24 24 74 17 89 01 eb 13 8d 4c 24 18 51 56 8d 4c
0076fc50: 24 28 e8 c9 27 21 00 8b 74 24 24 83 c7 01 3b fb
0076fc60: 7c c0 8b 7c 24 14 85 db c7 44 24 10 00 00 00 00
0076fc70: 7e 2f 8b 74 24 1c 8b 16 8b 92 84 00 00 00 53 8d
0076fc80: 44 24 14 50 8b ce ff d2 8b 4c 24 20 8b 06 8b 80
0076fc90: 9c 00 00 00 53 6a 00 51 8d 54 24 1c 52 8b ce ff
0076fca0: d0 8b 44 24 20 85 c0 8b 74 24 10 74 09 50 e8 2d
0076fcb0: 48 d7 ff 83 c4 04 85 ff 74 20 8d 47 04 8b c8 83
0076fcc0: ca ff f0 0f c1 11 4a 75 11 b9 01 00 00 00 87 08
0076fcd0: 8b 17 8b 02 6a 01 8b cf ff d0 5f 8b c6 5e 5d 5b
0076fce0: 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076fba0 <.text+0x36eba0>:
  76fba0:	83 ec 20                                        	sub    esp,0x20
  76fba3:	53                                              	push   ebx
  76fba4:	55                                              	push   ebp
  76fba5:	56                                              	push   esi
  76fba6:	57                                              	push   edi
  76fba7:	e8 e4 97 ff ff                                  	call   0x769390
  76fbac:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  76fbb0:	e8 bb 79 1c 00                                  	call   0x937570
  76fbb5:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  76fbb9:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  76fbbd:	51                                              	push   ecx
  76fbbe:	52                                              	push   edx
  76fbbf:	8b c8                                           	mov    ecx,eax
  76fbc1:	e8 ba 83 1c 00                                  	call   0x937f80
  76fbc6:	8b f8                                           	mov    edi,eax
  76fbc8:	33 f6                                           	xor    esi,esi
  76fbca:	3b fe                                           	cmp    edi,esi
  76fbcc:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  76fbd0:	74 2b                                           	je     0x76fbfd
  76fbd2:	8d 47 04                                        	lea    eax,[edi+0x4]
  76fbd5:	b9 01 00 00 00                                  	mov    ecx,0x1
  76fbda:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  76fbde:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  76fbe4:	52                                              	push   edx
  76fbe5:	8b cf                                           	mov    ecx,edi
  76fbe7:	e8 74 46 1c 00                                  	call   0x934260
  76fbec:	a1 14 a1 1e 01                                  	mov    eax,ds:0x11ea114
  76fbf1:	50                                              	push   eax
  76fbf2:	8b cf                                           	mov    ecx,edi
  76fbf4:	e8 67 46 1c 00                                  	call   0x934260
  76fbf9:	8b e8                                           	mov    ebp,eax
  76fbfb:	eb 02                                           	jmp    0x76fbff
  76fbfd:	33 ed                                           	xor    ebp,ebp
  76fbff:	33 db                                           	xor    ebx,ebx
  76fc01:	85 ed                                           	test   ebp,ebp
  76fc03:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  76fc07:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  76fc0b:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  76fc0f:	c7 44 24 2c 48 99 00 01                         	mov    DWORD PTR [esp+0x2c],0x1009948
  76fc17:	74 4d                                           	je     0x76fc66
  76fc19:	8b 5d 08                                        	mov    ebx,DWORD PTR [ebp+0x8]
  76fc1c:	33 ff                                           	xor    edi,edi
  76fc1e:	85 db                                           	test   ebx,ebx
  76fc20:	7e 40                                           	jle    0x76fc62
  76fc22:	57                                              	push   edi
  76fc23:	8b cd                                           	mov    ecx,ebp
  76fc25:	e8 26 02 1e 00                                  	call   0x94fe50
  76fc2a:	3b 74 24 28                                     	cmp    esi,DWORD PTR [esp+0x28]
  76fc2e:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
  76fc31:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  76fc35:	73 11                                           	jae    0x76fc48
  76fc37:	8b ce                                           	mov    ecx,esi
  76fc39:	83 c6 04                                        	add    esi,0x4
  76fc3c:	85 c9                                           	test   ecx,ecx
  76fc3e:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  76fc42:	74 17                                           	je     0x76fc5b
  76fc44:	89 01                                           	mov    DWORD PTR [ecx],eax
  76fc46:	eb 13                                           	jmp    0x76fc5b
  76fc48:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  76fc4c:	51                                              	push   ecx
  76fc4d:	56                                              	push   esi
  76fc4e:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  76fc52:	e8 c9 27 21 00                                  	call   0x982420
  76fc57:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
  76fc5b:	83 c7 01                                        	add    edi,0x1
  76fc5e:	3b fb                                           	cmp    edi,ebx
  76fc60:	7c c0                                           	jl     0x76fc22
  76fc62:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  76fc66:	85 db                                           	test   ebx,ebx
  76fc68:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  76fc70:	7e 2f                                           	jle    0x76fca1
  76fc72:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  76fc76:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76fc78:	8b 92 84 00 00 00                               	mov    edx,DWORD PTR [edx+0x84]
  76fc7e:	53                                              	push   ebx
  76fc7f:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  76fc83:	50                                              	push   eax
  76fc84:	8b ce                                           	mov    ecx,esi
  76fc86:	ff d2                                           	call   edx
  76fc88:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  76fc8c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76fc8e:	8b 80 9c 00 00 00                               	mov    eax,DWORD PTR [eax+0x9c]
  76fc94:	53                                              	push   ebx
  76fc95:	6a 00                                           	push   0x0
  76fc97:	51                                              	push   ecx
  76fc98:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  76fc9c:	52                                              	push   edx
  76fc9d:	8b ce                                           	mov    ecx,esi
  76fc9f:	ff d0                                           	call   eax
  76fca1:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  76fca5:	85 c0                                           	test   eax,eax
  76fca7:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  76fcab:	74 09                                           	je     0x76fcb6
  76fcad:	50                                              	push   eax
  76fcae:	e8 2d 48 d7 ff                                  	call   0x4e44e0
  76fcb3:	83 c4 04                                        	add    esp,0x4
  76fcb6:	85 ff                                           	test   edi,edi
  76fcb8:	74 20                                           	je     0x76fcda
  76fcba:	8d 47 04                                        	lea    eax,[edi+0x4]
  76fcbd:	8b c8                                           	mov    ecx,eax
  76fcbf:	83 ca ff                                        	or     edx,0xffffffff
  76fcc2:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  76fcc6:	4a                                              	dec    edx
  76fcc7:	75 11                                           	jne    0x76fcda
  76fcc9:	b9 01 00 00 00                                  	mov    ecx,0x1
  76fcce:	87 08                                           	xchg   DWORD PTR [eax],ecx
  76fcd0:	8b 17                                           	mov    edx,DWORD PTR [edi]
  76fcd2:	8b 02                                           	mov    eax,DWORD PTR [edx]
  76fcd4:	6a 01                                           	push   0x1
  76fcd6:	8b cf                                           	mov    ecx,edi
  76fcd8:	ff d0                                           	call   eax
  76fcda:	5f                                              	pop    edi
  76fcdb:	8b c6                                           	mov    eax,esi
  76fcdd:	5e                                              	pop    esi
  76fcde:	5d                                              	pop    ebp
  76fcdf:	5b                                              	pop    ebx
  76fce0:	83 c4 20                                        	add    esp,0x20
  76fce3:	c3                                              	ret
  76fce4:	cc                                              	int3
  76fce5:	cc                                              	int3
  76fce6:	cc                                              	int3
  76fce7:	cc                                              	int3
  76fce8:	cc                                              	int3
  76fce9:	cc                                              	int3
  76fcea:	cc                                              	int3
  76fceb:	cc                                              	int3
  76fcec:	cc                                              	int3
  76fced:	cc                                              	int3
  76fcee:	cc                                              	int3
  76fcef:	cc                                              	int3
