# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005aa9e0 (ScriptCore.CASUtils::CASUtils_AbortDelayedModelSwapImpl)
Paired Ghidra pseudocode: 005AA9E0_ScriptCore_CASUtils_CASUtils_AbortDelayedModelSwapImpl.c
Window: [0x005aa9e0, 0x005aaab0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x005aaab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005aa9e0: 55 8b ec 83 e4 f0 83 ec 54 53 56 57 e8 7f cb 38
005aa9f0: 00 8b 5d 0c 8b 4d 08 53 51 8b c8 e8 80 d5 38 00
005aaa00: 85 c0 74 64 8b 15 fc a0 1e 01 52 8b c8 e8 4e 98
005aaa10: 38 00 8b f0 85 f6 74 50 8b 0d 84 4c 1d 01 85 c9
005aaa20: 8d 7e 34 74 0d 8b 01 8b 50 3c 68 a0 b3 d4 00 57
005aaa30: ff d2 8b 07 85 c0 74 16 8b 0f f6 c1 03 75 0f 8b
005aaa40: 0f 8b 11 8b 42 04 ff d0 c7 07 00 00 00 00 c7 07
005aaa50: 00 00 00 00 33 c0 33 c9 89 46 20 33 d2 89 4e 24
005aaa60: 33 ff 89 56 28 89 7e 2c 8b 4d 08 8d 54 24 10 52
005aaa70: c7 44 24 14 20 11 21 76 89 4c 24 1c 89 5c 24 20
005aaa80: c7 44 24 18 70 68 15 01 c6 44 24 24 01 e8 ee 88
005aaa90: 0e 00 8b 4c 24 18 83 c4 04 85 c9 74 0b 8b 01 8b
005aaaa0: 00 8d 54 24 20 52 ff d0 5f 5e 5b 8b e5 5d c3 cc

LINEAR DISASSEMBLY
005aa9e0 <.text+0x1a99e0>:
  5aa9e0:	55                                              	push   ebp
  5aa9e1:	8b ec                                           	mov    ebp,esp
  5aa9e3:	83 e4 f0                                        	and    esp,0xfffffff0
  5aa9e6:	83 ec 54                                        	sub    esp,0x54
  5aa9e9:	53                                              	push   ebx
  5aa9ea:	56                                              	push   esi
  5aa9eb:	57                                              	push   edi
  5aa9ec:	e8 7f cb 38 00                                  	call   0x937570
  5aa9f1:	8b 5d 0c                                        	mov    ebx,DWORD PTR [ebp+0xc]
  5aa9f4:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  5aa9f7:	53                                              	push   ebx
  5aa9f8:	51                                              	push   ecx
  5aa9f9:	8b c8                                           	mov    ecx,eax
  5aa9fb:	e8 80 d5 38 00                                  	call   0x937f80
  5aaa00:	85 c0                                           	test   eax,eax
  5aaa02:	74 64                                           	je     0x5aaa68
  5aaa04:	8b 15 fc a0 1e 01                               	mov    edx,DWORD PTR ds:0x11ea0fc
  5aaa0a:	52                                              	push   edx
  5aaa0b:	8b c8                                           	mov    ecx,eax
  5aaa0d:	e8 4e 98 38 00                                  	call   0x934260
  5aaa12:	8b f0                                           	mov    esi,eax
  5aaa14:	85 f6                                           	test   esi,esi
  5aaa16:	74 50                                           	je     0x5aaa68
  5aaa18:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  5aaa1e:	85 c9                                           	test   ecx,ecx
  5aaa20:	8d 7e 34                                        	lea    edi,[esi+0x34]
  5aaa23:	74 0d                                           	je     0x5aaa32
  5aaa25:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5aaa27:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  5aaa2a:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  5aaa2f:	57                                              	push   edi
  5aaa30:	ff d2                                           	call   edx
  5aaa32:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5aaa34:	85 c0                                           	test   eax,eax
  5aaa36:	74 16                                           	je     0x5aaa4e
  5aaa38:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  5aaa3a:	f6 c1 03                                        	test   cl,0x3
  5aaa3d:	75 0f                                           	jne    0x5aaa4e
  5aaa3f:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  5aaa41:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  5aaa43:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5aaa46:	ff d0                                           	call   eax
  5aaa48:	c7 07 00 00 00 00                               	mov    DWORD PTR [edi],0x0
  5aaa4e:	c7 07 00 00 00 00                               	mov    DWORD PTR [edi],0x0
  5aaa54:	33 c0                                           	xor    eax,eax
  5aaa56:	33 c9                                           	xor    ecx,ecx
  5aaa58:	89 46 20                                        	mov    DWORD PTR [esi+0x20],eax
  5aaa5b:	33 d2                                           	xor    edx,edx
  5aaa5d:	89 4e 24                                        	mov    DWORD PTR [esi+0x24],ecx
  5aaa60:	33 ff                                           	xor    edi,edi
  5aaa62:	89 56 28                                        	mov    DWORD PTR [esi+0x28],edx
  5aaa65:	89 7e 2c                                        	mov    DWORD PTR [esi+0x2c],edi
  5aaa68:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  5aaa6b:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  5aaa6f:	52                                              	push   edx
  5aaa70:	c7 44 24 14 20 11 21 76                         	mov    DWORD PTR [esp+0x14],0x76211120
  5aaa78:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  5aaa7c:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  5aaa80:	c7 44 24 18 70 68 15 01                         	mov    DWORD PTR [esp+0x18],0x1156870
  5aaa88:	c6 44 24 24 01                                  	mov    BYTE PTR [esp+0x24],0x1
  5aaa8d:	e8 ee 88 0e 00                                  	call   0x693380
  5aaa92:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5aaa96:	83 c4 04                                        	add    esp,0x4
  5aaa99:	85 c9                                           	test   ecx,ecx
  5aaa9b:	74 0b                                           	je     0x5aaaa8
  5aaa9d:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5aaa9f:	8b 00                                           	mov    eax,DWORD PTR [eax]
  5aaaa1:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  5aaaa5:	52                                              	push   edx
  5aaaa6:	ff d0                                           	call   eax
  5aaaa8:	5f                                              	pop    edi
  5aaaa9:	5e                                              	pop    esi
  5aaaaa:	5b                                              	pop    ebx
  5aaaab:	8b e5                                           	mov    esp,ebp
  5aaaad:	5d                                              	pop    ebp
  5aaaae:	c3                                              	ret
  5aaaaf:	cc                                              	int3
