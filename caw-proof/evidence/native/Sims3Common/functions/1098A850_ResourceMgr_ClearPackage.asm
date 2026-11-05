# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098a850 (ResourceMgr_ClearPackage)
Paired Ghidra pseudocode: 1098A850_ResourceMgr_ClearPackage.c
Window: [0x1098a850, 0x1098a900) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098a900
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098a850: 83 ec 18 e8 78 a8 f5 ff 85 c0 0f 84 94 00 00 00
1098a860: 56 8b 35 78 80 cb 10 8d 44 24 20 50 8d 4c 24 08
1098a870: 51 8b ce e8 98 db d1 ff 8b 56 08 8b 4e 04 8b 44
1098a880: 24 04 3b 04 91 74 6c 8b 70 04 c7 44 24 0c 00 00
1098a890: 00 00 c7 44 24 10 00 00 00 00 c7 44 24 14 00 00
1098a8a0: 00 00 c7 44 24 18 40 6e b9 10 8b 16 8b 52 30 6a
1098a8b0: 00 8d 44 24 10 50 8b ce ff d2 8b 4c 24 0c 8b 44
1098a8c0: 24 10 3b c8 74 20 8b 16 83 c0 f0 50 8b 42 40 8b
1098a8d0: ce ff d0 8b 44 24 10 8b 4c 24 0c 83 e8 10 3b c8
1098a8e0: 89 44 24 10 75 e0 85 c9 74 09 51 e8 a0 e5 f8 ff
1098a8f0: 83 c4 04 5e 83 c4 18 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098a850 <.text+0x989850>:
1098a850:	83 ec 18                                        	sub    esp,0x18
1098a853:	e8 78 a8 f5 ff                                  	call   0x108e50d0
1098a858:	85 c0                                           	test   eax,eax
1098a85a:	0f 84 94 00 00 00                               	je     0x1098a8f4
1098a860:	56                                              	push   esi
1098a861:	8b 35 78 80 cb 10                               	mov    esi,DWORD PTR ds:0x10cb8078
1098a867:	8d 44 24 20                                     	lea    eax,[esp+0x20]
1098a86b:	50                                              	push   eax
1098a86c:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1098a870:	51                                              	push   ecx
1098a871:	8b ce                                           	mov    ecx,esi
1098a873:	e8 98 db d1 ff                                  	call   0x106a8410
1098a878:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
1098a87b:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
1098a87e:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098a882:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
1098a885:	74 6c                                           	je     0x1098a8f3
1098a887:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
1098a88a:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
1098a892:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
1098a89a:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
1098a8a2:	c7 44 24 18 40 6e b9 10                         	mov    DWORD PTR [esp+0x18],0x10b96e40
1098a8aa:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098a8ac:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
1098a8af:	6a 00                                           	push   0x0
1098a8b1:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1098a8b5:	50                                              	push   eax
1098a8b6:	8b ce                                           	mov    ecx,esi
1098a8b8:	ff d2                                           	call   edx
1098a8ba:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098a8be:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098a8c2:	3b c8                                           	cmp    ecx,eax
1098a8c4:	74 20                                           	je     0x1098a8e6
1098a8c6:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098a8c8:	83 c0 f0                                        	add    eax,0xfffffff0
1098a8cb:	50                                              	push   eax
1098a8cc:	8b 42 40                                        	mov    eax,DWORD PTR [edx+0x40]
1098a8cf:	8b ce                                           	mov    ecx,esi
1098a8d1:	ff d0                                           	call   eax
1098a8d3:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098a8d7:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098a8db:	83 e8 10                                        	sub    eax,0x10
1098a8de:	3b c8                                           	cmp    ecx,eax
1098a8e0:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1098a8e4:	75 e0                                           	jne    0x1098a8c6
1098a8e6:	85 c9                                           	test   ecx,ecx
1098a8e8:	74 09                                           	je     0x1098a8f3
1098a8ea:	51                                              	push   ecx
1098a8eb:	e8 a0 e5 f8 ff                                  	call   0x10918e90
1098a8f0:	83 c4 04                                        	add    esp,0x4
1098a8f3:	5e                                              	pop    esi
1098a8f4:	83 c4 18                                        	add    esp,0x18
1098a8f7:	c3                                              	ret
1098a8f8:	cc                                              	int3
1098a8f9:	cc                                              	int3
1098a8fa:	cc                                              	int3
1098a8fb:	cc                                              	int3
1098a8fc:	cc                                              	int3
1098a8fd:	cc                                              	int3
1098a8fe:	cc                                              	int3
1098a8ff:	cc                                              	int3
