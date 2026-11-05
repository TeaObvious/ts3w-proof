# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078a840 (ScriptCore.World::World_BurninateWindowImpl)
Paired Ghidra pseudocode: 0078A840_ScriptCore_World_World_BurninateWindowImpl.c
Window: [0x0078a840, 0x0078a8b0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078a8b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078a840: 51 56 e8 29 cd 1a 00 8b 4c 24 10 8b 54 24 0c 51
0078a850: 52 8b c8 e8 28 d7 1a 00 8b f0 85 f6 74 46 57 8d
0078a860: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 a8
0078a870: a2 1e 01 52 8b ce e8 e5 99 1a 00 85 c0 74 07 8b
0078a880: c8 e8 5a 38 1d 00 8b c7 83 c9 ff f0 0f c1 08 49
0078a890: 75 11 ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b
0078a8a0: ce ff d2 5f 5e 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078a840 <.text+0x389840>:
  78a840:	51                                              	push   ecx
  78a841:	56                                              	push   esi
  78a842:	e8 29 cd 1a 00                                  	call   0x937570
  78a847:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78a84b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78a84f:	51                                              	push   ecx
  78a850:	52                                              	push   edx
  78a851:	8b c8                                           	mov    ecx,eax
  78a853:	e8 28 d7 1a 00                                  	call   0x937f80
  78a858:	8b f0                                           	mov    esi,eax
  78a85a:	85 f6                                           	test   esi,esi
  78a85c:	74 46                                           	je     0x78a8a4
  78a85e:	57                                              	push   edi
  78a85f:	8d 7e 04                                        	lea    edi,[esi+0x4]
  78a862:	8b c7                                           	mov    eax,edi
  78a864:	b9 01 00 00 00                                  	mov    ecx,0x1
  78a869:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78a86d:	8b 15 a8 a2 1e 01                               	mov    edx,DWORD PTR ds:0x11ea2a8
  78a873:	52                                              	push   edx
  78a874:	8b ce                                           	mov    ecx,esi
  78a876:	e8 e5 99 1a 00                                  	call   0x934260
  78a87b:	85 c0                                           	test   eax,eax
  78a87d:	74 07                                           	je     0x78a886
  78a87f:	8b c8                                           	mov    ecx,eax
  78a881:	e8 5a 38 1d 00                                  	call   0x95e0e0
  78a886:	8b c7                                           	mov    eax,edi
  78a888:	83 c9 ff                                        	or     ecx,0xffffffff
  78a88b:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78a88f:	49                                              	dec    ecx
  78a890:	75 11                                           	jne    0x78a8a3
  78a892:	ba 01 00 00 00                                  	mov    edx,0x1
  78a897:	87 17                                           	xchg   DWORD PTR [edi],edx
  78a899:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78a89b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78a89d:	6a 01                                           	push   0x1
  78a89f:	8b ce                                           	mov    ecx,esi
  78a8a1:	ff d2                                           	call   edx
  78a8a3:	5f                                              	pop    edi
  78a8a4:	5e                                              	pop    esi
  78a8a5:	59                                              	pop    ecx
  78a8a6:	c3                                              	ret
  78a8a7:	cc                                              	int3
  78a8a8:	cc                                              	int3
  78a8a9:	cc                                              	int3
  78a8aa:	cc                                              	int3
  78a8ab:	cc                                              	int3
  78a8ac:	cc                                              	int3
  78a8ad:	cc                                              	int3
  78a8ae:	cc                                              	int3
  78a8af:	cc                                              	int3
