# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105679c0 (StreamHost_ReadDecimal)
Paired Ghidra pseudocode: 105679C0_StreamHost_ReadDecimal.c
Window: [0x105679c0, 0x10567a70) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567a70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105679c0: 83 ec 10 56 8b 74 24 18 3b 35 a4 b0 c7 10 75 08
105679d0: 8b 0d a8 b0 c7 10 eb 35 8b c6 25 00 00 00 ff 3d
105679e0: 00 00 00 60 74 04 33 c9 eb 23 e8 31 37 ff ff 8b
105679f0: 10 8b c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b
10567a00: a3 a8 b0 c7 10 89 35 a4 b0 c7 10 8b c8 85 c9 5e
10567a10: 75 07 8d 41 fe 83 c4 10 c3 8b 11 8b 52 30 6a 10
10567a20: 8d 44 24 04 50 ff d2 83 f8 10 74 12 33 c9 83 f8
10567a30: ff 0f 95 c1 8d 4c 09 fd 8b c1 83 c4 10 c3 8b 44
10567a40: 24 18 8b 14 24 8b 4c 24 04 89 50 08 8b 54 24 08
10567a50: 89 48 0c 8b 4c 24 0c 89 50 04 89 08 33 c0 83 c4
10567a60: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105679c0 <.text+0x5669c0>:
105679c0:	83 ec 10                                        	sub    esp,0x10
105679c3:	56                                              	push   esi
105679c4:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
105679c8:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
105679ce:	75 08                                           	jne    0x105679d8
105679d0:	8b 0d a8 b0 c7 10                               	mov    ecx,DWORD PTR ds:0x10c7b0a8
105679d6:	eb 35                                           	jmp    0x10567a0d
105679d8:	8b c6                                           	mov    eax,esi
105679da:	25 00 00 00 ff                                  	and    eax,0xff000000
105679df:	3d 00 00 00 60                                  	cmp    eax,0x60000000
105679e4:	74 04                                           	je     0x105679ea
105679e6:	33 c9                                           	xor    ecx,ecx
105679e8:	eb 23                                           	jmp    0x10567a0d
105679ea:	e8 31 37 ff ff                                  	call   0x1055b120
105679ef:	8b 10                                           	mov    edx,DWORD PTR [eax]
105679f1:	8b c8                                           	mov    ecx,eax
105679f3:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
105679f9:	56                                              	push   esi
105679fa:	ff d0                                           	call   eax
105679fc:	85 c0                                           	test   eax,eax
105679fe:	74 0b                                           	je     0x10567a0b
10567a00:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
10567a05:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
10567a0b:	8b c8                                           	mov    ecx,eax
10567a0d:	85 c9                                           	test   ecx,ecx
10567a0f:	5e                                              	pop    esi
10567a10:	75 07                                           	jne    0x10567a19
10567a12:	8d 41 fe                                        	lea    eax,[ecx-0x2]
10567a15:	83 c4 10                                        	add    esp,0x10
10567a18:	c3                                              	ret
10567a19:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10567a1b:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
10567a1e:	6a 10                                           	push   0x10
10567a20:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10567a24:	50                                              	push   eax
10567a25:	ff d2                                           	call   edx
10567a27:	83 f8 10                                        	cmp    eax,0x10
10567a2a:	74 12                                           	je     0x10567a3e
10567a2c:	33 c9                                           	xor    ecx,ecx
10567a2e:	83 f8 ff                                        	cmp    eax,0xffffffff
10567a31:	0f 95 c1                                        	setne  cl
10567a34:	8d 4c 09 fd                                     	lea    ecx,[ecx+ecx*1-0x3]
10567a38:	8b c1                                           	mov    eax,ecx
10567a3a:	83 c4 10                                        	add    esp,0x10
10567a3d:	c3                                              	ret
10567a3e:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10567a42:	8b 14 24                                        	mov    edx,DWORD PTR [esp]
10567a45:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10567a49:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
10567a4c:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10567a50:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
10567a53:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10567a57:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10567a5a:	89 08                                           	mov    DWORD PTR [eax],ecx
10567a5c:	33 c0                                           	xor    eax,eax
10567a5e:	83 c4 10                                        	add    esp,0x10
10567a61:	c3                                              	ret
10567a62:	cc                                              	int3
10567a63:	cc                                              	int3
10567a64:	cc                                              	int3
10567a65:	cc                                              	int3
10567a66:	cc                                              	int3
10567a67:	cc                                              	int3
10567a68:	cc                                              	int3
10567a69:	cc                                              	int3
10567a6a:	cc                                              	int3
10567a6b:	cc                                              	int3
10567a6c:	cc                                              	int3
10567a6d:	cc                                              	int3
10567a6e:	cc                                              	int3
10567a6f:	cc                                              	int3
