# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8be0 (ScriptCore.CASUtils::CASUtils_FrameBoundImpl)
Paired Ghidra pseudocode: 005A8BE0_ScriptCore_CASUtils_CASUtils_FrameBoundImpl.c
Window: [0x005a8be0, 0x005a8cf0) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8cf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8be0: 55 8b ec 83 e4 f0 83 ec 28 56 8b 75 08 8b c6 25
005a8bf0: 00 00 00 ff 3d 00 00 00 30 57 0f 85 e6 00 00 00
005a8c00: e8 8b 07 1c 00 8b 10 8b c8 8b 82 cc 00 00 00 56
005a8c10: ff d0 85 c0 0f 84 cc 00 00 00 8b 10 8b c8 8b 42
005a8c20: 0c 68 6f 43 9a 03 ff d0 8b f0 85 f6 0f 84 b4 00
005a8c30: 00 00 e8 b9 38 ea ff f3 0f 10 4d 14 f3 0f 10 45
005a8c40: 0c f3 0f 11 4c 24 18 f3 0f 10 4d 10 f3 0f 11 4c
005a8c50: 24 14 f3 0f 10 4d 20 f3 0f 11 44 24 1c f3 0f 11
005a8c60: 44 24 10 0f 28 44 24 10 f3 0f 11 4c 24 18 f3 0f
005a8c70: 10 4d 1c 0f 29 44 24 20 f3 0f 10 45 18 f3 0f 11
005a8c80: 44 24 1c f3 0f 11 4c 24 14 f3 0f 11 44 24 10 0f
005a8c90: 28 44 24 10 6a 50 8b f8 0f 29 44 24 14 e8 7e 21
005a8ca0: 1c 00 83 c4 04 85 c0 74 16 8d 4c 24 10 51 8d 54
005a8cb0: 24 24 52 56 8b c8 e8 55 ed ff ff 8b f0 eb 02 33
005a8cc0: f6 8b 06 8b 50 04 8b ce ff d2 8b 07 8b 50 1c 6a
005a8cd0: 00 6a 00 56 68 f0 90 02 03 8b cf ff d2 8b 06 8b
005a8ce0: 50 08 8b ce ff d2 5f 5e 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
005a8be0 <.text+0x1a7be0>:
  5a8be0:	55                                              	push   ebp
  5a8be1:	8b ec                                           	mov    ebp,esp
  5a8be3:	83 e4 f0                                        	and    esp,0xfffffff0
  5a8be6:	83 ec 28                                        	sub    esp,0x28
  5a8be9:	56                                              	push   esi
  5a8bea:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  5a8bed:	8b c6                                           	mov    eax,esi
  5a8bef:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a8bf4:	3d 00 00 00 30                                  	cmp    eax,0x30000000
  5a8bf9:	57                                              	push   edi
  5a8bfa:	0f 85 e6 00 00 00                               	jne    0x5a8ce6
  5a8c00:	e8 8b 07 1c 00                                  	call   0x769390
  5a8c05:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8c07:	8b c8                                           	mov    ecx,eax
  5a8c09:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a8c0f:	56                                              	push   esi
  5a8c10:	ff d0                                           	call   eax
  5a8c12:	85 c0                                           	test   eax,eax
  5a8c14:	0f 84 cc 00 00 00                               	je     0x5a8ce6
  5a8c1a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8c1c:	8b c8                                           	mov    ecx,eax
  5a8c1e:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  5a8c21:	68 6f 43 9a 03                                  	push   0x39a436f
  5a8c26:	ff d0                                           	call   eax
  5a8c28:	8b f0                                           	mov    esi,eax
  5a8c2a:	85 f6                                           	test   esi,esi
  5a8c2c:	0f 84 b4 00 00 00                               	je     0x5a8ce6
  5a8c32:	e8 b9 38 ea ff                                  	call   0x44c4f0
  5a8c37:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  5a8c3c:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  5a8c41:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  5a8c47:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  5a8c4c:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  5a8c52:	f3 0f 10 4d 20                                  	movss  xmm1,DWORD PTR [ebp+0x20]
  5a8c57:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  5a8c5d:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  5a8c63:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  5a8c68:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  5a8c6e:	f3 0f 10 4d 1c                                  	movss  xmm1,DWORD PTR [ebp+0x1c]
  5a8c73:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  5a8c78:	f3 0f 10 45 18                                  	movss  xmm0,DWORD PTR [ebp+0x18]
  5a8c7d:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  5a8c83:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  5a8c89:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  5a8c8f:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  5a8c94:	6a 50                                           	push   0x50
  5a8c96:	8b f8                                           	mov    edi,eax
  5a8c98:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
  5a8c9d:	e8 7e 21 1c 00                                  	call   0x76ae20
  5a8ca2:	83 c4 04                                        	add    esp,0x4
  5a8ca5:	85 c0                                           	test   eax,eax
  5a8ca7:	74 16                                           	je     0x5a8cbf
  5a8ca9:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a8cad:	51                                              	push   ecx
  5a8cae:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  5a8cb2:	52                                              	push   edx
  5a8cb3:	56                                              	push   esi
  5a8cb4:	8b c8                                           	mov    ecx,eax
  5a8cb6:	e8 55 ed ff ff                                  	call   0x5a7a10
  5a8cbb:	8b f0                                           	mov    esi,eax
  5a8cbd:	eb 02                                           	jmp    0x5a8cc1
  5a8cbf:	33 f6                                           	xor    esi,esi
  5a8cc1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a8cc3:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a8cc6:	8b ce                                           	mov    ecx,esi
  5a8cc8:	ff d2                                           	call   edx
  5a8cca:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5a8ccc:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
  5a8ccf:	6a 00                                           	push   0x0
  5a8cd1:	6a 00                                           	push   0x0
  5a8cd3:	56                                              	push   esi
  5a8cd4:	68 f0 90 02 03                                  	push   0x30290f0
  5a8cd9:	8b cf                                           	mov    ecx,edi
  5a8cdb:	ff d2                                           	call   edx
  5a8cdd:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a8cdf:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  5a8ce2:	8b ce                                           	mov    ecx,esi
  5a8ce4:	ff d2                                           	call   edx
  5a8ce6:	5f                                              	pop    edi
  5a8ce7:	5e                                              	pop    esi
  5a8ce8:	8b e5                                           	mov    esp,ebp
  5a8cea:	5d                                              	pop    ebp
  5a8ceb:	c3                                              	ret
  5a8cec:	cc                                              	int3
  5a8ced:	cc                                              	int3
  5a8cee:	cc                                              	int3
  5a8cef:	cc                                              	int3
