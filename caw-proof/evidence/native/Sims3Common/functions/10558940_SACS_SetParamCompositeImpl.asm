# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10558940 (SACS_SetParamCompositeImpl)
Paired Ghidra pseudocode: 10558940_SACS_SetParamCompositeImpl.c
Window: [0x10558940, 0x10558a10) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558a10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10558940: 51 56 e8 d9 27 00 00 8b 4c 24 0c 8b f0 8b 06 8b
10558950: 90 cc 00 00 00 51 8b ce ff d2 85 c0 89 44 24 04
10558960: 0f 84 9f 00 00 00 8b 4c 24 10 8b 06 8b 50 58 53
10558970: 55 57 51 8b ce ff d2 8b 4c 24 20 8b f8 8b 06 8b
10558980: 50 58 51 8b ce ff d2 85 ff 8b 2d 28 b5 aa 10 8b
10558990: d8 be c5 9d 1c 81 74 30 0f b7 07 66 85 c0 74 1f
105589a0: 0f b7 c0 50 ff d5 69 f6 93 01 00 01 0f b7 c0 83
105589b0: c7 02 33 f0 0f b7 07 83 c4 04 66 85 c0 75 e1 69
105589c0: f6 93 01 00 01 83 f6 3a 85 db 74 27 0f b7 03 66
105589d0: 85 c0 74 1f 0f b7 c0 50 ff d5 69 f6 93 01 00 01
105589e0: 83 c3 02 0f b7 c8 0f b7 03 83 c4 04 33 f1 66 85
105589f0: c0 75 e1 8b 54 24 24 8b 4c 24 10 52 56 e8 be ad
10558a00: 09 00 5f 5d 5b 5e 59 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10558940 <.text+0x557940>:
10558940:	51                                              	push   ecx
10558941:	56                                              	push   esi
10558942:	e8 d9 27 00 00                                  	call   0x1055b120
10558947:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055894b:	8b f0                                           	mov    esi,eax
1055894d:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055894f:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
10558955:	51                                              	push   ecx
10558956:	8b ce                                           	mov    ecx,esi
10558958:	ff d2                                           	call   edx
1055895a:	85 c0                                           	test   eax,eax
1055895c:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10558960:	0f 84 9f 00 00 00                               	je     0x10558a05
10558966:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1055896a:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055896c:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
1055896f:	53                                              	push   ebx
10558970:	55                                              	push   ebp
10558971:	57                                              	push   edi
10558972:	51                                              	push   ecx
10558973:	8b ce                                           	mov    ecx,esi
10558975:	ff d2                                           	call   edx
10558977:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1055897b:	8b f8                                           	mov    edi,eax
1055897d:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055897f:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
10558982:	51                                              	push   ecx
10558983:	8b ce                                           	mov    ecx,esi
10558985:	ff d2                                           	call   edx
10558987:	85 ff                                           	test   edi,edi
10558989:	8b 2d 28 b5 aa 10                               	mov    ebp,DWORD PTR ds:0x10aab528
1055898f:	8b d8                                           	mov    ebx,eax
10558991:	be c5 9d 1c 81                                  	mov    esi,0x811c9dc5
10558996:	74 30                                           	je     0x105589c8
10558998:	0f b7 07                                        	movzx  eax,WORD PTR [edi]
1055899b:	66 85 c0                                        	test   ax,ax
1055899e:	74 1f                                           	je     0x105589bf
105589a0:	0f b7 c0                                        	movzx  eax,ax
105589a3:	50                                              	push   eax
105589a4:	ff d5                                           	call   ebp
105589a6:	69 f6 93 01 00 01                               	imul   esi,esi,0x1000193
105589ac:	0f b7 c0                                        	movzx  eax,ax
105589af:	83 c7 02                                        	add    edi,0x2
105589b2:	33 f0                                           	xor    esi,eax
105589b4:	0f b7 07                                        	movzx  eax,WORD PTR [edi]
105589b7:	83 c4 04                                        	add    esp,0x4
105589ba:	66 85 c0                                        	test   ax,ax
105589bd:	75 e1                                           	jne    0x105589a0
105589bf:	69 f6 93 01 00 01                               	imul   esi,esi,0x1000193
105589c5:	83 f6 3a                                        	xor    esi,0x3a
105589c8:	85 db                                           	test   ebx,ebx
105589ca:	74 27                                           	je     0x105589f3
105589cc:	0f b7 03                                        	movzx  eax,WORD PTR [ebx]
105589cf:	66 85 c0                                        	test   ax,ax
105589d2:	74 1f                                           	je     0x105589f3
105589d4:	0f b7 c0                                        	movzx  eax,ax
105589d7:	50                                              	push   eax
105589d8:	ff d5                                           	call   ebp
105589da:	69 f6 93 01 00 01                               	imul   esi,esi,0x1000193
105589e0:	83 c3 02                                        	add    ebx,0x2
105589e3:	0f b7 c8                                        	movzx  ecx,ax
105589e6:	0f b7 03                                        	movzx  eax,WORD PTR [ebx]
105589e9:	83 c4 04                                        	add    esp,0x4
105589ec:	33 f1                                           	xor    esi,ecx
105589ee:	66 85 c0                                        	test   ax,ax
105589f1:	75 e1                                           	jne    0x105589d4
105589f3:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
105589f7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
105589fb:	52                                              	push   edx
105589fc:	56                                              	push   esi
105589fd:	e8 be ad 09 00                                  	call   0x105f37c0
10558a02:	5f                                              	pop    edi
10558a03:	5d                                              	pop    ebp
10558a04:	5b                                              	pop    ebx
10558a05:	5e                                              	pop    esi
10558a06:	59                                              	pop    ecx
10558a07:	c3                                              	ret
10558a08:	cc                                              	int3
10558a09:	cc                                              	int3
10558a0a:	cc                                              	int3
10558a0b:	cc                                              	int3
10558a0c:	cc                                              	int3
10558a0d:	cc                                              	int3
10558a0e:	cc                                              	int3
10558a0f:	cc                                              	int3
