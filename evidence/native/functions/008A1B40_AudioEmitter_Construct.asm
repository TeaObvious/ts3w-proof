# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008a1b40 (AudioEmitter_Construct)
Paired Ghidra pseudocode: 008A1B40_AudioEmitter_Construct.c
Window: [0x008a1b40, 0x008a1cf0) (432 bytes; stop exclusive)
Next defined Ghidra entry: 0x008a1cf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008a1b40: 56 8b f1 c7 06 f0 3b 05 01 c7 46 04 88 d2 ff 00
008a1b50: c7 46 08 a4 bb 02 01 33 c0 8d 4e 0c 87 01 8d 4e
008a1b60: 10 c7 06 70 25 03 01 c7 46 04 60 25 03 01 c7 46
008a1b70: 08 5c 25 03 01 e8 b6 88 00 00 d9 ee f3 0f 10 05
008a1b80: f8 98 f9 00 0f 57 c9 33 c0 89 86 70 03 00 00 89
008a1b90: 86 74 03 00 00 89 86 78 03 00 00 f3 0f 10 15 f4
008a1ba0: 98 f9 00 88 86 7c 03 00 00 89 86 80 03 00 00 89
008a1bb0: 86 84 03 00 00 89 86 88 03 00 00 89 86 8c 03 00
008a1bc0: 00 89 86 90 03 00 00 89 86 94 03 00 00 c7 86 a4
008a1bd0: 03 00 00 08 26 03 01 c7 86 a0 03 00 00 56 8e 1c
008a1be0: 01 b9 54 8e 1c 01 89 8e 98 03 00 00 89 8e 9c 03
008a1bf0: 00 00 dd 9e b8 03 00 00 89 86 a8 03 00 00 89 86
008a1c00: c0 03 00 00 88 86 c8 03 00 00 88 86 c9 03 00 00
008a1c10: f3 0f 11 86 cc 03 00 00 f3 0f 11 86 d0 03 00 00
008a1c20: c7 86 b0 03 00 00 98 fb a8 2e c7 86 c4 03 00 00
008a1c30: 02 00 00 00 f3 0f 11 8e d4 03 00 00 f3 0f 11 8e
008a1c40: d8 03 00 00 f3 0f 11 8e dc 03 00 00 f3 0f 11 8e
008a1c50: e0 03 00 00 f3 0f 11 86 e4 03 00 00 f3 0f 11 86
008a1c60: e8 03 00 00 f3 0f 11 86 f0 03 00 00 f3 0f 11 86
008a1c70: f4 03 00 00 f3 0f 11 86 f8 03 00 00 f3 0f 10 05
008a1c80: 18 b2 fa 00 89 86 0c 04 00 00 89 86 10 04 00 00
008a1c90: 89 86 14 04 00 00 89 86 18 04 00 00 89 86 1c 04
008a1ca0: 00 00 89 86 20 04 00 00 89 86 24 04 00 00 f3 0f
008a1cb0: 11 96 ec 03 00 00 f3 0f 11 8e fc 03 00 00 f3 0f
008a1cc0: 11 86 00 04 00 00 f3 0f 11 86 04 04 00 00 f3 0f
008a1cd0: 11 86 08 04 00 00 89 86 28 04 00 00 89 86 e8 04
008a1ce0: 00 00 8b c6 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
008a1b40 <.text+0x4a0b40>:
  8a1b40:	56                                              	push   esi
  8a1b41:	8b f1                                           	mov    esi,ecx
  8a1b43:	c7 06 f0 3b 05 01                               	mov    DWORD PTR [esi],0x1053bf0
  8a1b49:	c7 46 04 88 d2 ff 00                            	mov    DWORD PTR [esi+0x4],0xffd288
  8a1b50:	c7 46 08 a4 bb 02 01                            	mov    DWORD PTR [esi+0x8],0x102bba4
  8a1b57:	33 c0                                           	xor    eax,eax
  8a1b59:	8d 4e 0c                                        	lea    ecx,[esi+0xc]
  8a1b5c:	87 01                                           	xchg   DWORD PTR [ecx],eax
  8a1b5e:	8d 4e 10                                        	lea    ecx,[esi+0x10]
  8a1b61:	c7 06 70 25 03 01                               	mov    DWORD PTR [esi],0x1032570
  8a1b67:	c7 46 04 60 25 03 01                            	mov    DWORD PTR [esi+0x4],0x1032560
  8a1b6e:	c7 46 08 5c 25 03 01                            	mov    DWORD PTR [esi+0x8],0x103255c
  8a1b75:	e8 b6 88 00 00                                  	call   0x8aa430
  8a1b7a:	d9 ee                                           	fldz
  8a1b7c:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  8a1b84:	0f 57 c9                                        	xorps  xmm1,xmm1
  8a1b87:	33 c0                                           	xor    eax,eax
  8a1b89:	89 86 70 03 00 00                               	mov    DWORD PTR [esi+0x370],eax
  8a1b8f:	89 86 74 03 00 00                               	mov    DWORD PTR [esi+0x374],eax
  8a1b95:	89 86 78 03 00 00                               	mov    DWORD PTR [esi+0x378],eax
  8a1b9b:	f3 0f 10 15 f4 98 f9 00                         	movss  xmm2,DWORD PTR ds:0xf998f4
  8a1ba3:	88 86 7c 03 00 00                               	mov    BYTE PTR [esi+0x37c],al
  8a1ba9:	89 86 80 03 00 00                               	mov    DWORD PTR [esi+0x380],eax
  8a1baf:	89 86 84 03 00 00                               	mov    DWORD PTR [esi+0x384],eax
  8a1bb5:	89 86 88 03 00 00                               	mov    DWORD PTR [esi+0x388],eax
  8a1bbb:	89 86 8c 03 00 00                               	mov    DWORD PTR [esi+0x38c],eax
  8a1bc1:	89 86 90 03 00 00                               	mov    DWORD PTR [esi+0x390],eax
  8a1bc7:	89 86 94 03 00 00                               	mov    DWORD PTR [esi+0x394],eax
  8a1bcd:	c7 86 a4 03 00 00 08 26 03 01                   	mov    DWORD PTR [esi+0x3a4],0x1032608
  8a1bd7:	c7 86 a0 03 00 00 56 8e 1c 01                   	mov    DWORD PTR [esi+0x3a0],0x11c8e56
  8a1be1:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  8a1be6:	89 8e 98 03 00 00                               	mov    DWORD PTR [esi+0x398],ecx
  8a1bec:	89 8e 9c 03 00 00                               	mov    DWORD PTR [esi+0x39c],ecx
  8a1bf2:	dd 9e b8 03 00 00                               	fstp   QWORD PTR [esi+0x3b8]
  8a1bf8:	89 86 a8 03 00 00                               	mov    DWORD PTR [esi+0x3a8],eax
  8a1bfe:	89 86 c0 03 00 00                               	mov    DWORD PTR [esi+0x3c0],eax
  8a1c04:	88 86 c8 03 00 00                               	mov    BYTE PTR [esi+0x3c8],al
  8a1c0a:	88 86 c9 03 00 00                               	mov    BYTE PTR [esi+0x3c9],al
  8a1c10:	f3 0f 11 86 cc 03 00 00                         	movss  DWORD PTR [esi+0x3cc],xmm0
  8a1c18:	f3 0f 11 86 d0 03 00 00                         	movss  DWORD PTR [esi+0x3d0],xmm0
  8a1c20:	c7 86 b0 03 00 00 98 fb a8 2e                   	mov    DWORD PTR [esi+0x3b0],0x2ea8fb98
  8a1c2a:	c7 86 c4 03 00 00 02 00 00 00                   	mov    DWORD PTR [esi+0x3c4],0x2
  8a1c34:	f3 0f 11 8e d4 03 00 00                         	movss  DWORD PTR [esi+0x3d4],xmm1
  8a1c3c:	f3 0f 11 8e d8 03 00 00                         	movss  DWORD PTR [esi+0x3d8],xmm1
  8a1c44:	f3 0f 11 8e dc 03 00 00                         	movss  DWORD PTR [esi+0x3dc],xmm1
  8a1c4c:	f3 0f 11 8e e0 03 00 00                         	movss  DWORD PTR [esi+0x3e0],xmm1
  8a1c54:	f3 0f 11 86 e4 03 00 00                         	movss  DWORD PTR [esi+0x3e4],xmm0
  8a1c5c:	f3 0f 11 86 e8 03 00 00                         	movss  DWORD PTR [esi+0x3e8],xmm0
  8a1c64:	f3 0f 11 86 f0 03 00 00                         	movss  DWORD PTR [esi+0x3f0],xmm0
  8a1c6c:	f3 0f 11 86 f4 03 00 00                         	movss  DWORD PTR [esi+0x3f4],xmm0
  8a1c74:	f3 0f 11 86 f8 03 00 00                         	movss  DWORD PTR [esi+0x3f8],xmm0
  8a1c7c:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  8a1c84:	89 86 0c 04 00 00                               	mov    DWORD PTR [esi+0x40c],eax
  8a1c8a:	89 86 10 04 00 00                               	mov    DWORD PTR [esi+0x410],eax
  8a1c90:	89 86 14 04 00 00                               	mov    DWORD PTR [esi+0x414],eax
  8a1c96:	89 86 18 04 00 00                               	mov    DWORD PTR [esi+0x418],eax
  8a1c9c:	89 86 1c 04 00 00                               	mov    DWORD PTR [esi+0x41c],eax
  8a1ca2:	89 86 20 04 00 00                               	mov    DWORD PTR [esi+0x420],eax
  8a1ca8:	89 86 24 04 00 00                               	mov    DWORD PTR [esi+0x424],eax
  8a1cae:	f3 0f 11 96 ec 03 00 00                         	movss  DWORD PTR [esi+0x3ec],xmm2
  8a1cb6:	f3 0f 11 8e fc 03 00 00                         	movss  DWORD PTR [esi+0x3fc],xmm1
  8a1cbe:	f3 0f 11 86 00 04 00 00                         	movss  DWORD PTR [esi+0x400],xmm0
  8a1cc6:	f3 0f 11 86 04 04 00 00                         	movss  DWORD PTR [esi+0x404],xmm0
  8a1cce:	f3 0f 11 86 08 04 00 00                         	movss  DWORD PTR [esi+0x408],xmm0
  8a1cd6:	89 86 28 04 00 00                               	mov    DWORD PTR [esi+0x428],eax
  8a1cdc:	89 86 e8 04 00 00                               	mov    DWORD PTR [esi+0x4e8],eax
  8a1ce2:	8b c6                                           	mov    eax,esi
  8a1ce4:	5e                                              	pop    esi
  8a1ce5:	c3                                              	ret
  8a1ce6:	cc                                              	int3
  8a1ce7:	cc                                              	int3
  8a1ce8:	cc                                              	int3
  8a1ce9:	cc                                              	int3
  8a1cea:	cc                                              	int3
  8a1ceb:	cc                                              	int3
  8a1cec:	cc                                              	int3
  8a1ced:	cc                                              	int3
  8a1cee:	cc                                              	int3
  8a1cef:	cc                                              	int3
