# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10981680 (SpeedTreeData_GetSelfShadowTextureName)
Paired Ghidra pseudocode: 10981680_SpeedTreeData_GetSelfShadowTextureName.c
Window: [0x10981680, 0x10981760) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x10981760
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10981680: 83 ec 30 56 57 68 44 69 b1 10 68 e4 00 00 00 33
10981690: f6 e8 ea ac c2 ff 83 c4 08 85 c0 74 0d 8b c8 e8
109816a0: ec d5 c2 ff 85 c0 74 02 8b f0 6a 01 e8 6f a7 c2
109816b0: ff 8b 44 24 44 8b 4c 24 40 83 c4 04 50 51 8b ce
109816c0: e8 2b e8 c2 ff 84 c0 75 0f 68 fc 24 b6 10 ff 15
109816d0: c4 b6 aa 10 8b f8 eb 5e 8d 4c 24 18 e8 1f a1 c2
109816e0: ff 8d 54 24 18 52 8b ce e8 43 b8 c2 ff 8b 44 24
109816f0: 34 6a 00 6a ff 50 8d 4c 24 14 51 e8 b0 56 fa ff
10981700: 8b 00 83 c4 10 50 ff 15 c4 b6 aa 10 8b 54 24 10
10981710: 8b f8 8b 44 24 08 2b d0 83 e2 fe 83 fa 02 7e 0d
10981720: 85 c0 74 09 50 e8 66 77 f9 ff 83 c4 04 8d 4c 24
10981730: 18 e8 aa b2 c2 ff 85 f6 74 10 8b ce e8 3f e0 c2
10981740: ff 56 e8 69 ac c2 ff 83 c4 04 8b c7 5f 5e 83 c4
10981750: 30 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10981680 <.text+0x980680>:
10981680:	83 ec 30                                        	sub    esp,0x30
10981683:	56                                              	push   esi
10981684:	57                                              	push   edi
10981685:	68 44 69 b1 10                                  	push   0x10b16944
1098168a:	68 e4 00 00 00                                  	push   0xe4
1098168f:	33 f6                                           	xor    esi,esi
10981691:	e8 ea ac c2 ff                                  	call   0x105ac380
10981696:	83 c4 08                                        	add    esp,0x8
10981699:	85 c0                                           	test   eax,eax
1098169b:	74 0d                                           	je     0x109816aa
1098169d:	8b c8                                           	mov    ecx,eax
1098169f:	e8 ec d5 c2 ff                                  	call   0x105aec90
109816a4:	85 c0                                           	test   eax,eax
109816a6:	74 02                                           	je     0x109816aa
109816a8:	8b f0                                           	mov    esi,eax
109816aa:	6a 01                                           	push   0x1
109816ac:	e8 6f a7 c2 ff                                  	call   0x105abe20
109816b1:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
109816b5:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
109816b9:	83 c4 04                                        	add    esp,0x4
109816bc:	50                                              	push   eax
109816bd:	51                                              	push   ecx
109816be:	8b ce                                           	mov    ecx,esi
109816c0:	e8 2b e8 c2 ff                                  	call   0x105afef0
109816c5:	84 c0                                           	test   al,al
109816c7:	75 0f                                           	jne    0x109816d8
109816c9:	68 fc 24 b6 10                                  	push   0x10b624fc
109816ce:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
109816d4:	8b f8                                           	mov    edi,eax
109816d6:	eb 5e                                           	jmp    0x10981736
109816d8:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
109816dc:	e8 1f a1 c2 ff                                  	call   0x105ab800
109816e1:	8d 54 24 18                                     	lea    edx,[esp+0x18]
109816e5:	52                                              	push   edx
109816e6:	8b ce                                           	mov    ecx,esi
109816e8:	e8 43 b8 c2 ff                                  	call   0x105acf30
109816ed:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
109816f1:	6a 00                                           	push   0x0
109816f3:	6a ff                                           	push   0xffffffff
109816f5:	50                                              	push   eax
109816f6:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
109816fa:	51                                              	push   ecx
109816fb:	e8 b0 56 fa ff                                  	call   0x10926db0
10981700:	8b 00                                           	mov    eax,DWORD PTR [eax]
10981702:	83 c4 10                                        	add    esp,0x10
10981705:	50                                              	push   eax
10981706:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1098170c:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10981710:	8b f8                                           	mov    edi,eax
10981712:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10981716:	2b d0                                           	sub    edx,eax
10981718:	83 e2 fe                                        	and    edx,0xfffffffe
1098171b:	83 fa 02                                        	cmp    edx,0x2
1098171e:	7e 0d                                           	jle    0x1098172d
10981720:	85 c0                                           	test   eax,eax
10981722:	74 09                                           	je     0x1098172d
10981724:	50                                              	push   eax
10981725:	e8 66 77 f9 ff                                  	call   0x10918e90
1098172a:	83 c4 04                                        	add    esp,0x4
1098172d:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10981731:	e8 aa b2 c2 ff                                  	call   0x105ac9e0
10981736:	85 f6                                           	test   esi,esi
10981738:	74 10                                           	je     0x1098174a
1098173a:	8b ce                                           	mov    ecx,esi
1098173c:	e8 3f e0 c2 ff                                  	call   0x105af780
10981741:	56                                              	push   esi
10981742:	e8 69 ac c2 ff                                  	call   0x105ac3b0
10981747:	83 c4 04                                        	add    esp,0x4
1098174a:	8b c7                                           	mov    eax,edi
1098174c:	5f                                              	pop    edi
1098174d:	5e                                              	pop    esi
1098174e:	83 c4 30                                        	add    esp,0x30
10981751:	c3                                              	ret
10981752:	cc                                              	int3
10981753:	cc                                              	int3
10981754:	cc                                              	int3
10981755:	cc                                              	int3
10981756:	cc                                              	int3
10981757:	cc                                              	int3
10981758:	cc                                              	int3
10981759:	cc                                              	int3
1098175a:	cc                                              	int3
1098175b:	cc                                              	int3
1098175c:	cc                                              	int3
1098175d:	cc                                              	int3
1098175e:	cc                                              	int3
1098175f:	cc                                              	int3
