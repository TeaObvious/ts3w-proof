# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078a740 (ScriptCore.World::World_LightSetDimmerImpl)
Paired Ghidra pseudocode: 0078A740_ScriptCore_World_World_LightSetDimmerImpl.c
Window: [0x0078a740, 0x0078a7b0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078a7b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078a740: 51 56 e8 29 ce 1a 00 8b 4c 24 10 8b 54 24 0c 51
0078a750: 52 8b c8 e8 28 d8 1a 00 8b f0 85 f6 74 4e 57 8d
0078a760: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 c0
0078a770: 9f 1e 01 52 8b ce e8 e5 9a 1a 00 85 c0 74 0f d9
0078a780: 44 24 18 51 8b c8 d9 1c 24 e8 22 d6 1b 00 8b c7
0078a790: 83 c9 ff f0 0f c1 08 49 75 11 ba 01 00 00 00 87
0078a7a0: 17 8b 06 8b 10 6a 01 8b ce ff d2 5f 5e 59 c3 cc

LINEAR DISASSEMBLY
0078a740 <.text+0x389740>:
  78a740:	51                                              	push   ecx
  78a741:	56                                              	push   esi
  78a742:	e8 29 ce 1a 00                                  	call   0x937570
  78a747:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78a74b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78a74f:	51                                              	push   ecx
  78a750:	52                                              	push   edx
  78a751:	8b c8                                           	mov    ecx,eax
  78a753:	e8 28 d8 1a 00                                  	call   0x937f80
  78a758:	8b f0                                           	mov    esi,eax
  78a75a:	85 f6                                           	test   esi,esi
  78a75c:	74 4e                                           	je     0x78a7ac
  78a75e:	57                                              	push   edi
  78a75f:	8d 7e 04                                        	lea    edi,[esi+0x4]
  78a762:	8b c7                                           	mov    eax,edi
  78a764:	b9 01 00 00 00                                  	mov    ecx,0x1
  78a769:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78a76d:	8b 15 c0 9f 1e 01                               	mov    edx,DWORD PTR ds:0x11e9fc0
  78a773:	52                                              	push   edx
  78a774:	8b ce                                           	mov    ecx,esi
  78a776:	e8 e5 9a 1a 00                                  	call   0x934260
  78a77b:	85 c0                                           	test   eax,eax
  78a77d:	74 0f                                           	je     0x78a78e
  78a77f:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  78a783:	51                                              	push   ecx
  78a784:	8b c8                                           	mov    ecx,eax
  78a786:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78a789:	e8 22 d6 1b 00                                  	call   0x947db0
  78a78e:	8b c7                                           	mov    eax,edi
  78a790:	83 c9 ff                                        	or     ecx,0xffffffff
  78a793:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78a797:	49                                              	dec    ecx
  78a798:	75 11                                           	jne    0x78a7ab
  78a79a:	ba 01 00 00 00                                  	mov    edx,0x1
  78a79f:	87 17                                           	xchg   DWORD PTR [edi],edx
  78a7a1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78a7a3:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78a7a5:	6a 01                                           	push   0x1
  78a7a7:	8b ce                                           	mov    ecx,esi
  78a7a9:	ff d2                                           	call   edx
  78a7ab:	5f                                              	pop    edi
  78a7ac:	5e                                              	pop    esi
  78a7ad:	59                                              	pop    ecx
  78a7ae:	c3                                              	ret
  78a7af:	cc                                              	int3
