# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076f0c0 (ScriptCore.Slots::Slots_IsSlotEnabledImpl)
Paired Ghidra pseudocode: 0076F0C0_ScriptCore_Slots_Slots_IsSlotEnabledImpl.c
Window: [0x0076f0c0, 0x0076f160) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076f160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076f0c0: 51 56 57 e8 a8 84 1c 00 8b 4c 24 14 8b 54 24 10
0076f0d0: 51 52 8b c8 e8 a7 8e 1c 00 8b f0 85 f6 74 75 8d
0076f0e0: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 14
0076f0f0: a1 1e 01 52 8b ce e8 65 51 1c 00 85 c0 74 38 8b
0076f100: 4c 24 18 53 6a 01 51 8b c8 e8 82 12 1e 00 84 c0
0076f110: 0f 94 c3 8b d7 83 c8 ff f0 0f c1 02 48 75 11 b9
0076f120: 01 00 00 00 87 0f 8b 16 8b 02 6a 01 8b ce ff d0
0076f130: 8a c3 5b 5f 5e 59 c3 8b cf 83 ca ff f0 0f c1 11
0076f140: 4a 75 11 b8 01 00 00 00 87 07 8b 16 8b 02 6a 01
0076f150: 8b ce ff d0 5f 32 c0 5e 59 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076f0c0 <.text+0x36e0c0>:
  76f0c0:	51                                              	push   ecx
  76f0c1:	56                                              	push   esi
  76f0c2:	57                                              	push   edi
  76f0c3:	e8 a8 84 1c 00                                  	call   0x937570
  76f0c8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  76f0cc:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  76f0d0:	51                                              	push   ecx
  76f0d1:	52                                              	push   edx
  76f0d2:	8b c8                                           	mov    ecx,eax
  76f0d4:	e8 a7 8e 1c 00                                  	call   0x937f80
  76f0d9:	8b f0                                           	mov    esi,eax
  76f0db:	85 f6                                           	test   esi,esi
  76f0dd:	74 75                                           	je     0x76f154
  76f0df:	8d 7e 04                                        	lea    edi,[esi+0x4]
  76f0e2:	8b c7                                           	mov    eax,edi
  76f0e4:	b9 01 00 00 00                                  	mov    ecx,0x1
  76f0e9:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  76f0ed:	8b 15 14 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea114
  76f0f3:	52                                              	push   edx
  76f0f4:	8b ce                                           	mov    ecx,esi
  76f0f6:	e8 65 51 1c 00                                  	call   0x934260
  76f0fb:	85 c0                                           	test   eax,eax
  76f0fd:	74 38                                           	je     0x76f137
  76f0ff:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76f103:	53                                              	push   ebx
  76f104:	6a 01                                           	push   0x1
  76f106:	51                                              	push   ecx
  76f107:	8b c8                                           	mov    ecx,eax
  76f109:	e8 82 12 1e 00                                  	call   0x950390
  76f10e:	84 c0                                           	test   al,al
  76f110:	0f 94 c3                                        	sete   bl
  76f113:	8b d7                                           	mov    edx,edi
  76f115:	83 c8 ff                                        	or     eax,0xffffffff
  76f118:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  76f11c:	48                                              	dec    eax
  76f11d:	75 11                                           	jne    0x76f130
  76f11f:	b9 01 00 00 00                                  	mov    ecx,0x1
  76f124:	87 0f                                           	xchg   DWORD PTR [edi],ecx
  76f126:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76f128:	8b 02                                           	mov    eax,DWORD PTR [edx]
  76f12a:	6a 01                                           	push   0x1
  76f12c:	8b ce                                           	mov    ecx,esi
  76f12e:	ff d0                                           	call   eax
  76f130:	8a c3                                           	mov    al,bl
  76f132:	5b                                              	pop    ebx
  76f133:	5f                                              	pop    edi
  76f134:	5e                                              	pop    esi
  76f135:	59                                              	pop    ecx
  76f136:	c3                                              	ret
  76f137:	8b cf                                           	mov    ecx,edi
  76f139:	83 ca ff                                        	or     edx,0xffffffff
  76f13c:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  76f140:	4a                                              	dec    edx
  76f141:	75 11                                           	jne    0x76f154
  76f143:	b8 01 00 00 00                                  	mov    eax,0x1
  76f148:	87 07                                           	xchg   DWORD PTR [edi],eax
  76f14a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76f14c:	8b 02                                           	mov    eax,DWORD PTR [edx]
  76f14e:	6a 01                                           	push   0x1
  76f150:	8b ce                                           	mov    ecx,esi
  76f152:	ff d0                                           	call   eax
  76f154:	5f                                              	pop    edi
  76f155:	32 c0                                           	xor    al,al
  76f157:	5e                                              	pop    esi
  76f158:	59                                              	pop    ecx
  76f159:	c3                                              	ret
  76f15a:	cc                                              	int3
  76f15b:	cc                                              	int3
  76f15c:	cc                                              	int3
  76f15d:	cc                                              	int3
  76f15e:	cc                                              	int3
  76f15f:	cc                                              	int3
