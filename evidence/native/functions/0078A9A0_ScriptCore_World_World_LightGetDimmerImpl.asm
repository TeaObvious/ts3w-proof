# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078a9a0 (ScriptCore.World::World_LightGetDimmerImpl)
Paired Ghidra pseudocode: 0078A9A0_ScriptCore_World_World_LightGetDimmerImpl.c
Window: [0x0078a9a0, 0x0078aa40) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078aa40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078a9a0: 83 ec 08 56 57 e8 c6 cb 1a 00 8b 4c 24 18 8b 54
0078a9b0: 24 14 51 52 8b c8 e8 c5 d5 1a 00 8b f0 85 f6 74
0078a9c0: 6f 8d 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b
0078a9d0: 15 c0 9f 1e 01 52 8b ce e8 83 98 1a 00 85 c0 74
0078a9e0: 32 8b c8 e8 f8 3a 25 00 d9 5c 24 08 8b c7 83 c9
0078a9f0: ff f0 0f c1 08 49 75 11 ba 01 00 00 00 87 17 8b
0078aa00: 06 8b 10 6a 01 8b ce ff d2 d9 44 24 08 5f 5e 83
0078aa10: c4 08 c3 8b c7 83 c9 ff f0 0f c1 08 49 75 11 ba
0078aa20: 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b ce ff d2
0078aa30: d9 ee 5f 5e 83 c4 08 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078a9a0 <.text+0x3899a0>:
  78a9a0:	83 ec 08                                        	sub    esp,0x8
  78a9a3:	56                                              	push   esi
  78a9a4:	57                                              	push   edi
  78a9a5:	e8 c6 cb 1a 00                                  	call   0x937570
  78a9aa:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  78a9ae:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  78a9b2:	51                                              	push   ecx
  78a9b3:	52                                              	push   edx
  78a9b4:	8b c8                                           	mov    ecx,eax
  78a9b6:	e8 c5 d5 1a 00                                  	call   0x937f80
  78a9bb:	8b f0                                           	mov    esi,eax
  78a9bd:	85 f6                                           	test   esi,esi
  78a9bf:	74 6f                                           	je     0x78aa30
  78a9c1:	8d 7e 04                                        	lea    edi,[esi+0x4]
  78a9c4:	8b c7                                           	mov    eax,edi
  78a9c6:	b9 01 00 00 00                                  	mov    ecx,0x1
  78a9cb:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78a9cf:	8b 15 c0 9f 1e 01                               	mov    edx,DWORD PTR ds:0x11e9fc0
  78a9d5:	52                                              	push   edx
  78a9d6:	8b ce                                           	mov    ecx,esi
  78a9d8:	e8 83 98 1a 00                                  	call   0x934260
  78a9dd:	85 c0                                           	test   eax,eax
  78a9df:	74 32                                           	je     0x78aa13
  78a9e1:	8b c8                                           	mov    ecx,eax
  78a9e3:	e8 f8 3a 25 00                                  	call   0x9de4e0
  78a9e8:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  78a9ec:	8b c7                                           	mov    eax,edi
  78a9ee:	83 c9 ff                                        	or     ecx,0xffffffff
  78a9f1:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78a9f5:	49                                              	dec    ecx
  78a9f6:	75 11                                           	jne    0x78aa09
  78a9f8:	ba 01 00 00 00                                  	mov    edx,0x1
  78a9fd:	87 17                                           	xchg   DWORD PTR [edi],edx
  78a9ff:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78aa01:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78aa03:	6a 01                                           	push   0x1
  78aa05:	8b ce                                           	mov    ecx,esi
  78aa07:	ff d2                                           	call   edx
  78aa09:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  78aa0d:	5f                                              	pop    edi
  78aa0e:	5e                                              	pop    esi
  78aa0f:	83 c4 08                                        	add    esp,0x8
  78aa12:	c3                                              	ret
  78aa13:	8b c7                                           	mov    eax,edi
  78aa15:	83 c9 ff                                        	or     ecx,0xffffffff
  78aa18:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78aa1c:	49                                              	dec    ecx
  78aa1d:	75 11                                           	jne    0x78aa30
  78aa1f:	ba 01 00 00 00                                  	mov    edx,0x1
  78aa24:	87 17                                           	xchg   DWORD PTR [edi],edx
  78aa26:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78aa28:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78aa2a:	6a 01                                           	push   0x1
  78aa2c:	8b ce                                           	mov    ecx,esi
  78aa2e:	ff d2                                           	call   edx
  78aa30:	d9 ee                                           	fldz
  78aa32:	5f                                              	pop    edi
  78aa33:	5e                                              	pop    esi
  78aa34:	83 c4 08                                        	add    esp,0x8
  78aa37:	c3                                              	ret
  78aa38:	cc                                              	int3
  78aa39:	cc                                              	int3
  78aa3a:	cc                                              	int3
  78aa3b:	cc                                              	int3
  78aa3c:	cc                                              	int3
  78aa3d:	cc                                              	int3
  78aa3e:	cc                                              	int3
  78aa3f:	cc                                              	int3
