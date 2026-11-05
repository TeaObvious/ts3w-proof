# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10582050 (World_WaitForDetailedLots)
Paired Ghidra pseudocode: 10582050_World_WaitForDetailedLots.c
Window: [0x10582050, 0x10582160) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x10582160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10582050: 83 ec 20 53 55 56 57 e8 c4 90 fd ff 8b f0 8b 06
10582060: 8b 90 18 01 00 00 8b ce ff d2 6a 00 6a 00 6a 00
10582070: 6a 00 68 44 1b b2 10 6a 28 8b e8 8b da e8 2e 6e
10582080: 39 00 83 c4 18 85 c0 74 7c 8b 4c 24 40 8b 54 24
10582090: 3c 51 8b 4c 24 3c 52 51 53 55 8b c8 e8 5f 82 ff
105820a0: ff 8b f8 85 ff 74 5e 8b 17 8b 42 04 8b cf ff d0
105820b0: e8 7b 90 fd ff 85 c0 74 18 8b 10 8b 52 1c 8d 4f
105820c0: 0c 51 6a 00 8d 4f 08 51 68 c7 20 af 55 8b c8 ff
105820d0: d2 8b 4c 24 34 8b 06 8b 90 20 01 00 00 6a 00 51
105820e0: 6a ff 53 55 8b ce ff d2 8b 06 8b 90 1c 01 00 00
105820f0: 8b ce ff d2 8b 07 8b 50 08 8b cf ff d2 5f 5e 5d
10582100: 5b 83 c4 20 c3 8b 54 24 34 6a 00 8d 4c 24 14 51
10582110: 53 bf b4 a5 ac 10 89 7c 24 1c c6 44 24 2c 00 66
10582120: c7 44 24 26 01 00 66 c7 44 24 24 00 00 8b 06 8b
10582130: 80 30 01 00 00 55 52 8b ce ff d0 f6 44 24 18 04
10582140: 89 7c 24 10 74 0b 6a 00 8d 4c 24 14 e8 3f 69 3a
10582150: 00 5f 5e 5d 5b 83 c4 20 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10582050 <.text+0x581050>:
10582050:	83 ec 20                                        	sub    esp,0x20
10582053:	53                                              	push   ebx
10582054:	55                                              	push   ebp
10582055:	56                                              	push   esi
10582056:	57                                              	push   edi
10582057:	e8 c4 90 fd ff                                  	call   0x1055b120
1058205c:	8b f0                                           	mov    esi,eax
1058205e:	8b 06                                           	mov    eax,DWORD PTR [esi]
10582060:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
10582066:	8b ce                                           	mov    ecx,esi
10582068:	ff d2                                           	call   edx
1058206a:	6a 00                                           	push   0x0
1058206c:	6a 00                                           	push   0x0
1058206e:	6a 00                                           	push   0x0
10582070:	6a 00                                           	push   0x0
10582072:	68 44 1b b2 10                                  	push   0x10b21b44
10582077:	6a 28                                           	push   0x28
10582079:	8b e8                                           	mov    ebp,eax
1058207b:	8b da                                           	mov    ebx,edx
1058207d:	e8 2e 6e 39 00                                  	call   0x10918eb0
10582082:	83 c4 18                                        	add    esp,0x18
10582085:	85 c0                                           	test   eax,eax
10582087:	74 7c                                           	je     0x10582105
10582089:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1058208d:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
10582091:	51                                              	push   ecx
10582092:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
10582096:	52                                              	push   edx
10582097:	51                                              	push   ecx
10582098:	53                                              	push   ebx
10582099:	55                                              	push   ebp
1058209a:	8b c8                                           	mov    ecx,eax
1058209c:	e8 5f 82 ff ff                                  	call   0x1057a300
105820a1:	8b f8                                           	mov    edi,eax
105820a3:	85 ff                                           	test   edi,edi
105820a5:	74 5e                                           	je     0x10582105
105820a7:	8b 17                                           	mov    edx,DWORD PTR [edi]
105820a9:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
105820ac:	8b cf                                           	mov    ecx,edi
105820ae:	ff d0                                           	call   eax
105820b0:	e8 7b 90 fd ff                                  	call   0x1055b130
105820b5:	85 c0                                           	test   eax,eax
105820b7:	74 18                                           	je     0x105820d1
105820b9:	8b 10                                           	mov    edx,DWORD PTR [eax]
105820bb:	8b 52 1c                                        	mov    edx,DWORD PTR [edx+0x1c]
105820be:	8d 4f 0c                                        	lea    ecx,[edi+0xc]
105820c1:	51                                              	push   ecx
105820c2:	6a 00                                           	push   0x0
105820c4:	8d 4f 08                                        	lea    ecx,[edi+0x8]
105820c7:	51                                              	push   ecx
105820c8:	68 c7 20 af 55                                  	push   0x55af20c7
105820cd:	8b c8                                           	mov    ecx,eax
105820cf:	ff d2                                           	call   edx
105820d1:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
105820d5:	8b 06                                           	mov    eax,DWORD PTR [esi]
105820d7:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
105820dd:	6a 00                                           	push   0x0
105820df:	51                                              	push   ecx
105820e0:	6a ff                                           	push   0xffffffff
105820e2:	53                                              	push   ebx
105820e3:	55                                              	push   ebp
105820e4:	8b ce                                           	mov    ecx,esi
105820e6:	ff d2                                           	call   edx
105820e8:	8b 06                                           	mov    eax,DWORD PTR [esi]
105820ea:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
105820f0:	8b ce                                           	mov    ecx,esi
105820f2:	ff d2                                           	call   edx
105820f4:	8b 07                                           	mov    eax,DWORD PTR [edi]
105820f6:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
105820f9:	8b cf                                           	mov    ecx,edi
105820fb:	ff d2                                           	call   edx
105820fd:	5f                                              	pop    edi
105820fe:	5e                                              	pop    esi
105820ff:	5d                                              	pop    ebp
10582100:	5b                                              	pop    ebx
10582101:	83 c4 20                                        	add    esp,0x20
10582104:	c3                                              	ret
10582105:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
10582109:	6a 00                                           	push   0x0
1058210b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1058210f:	51                                              	push   ecx
10582110:	53                                              	push   ebx
10582111:	bf b4 a5 ac 10                                  	mov    edi,0x10aca5b4
10582116:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
1058211a:	c6 44 24 2c 00                                  	mov    BYTE PTR [esp+0x2c],0x0
1058211f:	66 c7 44 24 26 01 00                            	mov    WORD PTR [esp+0x26],0x1
10582126:	66 c7 44 24 24 00 00                            	mov    WORD PTR [esp+0x24],0x0
1058212d:	8b 06                                           	mov    eax,DWORD PTR [esi]
1058212f:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
10582135:	55                                              	push   ebp
10582136:	52                                              	push   edx
10582137:	8b ce                                           	mov    ecx,esi
10582139:	ff d0                                           	call   eax
1058213b:	f6 44 24 18 04                                  	test   BYTE PTR [esp+0x18],0x4
10582140:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
10582144:	74 0b                                           	je     0x10582151
10582146:	6a 00                                           	push   0x0
10582148:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1058214c:	e8 3f 69 3a 00                                  	call   0x10928a90
10582151:	5f                                              	pop    edi
10582152:	5e                                              	pop    esi
10582153:	5d                                              	pop    ebp
10582154:	5b                                              	pop    ebx
10582155:	83 c4 20                                        	add    esp,0x20
10582158:	c3                                              	ret
10582159:	cc                                              	int3
1058215a:	cc                                              	int3
1058215b:	cc                                              	int3
1058215c:	cc                                              	int3
1058215d:	cc                                              	int3
1058215e:	cc                                              	int3
1058215f:	cc                                              	int3
