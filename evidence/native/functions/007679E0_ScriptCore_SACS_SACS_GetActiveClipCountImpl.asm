# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007679e0 (ScriptCore.SACS::SACS_GetActiveClipCountImpl)
Paired Ghidra pseudocode: 007679E0_ScriptCore_SACS_SACS_GetActiveClipCountImpl.c
Window: [0x007679e0, 0x00767bb0) (464 bytes; stop exclusive)
Next defined Ghidra entry: 0x00767bb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007679e0: 83 ec 28 53 55 56 57 e8 84 fb 1c 00 8b 4c 24 40
007679f0: 8b 54 24 3c 51 52 8b c8 e8 83 05 1d 00 8b d8 33
00767a00: ed 3b dd 89 5c 24 14 74 20 8d 43 04 b9 01 00 00
00767a10: 00 f0 0f c1 08 8b 15 84 d4 1d 01 52 8b cb e8 3d
00767a20: c8 1c 00 89 44 24 10 eb 04 89 6c 24 10 e8 5e 19
00767a30: 00 00 39 6c 24 10 8b f8 0f 84 dc 00 00 00 55 55
00767a40: 55 55 68 b0 7e 00 01 6a 10 e8 b2 ca d7 ff 83 c4
00767a50: 18 3b c5 74 13 89 28 89 68 04 89 68 08 c7 40 0c
00767a60: b0 7e 00 01 8b f0 eb 02 33 f6 8b 4c 24 10 56 e8
00767a70: 1c a2 1d 00 6a 01 6a 04 56 6a 20 6a 10 8d 4c 24
00767a80: 2c c7 44 24 2c f4 a6 fb 00 66 89 6c 24 34 66 89
00767a90: 6c 24 36 e8 28 df d8 ff 8b 1f 8b 93 18 01 00 00
00767aa0: 55 8d 44 24 1c 50 8b cf ff d2 52 8b 93 30 01 00
00767ab0: 00 50 8b 44 24 54 50 8b cf ff d2 8b 4e 04 2b 0e
00767ac0: b8 db 81 b9 76 f7 e9 c1 fa 07 8b f2 c1 ee 1f 03
00767ad0: f2 f6 44 24 20 04 c7 44 24 18 f4 a6 fb 00 74 0a
00767ae0: 55 8d 4c 24 1c e8 76 dc d8 ff 8b 4c 24 14 3b cd
00767af0: 74 1e 8d 41 04 8b d0 83 cf ff f0 0f c1 3a 4f 75
00767b00: 0f ba 01 00 00 00 87 10 8b 01 8b 10 6a 01 ff d2
00767b10: 5f 8b c6 5e 5d 5b 83 c4 28 c3 6a 01 6a 04 55 6a
00767b20: 20 6a 10 8d 4c 24 2c c7 44 24 2c f4 a6 fb 00 66
00767b30: 89 6c 24 34 66 89 6c 24 36 e8 82 de d8 ff 8b 37
00767b40: 8b 96 18 01 00 00 55 8d 44 24 1c 50 8b cf ff d2
00767b50: 52 8b 96 30 01 00 00 50 8b 44 24 54 50 8b cf ff
00767b60: d2 f6 44 24 20 04 c7 44 24 18 f4 a6 fb 00 74 0a
00767b70: 55 8d 4c 24 1c e8 e6 db d8 ff 3b dd 74 20 8d 43
00767b80: 04 8b c8 83 ca ff f0 0f c1 11 4a 75 11 b9 01 00
00767b90: 00 00 87 08 8b 13 8b 02 6a 01 8b cb ff d0 5f 5e
00767ba0: 5d 33 c0 5b 83 c4 28 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007679e0 <.text+0x3669e0>:
  7679e0:	83 ec 28                                        	sub    esp,0x28
  7679e3:	53                                              	push   ebx
  7679e4:	55                                              	push   ebp
  7679e5:	56                                              	push   esi
  7679e6:	57                                              	push   edi
  7679e7:	e8 84 fb 1c 00                                  	call   0x937570
  7679ec:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  7679f0:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  7679f4:	51                                              	push   ecx
  7679f5:	52                                              	push   edx
  7679f6:	8b c8                                           	mov    ecx,eax
  7679f8:	e8 83 05 1d 00                                  	call   0x937f80
  7679fd:	8b d8                                           	mov    ebx,eax
  7679ff:	33 ed                                           	xor    ebp,ebp
  767a01:	3b dd                                           	cmp    ebx,ebp
  767a03:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  767a07:	74 20                                           	je     0x767a29
  767a09:	8d 43 04                                        	lea    eax,[ebx+0x4]
  767a0c:	b9 01 00 00 00                                  	mov    ecx,0x1
  767a11:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  767a15:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  767a1b:	52                                              	push   edx
  767a1c:	8b cb                                           	mov    ecx,ebx
  767a1e:	e8 3d c8 1c 00                                  	call   0x934260
  767a23:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  767a27:	eb 04                                           	jmp    0x767a2d
  767a29:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
  767a2d:	e8 5e 19 00 00                                  	call   0x769390
  767a32:	39 6c 24 10                                     	cmp    DWORD PTR [esp+0x10],ebp
  767a36:	8b f8                                           	mov    edi,eax
  767a38:	0f 84 dc 00 00 00                               	je     0x767b1a
  767a3e:	55                                              	push   ebp
  767a3f:	55                                              	push   ebp
  767a40:	55                                              	push   ebp
  767a41:	55                                              	push   ebp
  767a42:	68 b0 7e 00 01                                  	push   0x1007eb0
  767a47:	6a 10                                           	push   0x10
  767a49:	e8 b2 ca d7 ff                                  	call   0x4e4500
  767a4e:	83 c4 18                                        	add    esp,0x18
  767a51:	3b c5                                           	cmp    eax,ebp
  767a53:	74 13                                           	je     0x767a68
  767a55:	89 28                                           	mov    DWORD PTR [eax],ebp
  767a57:	89 68 04                                        	mov    DWORD PTR [eax+0x4],ebp
  767a5a:	89 68 08                                        	mov    DWORD PTR [eax+0x8],ebp
  767a5d:	c7 40 0c b0 7e 00 01                            	mov    DWORD PTR [eax+0xc],0x1007eb0
  767a64:	8b f0                                           	mov    esi,eax
  767a66:	eb 02                                           	jmp    0x767a6a
  767a68:	33 f6                                           	xor    esi,esi
  767a6a:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  767a6e:	56                                              	push   esi
  767a6f:	e8 1c a2 1d 00                                  	call   0x941c90
  767a74:	6a 01                                           	push   0x1
  767a76:	6a 04                                           	push   0x4
  767a78:	56                                              	push   esi
  767a79:	6a 20                                           	push   0x20
  767a7b:	6a 10                                           	push   0x10
  767a7d:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  767a81:	c7 44 24 2c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x2c],0xfba6f4
  767a89:	66 89 6c 24 34                                  	mov    WORD PTR [esp+0x34],bp
  767a8e:	66 89 6c 24 36                                  	mov    WORD PTR [esp+0x36],bp
  767a93:	e8 28 df d8 ff                                  	call   0x4f59c0
  767a98:	8b 1f                                           	mov    ebx,DWORD PTR [edi]
  767a9a:	8b 93 18 01 00 00                               	mov    edx,DWORD PTR [ebx+0x118]
  767aa0:	55                                              	push   ebp
  767aa1:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  767aa5:	50                                              	push   eax
  767aa6:	8b cf                                           	mov    ecx,edi
  767aa8:	ff d2                                           	call   edx
  767aaa:	52                                              	push   edx
  767aab:	8b 93 30 01 00 00                               	mov    edx,DWORD PTR [ebx+0x130]
  767ab1:	50                                              	push   eax
  767ab2:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
  767ab6:	50                                              	push   eax
  767ab7:	8b cf                                           	mov    ecx,edi
  767ab9:	ff d2                                           	call   edx
  767abb:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  767abe:	2b 0e                                           	sub    ecx,DWORD PTR [esi]
  767ac0:	b8 db 81 b9 76                                  	mov    eax,0x76b981db
  767ac5:	f7 e9                                           	imul   ecx
  767ac7:	c1 fa 07                                        	sar    edx,0x7
  767aca:	8b f2                                           	mov    esi,edx
  767acc:	c1 ee 1f                                        	shr    esi,0x1f
  767acf:	03 f2                                           	add    esi,edx
  767ad1:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  767ad6:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  767ade:	74 0a                                           	je     0x767aea
  767ae0:	55                                              	push   ebp
  767ae1:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  767ae5:	e8 76 dc d8 ff                                  	call   0x4f5760
  767aea:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  767aee:	3b cd                                           	cmp    ecx,ebp
  767af0:	74 1e                                           	je     0x767b10
  767af2:	8d 41 04                                        	lea    eax,[ecx+0x4]
  767af5:	8b d0                                           	mov    edx,eax
  767af7:	83 cf ff                                        	or     edi,0xffffffff
  767afa:	f0 0f c1 3a                                     	lock xadd DWORD PTR [edx],edi
  767afe:	4f                                              	dec    edi
  767aff:	75 0f                                           	jne    0x767b10
  767b01:	ba 01 00 00 00                                  	mov    edx,0x1
  767b06:	87 10                                           	xchg   DWORD PTR [eax],edx
  767b08:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  767b0a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  767b0c:	6a 01                                           	push   0x1
  767b0e:	ff d2                                           	call   edx
  767b10:	5f                                              	pop    edi
  767b11:	8b c6                                           	mov    eax,esi
  767b13:	5e                                              	pop    esi
  767b14:	5d                                              	pop    ebp
  767b15:	5b                                              	pop    ebx
  767b16:	83 c4 28                                        	add    esp,0x28
  767b19:	c3                                              	ret
  767b1a:	6a 01                                           	push   0x1
  767b1c:	6a 04                                           	push   0x4
  767b1e:	55                                              	push   ebp
  767b1f:	6a 20                                           	push   0x20
  767b21:	6a 10                                           	push   0x10
  767b23:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  767b27:	c7 44 24 2c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x2c],0xfba6f4
  767b2f:	66 89 6c 24 34                                  	mov    WORD PTR [esp+0x34],bp
  767b34:	66 89 6c 24 36                                  	mov    WORD PTR [esp+0x36],bp
  767b39:	e8 82 de d8 ff                                  	call   0x4f59c0
  767b3e:	8b 37                                           	mov    esi,DWORD PTR [edi]
  767b40:	8b 96 18 01 00 00                               	mov    edx,DWORD PTR [esi+0x118]
  767b46:	55                                              	push   ebp
  767b47:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  767b4b:	50                                              	push   eax
  767b4c:	8b cf                                           	mov    ecx,edi
  767b4e:	ff d2                                           	call   edx
  767b50:	52                                              	push   edx
  767b51:	8b 96 30 01 00 00                               	mov    edx,DWORD PTR [esi+0x130]
  767b57:	50                                              	push   eax
  767b58:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
  767b5c:	50                                              	push   eax
  767b5d:	8b cf                                           	mov    ecx,edi
  767b5f:	ff d2                                           	call   edx
  767b61:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  767b66:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  767b6e:	74 0a                                           	je     0x767b7a
  767b70:	55                                              	push   ebp
  767b71:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  767b75:	e8 e6 db d8 ff                                  	call   0x4f5760
  767b7a:	3b dd                                           	cmp    ebx,ebp
  767b7c:	74 20                                           	je     0x767b9e
  767b7e:	8d 43 04                                        	lea    eax,[ebx+0x4]
  767b81:	8b c8                                           	mov    ecx,eax
  767b83:	83 ca ff                                        	or     edx,0xffffffff
  767b86:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  767b8a:	4a                                              	dec    edx
  767b8b:	75 11                                           	jne    0x767b9e
  767b8d:	b9 01 00 00 00                                  	mov    ecx,0x1
  767b92:	87 08                                           	xchg   DWORD PTR [eax],ecx
  767b94:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  767b96:	8b 02                                           	mov    eax,DWORD PTR [edx]
  767b98:	6a 01                                           	push   0x1
  767b9a:	8b cb                                           	mov    ecx,ebx
  767b9c:	ff d0                                           	call   eax
  767b9e:	5f                                              	pop    edi
  767b9f:	5e                                              	pop    esi
  767ba0:	5d                                              	pop    ebp
  767ba1:	33 c0                                           	xor    eax,eax
  767ba3:	5b                                              	pop    ebx
  767ba4:	83 c4 28                                        	add    esp,0x28
  767ba7:	c3                                              	ret
  767ba8:	cc                                              	int3
  767ba9:	cc                                              	int3
  767baa:	cc                                              	int3
  767bab:	cc                                              	int3
  767bac:	cc                                              	int3
  767bad:	cc                                              	int3
  767bae:	cc                                              	int3
  767baf:	cc                                              	int3
