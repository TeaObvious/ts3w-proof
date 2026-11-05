# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10654a60 (Audio_CreateSoundImpl)
Paired Ghidra pseudocode: 10654A60_Audio_CreateSoundImpl.c
Window: [0x10654a60, 0x10654b20) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x10654b20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10654a60: a1 a0 d4 c7 10 81 ec 80 00 00 00 85 c0 56 0f 84
10654a70: 9f 00 00 00 8d b0 30 84 fd ff 85 f6 0f 84 91 00
10654a80: 00 00 53 55 57 e8 96 66 f0 ff 8b 8c 24 94 00 00
10654a90: 00 8b 10 8b 52 58 6a ff 68 80 00 00 00 51 8b c8
10654aa0: ff d2 50 8d 44 24 1c 50 e8 e3 bd 2d 00 8b 16 8b
10654ab0: 92 18 01 00 00 83 c4 10 8d 44 24 10 50 8b ce ff
10654ac0: d2 8b d8 8b 06 8b ea 8b 50 28 8b ce ff d2 8b f8
10654ad0: 8b 06 8b 50 44 68 31 53 47 03 8b ce ff d2 8b 06
10654ae0: 8b 50 50 55 53 68 81 53 47 03 8b ce ff d2 8b 06
10654af0: 8b 50 4c 57 68 85 53 47 03 8b ce ff d2 8b 06 8b
10654b00: 50 68 8b ce ff d2 8b c7 5f 5d 5b 5e 81 c4 80 00
10654b10: 00 00 c3 33 c0 5e 81 c4 80 00 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
10654a60 <.text+0x653a60>:
10654a60:	a1 a0 d4 c7 10                                  	mov    eax,ds:0x10c7d4a0
10654a65:	81 ec 80 00 00 00                               	sub    esp,0x80
10654a6b:	85 c0                                           	test   eax,eax
10654a6d:	56                                              	push   esi
10654a6e:	0f 84 9f 00 00 00                               	je     0x10654b13
10654a74:	8d b0 30 84 fd ff                               	lea    esi,[eax-0x27bd0]
10654a7a:	85 f6                                           	test   esi,esi
10654a7c:	0f 84 91 00 00 00                               	je     0x10654b13
10654a82:	53                                              	push   ebx
10654a83:	55                                              	push   ebp
10654a84:	57                                              	push   edi
10654a85:	e8 96 66 f0 ff                                  	call   0x1055b120
10654a8a:	8b 8c 24 94 00 00 00                            	mov    ecx,DWORD PTR [esp+0x94]
10654a91:	8b 10                                           	mov    edx,DWORD PTR [eax]
10654a93:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
10654a96:	6a ff                                           	push   0xffffffff
10654a98:	68 80 00 00 00                                  	push   0x80
10654a9d:	51                                              	push   ecx
10654a9e:	8b c8                                           	mov    ecx,eax
10654aa0:	ff d2                                           	call   edx
10654aa2:	50                                              	push   eax
10654aa3:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
10654aa7:	50                                              	push   eax
10654aa8:	e8 e3 bd 2d 00                                  	call   0x10930890
10654aad:	8b 16                                           	mov    edx,DWORD PTR [esi]
10654aaf:	8b 92 18 01 00 00                               	mov    edx,DWORD PTR [edx+0x118]
10654ab5:	83 c4 10                                        	add    esp,0x10
10654ab8:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10654abc:	50                                              	push   eax
10654abd:	8b ce                                           	mov    ecx,esi
10654abf:	ff d2                                           	call   edx
10654ac1:	8b d8                                           	mov    ebx,eax
10654ac3:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654ac5:	8b ea                                           	mov    ebp,edx
10654ac7:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
10654aca:	8b ce                                           	mov    ecx,esi
10654acc:	ff d2                                           	call   edx
10654ace:	8b f8                                           	mov    edi,eax
10654ad0:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654ad2:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
10654ad5:	68 31 53 47 03                                  	push   0x3475331
10654ada:	8b ce                                           	mov    ecx,esi
10654adc:	ff d2                                           	call   edx
10654ade:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654ae0:	8b 50 50                                        	mov    edx,DWORD PTR [eax+0x50]
10654ae3:	55                                              	push   ebp
10654ae4:	53                                              	push   ebx
10654ae5:	68 81 53 47 03                                  	push   0x3475381
10654aea:	8b ce                                           	mov    ecx,esi
10654aec:	ff d2                                           	call   edx
10654aee:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654af0:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
10654af3:	57                                              	push   edi
10654af4:	68 85 53 47 03                                  	push   0x3475385
10654af9:	8b ce                                           	mov    ecx,esi
10654afb:	ff d2                                           	call   edx
10654afd:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654aff:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
10654b02:	8b ce                                           	mov    ecx,esi
10654b04:	ff d2                                           	call   edx
10654b06:	8b c7                                           	mov    eax,edi
10654b08:	5f                                              	pop    edi
10654b09:	5d                                              	pop    ebp
10654b0a:	5b                                              	pop    ebx
10654b0b:	5e                                              	pop    esi
10654b0c:	81 c4 80 00 00 00                               	add    esp,0x80
10654b12:	c3                                              	ret
10654b13:	33 c0                                           	xor    eax,eax
10654b15:	5e                                              	pop    esi
10654b16:	81 c4 80 00 00 00                               	add    esp,0x80
10654b1c:	c3                                              	ret
10654b1d:	cc                                              	int3
10654b1e:	cc                                              	int3
10654b1f:	cc                                              	int3
