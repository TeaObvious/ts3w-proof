# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10981760 (SpeedTreeData_GetBarkTextureName)
Paired Ghidra pseudocode: 10981760_SpeedTreeData_GetBarkTextureName.c
Window: [0x10981760, 0x10981840) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x10981840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10981760: 83 ec 30 56 57 68 44 69 b1 10 68 e4 00 00 00 33
10981770: f6 e8 0a ac c2 ff 83 c4 08 85 c0 74 0d 8b c8 e8
10981780: 0c d5 c2 ff 85 c0 74 02 8b f0 6a 01 e8 8f a6 c2
10981790: ff 8b 44 24 44 8b 4c 24 40 83 c4 04 50 51 8b ce
109817a0: e8 4b e7 c2 ff 84 c0 75 0f 68 fc 24 b6 10 ff 15
109817b0: c4 b6 aa 10 8b f8 eb 60 8d 4c 24 18 e8 3f a0 c2
109817c0: ff 8d 54 24 18 52 8b ce e8 63 b7 c2 ff 8b 44 24
109817d0: 18 8b 08 6a 00 6a ff 51 8d 54 24 14 52 e8 ce 55
109817e0: fa ff 8b 00 83 c4 10 50 ff 15 c4 b6 aa 10 8b 4c
109817f0: 24 10 8b f8 8b 44 24 08 2b c8 83 e1 fe 83 f9 02
10981800: 7e 0d 85 c0 74 09 50 e8 84 76 f9 ff 83 c4 04 8d
10981810: 4c 24 18 e8 c8 b1 c2 ff 85 f6 74 10 8b ce e8 5d
10981820: df c2 ff 56 e8 87 ab c2 ff 83 c4 04 8b c7 5f 5e
10981830: 83 c4 30 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10981760 <.text+0x980760>:
10981760:	83 ec 30                                        	sub    esp,0x30
10981763:	56                                              	push   esi
10981764:	57                                              	push   edi
10981765:	68 44 69 b1 10                                  	push   0x10b16944
1098176a:	68 e4 00 00 00                                  	push   0xe4
1098176f:	33 f6                                           	xor    esi,esi
10981771:	e8 0a ac c2 ff                                  	call   0x105ac380
10981776:	83 c4 08                                        	add    esp,0x8
10981779:	85 c0                                           	test   eax,eax
1098177b:	74 0d                                           	je     0x1098178a
1098177d:	8b c8                                           	mov    ecx,eax
1098177f:	e8 0c d5 c2 ff                                  	call   0x105aec90
10981784:	85 c0                                           	test   eax,eax
10981786:	74 02                                           	je     0x1098178a
10981788:	8b f0                                           	mov    esi,eax
1098178a:	6a 01                                           	push   0x1
1098178c:	e8 8f a6 c2 ff                                  	call   0x105abe20
10981791:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10981795:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
10981799:	83 c4 04                                        	add    esp,0x4
1098179c:	50                                              	push   eax
1098179d:	51                                              	push   ecx
1098179e:	8b ce                                           	mov    ecx,esi
109817a0:	e8 4b e7 c2 ff                                  	call   0x105afef0
109817a5:	84 c0                                           	test   al,al
109817a7:	75 0f                                           	jne    0x109817b8
109817a9:	68 fc 24 b6 10                                  	push   0x10b624fc
109817ae:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
109817b4:	8b f8                                           	mov    edi,eax
109817b6:	eb 60                                           	jmp    0x10981818
109817b8:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
109817bc:	e8 3f a0 c2 ff                                  	call   0x105ab800
109817c1:	8d 54 24 18                                     	lea    edx,[esp+0x18]
109817c5:	52                                              	push   edx
109817c6:	8b ce                                           	mov    ecx,esi
109817c8:	e8 63 b7 c2 ff                                  	call   0x105acf30
109817cd:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
109817d1:	8b 08                                           	mov    ecx,DWORD PTR [eax]
109817d3:	6a 00                                           	push   0x0
109817d5:	6a ff                                           	push   0xffffffff
109817d7:	51                                              	push   ecx
109817d8:	8d 54 24 14                                     	lea    edx,[esp+0x14]
109817dc:	52                                              	push   edx
109817dd:	e8 ce 55 fa ff                                  	call   0x10926db0
109817e2:	8b 00                                           	mov    eax,DWORD PTR [eax]
109817e4:	83 c4 10                                        	add    esp,0x10
109817e7:	50                                              	push   eax
109817e8:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
109817ee:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
109817f2:	8b f8                                           	mov    edi,eax
109817f4:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
109817f8:	2b c8                                           	sub    ecx,eax
109817fa:	83 e1 fe                                        	and    ecx,0xfffffffe
109817fd:	83 f9 02                                        	cmp    ecx,0x2
10981800:	7e 0d                                           	jle    0x1098180f
10981802:	85 c0                                           	test   eax,eax
10981804:	74 09                                           	je     0x1098180f
10981806:	50                                              	push   eax
10981807:	e8 84 76 f9 ff                                  	call   0x10918e90
1098180c:	83 c4 04                                        	add    esp,0x4
1098180f:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10981813:	e8 c8 b1 c2 ff                                  	call   0x105ac9e0
10981818:	85 f6                                           	test   esi,esi
1098181a:	74 10                                           	je     0x1098182c
1098181c:	8b ce                                           	mov    ecx,esi
1098181e:	e8 5d df c2 ff                                  	call   0x105af780
10981823:	56                                              	push   esi
10981824:	e8 87 ab c2 ff                                  	call   0x105ac3b0
10981829:	83 c4 04                                        	add    esp,0x4
1098182c:	8b c7                                           	mov    eax,edi
1098182e:	5f                                              	pop    edi
1098182f:	5e                                              	pop    esi
10981830:	83 c4 30                                        	add    esp,0x30
10981833:	c3                                              	ret
10981834:	cc                                              	int3
10981835:	cc                                              	int3
10981836:	cc                                              	int3
10981837:	cc                                              	int3
10981838:	cc                                              	int3
10981839:	cc                                              	int3
1098183a:	cc                                              	int3
1098183b:	cc                                              	int3
1098183c:	cc                                              	int3
1098183d:	cc                                              	int3
1098183e:	cc                                              	int3
1098183f:	cc                                              	int3
