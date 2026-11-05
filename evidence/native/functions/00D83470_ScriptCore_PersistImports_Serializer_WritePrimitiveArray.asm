# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d83470 (ScriptCore.PersistImports::Serializer_WritePrimitiveArray)
Paired Ghidra pseudocode: 00D83470_ScriptCore_PersistImports_Serializer_WritePrimitiveArray.c
Window: [0x00d83470, 0x00d83540) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d83540
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d83470: 8b 44 24 08 83 ec 18 50 e8 03 1a 9f ff 83 c4 04
00d83480: 85 c0 0f 84 89 00 00 00 6a 01 50 8d 4c 24 08 e8
00d83490: 4c 5f a5 ff 0f b6 54 24 24 8b 44 24 1c 8b 48 08
00d834a0: 83 c2 fe 83 fa 0d 77 61 0f b6 92 2c 35 d8 00 ff
00d834b0: 24 95 18 35 d8 00 51 83 c0 10 50 8d 4c 24 08 e8
00d834c0: 8c 19 a5 ff eb 2e 51 83 c0 10 50 8d 4c 24 08 e8
00d834d0: 0c fb 81 ff eb 1e 51 83 c0 10 50 8d 4c 24 08 e8
00d834e0: 0c b5 87 ff eb 0e 51 83 c0 10 50 8d 4c 24 08 e8
00d834f0: 2c 19 a5 ff 53 8a 5c 24 18 8d 4c 24 04 e8 8e 44
00d83500: a5 ff 8a c3 5b 83 c4 18 c3 8d 0c 24 e8 7f 44 a5
00d83510: ff 32 c0 83 c4 18 c3 90 b6 34 d8 00 e6 34 d8 00
00d83520: c6 34 d8 00 d6 34 d8 00 09 35 d8 00 00 00 04 04
00d83530: 04 01 02 03 01 00 03 02 03 01 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00d83470 <.text+0x982470>:
  d83470:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  d83474:	83 ec 18                                        	sub    esp,0x18
  d83477:	50                                              	push   eax
  d83478:	e8 03 1a 9f ff                                  	call   0x774e80
  d8347d:	83 c4 04                                        	add    esp,0x4
  d83480:	85 c0                                           	test   eax,eax
  d83482:	0f 84 89 00 00 00                               	je     0xd83511
  d83488:	6a 01                                           	push   0x1
  d8348a:	50                                              	push   eax
  d8348b:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  d8348f:	e8 4c 5f a5 ff                                  	call   0x7d93e0
  d83494:	0f b6 54 24 24                                  	movzx  edx,BYTE PTR [esp+0x24]
  d83499:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  d8349d:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  d834a0:	83 c2 fe                                        	add    edx,0xfffffffe
  d834a3:	83 fa 0d                                        	cmp    edx,0xd
  d834a6:	77 61                                           	ja     0xd83509
  d834a8:	0f b6 92 2c 35 d8 00                            	movzx  edx,BYTE PTR [edx+0xd8352c]
  d834af:	ff 24 95 18 35 d8 00                            	jmp    DWORD PTR [edx*4+0xd83518]
  d834b6:	51                                              	push   ecx
  d834b7:	83 c0 10                                        	add    eax,0x10
  d834ba:	50                                              	push   eax
  d834bb:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  d834bf:	e8 8c 19 a5 ff                                  	call   0x7d4e50
  d834c4:	eb 2e                                           	jmp    0xd834f4
  d834c6:	51                                              	push   ecx
  d834c7:	83 c0 10                                        	add    eax,0x10
  d834ca:	50                                              	push   eax
  d834cb:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  d834cf:	e8 0c fb 81 ff                                  	call   0x5a2fe0
  d834d4:	eb 1e                                           	jmp    0xd834f4
  d834d6:	51                                              	push   ecx
  d834d7:	83 c0 10                                        	add    eax,0x10
  d834da:	50                                              	push   eax
  d834db:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  d834df:	e8 0c b5 87 ff                                  	call   0x5fe9f0
  d834e4:	eb 0e                                           	jmp    0xd834f4
  d834e6:	51                                              	push   ecx
  d834e7:	83 c0 10                                        	add    eax,0x10
  d834ea:	50                                              	push   eax
  d834eb:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  d834ef:	e8 2c 19 a5 ff                                  	call   0x7d4e20
  d834f4:	53                                              	push   ebx
  d834f5:	8a 5c 24 18                                     	mov    bl,BYTE PTR [esp+0x18]
  d834f9:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  d834fd:	e8 8e 44 a5 ff                                  	call   0x7d7990
  d83502:	8a c3                                           	mov    al,bl
  d83504:	5b                                              	pop    ebx
  d83505:	83 c4 18                                        	add    esp,0x18
  d83508:	c3                                              	ret
  d83509:	8d 0c 24                                        	lea    ecx,[esp]
  d8350c:	e8 7f 44 a5 ff                                  	call   0x7d7990
  d83511:	32 c0                                           	xor    al,al
  d83513:	83 c4 18                                        	add    esp,0x18
  d83516:	c3                                              	ret
  d83517:	90                                              	nop
  d83518:	b6 34                                           	mov    dh,0x34
  d8351a:	d8 00                                           	fadd   DWORD PTR [eax]
  d8351c:	e6 34                                           	out    0x34,al
  d8351e:	d8 00                                           	fadd   DWORD PTR [eax]
  d83520:	c6                                              	(bad)
  d83521:	34 d8                                           	xor    al,0xd8
  d83523:	00 d6                                           	add    dh,dl
  d83525:	34 d8                                           	xor    al,0xd8
  d83527:	00 09                                           	add    BYTE PTR [ecx],cl
  d83529:	35 d8 00 00 00                                  	xor    eax,0xd8
  d8352e:	04 04                                           	add    al,0x4
  d83530:	04 01                                           	add    al,0x1
  d83532:	02 03                                           	add    al,BYTE PTR [ebx]
  d83534:	01 00                                           	add    DWORD PTR [eax],eax
  d83536:	03 02                                           	add    eax,DWORD PTR [edx]
  d83538:	03 01                                           	add    eax,DWORD PTR [ecx]
  d8353a:	cc                                              	int3
  d8353b:	cc                                              	int3
  d8353c:	cc                                              	int3
  d8353d:	cc                                              	int3
  d8353e:	cc                                              	int3
  d8353f:	cc                                              	int3
