# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569fb0 (ThumbnailManager_GenerateLotThumbnails)
Paired Ghidra pseudocode: 10569FB0_ThumbnailManager_GenerateLotThumbnails.c
Window: [0x10569fb0, 0x1056a120) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056a120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569fb0: 83 ec 24 83 7c 24 3c 00 57 8b 3d 50 11 c7 10 89
10569fc0: 7c 24 04 75 2f 85 ff 0f 84 40 01 00 00 8b 44 24
10569fd0: 3c 8b 4c 24 38 8b 54 24 34 6a 00 50 8b 44 24 38
10569fe0: 51 8b 4c 24 38 52 50 51 8b cf e8 41 06 dd ff 5f
10569ff0: 83 c4 24 c3 53 55 56 e8 24 11 ff ff 8b f0 8b 16
1056a000: 8b 82 18 01 00 00 8b ce ff d0 85 ff 8b e8 8b da
1056a010: 0f 84 a8 00 00 00 6a 00 6a 00 6a 00 6a 00 68 5c
1056a020: 0a b2 10 6a 38 e8 86 ee 3a 00 83 c4 18 85 c0 74
1056a030: 7c 8b 4c 24 4c 51 53 55 8b c8 e8 b1 fc ff ff 8b
1056a040: f8 85 ff 74 09 8b 17 8b 42 04 8b cf ff d0 8b 4c
1056a050: 24 48 8b 54 24 44 8b 44 24 40 57 51 8b 4c 24 44
1056a060: 52 8b 54 24 44 50 51 8b 4c 24 24 52 e8 bf 05 dd
1056a070: ff 84 c0 74 3c 8b 4c 24 4c 8b 06 8b 90 20 01 00
1056a080: 00 6a 00 51 6a ff 53 55 8b ce ff d2 8b 06 8b 90
1056a090: 1c 01 00 00 8b ce ff d2 85 ff 74 6e 8b 07 8b 50
1056a0a0: 08 8b cf ff d2 5e 5d 5b 5f 83 c4 24 c3 33 ff eb
1056a0b0: 9d 85 ff 74 09 8b 07 8b 50 08 8b cf ff d2 8b 54
1056a0c0: 24 4c 6a 00 8d 4c 24 18 51 53 bf b4 a5 ac 10 89
1056a0d0: 7c 24 20 c6 44 24 30 00 66 c7 44 24 2a 01 00 66
1056a0e0: c7 44 24 28 00 00 8b 06 8b 80 30 01 00 00 55 52
1056a0f0: 8b ce ff d0 f6 44 24 1c 04 89 7c 24 14 74 0b 6a
1056a100: 00 8d 4c 24 18 e8 86 e9 3b 00 5e 5d 5b 5f 83 c4
1056a110: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569fb0 <.text+0x568fb0>:
10569fb0:	83 ec 24                                        	sub    esp,0x24
10569fb3:	83 7c 24 3c 00                                  	cmp    DWORD PTR [esp+0x3c],0x0
10569fb8:	57                                              	push   edi
10569fb9:	8b 3d 50 11 c7 10                               	mov    edi,DWORD PTR ds:0x10c71150
10569fbf:	89 7c 24 04                                     	mov    DWORD PTR [esp+0x4],edi
10569fc3:	75 2f                                           	jne    0x10569ff4
10569fc5:	85 ff                                           	test   edi,edi
10569fc7:	0f 84 40 01 00 00                               	je     0x1056a10d
10569fcd:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10569fd1:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10569fd5:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
10569fd9:	6a 00                                           	push   0x0
10569fdb:	50                                              	push   eax
10569fdc:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
10569fe0:	51                                              	push   ecx
10569fe1:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10569fe5:	52                                              	push   edx
10569fe6:	50                                              	push   eax
10569fe7:	51                                              	push   ecx
10569fe8:	8b cf                                           	mov    ecx,edi
10569fea:	e8 41 06 dd ff                                  	call   0x1033a630
10569fef:	5f                                              	pop    edi
10569ff0:	83 c4 24                                        	add    esp,0x24
10569ff3:	c3                                              	ret
10569ff4:	53                                              	push   ebx
10569ff5:	55                                              	push   ebp
10569ff6:	56                                              	push   esi
10569ff7:	e8 24 11 ff ff                                  	call   0x1055b120
10569ffc:	8b f0                                           	mov    esi,eax
10569ffe:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056a000:	8b 82 18 01 00 00                               	mov    eax,DWORD PTR [edx+0x118]
1056a006:	8b ce                                           	mov    ecx,esi
1056a008:	ff d0                                           	call   eax
1056a00a:	85 ff                                           	test   edi,edi
1056a00c:	8b e8                                           	mov    ebp,eax
1056a00e:	8b da                                           	mov    ebx,edx
1056a010:	0f 84 a8 00 00 00                               	je     0x1056a0be
1056a016:	6a 00                                           	push   0x0
1056a018:	6a 00                                           	push   0x0
1056a01a:	6a 00                                           	push   0x0
1056a01c:	6a 00                                           	push   0x0
1056a01e:	68 5c 0a b2 10                                  	push   0x10b20a5c
1056a023:	6a 38                                           	push   0x38
1056a025:	e8 86 ee 3a 00                                  	call   0x10918eb0
1056a02a:	83 c4 18                                        	add    esp,0x18
1056a02d:	85 c0                                           	test   eax,eax
1056a02f:	74 7c                                           	je     0x1056a0ad
1056a031:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
1056a035:	51                                              	push   ecx
1056a036:	53                                              	push   ebx
1056a037:	55                                              	push   ebp
1056a038:	8b c8                                           	mov    ecx,eax
1056a03a:	e8 b1 fc ff ff                                  	call   0x10569cf0
1056a03f:	8b f8                                           	mov    edi,eax
1056a041:	85 ff                                           	test   edi,edi
1056a043:	74 09                                           	je     0x1056a04e
1056a045:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056a047:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056a04a:	8b cf                                           	mov    ecx,edi
1056a04c:	ff d0                                           	call   eax
1056a04e:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
1056a052:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1056a056:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
1056a05a:	57                                              	push   edi
1056a05b:	51                                              	push   ecx
1056a05c:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
1056a060:	52                                              	push   edx
1056a061:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1056a065:	50                                              	push   eax
1056a066:	51                                              	push   ecx
1056a067:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1056a06b:	52                                              	push   edx
1056a06c:	e8 bf 05 dd ff                                  	call   0x1033a630
1056a071:	84 c0                                           	test   al,al
1056a073:	74 3c                                           	je     0x1056a0b1
1056a075:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
1056a079:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a07b:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
1056a081:	6a 00                                           	push   0x0
1056a083:	51                                              	push   ecx
1056a084:	6a ff                                           	push   0xffffffff
1056a086:	53                                              	push   ebx
1056a087:	55                                              	push   ebp
1056a088:	8b ce                                           	mov    ecx,esi
1056a08a:	ff d2                                           	call   edx
1056a08c:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a08e:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
1056a094:	8b ce                                           	mov    ecx,esi
1056a096:	ff d2                                           	call   edx
1056a098:	85 ff                                           	test   edi,edi
1056a09a:	74 6e                                           	je     0x1056a10a
1056a09c:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056a09e:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056a0a1:	8b cf                                           	mov    ecx,edi
1056a0a3:	ff d2                                           	call   edx
1056a0a5:	5e                                              	pop    esi
1056a0a6:	5d                                              	pop    ebp
1056a0a7:	5b                                              	pop    ebx
1056a0a8:	5f                                              	pop    edi
1056a0a9:	83 c4 24                                        	add    esp,0x24
1056a0ac:	c3                                              	ret
1056a0ad:	33 ff                                           	xor    edi,edi
1056a0af:	eb 9d                                           	jmp    0x1056a04e
1056a0b1:	85 ff                                           	test   edi,edi
1056a0b3:	74 09                                           	je     0x1056a0be
1056a0b5:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056a0b7:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056a0ba:	8b cf                                           	mov    ecx,edi
1056a0bc:	ff d2                                           	call   edx
1056a0be:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
1056a0c2:	6a 00                                           	push   0x0
1056a0c4:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056a0c8:	51                                              	push   ecx
1056a0c9:	53                                              	push   ebx
1056a0ca:	bf b4 a5 ac 10                                  	mov    edi,0x10aca5b4
1056a0cf:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1056a0d3:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
1056a0d8:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
1056a0df:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
1056a0e6:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a0e8:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
1056a0ee:	55                                              	push   ebp
1056a0ef:	52                                              	push   edx
1056a0f0:	8b ce                                           	mov    ecx,esi
1056a0f2:	ff d0                                           	call   eax
1056a0f4:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
1056a0f9:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1056a0fd:	74 0b                                           	je     0x1056a10a
1056a0ff:	6a 00                                           	push   0x0
1056a101:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056a105:	e8 86 e9 3b 00                                  	call   0x10928a90
1056a10a:	5e                                              	pop    esi
1056a10b:	5d                                              	pop    ebp
1056a10c:	5b                                              	pop    ebx
1056a10d:	5f                                              	pop    edi
1056a10e:	83 c4 24                                        	add    esp,0x24
1056a111:	c3                                              	ret
1056a112:	cc                                              	int3
1056a113:	cc                                              	int3
1056a114:	cc                                              	int3
1056a115:	cc                                              	int3
1056a116:	cc                                              	int3
1056a117:	cc                                              	int3
1056a118:	cc                                              	int3
1056a119:	cc                                              	int3
1056a11a:	cc                                              	int3
1056a11b:	cc                                              	int3
1056a11c:	cc                                              	int3
1056a11d:	cc                                              	int3
1056a11e:	cc                                              	int3
1056a11f:	cc                                              	int3
