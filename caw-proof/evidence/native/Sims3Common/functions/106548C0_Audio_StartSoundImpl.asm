# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x106548c0 (Audio_StartSoundImpl)
Paired Ghidra pseudocode: 106548C0_Audio_StartSoundImpl.c
Window: [0x106548c0, 0x10654980) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x10654980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
106548c0: a1 a0 d4 c7 10 81 ec 80 00 00 00 85 c0 56 0f 84
106548d0: 9f 00 00 00 8d b0 30 84 fd ff 85 f6 0f 84 91 00
106548e0: 00 00 53 55 57 e8 36 68 f0 ff 8b 8c 24 94 00 00
106548f0: 00 8b 10 8b 52 58 6a ff 68 80 00 00 00 51 8b c8
10654900: ff d2 50 8d 44 24 1c 50 e8 83 bf 2d 00 8b 16 8b
10654910: 92 18 01 00 00 83 c4 10 8d 44 24 10 50 8b ce ff
10654920: d2 8b d8 8b 06 8b ea 8b 50 28 8b ce ff d2 8b f8
10654930: 8b 06 8b 50 44 68 65 53 47 03 8b ce ff d2 8b 06
10654940: 8b 50 50 55 53 68 81 53 47 03 8b ce ff d2 8b 06
10654950: 8b 50 4c 57 68 85 53 47 03 8b ce ff d2 8b 06 8b
10654960: 50 68 8b ce ff d2 8b c7 5f 5d 5b 5e 81 c4 80 00
10654970: 00 00 c3 33 c0 5e 81 c4 80 00 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
106548c0 <.text+0x6538c0>:
106548c0:	a1 a0 d4 c7 10                                  	mov    eax,ds:0x10c7d4a0
106548c5:	81 ec 80 00 00 00                               	sub    esp,0x80
106548cb:	85 c0                                           	test   eax,eax
106548cd:	56                                              	push   esi
106548ce:	0f 84 9f 00 00 00                               	je     0x10654973
106548d4:	8d b0 30 84 fd ff                               	lea    esi,[eax-0x27bd0]
106548da:	85 f6                                           	test   esi,esi
106548dc:	0f 84 91 00 00 00                               	je     0x10654973
106548e2:	53                                              	push   ebx
106548e3:	55                                              	push   ebp
106548e4:	57                                              	push   edi
106548e5:	e8 36 68 f0 ff                                  	call   0x1055b120
106548ea:	8b 8c 24 94 00 00 00                            	mov    ecx,DWORD PTR [esp+0x94]
106548f1:	8b 10                                           	mov    edx,DWORD PTR [eax]
106548f3:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
106548f6:	6a ff                                           	push   0xffffffff
106548f8:	68 80 00 00 00                                  	push   0x80
106548fd:	51                                              	push   ecx
106548fe:	8b c8                                           	mov    ecx,eax
10654900:	ff d2                                           	call   edx
10654902:	50                                              	push   eax
10654903:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
10654907:	50                                              	push   eax
10654908:	e8 83 bf 2d 00                                  	call   0x10930890
1065490d:	8b 16                                           	mov    edx,DWORD PTR [esi]
1065490f:	8b 92 18 01 00 00                               	mov    edx,DWORD PTR [edx+0x118]
10654915:	83 c4 10                                        	add    esp,0x10
10654918:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1065491c:	50                                              	push   eax
1065491d:	8b ce                                           	mov    ecx,esi
1065491f:	ff d2                                           	call   edx
10654921:	8b d8                                           	mov    ebx,eax
10654923:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654925:	8b ea                                           	mov    ebp,edx
10654927:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
1065492a:	8b ce                                           	mov    ecx,esi
1065492c:	ff d2                                           	call   edx
1065492e:	8b f8                                           	mov    edi,eax
10654930:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654932:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
10654935:	68 65 53 47 03                                  	push   0x3475365
1065493a:	8b ce                                           	mov    ecx,esi
1065493c:	ff d2                                           	call   edx
1065493e:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654940:	8b 50 50                                        	mov    edx,DWORD PTR [eax+0x50]
10654943:	55                                              	push   ebp
10654944:	53                                              	push   ebx
10654945:	68 81 53 47 03                                  	push   0x3475381
1065494a:	8b ce                                           	mov    ecx,esi
1065494c:	ff d2                                           	call   edx
1065494e:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654950:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
10654953:	57                                              	push   edi
10654954:	68 85 53 47 03                                  	push   0x3475385
10654959:	8b ce                                           	mov    ecx,esi
1065495b:	ff d2                                           	call   edx
1065495d:	8b 06                                           	mov    eax,DWORD PTR [esi]
1065495f:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
10654962:	8b ce                                           	mov    ecx,esi
10654964:	ff d2                                           	call   edx
10654966:	8b c7                                           	mov    eax,edi
10654968:	5f                                              	pop    edi
10654969:	5d                                              	pop    ebp
1065496a:	5b                                              	pop    ebx
1065496b:	5e                                              	pop    esi
1065496c:	81 c4 80 00 00 00                               	add    esp,0x80
10654972:	c3                                              	ret
10654973:	33 c0                                           	xor    eax,eax
10654975:	5e                                              	pop    esi
10654976:	81 c4 80 00 00 00                               	add    esp,0x80
1065497c:	c3                                              	ret
1065497d:	cc                                              	int3
1065497e:	cc                                              	int3
1065497f:	cc                                              	int3
