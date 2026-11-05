# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076d0b0 (ScriptCore.Simulator::Simulator_DoCPPProfile)
Paired Ghidra pseudocode: 0076D0B0_ScriptCore_Simulator_Simulator_DoCPPProfile.c
Window: [0x0076d0b0, 0x0076d1a0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076d1a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076d0b0: 8b 44 24 08 56 57 83 ce ff 83 cf ff 83 f8 04 0f
0076d0c0: 87 ab 00 00 00 8b 4c 24 0c 83 e9 00 74 66 83 e9
0076d0d0: 01 74 4c 83 e9 01 0f 85 94 00 00 00 ff 24 85 78
0076d0e0: d1 76 00 e8 78 fe ff ff 8b d7 5f 8b c6 5e c3 e8
0076d0f0: ac fe ff ff 8b d7 5f 8b c6 5e c3 e8 e0 fe ff ff
0076d100: 8b d7 5f 8b c6 5e c3 e8 24 ff ff ff 8b d7 5f 8b
0076d110: c6 5e c3 e8 58 ff ff ff 8b d7 5f 8b c6 5e c3 8b
0076d120: 3c c5 8c 77 1d 01 8b 34 c5 88 77 1d 01 8b d7 5f
0076d130: 8b c6 5e c3 ff 24 85 8c d1 76 00 e8 30 fd ff ff
0076d140: 8b d7 5f 8b c6 5e c3 e8 54 fd ff ff 8b d7 5f 8b
0076d150: c6 5e c3 e8 78 fd ff ff 8b d7 5f 8b c6 5e c3 e8
0076d160: 9c fd ff ff 8b d7 5f 8b c6 5e c3 e8 c0 fd ff ff
0076d170: 8b d7 5f 8b c6 5e c3 90 e3 d0 76 00 ef d0 76 00
0076d180: fb d0 76 00 07 d1 76 00 13 d1 76 00 3b d1 76 00
0076d190: 47 d1 76 00 53 d1 76 00 5f d1 76 00 6b d1 76 00

LINEAR DISASSEMBLY
0076d0b0 <.text+0x36c0b0>:
  76d0b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  76d0b4:	56                                              	push   esi
  76d0b5:	57                                              	push   edi
  76d0b6:	83 ce ff                                        	or     esi,0xffffffff
  76d0b9:	83 cf ff                                        	or     edi,0xffffffff
  76d0bc:	83 f8 04                                        	cmp    eax,0x4
  76d0bf:	0f 87 ab 00 00 00                               	ja     0x76d170
  76d0c5:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76d0c9:	83 e9 00                                        	sub    ecx,0x0
  76d0cc:	74 66                                           	je     0x76d134
  76d0ce:	83 e9 01                                        	sub    ecx,0x1
  76d0d1:	74 4c                                           	je     0x76d11f
  76d0d3:	83 e9 01                                        	sub    ecx,0x1
  76d0d6:	0f 85 94 00 00 00                               	jne    0x76d170
  76d0dc:	ff 24 85 78 d1 76 00                            	jmp    DWORD PTR [eax*4+0x76d178]
  76d0e3:	e8 78 fe ff ff                                  	call   0x76cf60
  76d0e8:	8b d7                                           	mov    edx,edi
  76d0ea:	5f                                              	pop    edi
  76d0eb:	8b c6                                           	mov    eax,esi
  76d0ed:	5e                                              	pop    esi
  76d0ee:	c3                                              	ret
  76d0ef:	e8 ac fe ff ff                                  	call   0x76cfa0
  76d0f4:	8b d7                                           	mov    edx,edi
  76d0f6:	5f                                              	pop    edi
  76d0f7:	8b c6                                           	mov    eax,esi
  76d0f9:	5e                                              	pop    esi
  76d0fa:	c3                                              	ret
  76d0fb:	e8 e0 fe ff ff                                  	call   0x76cfe0
  76d100:	8b d7                                           	mov    edx,edi
  76d102:	5f                                              	pop    edi
  76d103:	8b c6                                           	mov    eax,esi
  76d105:	5e                                              	pop    esi
  76d106:	c3                                              	ret
  76d107:	e8 24 ff ff ff                                  	call   0x76d030
  76d10c:	8b d7                                           	mov    edx,edi
  76d10e:	5f                                              	pop    edi
  76d10f:	8b c6                                           	mov    eax,esi
  76d111:	5e                                              	pop    esi
  76d112:	c3                                              	ret
  76d113:	e8 58 ff ff ff                                  	call   0x76d070
  76d118:	8b d7                                           	mov    edx,edi
  76d11a:	5f                                              	pop    edi
  76d11b:	8b c6                                           	mov    eax,esi
  76d11d:	5e                                              	pop    esi
  76d11e:	c3                                              	ret
  76d11f:	8b 3c c5 8c 77 1d 01                            	mov    edi,DWORD PTR [eax*8+0x11d778c]
  76d126:	8b 34 c5 88 77 1d 01                            	mov    esi,DWORD PTR [eax*8+0x11d7788]
  76d12d:	8b d7                                           	mov    edx,edi
  76d12f:	5f                                              	pop    edi
  76d130:	8b c6                                           	mov    eax,esi
  76d132:	5e                                              	pop    esi
  76d133:	c3                                              	ret
  76d134:	ff 24 85 8c d1 76 00                            	jmp    DWORD PTR [eax*4+0x76d18c]
  76d13b:	e8 30 fd ff ff                                  	call   0x76ce70
  76d140:	8b d7                                           	mov    edx,edi
  76d142:	5f                                              	pop    edi
  76d143:	8b c6                                           	mov    eax,esi
  76d145:	5e                                              	pop    esi
  76d146:	c3                                              	ret
  76d147:	e8 54 fd ff ff                                  	call   0x76cea0
  76d14c:	8b d7                                           	mov    edx,edi
  76d14e:	5f                                              	pop    edi
  76d14f:	8b c6                                           	mov    eax,esi
  76d151:	5e                                              	pop    esi
  76d152:	c3                                              	ret
  76d153:	e8 78 fd ff ff                                  	call   0x76ced0
  76d158:	8b d7                                           	mov    edx,edi
  76d15a:	5f                                              	pop    edi
  76d15b:	8b c6                                           	mov    eax,esi
  76d15d:	5e                                              	pop    esi
  76d15e:	c3                                              	ret
  76d15f:	e8 9c fd ff ff                                  	call   0x76cf00
  76d164:	8b d7                                           	mov    edx,edi
  76d166:	5f                                              	pop    edi
  76d167:	8b c6                                           	mov    eax,esi
  76d169:	5e                                              	pop    esi
  76d16a:	c3                                              	ret
  76d16b:	e8 c0 fd ff ff                                  	call   0x76cf30
  76d170:	8b d7                                           	mov    edx,edi
  76d172:	5f                                              	pop    edi
  76d173:	8b c6                                           	mov    eax,esi
  76d175:	5e                                              	pop    esi
  76d176:	c3                                              	ret
  76d177:	90                                              	nop
  76d178:	e3 d0                                           	jecxz  0x76d14a
  76d17a:	76 00                                           	jbe    0x76d17c
  76d17c:	ef                                              	out    dx,eax
  76d17d:	d0 76 00                                        	shl    BYTE PTR [esi+0x0],1
  76d180:	fb                                              	sti
  76d181:	d0 76 00                                        	shl    BYTE PTR [esi+0x0],1
  76d184:	07                                              	pop    es
  76d185:	d1 76 00                                        	shl    DWORD PTR [esi+0x0],1
  76d188:	13 d1                                           	adc    edx,ecx
  76d18a:	76 00                                           	jbe    0x76d18c
  76d18c:	3b d1                                           	cmp    edx,ecx
  76d18e:	76 00                                           	jbe    0x76d190
  76d190:	47                                              	inc    edi
  76d191:	d1 76 00                                        	shl    DWORD PTR [esi+0x0],1
  76d194:	53                                              	push   ebx
  76d195:	d1 76 00                                        	shl    DWORD PTR [esi+0x0],1
  76d198:	5f                                              	pop    edi
  76d199:	d1 76 00                                        	shl    DWORD PTR [esi+0x0],1
  76d19c:	6b d1 76                                        	imul   edx,ecx,0x76
  76d19f:	00                                            	add    al,ch
