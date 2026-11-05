# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109815a0 (SpeedTreeData_GetBillboardTextureName)
Paired Ghidra pseudocode: 109815A0_SpeedTreeData_GetBillboardTextureName.c
Window: [0x109815a0, 0x10981680) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x10981680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109815a0: 83 ec 30 56 57 68 44 69 b1 10 68 e4 00 00 00 33
109815b0: f6 e8 ca ad c2 ff 83 c4 08 85 c0 74 0d 8b c8 e8
109815c0: cc d6 c2 ff 85 c0 74 02 8b f0 6a 01 e8 4f a8 c2
109815d0: ff 8b 44 24 44 8b 4c 24 40 83 c4 04 50 51 8b ce
109815e0: e8 0b e9 c2 ff 84 c0 75 0f 68 fc 24 b6 10 ff 15
109815f0: c4 b6 aa 10 8b f8 eb 60 8d 4c 24 18 e8 ff a1 c2
10981600: ff 8d 54 24 18 52 8b ce e8 23 b9 c2 ff 8b 44 24
10981610: 30 8b 08 6a 00 6a ff 51 8d 54 24 14 52 e8 8e 57
10981620: fa ff 8b 00 83 c4 10 50 ff 15 c4 b6 aa 10 8b 4c
10981630: 24 10 8b f8 8b 44 24 08 2b c8 83 e1 fe 83 f9 02
10981640: 7e 0d 85 c0 74 09 50 e8 44 78 f9 ff 83 c4 04 8d
10981650: 4c 24 18 e8 88 b3 c2 ff 85 f6 74 10 8b ce e8 1d
10981660: e1 c2 ff 56 e8 47 ad c2 ff 83 c4 04 8b c7 5f 5e
10981670: 83 c4 30 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109815a0 <.text+0x9805a0>:
109815a0:	83 ec 30                                        	sub    esp,0x30
109815a3:	56                                              	push   esi
109815a4:	57                                              	push   edi
109815a5:	68 44 69 b1 10                                  	push   0x10b16944
109815aa:	68 e4 00 00 00                                  	push   0xe4
109815af:	33 f6                                           	xor    esi,esi
109815b1:	e8 ca ad c2 ff                                  	call   0x105ac380
109815b6:	83 c4 08                                        	add    esp,0x8
109815b9:	85 c0                                           	test   eax,eax
109815bb:	74 0d                                           	je     0x109815ca
109815bd:	8b c8                                           	mov    ecx,eax
109815bf:	e8 cc d6 c2 ff                                  	call   0x105aec90
109815c4:	85 c0                                           	test   eax,eax
109815c6:	74 02                                           	je     0x109815ca
109815c8:	8b f0                                           	mov    esi,eax
109815ca:	6a 01                                           	push   0x1
109815cc:	e8 4f a8 c2 ff                                  	call   0x105abe20
109815d1:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
109815d5:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
109815d9:	83 c4 04                                        	add    esp,0x4
109815dc:	50                                              	push   eax
109815dd:	51                                              	push   ecx
109815de:	8b ce                                           	mov    ecx,esi
109815e0:	e8 0b e9 c2 ff                                  	call   0x105afef0
109815e5:	84 c0                                           	test   al,al
109815e7:	75 0f                                           	jne    0x109815f8
109815e9:	68 fc 24 b6 10                                  	push   0x10b624fc
109815ee:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
109815f4:	8b f8                                           	mov    edi,eax
109815f6:	eb 60                                           	jmp    0x10981658
109815f8:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
109815fc:	e8 ff a1 c2 ff                                  	call   0x105ab800
10981601:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10981605:	52                                              	push   edx
10981606:	8b ce                                           	mov    ecx,esi
10981608:	e8 23 b9 c2 ff                                  	call   0x105acf30
1098160d:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
10981611:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10981613:	6a 00                                           	push   0x0
10981615:	6a ff                                           	push   0xffffffff
10981617:	51                                              	push   ecx
10981618:	8d 54 24 14                                     	lea    edx,[esp+0x14]
1098161c:	52                                              	push   edx
1098161d:	e8 8e 57 fa ff                                  	call   0x10926db0
10981622:	8b 00                                           	mov    eax,DWORD PTR [eax]
10981624:	83 c4 10                                        	add    esp,0x10
10981627:	50                                              	push   eax
10981628:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1098162e:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10981632:	8b f8                                           	mov    edi,eax
10981634:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10981638:	2b c8                                           	sub    ecx,eax
1098163a:	83 e1 fe                                        	and    ecx,0xfffffffe
1098163d:	83 f9 02                                        	cmp    ecx,0x2
10981640:	7e 0d                                           	jle    0x1098164f
10981642:	85 c0                                           	test   eax,eax
10981644:	74 09                                           	je     0x1098164f
10981646:	50                                              	push   eax
10981647:	e8 44 78 f9 ff                                  	call   0x10918e90
1098164c:	83 c4 04                                        	add    esp,0x4
1098164f:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10981653:	e8 88 b3 c2 ff                                  	call   0x105ac9e0
10981658:	85 f6                                           	test   esi,esi
1098165a:	74 10                                           	je     0x1098166c
1098165c:	8b ce                                           	mov    ecx,esi
1098165e:	e8 1d e1 c2 ff                                  	call   0x105af780
10981663:	56                                              	push   esi
10981664:	e8 47 ad c2 ff                                  	call   0x105ac3b0
10981669:	83 c4 04                                        	add    esp,0x4
1098166c:	8b c7                                           	mov    eax,edi
1098166e:	5f                                              	pop    edi
1098166f:	5e                                              	pop    esi
10981670:	83 c4 30                                        	add    esp,0x30
10981673:	c3                                              	ret
10981674:	cc                                              	int3
10981675:	cc                                              	int3
10981676:	cc                                              	int3
10981677:	cc                                              	int3
10981678:	cc                                              	int3
10981679:	cc                                              	int3
1098167a:	cc                                              	int3
1098167b:	cc                                              	int3
1098167c:	cc                                              	int3
1098167d:	cc                                              	int3
1098167e:	cc                                              	int3
1098167f:	cc                                              	int3
