# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10981940 (SpeedTreeData_GetBillboardNormalMapTextureName)
Paired Ghidra pseudocode: 10981940_SpeedTreeData_GetBillboardNormalMapTextureName.c
Window: [0x10981940, 0x10981aa0) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x10981aa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10981940: 83 ec 34 56 57 68 44 69 b1 10 68 e4 00 00 00 33
10981950: f6 e8 2a aa c2 ff 83 c4 08 85 c0 74 0d 8b c8 e8
10981960: 2c d3 c2 ff 85 c0 74 02 8b f0 6a 01 e8 af a4 c2
10981970: ff 8b 44 24 48 8b 4c 24 44 83 c4 04 50 51 8b ce
10981980: e8 6b e5 c2 ff 84 c0 75 12 68 fc 24 b6 10 ff 15
10981990: c4 b6 aa 10 8b f8 e9 e1 00 00 00 8d 4c 24 1c e8
109819a0: 5c 9e c2 ff 8d 54 24 1c 52 8b ce e8 80 b5 c2 ff
109819b0: 8b 54 24 34 8b 42 08 8d 78 01 8d 9b 00 00 00 00
109819c0: 8a 08 83 c0 01 84 c9 75 f7 2b c7 74 41 8b 42 08
109819d0: 6a 00 6a ff 50 8d 4c 24 18 51 e8 d1 53 fa ff 8b
109819e0: 00 83 c4 10 50 ff 15 c4 b6 aa 10 8b 54 24 14 8b
109819f0: f8 8b 44 24 0c 2b d0 83 e2 fe 83 fa 02 7e 74 85
10981a00: c0 74 70 50 e8 87 74 f9 ff 83 c4 04 eb 65 8b 54
10981a10: 24 30 8b 42 08 8d 78 01 8a 08 83 c0 01 84 c9 75
10981a20: f7 2b c7 74 41 8b 42 08 6a 00 6a ff 50 8d 4c 24
10981a30: 18 51 e8 79 53 fa ff 8b 00 83 c4 10 50 ff 15 c4
10981a40: b6 aa 10 8b 54 24 14 8b f8 8b 44 24 0c 2b d0 83
10981a50: e2 fe 83 fa 02 7e 1c 85 c0 74 18 50 e8 2f 74 f9
10981a60: ff 83 c4 04 eb 0d 68 fc 24 b6 10 ff 15 c4 b6 aa
10981a70: 10 8b f8 8d 4c 24 1c e8 64 af c2 ff 85 f6 74 10
10981a80: 8b ce e8 f9 dc c2 ff 56 e8 23 a9 c2 ff 83 c4 04
10981a90: 8b c7 5f 5e 83 c4 34 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10981940 <.text+0x980940>:
10981940:	83 ec 34                                        	sub    esp,0x34
10981943:	56                                              	push   esi
10981944:	57                                              	push   edi
10981945:	68 44 69 b1 10                                  	push   0x10b16944
1098194a:	68 e4 00 00 00                                  	push   0xe4
1098194f:	33 f6                                           	xor    esi,esi
10981951:	e8 2a aa c2 ff                                  	call   0x105ac380
10981956:	83 c4 08                                        	add    esp,0x8
10981959:	85 c0                                           	test   eax,eax
1098195b:	74 0d                                           	je     0x1098196a
1098195d:	8b c8                                           	mov    ecx,eax
1098195f:	e8 2c d3 c2 ff                                  	call   0x105aec90
10981964:	85 c0                                           	test   eax,eax
10981966:	74 02                                           	je     0x1098196a
10981968:	8b f0                                           	mov    esi,eax
1098196a:	6a 01                                           	push   0x1
1098196c:	e8 af a4 c2 ff                                  	call   0x105abe20
10981971:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
10981975:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
10981979:	83 c4 04                                        	add    esp,0x4
1098197c:	50                                              	push   eax
1098197d:	51                                              	push   ecx
1098197e:	8b ce                                           	mov    ecx,esi
10981980:	e8 6b e5 c2 ff                                  	call   0x105afef0
10981985:	84 c0                                           	test   al,al
10981987:	75 12                                           	jne    0x1098199b
10981989:	68 fc 24 b6 10                                  	push   0x10b624fc
1098198e:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10981994:	8b f8                                           	mov    edi,eax
10981996:	e9 e1 00 00 00                                  	jmp    0x10981a7c
1098199b:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1098199f:	e8 5c 9e c2 ff                                  	call   0x105ab800
109819a4:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
109819a8:	52                                              	push   edx
109819a9:	8b ce                                           	mov    ecx,esi
109819ab:	e8 80 b5 c2 ff                                  	call   0x105acf30
109819b0:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
109819b4:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
109819b7:	8d 78 01                                        	lea    edi,[eax+0x1]
109819ba:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
109819c0:	8a 08                                           	mov    cl,BYTE PTR [eax]
109819c2:	83 c0 01                                        	add    eax,0x1
109819c5:	84 c9                                           	test   cl,cl
109819c7:	75 f7                                           	jne    0x109819c0
109819c9:	2b c7                                           	sub    eax,edi
109819cb:	74 41                                           	je     0x10981a0e
109819cd:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
109819d0:	6a 00                                           	push   0x0
109819d2:	6a ff                                           	push   0xffffffff
109819d4:	50                                              	push   eax
109819d5:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
109819d9:	51                                              	push   ecx
109819da:	e8 d1 53 fa ff                                  	call   0x10926db0
109819df:	8b 00                                           	mov    eax,DWORD PTR [eax]
109819e1:	83 c4 10                                        	add    esp,0x10
109819e4:	50                                              	push   eax
109819e5:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
109819eb:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
109819ef:	8b f8                                           	mov    edi,eax
109819f1:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
109819f5:	2b d0                                           	sub    edx,eax
109819f7:	83 e2 fe                                        	and    edx,0xfffffffe
109819fa:	83 fa 02                                        	cmp    edx,0x2
109819fd:	7e 74                                           	jle    0x10981a73
109819ff:	85 c0                                           	test   eax,eax
10981a01:	74 70                                           	je     0x10981a73
10981a03:	50                                              	push   eax
10981a04:	e8 87 74 f9 ff                                  	call   0x10918e90
10981a09:	83 c4 04                                        	add    esp,0x4
10981a0c:	eb 65                                           	jmp    0x10981a73
10981a0e:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
10981a12:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10981a15:	8d 78 01                                        	lea    edi,[eax+0x1]
10981a18:	8a 08                                           	mov    cl,BYTE PTR [eax]
10981a1a:	83 c0 01                                        	add    eax,0x1
10981a1d:	84 c9                                           	test   cl,cl
10981a1f:	75 f7                                           	jne    0x10981a18
10981a21:	2b c7                                           	sub    eax,edi
10981a23:	74 41                                           	je     0x10981a66
10981a25:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10981a28:	6a 00                                           	push   0x0
10981a2a:	6a ff                                           	push   0xffffffff
10981a2c:	50                                              	push   eax
10981a2d:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10981a31:	51                                              	push   ecx
10981a32:	e8 79 53 fa ff                                  	call   0x10926db0
10981a37:	8b 00                                           	mov    eax,DWORD PTR [eax]
10981a39:	83 c4 10                                        	add    esp,0x10
10981a3c:	50                                              	push   eax
10981a3d:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10981a43:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10981a47:	8b f8                                           	mov    edi,eax
10981a49:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10981a4d:	2b d0                                           	sub    edx,eax
10981a4f:	83 e2 fe                                        	and    edx,0xfffffffe
10981a52:	83 fa 02                                        	cmp    edx,0x2
10981a55:	7e 1c                                           	jle    0x10981a73
10981a57:	85 c0                                           	test   eax,eax
10981a59:	74 18                                           	je     0x10981a73
10981a5b:	50                                              	push   eax
10981a5c:	e8 2f 74 f9 ff                                  	call   0x10918e90
10981a61:	83 c4 04                                        	add    esp,0x4
10981a64:	eb 0d                                           	jmp    0x10981a73
10981a66:	68 fc 24 b6 10                                  	push   0x10b624fc
10981a6b:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10981a71:	8b f8                                           	mov    edi,eax
10981a73:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10981a77:	e8 64 af c2 ff                                  	call   0x105ac9e0
10981a7c:	85 f6                                           	test   esi,esi
10981a7e:	74 10                                           	je     0x10981a90
10981a80:	8b ce                                           	mov    ecx,esi
10981a82:	e8 f9 dc c2 ff                                  	call   0x105af780
10981a87:	56                                              	push   esi
10981a88:	e8 23 a9 c2 ff                                  	call   0x105ac3b0
10981a8d:	83 c4 04                                        	add    esp,0x4
10981a90:	8b c7                                           	mov    eax,edi
10981a92:	5f                                              	pop    edi
10981a93:	5e                                              	pop    esi
10981a94:	83 c4 34                                        	add    esp,0x34
10981a97:	c3                                              	ret
10981a98:	cc                                              	int3
10981a99:	cc                                              	int3
10981a9a:	cc                                              	int3
10981a9b:	cc                                              	int3
10981a9c:	cc                                              	int3
10981a9d:	cc                                              	int3
10981a9e:	cc                                              	int3
10981a9f:	cc                                              	int3
