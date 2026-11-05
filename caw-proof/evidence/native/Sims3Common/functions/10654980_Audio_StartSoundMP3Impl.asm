# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10654980 (Audio_StartSoundMP3Impl)
Paired Ghidra pseudocode: 10654980_Audio_StartSoundMP3Impl.c
Window: [0x10654980, 0x10654a60) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x10654a60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10654980: a1 a0 d4 c7 10 81 ec 08 02 00 00 85 c0 56 0f 84
10654990: bf 00 00 00 8d b0 30 84 fd ff 85 f6 0f 84 b1 00
106549a0: 00 00 53 55 57 e8 76 67 f0 ff 8b 8c 24 1c 02 00
106549b0: 00 8b 10 8b 52 58 68 04 01 00 00 51 8b c8 ff d2
106549c0: 50 8d 44 24 18 50 e8 b5 d4 2d 00 8b 16 8b 82 18
106549d0: 01 00 00 83 c4 0c 68 b4 84 b3 10 8b ce 66 c7 84
106549e0: 24 1a 02 00 00 00 00 ff d0 8b ea 8b 16 8b d8 8b
106549f0: 42 28 8b ce ff d0 8b 16 8b f8 8b 42 44 68 65 53
10654a00: 47 03 8b ce ff d0 8b 16 8b 42 50 55 53 68 81 53
10654a10: 47 03 8b ce ff d0 8b 16 8b 42 4c 57 68 85 53 47
10654a20: 03 8b ce ff d0 8b 16 8b 52 5c 68 08 02 00 00 8d
10654a30: 44 24 14 50 68 2e 37 a9 9f 8b ce ff d2 8b 06 8b
10654a40: 50 68 8b ce ff d2 8b c7 5f 5d 5b 5e 81 c4 08 02
10654a50: 00 00 c3 33 c0 5e 81 c4 08 02 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
10654980 <.text+0x653980>:
10654980:	a1 a0 d4 c7 10                                  	mov    eax,ds:0x10c7d4a0
10654985:	81 ec 08 02 00 00                               	sub    esp,0x208
1065498b:	85 c0                                           	test   eax,eax
1065498d:	56                                              	push   esi
1065498e:	0f 84 bf 00 00 00                               	je     0x10654a53
10654994:	8d b0 30 84 fd ff                               	lea    esi,[eax-0x27bd0]
1065499a:	85 f6                                           	test   esi,esi
1065499c:	0f 84 b1 00 00 00                               	je     0x10654a53
106549a2:	53                                              	push   ebx
106549a3:	55                                              	push   ebp
106549a4:	57                                              	push   edi
106549a5:	e8 76 67 f0 ff                                  	call   0x1055b120
106549aa:	8b 8c 24 1c 02 00 00                            	mov    ecx,DWORD PTR [esp+0x21c]
106549b1:	8b 10                                           	mov    edx,DWORD PTR [eax]
106549b3:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
106549b6:	68 04 01 00 00                                  	push   0x104
106549bb:	51                                              	push   ecx
106549bc:	8b c8                                           	mov    ecx,eax
106549be:	ff d2                                           	call   edx
106549c0:	50                                              	push   eax
106549c1:	8d 44 24 18                                     	lea    eax,[esp+0x18]
106549c5:	50                                              	push   eax
106549c6:	e8 b5 d4 2d 00                                  	call   0x10931e80
106549cb:	8b 16                                           	mov    edx,DWORD PTR [esi]
106549cd:	8b 82 18 01 00 00                               	mov    eax,DWORD PTR [edx+0x118]
106549d3:	83 c4 0c                                        	add    esp,0xc
106549d6:	68 b4 84 b3 10                                  	push   0x10b384b4
106549db:	8b ce                                           	mov    ecx,esi
106549dd:	66 c7 84 24 1a 02 00 00 00 00                   	mov    WORD PTR [esp+0x21a],0x0
106549e7:	ff d0                                           	call   eax
106549e9:	8b ea                                           	mov    ebp,edx
106549eb:	8b 16                                           	mov    edx,DWORD PTR [esi]
106549ed:	8b d8                                           	mov    ebx,eax
106549ef:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
106549f2:	8b ce                                           	mov    ecx,esi
106549f4:	ff d0                                           	call   eax
106549f6:	8b 16                                           	mov    edx,DWORD PTR [esi]
106549f8:	8b f8                                           	mov    edi,eax
106549fa:	8b 42 44                                        	mov    eax,DWORD PTR [edx+0x44]
106549fd:	68 65 53 47 03                                  	push   0x3475365
10654a02:	8b ce                                           	mov    ecx,esi
10654a04:	ff d0                                           	call   eax
10654a06:	8b 16                                           	mov    edx,DWORD PTR [esi]
10654a08:	8b 42 50                                        	mov    eax,DWORD PTR [edx+0x50]
10654a0b:	55                                              	push   ebp
10654a0c:	53                                              	push   ebx
10654a0d:	68 81 53 47 03                                  	push   0x3475381
10654a12:	8b ce                                           	mov    ecx,esi
10654a14:	ff d0                                           	call   eax
10654a16:	8b 16                                           	mov    edx,DWORD PTR [esi]
10654a18:	8b 42 4c                                        	mov    eax,DWORD PTR [edx+0x4c]
10654a1b:	57                                              	push   edi
10654a1c:	68 85 53 47 03                                  	push   0x3475385
10654a21:	8b ce                                           	mov    ecx,esi
10654a23:	ff d0                                           	call   eax
10654a25:	8b 16                                           	mov    edx,DWORD PTR [esi]
10654a27:	8b 52 5c                                        	mov    edx,DWORD PTR [edx+0x5c]
10654a2a:	68 08 02 00 00                                  	push   0x208
10654a2f:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10654a33:	50                                              	push   eax
10654a34:	68 2e 37 a9 9f                                  	push   0x9fa9372e
10654a39:	8b ce                                           	mov    ecx,esi
10654a3b:	ff d2                                           	call   edx
10654a3d:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654a3f:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
10654a42:	8b ce                                           	mov    ecx,esi
10654a44:	ff d2                                           	call   edx
10654a46:	8b c7                                           	mov    eax,edi
10654a48:	5f                                              	pop    edi
10654a49:	5d                                              	pop    ebp
10654a4a:	5b                                              	pop    ebx
10654a4b:	5e                                              	pop    esi
10654a4c:	81 c4 08 02 00 00                               	add    esp,0x208
10654a52:	c3                                              	ret
10654a53:	33 c0                                           	xor    eax,eax
10654a55:	5e                                              	pop    esi
10654a56:	81 c4 08 02 00 00                               	add    esp,0x208
10654a5c:	c3                                              	ret
10654a5d:	cc                                              	int3
10654a5e:	cc                                              	int3
10654a5f:	cc                                              	int3
