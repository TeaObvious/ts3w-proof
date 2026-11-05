# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008a9b70 (AudioCurve_EvaluateLinear)
Paired Ghidra pseudocode: 008A9B70_AudioCurve_EvaluateLinear.c
Window: [0x008a9b70, 0x008a9c00) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x008a9c00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008a9b70: 53 8b 99 5c 03 00 00 56 8d 73 ff 33 d2 85 f6 57
008a9b80: 7e 30 8b 39 f3 0f 10 44 24 10 55 eb 03 8d 49 00
008a9b90: 8d 04 16 d1 f8 8d 2c 80 f3 0f 10 0c af 0f 2f c8
008a9ba0: 76 04 8b f0 eb 03 8d 50 01 3b f2 7f e3 85 d2 5d
008a9bb0: 7f 0b 8b 01 d9 40 04 5f 5e 5b c2 04 00 8d 43 ff
008a9bc0: 3b d0 7c 16 8d 0c 9b 0f 2f 44 8f ec 8d 04 8f 72
008a9bd0: 09 d9 40 f0 5f 5e 5b c2 04 00 d9 44 24 10 8d 14
008a9be0: 92 d8 64 97 08 8d 04 97 5f 5e d8 48 10 5b d8 40
008a9bf0: 0c c2 04 00 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
008a9b70 <.text+0x4a8b70>:
  8a9b70:	53                                              	push   ebx
  8a9b71:	8b 99 5c 03 00 00                               	mov    ebx,DWORD PTR [ecx+0x35c]
  8a9b77:	56                                              	push   esi
  8a9b78:	8d 73 ff                                        	lea    esi,[ebx-0x1]
  8a9b7b:	33 d2                                           	xor    edx,edx
  8a9b7d:	85 f6                                           	test   esi,esi
  8a9b7f:	57                                              	push   edi
  8a9b80:	7e 30                                           	jle    0x8a9bb2
  8a9b82:	8b 39                                           	mov    edi,DWORD PTR [ecx]
  8a9b84:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
  8a9b8a:	55                                              	push   ebp
  8a9b8b:	eb 03                                           	jmp    0x8a9b90
  8a9b8d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  8a9b90:	8d 04 16                                        	lea    eax,[esi+edx*1]
  8a9b93:	d1 f8                                           	sar    eax,1
  8a9b95:	8d 2c 80                                        	lea    ebp,[eax+eax*4]
  8a9b98:	f3 0f 10 0c af                                  	movss  xmm1,DWORD PTR [edi+ebp*4]
  8a9b9d:	0f 2f c8                                        	comiss xmm1,xmm0
  8a9ba0:	76 04                                           	jbe    0x8a9ba6
  8a9ba2:	8b f0                                           	mov    esi,eax
  8a9ba4:	eb 03                                           	jmp    0x8a9ba9
  8a9ba6:	8d 50 01                                        	lea    edx,[eax+0x1]
  8a9ba9:	3b f2                                           	cmp    esi,edx
  8a9bab:	7f e3                                           	jg     0x8a9b90
  8a9bad:	85 d2                                           	test   edx,edx
  8a9baf:	5d                                              	pop    ebp
  8a9bb0:	7f 0b                                           	jg     0x8a9bbd
  8a9bb2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  8a9bb4:	d9 40 04                                        	fld    DWORD PTR [eax+0x4]
  8a9bb7:	5f                                              	pop    edi
  8a9bb8:	5e                                              	pop    esi
  8a9bb9:	5b                                              	pop    ebx
  8a9bba:	c2 04 00                                        	ret    0x4
  8a9bbd:	8d 43 ff                                        	lea    eax,[ebx-0x1]
  8a9bc0:	3b d0                                           	cmp    edx,eax
  8a9bc2:	7c 16                                           	jl     0x8a9bda
  8a9bc4:	8d 0c 9b                                        	lea    ecx,[ebx+ebx*4]
  8a9bc7:	0f 2f 44 8f ec                                  	comiss xmm0,DWORD PTR [edi+ecx*4-0x14]
  8a9bcc:	8d 04 8f                                        	lea    eax,[edi+ecx*4]
  8a9bcf:	72 09                                           	jb     0x8a9bda
  8a9bd1:	d9 40 f0                                        	fld    DWORD PTR [eax-0x10]
  8a9bd4:	5f                                              	pop    edi
  8a9bd5:	5e                                              	pop    esi
  8a9bd6:	5b                                              	pop    ebx
  8a9bd7:	c2 04 00                                        	ret    0x4
  8a9bda:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  8a9bde:	8d 14 92                                        	lea    edx,[edx+edx*4]
  8a9be1:	d8 64 97 08                                     	fsub   DWORD PTR [edi+edx*4+0x8]
  8a9be5:	8d 04 97                                        	lea    eax,[edi+edx*4]
  8a9be8:	5f                                              	pop    edi
  8a9be9:	5e                                              	pop    esi
  8a9bea:	d8 48 10                                        	fmul   DWORD PTR [eax+0x10]
  8a9bed:	5b                                              	pop    ebx
  8a9bee:	d8 40 0c                                        	fadd   DWORD PTR [eax+0xc]
  8a9bf1:	c2 04 00                                        	ret    0x4
  8a9bf4:	cc                                              	int3
  8a9bf5:	cc                                              	int3
  8a9bf6:	cc                                              	int3
  8a9bf7:	cc                                              	int3
  8a9bf8:	cc                                              	int3
  8a9bf9:	cc                                              	int3
  8a9bfa:	cc                                              	int3
  8a9bfb:	cc                                              	int3
  8a9bfc:	cc                                              	int3
  8a9bfd:	cc                                              	int3
  8a9bfe:	cc                                              	int3
  8a9bff:	cc                                              	int3
