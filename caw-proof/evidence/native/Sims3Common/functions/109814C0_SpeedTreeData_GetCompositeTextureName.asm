# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109814c0 (SpeedTreeData_GetCompositeTextureName)
Paired Ghidra pseudocode: 109814C0_SpeedTreeData_GetCompositeTextureName.c
Window: [0x109814c0, 0x109815a0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x109815a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109814c0: 83 ec 30 56 57 68 44 69 b1 10 68 e4 00 00 00 33
109814d0: f6 e8 aa ae c2 ff 83 c4 08 85 c0 74 0d 8b c8 e8
109814e0: ac d7 c2 ff 85 c0 74 02 8b f0 6a 01 e8 2f a9 c2
109814f0: ff 8b 44 24 44 8b 4c 24 40 83 c4 04 50 51 8b ce
10981500: e8 eb e9 c2 ff 84 c0 75 0f 68 fc 24 b6 10 ff 15
10981510: c4 b6 aa 10 8b f8 eb 60 8d 4c 24 18 e8 df a2 c2
10981520: ff 8d 54 24 18 52 8b ce e8 03 ba c2 ff 8b 44 24
10981530: 2c 8b 08 6a 00 6a ff 51 8d 54 24 14 52 e8 6e 58
10981540: fa ff 8b 00 83 c4 10 50 ff 15 c4 b6 aa 10 8b 4c
10981550: 24 10 8b f8 8b 44 24 08 2b c8 83 e1 fe 83 f9 02
10981560: 7e 0d 85 c0 74 09 50 e8 24 79 f9 ff 83 c4 04 8d
10981570: 4c 24 18 e8 68 b4 c2 ff 85 f6 74 10 8b ce e8 fd
10981580: e1 c2 ff 56 e8 27 ae c2 ff 83 c4 04 8b c7 5f 5e
10981590: 83 c4 30 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109814c0 <.text+0x9804c0>:
109814c0:	83 ec 30                                        	sub    esp,0x30
109814c3:	56                                              	push   esi
109814c4:	57                                              	push   edi
109814c5:	68 44 69 b1 10                                  	push   0x10b16944
109814ca:	68 e4 00 00 00                                  	push   0xe4
109814cf:	33 f6                                           	xor    esi,esi
109814d1:	e8 aa ae c2 ff                                  	call   0x105ac380
109814d6:	83 c4 08                                        	add    esp,0x8
109814d9:	85 c0                                           	test   eax,eax
109814db:	74 0d                                           	je     0x109814ea
109814dd:	8b c8                                           	mov    ecx,eax
109814df:	e8 ac d7 c2 ff                                  	call   0x105aec90
109814e4:	85 c0                                           	test   eax,eax
109814e6:	74 02                                           	je     0x109814ea
109814e8:	8b f0                                           	mov    esi,eax
109814ea:	6a 01                                           	push   0x1
109814ec:	e8 2f a9 c2 ff                                  	call   0x105abe20
109814f1:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
109814f5:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
109814f9:	83 c4 04                                        	add    esp,0x4
109814fc:	50                                              	push   eax
109814fd:	51                                              	push   ecx
109814fe:	8b ce                                           	mov    ecx,esi
10981500:	e8 eb e9 c2 ff                                  	call   0x105afef0
10981505:	84 c0                                           	test   al,al
10981507:	75 0f                                           	jne    0x10981518
10981509:	68 fc 24 b6 10                                  	push   0x10b624fc
1098150e:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10981514:	8b f8                                           	mov    edi,eax
10981516:	eb 60                                           	jmp    0x10981578
10981518:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1098151c:	e8 df a2 c2 ff                                  	call   0x105ab800
10981521:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10981525:	52                                              	push   edx
10981526:	8b ce                                           	mov    ecx,esi
10981528:	e8 03 ba c2 ff                                  	call   0x105acf30
1098152d:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10981531:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10981533:	6a 00                                           	push   0x0
10981535:	6a ff                                           	push   0xffffffff
10981537:	51                                              	push   ecx
10981538:	8d 54 24 14                                     	lea    edx,[esp+0x14]
1098153c:	52                                              	push   edx
1098153d:	e8 6e 58 fa ff                                  	call   0x10926db0
10981542:	8b 00                                           	mov    eax,DWORD PTR [eax]
10981544:	83 c4 10                                        	add    esp,0x10
10981547:	50                                              	push   eax
10981548:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1098154e:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10981552:	8b f8                                           	mov    edi,eax
10981554:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10981558:	2b c8                                           	sub    ecx,eax
1098155a:	83 e1 fe                                        	and    ecx,0xfffffffe
1098155d:	83 f9 02                                        	cmp    ecx,0x2
10981560:	7e 0d                                           	jle    0x1098156f
10981562:	85 c0                                           	test   eax,eax
10981564:	74 09                                           	je     0x1098156f
10981566:	50                                              	push   eax
10981567:	e8 24 79 f9 ff                                  	call   0x10918e90
1098156c:	83 c4 04                                        	add    esp,0x4
1098156f:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10981573:	e8 68 b4 c2 ff                                  	call   0x105ac9e0
10981578:	85 f6                                           	test   esi,esi
1098157a:	74 10                                           	je     0x1098158c
1098157c:	8b ce                                           	mov    ecx,esi
1098157e:	e8 fd e1 c2 ff                                  	call   0x105af780
10981583:	56                                              	push   esi
10981584:	e8 27 ae c2 ff                                  	call   0x105ac3b0
10981589:	83 c4 04                                        	add    esp,0x4
1098158c:	8b c7                                           	mov    eax,edi
1098158e:	5f                                              	pop    edi
1098158f:	5e                                              	pop    esi
10981590:	83 c4 30                                        	add    esp,0x30
10981593:	c3                                              	ret
10981594:	cc                                              	int3
10981595:	cc                                              	int3
10981596:	cc                                              	int3
10981597:	cc                                              	int3
10981598:	cc                                              	int3
10981599:	cc                                              	int3
1098159a:	cc                                              	int3
1098159b:	cc                                              	int3
1098159c:	cc                                              	int3
1098159d:	cc                                              	int3
1098159e:	cc                                              	int3
1098159f:	cc                                              	int3
