# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076f020 (ScriptCore.Slots::Slots_EnableSlotImpl)
Paired Ghidra pseudocode: 0076F020_ScriptCore_Slots_Slots_EnableSlotImpl.c
Window: [0x0076f020, 0x0076f0c0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076f0c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076f020: 51 56 57 e8 48 85 1c 00 8b 4c 24 14 8b 54 24 10
0076f030: 51 52 8b c8 e8 47 8f 1c 00 8b f0 85 f6 74 77 8d
0076f040: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 14
0076f050: a1 1e 01 52 8b ce e8 05 52 1c 00 85 c0 74 3a 80
0076f060: 7c 24 1c 00 8b 54 24 18 0f 94 c1 51 6a 01 52 8b
0076f070: c8 e8 da 12 1e 00 8b c7 83 c9 ff f0 0f c1 08 49
0076f080: 75 11 ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b
0076f090: ce ff d2 5f b0 01 5e 59 c3 8b c7 83 c9 ff f0 0f
0076f0a0: c1 08 49 75 11 ba 01 00 00 00 87 17 8b 06 8b 10
0076f0b0: 6a 01 8b ce ff d2 5f 32 c0 5e 59 c3 cc cc cc cc

LINEAR DISASSEMBLY
0076f020 <.text+0x36e020>:
  76f020:	51                                              	push   ecx
  76f021:	56                                              	push   esi
  76f022:	57                                              	push   edi
  76f023:	e8 48 85 1c 00                                  	call   0x937570
  76f028:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  76f02c:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  76f030:	51                                              	push   ecx
  76f031:	52                                              	push   edx
  76f032:	8b c8                                           	mov    ecx,eax
  76f034:	e8 47 8f 1c 00                                  	call   0x937f80
  76f039:	8b f0                                           	mov    esi,eax
  76f03b:	85 f6                                           	test   esi,esi
  76f03d:	74 77                                           	je     0x76f0b6
  76f03f:	8d 7e 04                                        	lea    edi,[esi+0x4]
  76f042:	8b c7                                           	mov    eax,edi
  76f044:	b9 01 00 00 00                                  	mov    ecx,0x1
  76f049:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  76f04d:	8b 15 14 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea114
  76f053:	52                                              	push   edx
  76f054:	8b ce                                           	mov    ecx,esi
  76f056:	e8 05 52 1c 00                                  	call   0x934260
  76f05b:	85 c0                                           	test   eax,eax
  76f05d:	74 3a                                           	je     0x76f099
  76f05f:	80 7c 24 1c 00                                  	cmp    BYTE PTR [esp+0x1c],0x0
  76f064:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  76f068:	0f 94 c1                                        	sete   cl
  76f06b:	51                                              	push   ecx
  76f06c:	6a 01                                           	push   0x1
  76f06e:	52                                              	push   edx
  76f06f:	8b c8                                           	mov    ecx,eax
  76f071:	e8 da 12 1e 00                                  	call   0x950350
  76f076:	8b c7                                           	mov    eax,edi
  76f078:	83 c9 ff                                        	or     ecx,0xffffffff
  76f07b:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  76f07f:	49                                              	dec    ecx
  76f080:	75 11                                           	jne    0x76f093
  76f082:	ba 01 00 00 00                                  	mov    edx,0x1
  76f087:	87 17                                           	xchg   DWORD PTR [edi],edx
  76f089:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76f08b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76f08d:	6a 01                                           	push   0x1
  76f08f:	8b ce                                           	mov    ecx,esi
  76f091:	ff d2                                           	call   edx
  76f093:	5f                                              	pop    edi
  76f094:	b0 01                                           	mov    al,0x1
  76f096:	5e                                              	pop    esi
  76f097:	59                                              	pop    ecx
  76f098:	c3                                              	ret
  76f099:	8b c7                                           	mov    eax,edi
  76f09b:	83 c9 ff                                        	or     ecx,0xffffffff
  76f09e:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  76f0a2:	49                                              	dec    ecx
  76f0a3:	75 11                                           	jne    0x76f0b6
  76f0a5:	ba 01 00 00 00                                  	mov    edx,0x1
  76f0aa:	87 17                                           	xchg   DWORD PTR [edi],edx
  76f0ac:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76f0ae:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76f0b0:	6a 01                                           	push   0x1
  76f0b2:	8b ce                                           	mov    ecx,esi
  76f0b4:	ff d2                                           	call   edx
  76f0b6:	5f                                              	pop    edi
  76f0b7:	32 c0                                           	xor    al,al
  76f0b9:	5e                                              	pop    esi
  76f0ba:	59                                              	pop    ecx
  76f0bb:	c3                                              	ret
  76f0bc:	cc                                              	int3
  76f0bd:	cc                                              	int3
  76f0be:	cc                                              	int3
  76f0bf:	cc                                              	int3
