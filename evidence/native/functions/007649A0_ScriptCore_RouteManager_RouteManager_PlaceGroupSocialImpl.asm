# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007649a0 (ScriptCore.RouteManager::RouteManager_PlaceGroupSocialImpl)
Paired Ghidra pseudocode: 007649A0_ScriptCore_RouteManager_RouteManager_PlaceGroupSocialImpl.c
Window: [0x007649a0, 0x00764f80) (1504 bytes; stop exclusive)
Next defined Ghidra entry: 0x00764f80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007649a0: 55 8b ec 83 e4 f0 81 ec 54 01 00 00 53 56 57 e8
007649b0: dc 49 00 00 8b f0 33 db 3b f3 89 74 24 44 0f 84
007649c0: a6 05 00 00 e8 a7 2b 1d 00 3b c3 89 44 24 3c 0f
007649d0: 84 95 05 00 00 8d 4c 24 18 51 8b 4d 08 b8 3c 5a
007649e0: 00 01 8d 54 24 18 52 89 5c 24 34 89 5c 24 38 89
007649f0: 5c 24 3c 89 44 24 40 89 5c 24 24 89 5c 24 28 89
00764a00: 5c 24 2c 89 44 24 30 89 5c 24 1c 89 5c 24 20 8b
00764a10: 06 8b 50 68 51 8b ce ff d2 8b 44 24 14 3b c3 75
00764a20: 33 8b 44 24 20 8b 4c 24 1c 50 51 8d 4c 24 24 e8
00764a30: 1c 33 48 00 8b 44 24 1c 3b c3 74 09 50 e8 9e fa
00764a40: d7 ff 83 c4 04 8b 54 24 30 8b 44 24 2c 52 50 e9
00764a50: fc 04 00 00 33 ff 39 5c 24 18 0f 8e 9a 00 00 00
00764a60: eb 04 8b 44 24 14 8b 4c f8 04 8b 14 f8 51 8b 4c
00764a70: 24 40 52 e8 08 35 1d 00 3b c3 89 44 24 10 74 69
00764a80: 8d 70 04 8b ce ba 01 00 00 00 f0 0f c1 11 8b 4c
00764a90: 24 30 3b 4c 24 34 73 1a 8b d1 83 c1 04 3b d3 89
00764aa0: 4c 24 30 74 20 89 02 b9 01 00 00 00 f0 0f c1 0e
00764ab0: eb 13 8d 54 24 10 52 51 8d 4c 24 34 e8 af 17 11
00764ac0: 00 8b 44 24 10 3b c3 74 20 8d 48 04 8b d1 83 ce
00764ad0: ff f0 0f c1 32 4e 75 11 ba 01 00 00 00 87 11 8b
00764ae0: 10 8b c8 8b 02 6a 01 ff d0 83 c7 01 3b 7c 24 18
00764af0: 0f 8c 6c ff ff ff 8b 74 24 44 8d 44 24 18 50 8b
00764b00: 45 0c 8d 4c 24 18 89 5c 24 18 89 5c 24 1c 8b 16
00764b10: 8b 52 68 51 50 8b ce ff d2 8b 44 24 14 3b c3 75
00764b20: 37 8b 44 24 20 8b 4c 24 1c 50 51 8d 4c 24 24 e8
00764b30: 1c 32 48 00 8b 44 24 1c 3b c3 0f 84 05 ff ff ff
00764b40: 50 e8 9a f9 d7 ff 8b 54 24 34 8b 44 24 30 83 c4
00764b50: 04 52 50 e9 f8 03 00 00 33 ff 39 5c 24 18 0f 8e
00764b60: a0 00 00 00 eb 0e eb 08 8d a4 24 00 00 00 00 90
00764b70: 8b 44 24 14 8b 4c f8 04 8b 14 f8 51 8b 4c 24 40
00764b80: 52 e8 fa 33 1d 00 3b c3 89 44 24 10 74 69 8d 70
00764b90: 04 8b ce ba 01 00 00 00 f0 0f c1 11 8b 4c 24 20
00764ba0: 3b 4c 24 24 73 1a 8b d1 83 c1 04 3b d3 89 4c 24
00764bb0: 20 74 20 89 02 b9 01 00 00 00 f0 0f c1 0e eb 13
00764bc0: 8d 54 24 10 52 51 8d 4c 24 24 e8 a1 16 11 00 8b
00764bd0: 44 24 10 3b c3 74 20 8d 48 04 8b d1 83 ce ff f0
00764be0: 0f c1 32 4e 75 11 ba 01 00 00 00 87 11 8b 10 8b
00764bf0: c8 8b 02 6a 01 ff d0 83 c7 01 3b 7c 24 18 0f 8c
00764c00: 6c ff ff ff 8d 8c 24 00 01 00 00 e8 30 f7 0b 00
00764c10: f3 0f 10 45 18 f3 0f 59 05 b4 b5 f9 00 51 8d 8c
00764c20: 24 04 01 00 00 f3 0f 11 04 24 e8 c1 4b 08 00 d9
00764c30: 05 90 72 fb 00 51 8d 8c 24 04 01 00 00 d9 1c 24
00764c40: e8 ab d8 0b 00 d9 05 68 23 fc 00 51 8d 8c 24 04
00764c50: 01 00 00 d9 1c 24 e8 a5 d8 0b 00 8d 8c 24 00 01
00764c60: 00 00 51 8d 54 24 20 52 8d 44 24 34 50 e8 3e 23
00764c70: 0c 00 83 c4 0c 84 c0 0f 84 99 02 00 00 8b 44 24
00764c80: 30 2b 44 24 2c 8b 4c 24 20 2b 4c 24 1c c1 f8 02
00764c90: c1 f9 02 8d 3c 01 8d 34 7f 33 c9 8b c6 ba 04 00
00764ca0: 00 00 f7 e2 53 0f 90 c1 53 53 53 68 28 5a 00 01
00764cb0: 89 5c 24 74 89 5c 24 78 f7 d9 0b c8 51 89 74 24
00764cc0: 58 e8 3a f8 d7 ff 89 44 24 28 33 c9 8b c6 ba 04
00764cd0: 00 00 00 f7 e2 53 0f 90 c1 53 53 53 68 28 5a 00
00764ce0: 01 f7 d9 0b c8 51 e8 15 f8 d7 ff 83 c4 30 85 ff
00764cf0: 89 44 24 48 0f 86 f2 00 00 00 8b 74 24 10 89 44
00764d00: 24 3c 83 c6 08 2b 44 24 10 89 44 24 4c 8d 49 00
00764d10: 8d 44 24 60 50 53 8d 8c 24 08 01 00 00 e8 be f5
00764d20: 0b 00 0f 28 44 24 70 8b 44 24 3c 0f 29 84 24 f0
00764d30: 00 00 00 f3 0f 10 84 24 f0 00 00 00 f3 0f 11 46
00764d40: f8 0f 28 44 24 70 8b 4c 24 4c 0f 29 84 24 e0 00
00764d50: 00 00 f3 0f 10 84 24 e4 00 00 00 f3 0f 11 46 fc
00764d60: 0f 28 44 24 70 0f 29 84 24 a0 00 00 00 f3 0f 10
00764d70: 84 24 a8 00 00 00 f3 0f 11 06 0f 28 84 24 80 00
00764d80: 00 00 0f 29 84 24 d0 00 00 00 f3 0f 10 84 24 d0
00764d90: 00 00 00 f3 0f 11 00 0f 28 84 24 80 00 00 00 0f
00764da0: 29 84 24 b0 00 00 00 f3 0f 10 84 24 b4 00 00 00
00764db0: f3 0f 11 40 04 0f 28 84 24 80 00 00 00 0f 29 84
00764dc0: 24 c0 00 00 00 f3 0f 10 84 24 c8 00 00 00 f3 0f
00764dd0: 11 04 31 83 c3 01 83 c0 0c 83 c6 0c 3b df 89 44
00764de0: 24 3c 0f 82 28 ff ff ff 8b 74 24 40 8b 7c 24 44
00764df0: 8b 44 24 10 8b 17 8b 5d 10 8b 92 a8 00 00 00 56
00764e00: 6a 00 50 53 8b cf ff d2 8b 4c 24 48 8b 07 8b 90
00764e10: a8 00 00 00 56 8b 75 14 6a 00 51 56 8b cf ff d2
00764e20: 8b 07 8d 4c 24 58 51 8b 0b 8d 54 24 58 52 8b 50
00764e30: 78 51 8b cf ff d2 8b 07 8d 4c 24 50 51 8b 0e 8d
00764e40: 54 24 60 52 8b 50 78 51 8b cf ff d2 8b 44 24 10
00764e50: 50 e8 8a f6 d7 ff 8b 4c 24 4c 51 e8 80 f6 d7 ff
00764e60: 8b 44 24 6c 83 c4 08 85 c0 74 24 8b c8 83 c0 04
00764e70: 8b d0 83 ce ff f0 0f c1 32 4e 75 13 ba 01 00 00
00764e80: 00 87 10 85 c9 74 08 8b 01 8b 10 6a 01 ff d2 8b
00764e90: 4c 24 60 85 c9 74 22 8d 41 04 8b d0 83 ce ff f0
00764ea0: 0f c1 32 4e 75 13 ba 01 00 00 00 87 10 85 c9 74
00764eb0: 08 8b 01 8b 10 6a 01 ff d2 8d 8c 24 00 01 00 00
00764ec0: e8 4b f4 0b 00 8b 44 24 20 8b 4c 24 1c 50 51 8d
00764ed0: 4c 24 24 e8 78 2e 48 00 8b 44 24 1c 85 c0 74 09
00764ee0: 50 e8 fa f5 d7 ff 83 c4 04 8b 54 24 30 8b 44 24
00764ef0: 2c 52 50 8d 4c 24 34 e8 54 2e 48 00 8b 44 24 2c
00764f00: 85 c0 74 09 50 e8 d6 f5 d7 ff 83 c4 04 b0 01 5f
00764f10: 5e 5b 8b e5 5d c3 8d 8c 24 00 01 00 00 e8 ee f3
00764f20: 0b 00 8b 4c 24 20 8b 54 24 1c 51 52 8d 4c 24 24
00764f30: e8 1b 2e 48 00 8b 44 24 1c 3b c3 74 09 50 e8 9d
00764f40: f5 d7 ff 83 c4 04 8b 44 24 30 8b 4c 24 2c 50 51
00764f50: 8d 4c 24 34 e8 f7 2d 48 00 8b 44 24 2c 3b c3 74
00764f60: 09 50 e8 79 f5 d7 ff 83 c4 04 5f 5e 32 c0 5b 8b
00764f70: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007649a0 <.text+0x3639a0>:
  7649a0:	55                                              	push   ebp
  7649a1:	8b ec                                           	mov    ebp,esp
  7649a3:	83 e4 f0                                        	and    esp,0xfffffff0
  7649a6:	81 ec 54 01 00 00                               	sub    esp,0x154
  7649ac:	53                                              	push   ebx
  7649ad:	56                                              	push   esi
  7649ae:	57                                              	push   edi
  7649af:	e8 dc 49 00 00                                  	call   0x769390
  7649b4:	8b f0                                           	mov    esi,eax
  7649b6:	33 db                                           	xor    ebx,ebx
  7649b8:	3b f3                                           	cmp    esi,ebx
  7649ba:	89 74 24 44                                     	mov    DWORD PTR [esp+0x44],esi
  7649be:	0f 84 a6 05 00 00                               	je     0x764f6a
  7649c4:	e8 a7 2b 1d 00                                  	call   0x937570
  7649c9:	3b c3                                           	cmp    eax,ebx
  7649cb:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
  7649cf:	0f 84 95 05 00 00                               	je     0x764f6a
  7649d5:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  7649d9:	51                                              	push   ecx
  7649da:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  7649dd:	b8 3c 5a 00 01                                  	mov    eax,0x1005a3c
  7649e2:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  7649e6:	52                                              	push   edx
  7649e7:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
  7649eb:	89 5c 24 38                                     	mov    DWORD PTR [esp+0x38],ebx
  7649ef:	89 5c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebx
  7649f3:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
  7649f7:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  7649fb:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  7649ff:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  764a03:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  764a07:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  764a0b:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  764a0f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  764a11:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  764a14:	51                                              	push   ecx
  764a15:	8b ce                                           	mov    ecx,esi
  764a17:	ff d2                                           	call   edx
  764a19:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  764a1d:	3b c3                                           	cmp    eax,ebx
  764a1f:	75 33                                           	jne    0x764a54
  764a21:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  764a25:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  764a29:	50                                              	push   eax
  764a2a:	51                                              	push   ecx
  764a2b:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  764a2f:	e8 1c 33 48 00                                  	call   0xbe7d50
  764a34:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  764a38:	3b c3                                           	cmp    eax,ebx
  764a3a:	74 09                                           	je     0x764a45
  764a3c:	50                                              	push   eax
  764a3d:	e8 9e fa d7 ff                                  	call   0x4e44e0
  764a42:	83 c4 04                                        	add    esp,0x4
  764a45:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  764a49:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  764a4d:	52                                              	push   edx
  764a4e:	50                                              	push   eax
  764a4f:	e9 fc 04 00 00                                  	jmp    0x764f50
  764a54:	33 ff                                           	xor    edi,edi
  764a56:	39 5c 24 18                                     	cmp    DWORD PTR [esp+0x18],ebx
  764a5a:	0f 8e 9a 00 00 00                               	jle    0x764afa
  764a60:	eb 04                                           	jmp    0x764a66
  764a62:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  764a66:	8b 4c f8 04                                     	mov    ecx,DWORD PTR [eax+edi*8+0x4]
  764a6a:	8b 14 f8                                        	mov    edx,DWORD PTR [eax+edi*8]
  764a6d:	51                                              	push   ecx
  764a6e:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  764a72:	52                                              	push   edx
  764a73:	e8 08 35 1d 00                                  	call   0x937f80
  764a78:	3b c3                                           	cmp    eax,ebx
  764a7a:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  764a7e:	74 69                                           	je     0x764ae9
  764a80:	8d 70 04                                        	lea    esi,[eax+0x4]
  764a83:	8b ce                                           	mov    ecx,esi
  764a85:	ba 01 00 00 00                                  	mov    edx,0x1
  764a8a:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  764a8e:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  764a92:	3b 4c 24 34                                     	cmp    ecx,DWORD PTR [esp+0x34]
  764a96:	73 1a                                           	jae    0x764ab2
  764a98:	8b d1                                           	mov    edx,ecx
  764a9a:	83 c1 04                                        	add    ecx,0x4
  764a9d:	3b d3                                           	cmp    edx,ebx
  764a9f:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
  764aa3:	74 20                                           	je     0x764ac5
  764aa5:	89 02                                           	mov    DWORD PTR [edx],eax
  764aa7:	b9 01 00 00 00                                  	mov    ecx,0x1
  764aac:	f0 0f c1 0e                                     	lock xadd DWORD PTR [esi],ecx
  764ab0:	eb 13                                           	jmp    0x764ac5
  764ab2:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  764ab6:	52                                              	push   edx
  764ab7:	51                                              	push   ecx
  764ab8:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  764abc:	e8 af 17 11 00                                  	call   0x876270
  764ac1:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  764ac5:	3b c3                                           	cmp    eax,ebx
  764ac7:	74 20                                           	je     0x764ae9
  764ac9:	8d 48 04                                        	lea    ecx,[eax+0x4]
  764acc:	8b d1                                           	mov    edx,ecx
  764ace:	83 ce ff                                        	or     esi,0xffffffff
  764ad1:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  764ad5:	4e                                              	dec    esi
  764ad6:	75 11                                           	jne    0x764ae9
  764ad8:	ba 01 00 00 00                                  	mov    edx,0x1
  764add:	87 11                                           	xchg   DWORD PTR [ecx],edx
  764adf:	8b 10                                           	mov    edx,DWORD PTR [eax]
  764ae1:	8b c8                                           	mov    ecx,eax
  764ae3:	8b 02                                           	mov    eax,DWORD PTR [edx]
  764ae5:	6a 01                                           	push   0x1
  764ae7:	ff d0                                           	call   eax
  764ae9:	83 c7 01                                        	add    edi,0x1
  764aec:	3b 7c 24 18                                     	cmp    edi,DWORD PTR [esp+0x18]
  764af0:	0f 8c 6c ff ff ff                               	jl     0x764a62
  764af6:	8b 74 24 44                                     	mov    esi,DWORD PTR [esp+0x44]
  764afa:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  764afe:	50                                              	push   eax
  764aff:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  764b02:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  764b06:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  764b0a:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  764b0e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  764b10:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
  764b13:	51                                              	push   ecx
  764b14:	50                                              	push   eax
  764b15:	8b ce                                           	mov    ecx,esi
  764b17:	ff d2                                           	call   edx
  764b19:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  764b1d:	3b c3                                           	cmp    eax,ebx
  764b1f:	75 37                                           	jne    0x764b58
  764b21:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  764b25:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  764b29:	50                                              	push   eax
  764b2a:	51                                              	push   ecx
  764b2b:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  764b2f:	e8 1c 32 48 00                                  	call   0xbe7d50
  764b34:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  764b38:	3b c3                                           	cmp    eax,ebx
  764b3a:	0f 84 05 ff ff ff                               	je     0x764a45
  764b40:	50                                              	push   eax
  764b41:	e8 9a f9 d7 ff                                  	call   0x4e44e0
  764b46:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  764b4a:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  764b4e:	83 c4 04                                        	add    esp,0x4
  764b51:	52                                              	push   edx
  764b52:	50                                              	push   eax
  764b53:	e9 f8 03 00 00                                  	jmp    0x764f50
  764b58:	33 ff                                           	xor    edi,edi
  764b5a:	39 5c 24 18                                     	cmp    DWORD PTR [esp+0x18],ebx
  764b5e:	0f 8e a0 00 00 00                               	jle    0x764c04
  764b64:	eb 0e                                           	jmp    0x764b74
  764b66:	eb 08                                           	jmp    0x764b70
  764b68:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  764b6f:	90                                              	nop
  764b70:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  764b74:	8b 4c f8 04                                     	mov    ecx,DWORD PTR [eax+edi*8+0x4]
  764b78:	8b 14 f8                                        	mov    edx,DWORD PTR [eax+edi*8]
  764b7b:	51                                              	push   ecx
  764b7c:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  764b80:	52                                              	push   edx
  764b81:	e8 fa 33 1d 00                                  	call   0x937f80
  764b86:	3b c3                                           	cmp    eax,ebx
  764b88:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  764b8c:	74 69                                           	je     0x764bf7
  764b8e:	8d 70 04                                        	lea    esi,[eax+0x4]
  764b91:	8b ce                                           	mov    ecx,esi
  764b93:	ba 01 00 00 00                                  	mov    edx,0x1
  764b98:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  764b9c:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  764ba0:	3b 4c 24 24                                     	cmp    ecx,DWORD PTR [esp+0x24]
  764ba4:	73 1a                                           	jae    0x764bc0
  764ba6:	8b d1                                           	mov    edx,ecx
  764ba8:	83 c1 04                                        	add    ecx,0x4
  764bab:	3b d3                                           	cmp    edx,ebx
  764bad:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  764bb1:	74 20                                           	je     0x764bd3
  764bb3:	89 02                                           	mov    DWORD PTR [edx],eax
  764bb5:	b9 01 00 00 00                                  	mov    ecx,0x1
  764bba:	f0 0f c1 0e                                     	lock xadd DWORD PTR [esi],ecx
  764bbe:	eb 13                                           	jmp    0x764bd3
  764bc0:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  764bc4:	52                                              	push   edx
  764bc5:	51                                              	push   ecx
  764bc6:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  764bca:	e8 a1 16 11 00                                  	call   0x876270
  764bcf:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  764bd3:	3b c3                                           	cmp    eax,ebx
  764bd5:	74 20                                           	je     0x764bf7
  764bd7:	8d 48 04                                        	lea    ecx,[eax+0x4]
  764bda:	8b d1                                           	mov    edx,ecx
  764bdc:	83 ce ff                                        	or     esi,0xffffffff
  764bdf:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  764be3:	4e                                              	dec    esi
  764be4:	75 11                                           	jne    0x764bf7
  764be6:	ba 01 00 00 00                                  	mov    edx,0x1
  764beb:	87 11                                           	xchg   DWORD PTR [ecx],edx
  764bed:	8b 10                                           	mov    edx,DWORD PTR [eax]
  764bef:	8b c8                                           	mov    ecx,eax
  764bf1:	8b 02                                           	mov    eax,DWORD PTR [edx]
  764bf3:	6a 01                                           	push   0x1
  764bf5:	ff d0                                           	call   eax
  764bf7:	83 c7 01                                        	add    edi,0x1
  764bfa:	3b 7c 24 18                                     	cmp    edi,DWORD PTR [esp+0x18]
  764bfe:	0f 8c 6c ff ff ff                               	jl     0x764b70
  764c04:	8d 8c 24 00 01 00 00                            	lea    ecx,[esp+0x100]
  764c0b:	e8 30 f7 0b 00                                  	call   0x824340
  764c10:	f3 0f 10 45 18                                  	movss  xmm0,DWORD PTR [ebp+0x18]
  764c15:	f3 0f 59 05 b4 b5 f9 00                         	mulss  xmm0,DWORD PTR ds:0xf9b5b4
  764c1d:	51                                              	push   ecx
  764c1e:	8d 8c 24 04 01 00 00                            	lea    ecx,[esp+0x104]
  764c25:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  764c2a:	e8 c1 4b 08 00                                  	call   0x7e97f0
  764c2f:	d9 05 90 72 fb 00                               	fld    DWORD PTR ds:0xfb7290
  764c35:	51                                              	push   ecx
  764c36:	8d 8c 24 04 01 00 00                            	lea    ecx,[esp+0x104]
  764c3d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  764c40:	e8 ab d8 0b 00                                  	call   0x8224f0
  764c45:	d9 05 68 23 fc 00                               	fld    DWORD PTR ds:0xfc2368
  764c4b:	51                                              	push   ecx
  764c4c:	8d 8c 24 04 01 00 00                            	lea    ecx,[esp+0x104]
  764c53:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  764c56:	e8 a5 d8 0b 00                                  	call   0x822500
  764c5b:	8d 8c 24 00 01 00 00                            	lea    ecx,[esp+0x100]
  764c62:	51                                              	push   ecx
  764c63:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  764c67:	52                                              	push   edx
  764c68:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  764c6c:	50                                              	push   eax
  764c6d:	e8 3e 23 0c 00                                  	call   0x826fb0
  764c72:	83 c4 0c                                        	add    esp,0xc
  764c75:	84 c0                                           	test   al,al
  764c77:	0f 84 99 02 00 00                               	je     0x764f16
  764c7d:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  764c81:	2b 44 24 2c                                     	sub    eax,DWORD PTR [esp+0x2c]
  764c85:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  764c89:	2b 4c 24 1c                                     	sub    ecx,DWORD PTR [esp+0x1c]
  764c8d:	c1 f8 02                                        	sar    eax,0x2
  764c90:	c1 f9 02                                        	sar    ecx,0x2
  764c93:	8d 3c 01                                        	lea    edi,[ecx+eax*1]
  764c96:	8d 34 7f                                        	lea    esi,[edi+edi*2]
  764c99:	33 c9                                           	xor    ecx,ecx
  764c9b:	8b c6                                           	mov    eax,esi
  764c9d:	ba 04 00 00 00                                  	mov    edx,0x4
  764ca2:	f7 e2                                           	mul    edx
  764ca4:	53                                              	push   ebx
  764ca5:	0f 90 c1                                        	seto   cl
  764ca8:	53                                              	push   ebx
  764ca9:	53                                              	push   ebx
  764caa:	53                                              	push   ebx
  764cab:	68 28 5a 00 01                                  	push   0x1005a28
  764cb0:	89 5c 24 74                                     	mov    DWORD PTR [esp+0x74],ebx
  764cb4:	89 5c 24 78                                     	mov    DWORD PTR [esp+0x78],ebx
  764cb8:	f7 d9                                           	neg    ecx
  764cba:	0b c8                                           	or     ecx,eax
  764cbc:	51                                              	push   ecx
  764cbd:	89 74 24 58                                     	mov    DWORD PTR [esp+0x58],esi
  764cc1:	e8 3a f8 d7 ff                                  	call   0x4e4500
  764cc6:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  764cca:	33 c9                                           	xor    ecx,ecx
  764ccc:	8b c6                                           	mov    eax,esi
  764cce:	ba 04 00 00 00                                  	mov    edx,0x4
  764cd3:	f7 e2                                           	mul    edx
  764cd5:	53                                              	push   ebx
  764cd6:	0f 90 c1                                        	seto   cl
  764cd9:	53                                              	push   ebx
  764cda:	53                                              	push   ebx
  764cdb:	53                                              	push   ebx
  764cdc:	68 28 5a 00 01                                  	push   0x1005a28
  764ce1:	f7 d9                                           	neg    ecx
  764ce3:	0b c8                                           	or     ecx,eax
  764ce5:	51                                              	push   ecx
  764ce6:	e8 15 f8 d7 ff                                  	call   0x4e4500
  764ceb:	83 c4 30                                        	add    esp,0x30
  764cee:	85 ff                                           	test   edi,edi
  764cf0:	89 44 24 48                                     	mov    DWORD PTR [esp+0x48],eax
  764cf4:	0f 86 f2 00 00 00                               	jbe    0x764dec
  764cfa:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  764cfe:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
  764d02:	83 c6 08                                        	add    esi,0x8
  764d05:	2b 44 24 10                                     	sub    eax,DWORD PTR [esp+0x10]
  764d09:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
  764d0d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  764d10:	8d 44 24 60                                     	lea    eax,[esp+0x60]
  764d14:	50                                              	push   eax
  764d15:	53                                              	push   ebx
  764d16:	8d 8c 24 08 01 00 00                            	lea    ecx,[esp+0x108]
  764d1d:	e8 be f5 0b 00                                  	call   0x8242e0
  764d22:	0f 28 44 24 70                                  	movaps xmm0,XMMWORD PTR [esp+0x70]
  764d27:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  764d2b:	0f 29 84 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm0
  764d33:	f3 0f 10 84 24 f0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xf0]
  764d3c:	f3 0f 11 46 f8                                  	movss  DWORD PTR [esi-0x8],xmm0
  764d41:	0f 28 44 24 70                                  	movaps xmm0,XMMWORD PTR [esp+0x70]
  764d46:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  764d4a:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
  764d52:	f3 0f 10 84 24 e4 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xe4]
  764d5b:	f3 0f 11 46 fc                                  	movss  DWORD PTR [esi-0x4],xmm0
  764d60:	0f 28 44 24 70                                  	movaps xmm0,XMMWORD PTR [esp+0x70]
  764d65:	0f 29 84 24 a0 00 00 00                         	movaps XMMWORD PTR [esp+0xa0],xmm0
  764d6d:	f3 0f 10 84 24 a8 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xa8]
  764d76:	f3 0f 11 06                                     	movss  DWORD PTR [esi],xmm0
  764d7a:	0f 28 84 24 80 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x80]
  764d82:	0f 29 84 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm0
  764d8a:	f3 0f 10 84 24 d0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xd0]
  764d93:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  764d97:	0f 28 84 24 80 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x80]
  764d9f:	0f 29 84 24 b0 00 00 00                         	movaps XMMWORD PTR [esp+0xb0],xmm0
  764da7:	f3 0f 10 84 24 b4 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xb4]
  764db0:	f3 0f 11 40 04                                  	movss  DWORD PTR [eax+0x4],xmm0
  764db5:	0f 28 84 24 80 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x80]
  764dbd:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  764dc5:	f3 0f 10 84 24 c8 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xc8]
  764dce:	f3 0f 11 04 31                                  	movss  DWORD PTR [ecx+esi*1],xmm0
  764dd3:	83 c3 01                                        	add    ebx,0x1
  764dd6:	83 c0 0c                                        	add    eax,0xc
  764dd9:	83 c6 0c                                        	add    esi,0xc
  764ddc:	3b df                                           	cmp    ebx,edi
  764dde:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
  764de2:	0f 82 28 ff ff ff                               	jb     0x764d10
  764de8:	8b 74 24 40                                     	mov    esi,DWORD PTR [esp+0x40]
  764dec:	8b 7c 24 44                                     	mov    edi,DWORD PTR [esp+0x44]
  764df0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  764df4:	8b 17                                           	mov    edx,DWORD PTR [edi]
  764df6:	8b 5d 10                                        	mov    ebx,DWORD PTR [ebp+0x10]
  764df9:	8b 92 a8 00 00 00                               	mov    edx,DWORD PTR [edx+0xa8]
  764dff:	56                                              	push   esi
  764e00:	6a 00                                           	push   0x0
  764e02:	50                                              	push   eax
  764e03:	53                                              	push   ebx
  764e04:	8b cf                                           	mov    ecx,edi
  764e06:	ff d2                                           	call   edx
  764e08:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  764e0c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  764e0e:	8b 90 a8 00 00 00                               	mov    edx,DWORD PTR [eax+0xa8]
  764e14:	56                                              	push   esi
  764e15:	8b 75 14                                        	mov    esi,DWORD PTR [ebp+0x14]
  764e18:	6a 00                                           	push   0x0
  764e1a:	51                                              	push   ecx
  764e1b:	56                                              	push   esi
  764e1c:	8b cf                                           	mov    ecx,edi
  764e1e:	ff d2                                           	call   edx
  764e20:	8b 07                                           	mov    eax,DWORD PTR [edi]
  764e22:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
  764e26:	51                                              	push   ecx
  764e27:	8b 0b                                           	mov    ecx,DWORD PTR [ebx]
  764e29:	8d 54 24 58                                     	lea    edx,[esp+0x58]
  764e2d:	52                                              	push   edx
  764e2e:	8b 50 78                                        	mov    edx,DWORD PTR [eax+0x78]
  764e31:	51                                              	push   ecx
  764e32:	8b cf                                           	mov    ecx,edi
  764e34:	ff d2                                           	call   edx
  764e36:	8b 07                                           	mov    eax,DWORD PTR [edi]
  764e38:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  764e3c:	51                                              	push   ecx
  764e3d:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  764e3f:	8d 54 24 60                                     	lea    edx,[esp+0x60]
  764e43:	52                                              	push   edx
  764e44:	8b 50 78                                        	mov    edx,DWORD PTR [eax+0x78]
  764e47:	51                                              	push   ecx
  764e48:	8b cf                                           	mov    ecx,edi
  764e4a:	ff d2                                           	call   edx
  764e4c:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  764e50:	50                                              	push   eax
  764e51:	e8 8a f6 d7 ff                                  	call   0x4e44e0
  764e56:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  764e5a:	51                                              	push   ecx
  764e5b:	e8 80 f6 d7 ff                                  	call   0x4e44e0
  764e60:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
  764e64:	83 c4 08                                        	add    esp,0x8
  764e67:	85 c0                                           	test   eax,eax
  764e69:	74 24                                           	je     0x764e8f
  764e6b:	8b c8                                           	mov    ecx,eax
  764e6d:	83 c0 04                                        	add    eax,0x4
  764e70:	8b d0                                           	mov    edx,eax
  764e72:	83 ce ff                                        	or     esi,0xffffffff
  764e75:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  764e79:	4e                                              	dec    esi
  764e7a:	75 13                                           	jne    0x764e8f
  764e7c:	ba 01 00 00 00                                  	mov    edx,0x1
  764e81:	87 10                                           	xchg   DWORD PTR [eax],edx
  764e83:	85 c9                                           	test   ecx,ecx
  764e85:	74 08                                           	je     0x764e8f
  764e87:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  764e89:	8b 10                                           	mov    edx,DWORD PTR [eax]
  764e8b:	6a 01                                           	push   0x1
  764e8d:	ff d2                                           	call   edx
  764e8f:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  764e93:	85 c9                                           	test   ecx,ecx
  764e95:	74 22                                           	je     0x764eb9
  764e97:	8d 41 04                                        	lea    eax,[ecx+0x4]
  764e9a:	8b d0                                           	mov    edx,eax
  764e9c:	83 ce ff                                        	or     esi,0xffffffff
  764e9f:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  764ea3:	4e                                              	dec    esi
  764ea4:	75 13                                           	jne    0x764eb9
  764ea6:	ba 01 00 00 00                                  	mov    edx,0x1
  764eab:	87 10                                           	xchg   DWORD PTR [eax],edx
  764ead:	85 c9                                           	test   ecx,ecx
  764eaf:	74 08                                           	je     0x764eb9
  764eb1:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  764eb3:	8b 10                                           	mov    edx,DWORD PTR [eax]
  764eb5:	6a 01                                           	push   0x1
  764eb7:	ff d2                                           	call   edx
  764eb9:	8d 8c 24 00 01 00 00                            	lea    ecx,[esp+0x100]
  764ec0:	e8 4b f4 0b 00                                  	call   0x824310
  764ec5:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  764ec9:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  764ecd:	50                                              	push   eax
  764ece:	51                                              	push   ecx
  764ecf:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  764ed3:	e8 78 2e 48 00                                  	call   0xbe7d50
  764ed8:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  764edc:	85 c0                                           	test   eax,eax
  764ede:	74 09                                           	je     0x764ee9
  764ee0:	50                                              	push   eax
  764ee1:	e8 fa f5 d7 ff                                  	call   0x4e44e0
  764ee6:	83 c4 04                                        	add    esp,0x4
  764ee9:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  764eed:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  764ef1:	52                                              	push   edx
  764ef2:	50                                              	push   eax
  764ef3:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  764ef7:	e8 54 2e 48 00                                  	call   0xbe7d50
  764efc:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  764f00:	85 c0                                           	test   eax,eax
  764f02:	74 09                                           	je     0x764f0d
  764f04:	50                                              	push   eax
  764f05:	e8 d6 f5 d7 ff                                  	call   0x4e44e0
  764f0a:	83 c4 04                                        	add    esp,0x4
  764f0d:	b0 01                                           	mov    al,0x1
  764f0f:	5f                                              	pop    edi
  764f10:	5e                                              	pop    esi
  764f11:	5b                                              	pop    ebx
  764f12:	8b e5                                           	mov    esp,ebp
  764f14:	5d                                              	pop    ebp
  764f15:	c3                                              	ret
  764f16:	8d 8c 24 00 01 00 00                            	lea    ecx,[esp+0x100]
  764f1d:	e8 ee f3 0b 00                                  	call   0x824310
  764f22:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  764f26:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  764f2a:	51                                              	push   ecx
  764f2b:	52                                              	push   edx
  764f2c:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  764f30:	e8 1b 2e 48 00                                  	call   0xbe7d50
  764f35:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  764f39:	3b c3                                           	cmp    eax,ebx
  764f3b:	74 09                                           	je     0x764f46
  764f3d:	50                                              	push   eax
  764f3e:	e8 9d f5 d7 ff                                  	call   0x4e44e0
  764f43:	83 c4 04                                        	add    esp,0x4
  764f46:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  764f4a:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  764f4e:	50                                              	push   eax
  764f4f:	51                                              	push   ecx
  764f50:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  764f54:	e8 f7 2d 48 00                                  	call   0xbe7d50
  764f59:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  764f5d:	3b c3                                           	cmp    eax,ebx
  764f5f:	74 09                                           	je     0x764f6a
  764f61:	50                                              	push   eax
  764f62:	e8 79 f5 d7 ff                                  	call   0x4e44e0
  764f67:	83 c4 04                                        	add    esp,0x4
  764f6a:	5f                                              	pop    edi
  764f6b:	5e                                              	pop    esi
  764f6c:	32 c0                                           	xor    al,al
  764f6e:	5b                                              	pop    ebx
  764f6f:	8b e5                                           	mov    esp,ebp
  764f71:	5d                                              	pop    ebp
  764f72:	c3                                              	ret
  764f73:	cc                                              	int3
  764f74:	cc                                              	int3
  764f75:	cc                                              	int3
  764f76:	cc                                              	int3
  764f77:	cc                                              	int3
  764f78:	cc                                              	int3
  764f79:	cc                                              	int3
  764f7a:	cc                                              	int3
  764f7b:	cc                                              	int3
  764f7c:	cc                                              	int3
  764f7d:	cc                                              	int3
  764f7e:	cc                                              	int3
  764f7f:	cc                                              	int3
