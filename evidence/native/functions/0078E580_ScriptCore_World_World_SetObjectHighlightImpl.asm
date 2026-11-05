# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078e580 (ScriptCore.World::World_SetObjectHighlightImpl)
Paired Ghidra pseudocode: 0078E580_ScriptCore_World_World_SetObjectHighlightImpl.c
Window: [0x0078e580, 0x0078e5e0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e5e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078e580: 51 e8 ea 8f 1a 00 85 c0 74 54 8b 4c 24 0c 8b 54
0078e590: 24 08 56 51 52 8b c8 e8 e4 99 1a 00 8b f0 85 f6
0078e5a0: 74 3b 57 8d 7e 04 8b c7 b9 01 00 00 00 f0 0f c1
0078e5b0: 08 8b 54 24 18 52 56 e8 a4 1b 37 00 83 c4 08 8b
0078e5c0: c7 83 c9 ff f0 0f c1 08 49 75 11 ba 01 00 00 00
0078e5d0: 87 17 8b 06 8b 10 6a 01 8b ce ff d2 5f 5e 59 c3

LINEAR DISASSEMBLY
0078e580 <.text+0x38d580>:
  78e580:	51                                              	push   ecx
  78e581:	e8 ea 8f 1a 00                                  	call   0x937570
  78e586:	85 c0                                           	test   eax,eax
  78e588:	74 54                                           	je     0x78e5de
  78e58a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78e58e:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  78e592:	56                                              	push   esi
  78e593:	51                                              	push   ecx
  78e594:	52                                              	push   edx
  78e595:	8b c8                                           	mov    ecx,eax
  78e597:	e8 e4 99 1a 00                                  	call   0x937f80
  78e59c:	8b f0                                           	mov    esi,eax
  78e59e:	85 f6                                           	test   esi,esi
  78e5a0:	74 3b                                           	je     0x78e5dd
  78e5a2:	57                                              	push   edi
  78e5a3:	8d 7e 04                                        	lea    edi,[esi+0x4]
  78e5a6:	8b c7                                           	mov    eax,edi
  78e5a8:	b9 01 00 00 00                                  	mov    ecx,0x1
  78e5ad:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78e5b1:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  78e5b5:	52                                              	push   edx
  78e5b6:	56                                              	push   esi
  78e5b7:	e8 a4 1b 37 00                                  	call   0xb00160
  78e5bc:	83 c4 08                                        	add    esp,0x8
  78e5bf:	8b c7                                           	mov    eax,edi
  78e5c1:	83 c9 ff                                        	or     ecx,0xffffffff
  78e5c4:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78e5c8:	49                                              	dec    ecx
  78e5c9:	75 11                                           	jne    0x78e5dc
  78e5cb:	ba 01 00 00 00                                  	mov    edx,0x1
  78e5d0:	87 17                                           	xchg   DWORD PTR [edi],edx
  78e5d2:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78e5d4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78e5d6:	6a 01                                           	push   0x1
  78e5d8:	8b ce                                           	mov    ecx,esi
  78e5da:	ff d2                                           	call   edx
  78e5dc:	5f                                              	pop    edi
  78e5dd:	5e                                              	pop    esi
  78e5de:	59                                              	pop    ecx
  78e5df:	c3                                              	ret
