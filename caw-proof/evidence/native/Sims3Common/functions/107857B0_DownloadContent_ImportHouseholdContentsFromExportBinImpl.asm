# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107857b0 (DownloadContent_ImportHouseholdContentsFromExportBinImpl)
Paired Ghidra pseudocode: 107857B0_DownloadContent_ImportHouseholdContentsFromExportBinImpl.c
Window: [0x107857b0, 0x107858e0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x107858e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107857b0: 83 ec 2c 53 56 57 e8 65 59 dd ff 33 db 3b c3 0f
107857c0: 84 01 01 00 00 8b 4c 24 3c 8b 10 8b 52 58 51 8b
107857d0: c8 ff d2 50 8d 4c 24 14 89 5c 24 14 89 5c 24 18
107857e0: 89 5c 24 1c c7 44 24 20 2c 8d b5 10 e8 2f 4e 8e
107857f0: ff 8b 35 94 de c8 10 8b 3d d8 e9 c6 10 8b ce e8
10785800: bc af 00 00 84 c0 0f 85 9b 00 00 00 8d 44 24 0c
10785810: 50 8d 4c 24 14 51 8b ce 89 5c 24 14 e8 8f c8 00
10785820: 00 84 c0 74 6f 8b 54 24 0c 55 6a 01 52 8d 4c 24
10785830: 2c e8 5a 50 e4 ff 8d 44 24 24 50 8b cf e8 8e 70
10785840: 91 ff 8b ce 8b f8 8b ea e8 03 af 00 00 8d 4c 24
10785850: 24 e8 aa 50 e4 ff 8b 44 24 10 3b c3 74 0b 8b 50
10785860: 04 8d 48 04 8b 42 04 ff d0 8b 4c 24 1c 8b 44 24
10785870: 14 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c3 74 09 50
10785880: e8 0b 36 19 00 83 c4 04 8b d5 5d 8b c7 5f 5e 5b
10785890: 83 c4 2c c3 8b 44 24 0c 3b c3 74 0b 8b 50 04 8d
107858a0: 48 04 8b 42 04 ff d0 8b 4c 24 18 8b 44 24 10 2b
107858b0: c8 83 e1 fe 83 f9 02 7e 0d 3b c3 74 09 50 e8 cd
107858c0: 35 19 00 83 c4 04 5f 5e 33 c0 33 d2 5b 83 c4 2c
107858d0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
107857b0 <.text+0x7847b0>:
107857b0:	83 ec 2c                                        	sub    esp,0x2c
107857b3:	53                                              	push   ebx
107857b4:	56                                              	push   esi
107857b5:	57                                              	push   edi
107857b6:	e8 65 59 dd ff                                  	call   0x1055b120
107857bb:	33 db                                           	xor    ebx,ebx
107857bd:	3b c3                                           	cmp    eax,ebx
107857bf:	0f 84 01 01 00 00                               	je     0x107858c6
107857c5:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
107857c9:	8b 10                                           	mov    edx,DWORD PTR [eax]
107857cb:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
107857ce:	51                                              	push   ecx
107857cf:	8b c8                                           	mov    ecx,eax
107857d1:	ff d2                                           	call   edx
107857d3:	50                                              	push   eax
107857d4:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
107857d8:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
107857dc:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
107857e0:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
107857e4:	c7 44 24 20 2c 8d b5 10                         	mov    DWORD PTR [esp+0x20],0x10b58d2c
107857ec:	e8 2f 4e 8e ff                                  	call   0x1006a620
107857f1:	8b 35 94 de c8 10                               	mov    esi,DWORD PTR ds:0x10c8de94
107857f7:	8b 3d d8 e9 c6 10                               	mov    edi,DWORD PTR ds:0x10c6e9d8
107857fd:	8b ce                                           	mov    ecx,esi
107857ff:	e8 bc af 00 00                                  	call   0x107907c0
10785804:	84 c0                                           	test   al,al
10785806:	0f 85 9b 00 00 00                               	jne    0x107858a7
1078580c:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10785810:	50                                              	push   eax
10785811:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10785815:	51                                              	push   ecx
10785816:	8b ce                                           	mov    ecx,esi
10785818:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
1078581c:	e8 8f c8 00 00                                  	call   0x107920b0
10785821:	84 c0                                           	test   al,al
10785823:	74 6f                                           	je     0x10785894
10785825:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10785829:	55                                              	push   ebp
1078582a:	6a 01                                           	push   0x1
1078582c:	52                                              	push   edx
1078582d:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10785831:	e8 5a 50 e4 ff                                  	call   0x105ca890
10785836:	8d 44 24 24                                     	lea    eax,[esp+0x24]
1078583a:	50                                              	push   eax
1078583b:	8b cf                                           	mov    ecx,edi
1078583d:	e8 8e 70 91 ff                                  	call   0x1009c8d0
10785842:	8b ce                                           	mov    ecx,esi
10785844:	8b f8                                           	mov    edi,eax
10785846:	8b ea                                           	mov    ebp,edx
10785848:	e8 03 af 00 00                                  	call   0x10790750
1078584d:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10785851:	e8 aa 50 e4 ff                                  	call   0x105ca900
10785856:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1078585a:	3b c3                                           	cmp    eax,ebx
1078585c:	74 0b                                           	je     0x10785869
1078585e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10785861:	8d 48 04                                        	lea    ecx,[eax+0x4]
10785864:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10785867:	ff d0                                           	call   eax
10785869:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1078586d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10785871:	2b c8                                           	sub    ecx,eax
10785873:	83 e1 fe                                        	and    ecx,0xfffffffe
10785876:	83 f9 02                                        	cmp    ecx,0x2
10785879:	7e 0d                                           	jle    0x10785888
1078587b:	3b c3                                           	cmp    eax,ebx
1078587d:	74 09                                           	je     0x10785888
1078587f:	50                                              	push   eax
10785880:	e8 0b 36 19 00                                  	call   0x10918e90
10785885:	83 c4 04                                        	add    esp,0x4
10785888:	8b d5                                           	mov    edx,ebp
1078588a:	5d                                              	pop    ebp
1078588b:	8b c7                                           	mov    eax,edi
1078588d:	5f                                              	pop    edi
1078588e:	5e                                              	pop    esi
1078588f:	5b                                              	pop    ebx
10785890:	83 c4 2c                                        	add    esp,0x2c
10785893:	c3                                              	ret
10785894:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10785898:	3b c3                                           	cmp    eax,ebx
1078589a:	74 0b                                           	je     0x107858a7
1078589c:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1078589f:	8d 48 04                                        	lea    ecx,[eax+0x4]
107858a2:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
107858a5:	ff d0                                           	call   eax
107858a7:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
107858ab:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
107858af:	2b c8                                           	sub    ecx,eax
107858b1:	83 e1 fe                                        	and    ecx,0xfffffffe
107858b4:	83 f9 02                                        	cmp    ecx,0x2
107858b7:	7e 0d                                           	jle    0x107858c6
107858b9:	3b c3                                           	cmp    eax,ebx
107858bb:	74 09                                           	je     0x107858c6
107858bd:	50                                              	push   eax
107858be:	e8 cd 35 19 00                                  	call   0x10918e90
107858c3:	83 c4 04                                        	add    esp,0x4
107858c6:	5f                                              	pop    edi
107858c7:	5e                                              	pop    esi
107858c8:	33 c0                                           	xor    eax,eax
107858ca:	33 d2                                           	xor    edx,edx
107858cc:	5b                                              	pop    ebx
107858cd:	83 c4 2c                                        	add    esp,0x2c
107858d0:	c3                                              	ret
107858d1:	cc                                              	int3
107858d2:	cc                                              	int3
107858d3:	cc                                              	int3
107858d4:	cc                                              	int3
107858d5:	cc                                              	int3
107858d6:	cc                                              	int3
107858d7:	cc                                              	int3
107858d8:	cc                                              	int3
107858d9:	cc                                              	int3
107858da:	cc                                              	int3
107858db:	cc                                              	int3
107858dc:	cc                                              	int3
107858dd:	cc                                              	int3
107858de:	cc                                              	int3
107858df:	cc                                              	int3
