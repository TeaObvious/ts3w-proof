# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005f60e0 (DirectTargetOf_CASUtils_CASUtils_InjectTattooOpacity)
Paired Ghidra pseudocode: 005F60E0_DirectTargetOf_CASUtils_CASUtils_InjectTattooOpacity.c
Window: [0x005f60e0, 0x005f6200) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x005f6200
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005f60e0: 81 ec 94 00 00 00 56 57 e8 a3 32 17 00 8b 8c 24
005f60f0: a0 00 00 00 8b f0 8b 06 8b 50 58 51 8b ce ff d2
005f6100: 8b f8 85 ff 75 09 5f 5e 81 c4 94 00 00 00 c3 8d
005f6110: 4c 24 3c e8 a8 99 fc ff 57 8d 4c 24 40 e8 3e 9f
005f6120: fc ff 8b 84 24 a4 00 00 00 6a 00 50 6a 02 68 50
005f6130: 6f fe 00 8d 4c 24 4c e8 54 91 fc ff 8d 4c 24 08
005f6140: b8 54 8e 1c 01 51 8d 4c 24 40 c7 44 24 18 0c f9
005f6150: fd 00 89 44 24 0c 89 44 24 10 c7 44 24 14 56 8e
005f6160: 1c 01 e8 b9 9b fc ff 6a 01 6a 10 8d 54 24 10 52
005f6170: 6a 09 6a 13 8d 4c 24 30 c7 44 24 30 6c 88 00 01
005f6180: 66 c7 44 24 3a 13 00 66 c7 44 24 38 0b 00 e8 2d
005f6190: f8 ef ff 8b 06 8b 40 50 8d 4c 24 18 51 8d 54 24
005f61a0: 20 52 8b ce ff d0 f6 44 24 24 04 8b 74 24 18 c7
005f61b0: 44 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8
005f61c0: 9c f5 ef ff 8b 4c 24 10 8b 44 24 08 2b c8 83 e1
005f61d0: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 00 e3 ee ff
005f61e0: 83 c4 04 8d 4c 24 3c e8 f4 9a fc ff 5f 8b c6 5e
005f61f0: 81 c4 94 00 00 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005f60e0 <.text+0x1f50e0>:
  5f60e0:	81 ec 94 00 00 00                               	sub    esp,0x94
  5f60e6:	56                                              	push   esi
  5f60e7:	57                                              	push   edi
  5f60e8:	e8 a3 32 17 00                                  	call   0x769390
  5f60ed:	8b 8c 24 a0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xa0]
  5f60f4:	8b f0                                           	mov    esi,eax
  5f60f6:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5f60f8:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5f60fb:	51                                              	push   ecx
  5f60fc:	8b ce                                           	mov    ecx,esi
  5f60fe:	ff d2                                           	call   edx
  5f6100:	8b f8                                           	mov    edi,eax
  5f6102:	85 ff                                           	test   edi,edi
  5f6104:	75 09                                           	jne    0x5f610f
  5f6106:	5f                                              	pop    edi
  5f6107:	5e                                              	pop    esi
  5f6108:	81 c4 94 00 00 00                               	add    esp,0x94
  5f610e:	c3                                              	ret
  5f610f:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  5f6113:	e8 a8 99 fc ff                                  	call   0x5bfac0
  5f6118:	57                                              	push   edi
  5f6119:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  5f611d:	e8 3e 9f fc ff                                  	call   0x5c0060
  5f6122:	8b 84 24 a4 00 00 00                            	mov    eax,DWORD PTR [esp+0xa4]
  5f6129:	6a 00                                           	push   0x0
  5f612b:	50                                              	push   eax
  5f612c:	6a 02                                           	push   0x2
  5f612e:	68 50 6f fe 00                                  	push   0xfe6f50
  5f6133:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  5f6137:	e8 54 91 fc ff                                  	call   0x5bf290
  5f613c:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  5f6140:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  5f6145:	51                                              	push   ecx
  5f6146:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  5f614a:	c7 44 24 18 0c f9 fd 00                         	mov    DWORD PTR [esp+0x18],0xfdf90c
  5f6152:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  5f6156:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  5f615a:	c7 44 24 14 56 8e 1c 01                         	mov    DWORD PTR [esp+0x14],0x11c8e56
  5f6162:	e8 b9 9b fc ff                                  	call   0x5bfd20
  5f6167:	6a 01                                           	push   0x1
  5f6169:	6a 10                                           	push   0x10
  5f616b:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  5f616f:	52                                              	push   edx
  5f6170:	6a 09                                           	push   0x9
  5f6172:	6a 13                                           	push   0x13
  5f6174:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  5f6178:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  5f6180:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  5f6187:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  5f618e:	e8 2d f8 ef ff                                  	call   0x4f59c0
  5f6193:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5f6195:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  5f6198:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  5f619c:	51                                              	push   ecx
  5f619d:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  5f61a1:	52                                              	push   edx
  5f61a2:	8b ce                                           	mov    ecx,esi
  5f61a4:	ff d0                                           	call   eax
  5f61a6:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  5f61ab:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  5f61af:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  5f61b7:	74 0b                                           	je     0x5f61c4
  5f61b9:	6a 00                                           	push   0x0
  5f61bb:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  5f61bf:	e8 9c f5 ef ff                                  	call   0x4f5760
  5f61c4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5f61c8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5f61cc:	2b c8                                           	sub    ecx,eax
  5f61ce:	83 e1 fe                                        	and    ecx,0xfffffffe
  5f61d1:	83 f9 02                                        	cmp    ecx,0x2
  5f61d4:	7e 0d                                           	jle    0x5f61e3
  5f61d6:	85 c0                                           	test   eax,eax
  5f61d8:	74 09                                           	je     0x5f61e3
  5f61da:	50                                              	push   eax
  5f61db:	e8 00 e3 ee ff                                  	call   0x4e44e0
  5f61e0:	83 c4 04                                        	add    esp,0x4
  5f61e3:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  5f61e7:	e8 f4 9a fc ff                                  	call   0x5bfce0
  5f61ec:	5f                                              	pop    edi
  5f61ed:	8b c6                                           	mov    eax,esi
  5f61ef:	5e                                              	pop    esi
  5f61f0:	81 c4 94 00 00 00                               	add    esp,0x94
  5f61f6:	c3                                              	ret
  5f61f7:	cc                                              	int3
  5f61f8:	cc                                              	int3
  5f61f9:	cc                                              	int3
  5f61fa:	cc                                              	int3
  5f61fb:	cc                                              	int3
  5f61fc:	cc                                              	int3
  5f61fd:	cc                                              	int3
  5f61fe:	cc                                              	int3
  5f61ff:	cc                                              	int3
