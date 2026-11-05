# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073b1e0 (ScriptCore.Animation::Animation_EnableDisableLargeAnimalEvalNode)
Paired Ghidra pseudocode: 0073B1E0_ScriptCore_Animation_Animation_EnableDisableLargeAnimalEvalNode.c
Window: [0x0073b1e0, 0x0073b260) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073b260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073b1e0: 51 56 e8 89 c3 1f 00 8b 4c 24 10 8b 54 24 0c 51
0073b1f0: 52 8b c8 e8 88 cd 1f 00 8b f0 85 f6 74 56 57 8d
0073b200: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 84
0073b210: d4 1d 01 52 8b ce e8 45 90 1f 00 85 c0 74 17 80
0073b220: 7c 24 18 00 74 09 81 60 2c ff ff fb ff eb 07 81
0073b230: 48 2c 00 00 04 00 8b c7 83 c9 ff f0 0f c1 08 49
0073b240: 75 11 ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b
0073b250: ce ff d2 5f 5e 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073b1e0 <.text+0x33a1e0>:
  73b1e0:	51                                              	push   ecx
  73b1e1:	56                                              	push   esi
  73b1e2:	e8 89 c3 1f 00                                  	call   0x937570
  73b1e7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73b1eb:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  73b1ef:	51                                              	push   ecx
  73b1f0:	52                                              	push   edx
  73b1f1:	8b c8                                           	mov    ecx,eax
  73b1f3:	e8 88 cd 1f 00                                  	call   0x937f80
  73b1f8:	8b f0                                           	mov    esi,eax
  73b1fa:	85 f6                                           	test   esi,esi
  73b1fc:	74 56                                           	je     0x73b254
  73b1fe:	57                                              	push   edi
  73b1ff:	8d 7e 04                                        	lea    edi,[esi+0x4]
  73b202:	8b c7                                           	mov    eax,edi
  73b204:	b9 01 00 00 00                                  	mov    ecx,0x1
  73b209:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73b20d:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  73b213:	52                                              	push   edx
  73b214:	8b ce                                           	mov    ecx,esi
  73b216:	e8 45 90 1f 00                                  	call   0x934260
  73b21b:	85 c0                                           	test   eax,eax
  73b21d:	74 17                                           	je     0x73b236
  73b21f:	80 7c 24 18 00                                  	cmp    BYTE PTR [esp+0x18],0x0
  73b224:	74 09                                           	je     0x73b22f
  73b226:	81 60 2c ff ff fb ff                            	and    DWORD PTR [eax+0x2c],0xfffbffff
  73b22d:	eb 07                                           	jmp    0x73b236
  73b22f:	81 48 2c 00 00 04 00                            	or     DWORD PTR [eax+0x2c],0x40000
  73b236:	8b c7                                           	mov    eax,edi
  73b238:	83 c9 ff                                        	or     ecx,0xffffffff
  73b23b:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73b23f:	49                                              	dec    ecx
  73b240:	75 11                                           	jne    0x73b253
  73b242:	ba 01 00 00 00                                  	mov    edx,0x1
  73b247:	87 17                                           	xchg   DWORD PTR [edi],edx
  73b249:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73b24b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73b24d:	6a 01                                           	push   0x1
  73b24f:	8b ce                                           	mov    ecx,esi
  73b251:	ff d2                                           	call   edx
  73b253:	5f                                              	pop    edi
  73b254:	5e                                              	pop    esi
  73b255:	59                                              	pop    ecx
  73b256:	c3                                              	ret
  73b257:	cc                                              	int3
  73b258:	cc                                              	int3
  73b259:	cc                                              	int3
  73b25a:	cc                                              	int3
  73b25b:	cc                                              	int3
  73b25c:	cc                                              	int3
  73b25d:	cc                                              	int3
  73b25e:	cc                                              	int3
  73b25f:	cc                                              	int3
