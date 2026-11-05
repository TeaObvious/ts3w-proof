# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10981840 (SpeedTreeData_GetBarkDetailTextureName)
Paired Ghidra pseudocode: 10981840_SpeedTreeData_GetBarkDetailTextureName.c
Window: [0x10981840, 0x10981940) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x10981940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10981840: 83 ec 34 56 57 68 44 69 b1 10 68 e4 00 00 00 33
10981850: f6 e8 2a ab c2 ff 83 c4 08 85 c0 74 0d 8b c8 e8
10981860: 2c d4 c2 ff 85 c0 74 02 8b f0 6a 01 e8 af a5 c2
10981870: ff 8b 44 24 48 8b 4c 24 44 83 c4 04 50 51 8b ce
10981880: e8 6b e6 c2 ff 84 c0 75 12 68 fc 24 b6 10 ff 15
10981890: c4 b6 aa 10 8b f8 e9 89 00 00 00 8d 4c 24 1c e8
109818a0: 5c 9f c2 ff 8d 54 24 1c 52 8b ce e8 80 b6 c2 ff
109818b0: 8b 54 24 1c 8b 42 04 8d 78 01 8d 9b 00 00 00 00
109818c0: 8a 08 83 c0 01 84 c9 75 f7 2b c7 74 41 8b 42 04
109818d0: 6a 00 6a ff 50 8d 4c 24 18 51 e8 d1 54 fa ff 8b
109818e0: 00 83 c4 10 50 ff 15 c4 b6 aa 10 8b 54 24 14 8b
109818f0: f8 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 1c 85
10981900: c0 74 18 50 e8 87 75 f9 ff 83 c4 04 eb 0d 68 fc
10981910: 24 b6 10 ff 15 c4 b6 aa 10 8b f8 8d 4c 24 1c e8
10981920: bc b0 c2 ff 85 f6 74 10 8b ce e8 51 de c2 ff 56
10981930: e8 7b aa c2 ff 83 c4 04 8b c7 5f 5e 83 c4 34 c3

LINEAR DISASSEMBLY
10981840 <.text+0x980840>:
10981840:	83 ec 34                                        	sub    esp,0x34
10981843:	56                                              	push   esi
10981844:	57                                              	push   edi
10981845:	68 44 69 b1 10                                  	push   0x10b16944
1098184a:	68 e4 00 00 00                                  	push   0xe4
1098184f:	33 f6                                           	xor    esi,esi
10981851:	e8 2a ab c2 ff                                  	call   0x105ac380
10981856:	83 c4 08                                        	add    esp,0x8
10981859:	85 c0                                           	test   eax,eax
1098185b:	74 0d                                           	je     0x1098186a
1098185d:	8b c8                                           	mov    ecx,eax
1098185f:	e8 2c d4 c2 ff                                  	call   0x105aec90
10981864:	85 c0                                           	test   eax,eax
10981866:	74 02                                           	je     0x1098186a
10981868:	8b f0                                           	mov    esi,eax
1098186a:	6a 01                                           	push   0x1
1098186c:	e8 af a5 c2 ff                                  	call   0x105abe20
10981871:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
10981875:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
10981879:	83 c4 04                                        	add    esp,0x4
1098187c:	50                                              	push   eax
1098187d:	51                                              	push   ecx
1098187e:	8b ce                                           	mov    ecx,esi
10981880:	e8 6b e6 c2 ff                                  	call   0x105afef0
10981885:	84 c0                                           	test   al,al
10981887:	75 12                                           	jne    0x1098189b
10981889:	68 fc 24 b6 10                                  	push   0x10b624fc
1098188e:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10981894:	8b f8                                           	mov    edi,eax
10981896:	e9 89 00 00 00                                  	jmp    0x10981924
1098189b:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1098189f:	e8 5c 9f c2 ff                                  	call   0x105ab800
109818a4:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
109818a8:	52                                              	push   edx
109818a9:	8b ce                                           	mov    ecx,esi
109818ab:	e8 80 b6 c2 ff                                  	call   0x105acf30
109818b0:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
109818b4:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
109818b7:	8d 78 01                                        	lea    edi,[eax+0x1]
109818ba:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
109818c0:	8a 08                                           	mov    cl,BYTE PTR [eax]
109818c2:	83 c0 01                                        	add    eax,0x1
109818c5:	84 c9                                           	test   cl,cl
109818c7:	75 f7                                           	jne    0x109818c0
109818c9:	2b c7                                           	sub    eax,edi
109818cb:	74 41                                           	je     0x1098190e
109818cd:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
109818d0:	6a 00                                           	push   0x0
109818d2:	6a ff                                           	push   0xffffffff
109818d4:	50                                              	push   eax
109818d5:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
109818d9:	51                                              	push   ecx
109818da:	e8 d1 54 fa ff                                  	call   0x10926db0
109818df:	8b 00                                           	mov    eax,DWORD PTR [eax]
109818e1:	83 c4 10                                        	add    esp,0x10
109818e4:	50                                              	push   eax
109818e5:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
109818eb:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
109818ef:	8b f8                                           	mov    edi,eax
109818f1:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
109818f5:	2b d0                                           	sub    edx,eax
109818f7:	83 e2 fe                                        	and    edx,0xfffffffe
109818fa:	83 fa 02                                        	cmp    edx,0x2
109818fd:	7e 1c                                           	jle    0x1098191b
109818ff:	85 c0                                           	test   eax,eax
10981901:	74 18                                           	je     0x1098191b
10981903:	50                                              	push   eax
10981904:	e8 87 75 f9 ff                                  	call   0x10918e90
10981909:	83 c4 04                                        	add    esp,0x4
1098190c:	eb 0d                                           	jmp    0x1098191b
1098190e:	68 fc 24 b6 10                                  	push   0x10b624fc
10981913:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10981919:	8b f8                                           	mov    edi,eax
1098191b:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1098191f:	e8 bc b0 c2 ff                                  	call   0x105ac9e0
10981924:	85 f6                                           	test   esi,esi
10981926:	74 10                                           	je     0x10981938
10981928:	8b ce                                           	mov    ecx,esi
1098192a:	e8 51 de c2 ff                                  	call   0x105af780
1098192f:	56                                              	push   esi
10981930:	e8 7b aa c2 ff                                  	call   0x105ac3b0
10981935:	83 c4 04                                        	add    esp,0x4
10981938:	8b c7                                           	mov    eax,edi
1098193a:	5f                                              	pop    edi
1098193b:	5e                                              	pop    esi
1098193c:	83 c4 34                                        	add    esp,0x34
1098193f:	c3                                              	ret
