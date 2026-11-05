# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10554f60 (Route_SetValidRooms)
Paired Ghidra pseudocode: 10554F60_Route_SetValidRooms.c
Window: [0x10554f60, 0x10555050) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x10555050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10554f60: 8b 44 24 04 8b 0d 44 89 c7 10 83 ec 08 55 50 e8
10554f70: 7c 71 fe ff 8b e8 85 ed 0f 84 c8 00 00 00 8b 55
10554f80: 00 8b 42 10 57 8b cd ff d0 8b cd e8 10 e6 fe ff
10554f90: 8b f8 85 ff 0f 84 9d 00 00 00 8b 17 8b 02 53 56
10554fa0: 8b cf ff d0 8b 5c 24 28 33 c0 85 db 8d 77 20 c7
10554fb0: 44 24 14 00 00 00 00 89 44 24 10 74 1d e8 5e 61
10554fc0: 00 00 8b 10 8b 52 74 8d 4c 24 10 51 8d 4c 24 18
10554fd0: 51 53 8b c8 ff d2 8b 44 24 10 83 7c 24 14 00 8b
10554fe0: 4c 24 20 8b 54 24 24 89 4e 18 89 56 1c 74 38 85
10554ff0: c0 7e 34 8b 4c 24 2c 89 4e 10 50 8b ce e8 ce 16
10555000: fb ff 33 c0 39 44 24 10 7e 22 8d 9b 00 00 00 00
10555010: 8b 4c 24 14 8b 0c 81 8b 16 89 0c 82 83 c0 01 3b
10555020: 44 24 10 7c eb eb 05 8b 16 89 56 04 8b 07 8b 50
10555030: 04 8b cf ff d2 5e 5b 8b 45 00 8b 50 14 5f 8b cd
10555040: 5d 83 c4 08 ff e2 5d 83 c4 08 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10554f60 <.text+0x553f60>:
10554f60:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10554f64:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10554f6a:	83 ec 08                                        	sub    esp,0x8
10554f6d:	55                                              	push   ebp
10554f6e:	50                                              	push   eax
10554f6f:	e8 7c 71 fe ff                                  	call   0x1053c0f0
10554f74:	8b e8                                           	mov    ebp,eax
10554f76:	85 ed                                           	test   ebp,ebp
10554f78:	0f 84 c8 00 00 00                               	je     0x10555046
10554f7e:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
10554f81:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10554f84:	57                                              	push   edi
10554f85:	8b cd                                           	mov    ecx,ebp
10554f87:	ff d0                                           	call   eax
10554f89:	8b cd                                           	mov    ecx,ebp
10554f8b:	e8 10 e6 fe ff                                  	call   0x105435a0
10554f90:	8b f8                                           	mov    edi,eax
10554f92:	85 ff                                           	test   edi,edi
10554f94:	0f 84 9d 00 00 00                               	je     0x10555037
10554f9a:	8b 17                                           	mov    edx,DWORD PTR [edi]
10554f9c:	8b 02                                           	mov    eax,DWORD PTR [edx]
10554f9e:	53                                              	push   ebx
10554f9f:	56                                              	push   esi
10554fa0:	8b cf                                           	mov    ecx,edi
10554fa2:	ff d0                                           	call   eax
10554fa4:	8b 5c 24 28                                     	mov    ebx,DWORD PTR [esp+0x28]
10554fa8:	33 c0                                           	xor    eax,eax
10554faa:	85 db                                           	test   ebx,ebx
10554fac:	8d 77 20                                        	lea    esi,[edi+0x20]
10554faf:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
10554fb7:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10554fbb:	74 1d                                           	je     0x10554fda
10554fbd:	e8 5e 61 00 00                                  	call   0x1055b120
10554fc2:	8b 10                                           	mov    edx,DWORD PTR [eax]
10554fc4:	8b 52 74                                        	mov    edx,DWORD PTR [edx+0x74]
10554fc7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10554fcb:	51                                              	push   ecx
10554fcc:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10554fd0:	51                                              	push   ecx
10554fd1:	53                                              	push   ebx
10554fd2:	8b c8                                           	mov    ecx,eax
10554fd4:	ff d2                                           	call   edx
10554fd6:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10554fda:	83 7c 24 14 00                                  	cmp    DWORD PTR [esp+0x14],0x0
10554fdf:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10554fe3:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10554fe7:	89 4e 18                                        	mov    DWORD PTR [esi+0x18],ecx
10554fea:	89 56 1c                                        	mov    DWORD PTR [esi+0x1c],edx
10554fed:	74 38                                           	je     0x10555027
10554fef:	85 c0                                           	test   eax,eax
10554ff1:	7e 34                                           	jle    0x10555027
10554ff3:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
10554ff7:	89 4e 10                                        	mov    DWORD PTR [esi+0x10],ecx
10554ffa:	50                                              	push   eax
10554ffb:	8b ce                                           	mov    ecx,esi
10554ffd:	e8 ce 16 fb ff                                  	call   0x105066d0
10555002:	33 c0                                           	xor    eax,eax
10555004:	39 44 24 10                                     	cmp    DWORD PTR [esp+0x10],eax
10555008:	7e 22                                           	jle    0x1055502c
1055500a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
10555010:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10555014:	8b 0c 81                                        	mov    ecx,DWORD PTR [ecx+eax*4]
10555017:	8b 16                                           	mov    edx,DWORD PTR [esi]
10555019:	89 0c 82                                        	mov    DWORD PTR [edx+eax*4],ecx
1055501c:	83 c0 01                                        	add    eax,0x1
1055501f:	3b 44 24 10                                     	cmp    eax,DWORD PTR [esp+0x10]
10555023:	7c eb                                           	jl     0x10555010
10555025:	eb 05                                           	jmp    0x1055502c
10555027:	8b 16                                           	mov    edx,DWORD PTR [esi]
10555029:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
1055502c:	8b 07                                           	mov    eax,DWORD PTR [edi]
1055502e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10555031:	8b cf                                           	mov    ecx,edi
10555033:	ff d2                                           	call   edx
10555035:	5e                                              	pop    esi
10555036:	5b                                              	pop    ebx
10555037:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
1055503a:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
1055503d:	5f                                              	pop    edi
1055503e:	8b cd                                           	mov    ecx,ebp
10555040:	5d                                              	pop    ebp
10555041:	83 c4 08                                        	add    esp,0x8
10555044:	ff e2                                           	jmp    edx
10555046:	5d                                              	pop    ebp
10555047:	83 c4 08                                        	add    esp,0x8
1055504a:	c3                                              	ret
1055504b:	cc                                              	int3
1055504c:	cc                                              	int3
1055504d:	cc                                              	int3
1055504e:	cc                                              	int3
1055504f:	cc                                              	int3
