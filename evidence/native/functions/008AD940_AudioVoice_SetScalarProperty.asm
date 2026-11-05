# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008ad940 (AudioVoice_SetScalarProperty)
Paired Ghidra pseudocode: 008AD940_AudioVoice_SetScalarProperty.c
Window: [0x008ad940, 0x008adfa0) (1632 bytes; stop exclusive)
Next defined Ghidra entry: 0x008adfa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008ad940: 55 8b ec 83 e4 f0 83 ec 24 53 56 57 8b f1 8d 45
008ad950: 08 50 8d 4c 24 1c 8d be 98 08 00 00 51 8b cf e8
008ad960: 4c e0 1a 00 d9 45 0c 8b 57 08 8b 4f 04 8b 44 24
008ad970: 18 3b 04 91 74 0f 51 8b 48 04 d9 1c 24 e8 ee 88
008ad980: ff ff d9 45 0c 8b 7d 08 81 ff cc 30 03 31 c6 44
008ad990: 24 14 01 0f 87 3c 02 00 00 0f 84 c1 01 00 00 81
008ad9a0: ff d4 a4 d2 12 dd d8 0f 87 df 00 00 00 0f 84 a7
008ad9b0: 00 00 00 81 ff 66 5d 0c 05 77 5f 74 40 81 ff 10
008ad9c0: 37 59 03 74 29 81 ff 65 5d 0c 05 0f 85 2e 04 00
008ad9d0: 00 f3 0f 10 45 0c f3 0f 11 86 c0 00 00 00 80 8e
008ad9e0: d0 00 00 00 04 5f 5e 5b 8b e5 5d c2 0c 00 f3 0f
008ad9f0: 10 45 0c f3 0f 11 46 6c e9 6a 04 00 00 f3 0f 10
008ada00: 45 0c f3 0f 11 86 bc 00 00 00 80 8e d0 00 00 00
008ada10: 02 5f 5e 5b 8b e5 5d c2 0c 00 81 ff 67 5d 0c 05
008ada20: 74 1b 81 ff 72 6b 61 0f 0f 85 d1 03 00 00 f3 0f
008ada30: 10 45 0c f3 0f 11 46 68 e9 2a 04 00 00 f3 0f 10
008ada40: 45 0c f3 0f 11 86 b8 00 00 00 80 8e d0 00 00 00
008ada50: 01 5f 5e 5b 8b e5 5d c2 0c 00 f3 0f 10 45 0c 0f
008ada60: 2e 05 cc 4c 0f 01 9f f6 c4 44 7b 10 80 8e d0 00
008ada70: 00 00 08 5f 5e 5b 8b e5 5d c2 0c 00 80 a6 d0 00
008ada80: 00 00 f7 5f 5e 5b 8b e5 5d c2 0c 00 81 ff 08 01
008ada90: df 25 77 70 74 5b 81 ff 06 80 2b 22 74 1f 81 ff
008adaa0: 47 a0 06 24 0f 85 55 03 00 00 f3 0f 10 45 0c f3
008adab0: 0f 11 46 64 5f 5e 5b 8b e5 5d c2 0c 00 f3 0f 10
008adac0: 45 0c 0f 2e 05 cc 4c 0f 01 9f f6 c4 44 7b 11 b0
008adad0: 01 88 86 ac 00 00 00 5f 5e 5b 8b e5 5d c2 0c 00
008adae0: 32 c0 88 86 ac 00 00 00 5f 5e 5b 8b e5 5d c2 0c
008adaf0: 00 f3 0f 10 45 0c f3 0f 11 46 70 5f 5e 5b 8b e5
008adb00: 5d c2 0c 00 81 ff de 1e 34 26 74 22 81 ff f8 b9
008adb10: e8 29 0f 85 e7 02 00 00 f3 0f 10 45 0c f3 0f 11
008adb20: 86 34 03 00 00 5f 5e 5b 8b e5 5d c2 0c 00 f3 0f
008adb30: 10 86 a8 00 00 00 f3 0f 10 4d 0c 0f 2e c1 9f f6
008adb40: c4 44 f3 0f 11 8e a8 00 00 00 7b 0a c6 44 24 14
008adb50: 01 e9 11 03 00 00 c6 44 24 14 00 e9 07 03 00 00
008adb60: 8b 8e e8 02 00 00 85 c9 0f 84 f7 02 00 00 8b 86
008adb70: 84 0a 00 00 85 c0 74 22 8b 4d 10 8b 10 8b 92 b0
008adb80: 00 00 00 51 51 d9 1c 24 68 cc 30 03 31 8b c8 ff
008adb90: d2 5f 5e 5b 8b e5 5d c2 0c 00 f3 0f 10 45 0c dd
008adba0: d8 0f 2e 05 cc 4c 0f 01 9f f6 c4 44 7b 04 b0 01
008adbb0: eb 02 32 c0 84 c0 0f 95 c0 50 e8 e1 58 ff ff 8b
008adbc0: 16 8b 42 18 6a 00 6a 00 8b ce ff d0 5f 5e 5b 8b
008adbd0: e5 5d c2 0c 00 81 ff 09 30 bc 71 0f 87 43 01 00
008adbe0: 00 dd d8 0f 84 25 01 00 00 81 ff 36 78 7a 64 0f
008adbf0: 87 b4 00 00 00 74 6e 81 ff 7d 7f 3f 39 74 50 81
008adc00: ff db 68 eb 49 0f 85 f4 01 00 00 f3 0f 10 86 88
008adc10: 00 00 00 f3 0f 10 4d 0c 0f 2e c1 9f f6 c4 44 f3
008adc20: 0f 11 8e 88 00 00 00 c6 44 24 14 01 7a 05 c6 44
008adc30: 24 14 00 81 8e dc 0a 00 00 00 00 02 00 f6 86 d0
008adc40: 00 00 00 08 0f 85 49 03 00 00 e9 18 02 00 00 f3
008adc50: 0f 10 45 0c f3 0f 11 86 84 00 00 00 5f 5e 5b 8b
008adc60: e5 5d c2 0c 00 f3 0f 10 86 8c 00 00 00 f3 0f 10
008adc70: 4d 0c 0f 2e c1 9f f6 c4 44 f3 0f 11 8e 8c 00 00
008adc80: 00 c6 44 24 14 01 7a 05 c6 44 24 14 00 81 8e dc
008adc90: 0a 00 00 00 80 00 00 f6 86 d0 00 00 00 08 0f 85
008adca0: ef 02 00 00 e9 be 01 00 00 81 ff 18 82 d0 6d 74
008adcb0: 29 81 ff 2d 82 f5 6d 0f 85 42 01 00 00 8b 8e 98
008adcc0: 18 00 00 f3 0f 2c 45 0c 3b c8 89 86 98 18 00 00
008adcd0: 0f 95 44 24 14 e9 8d 01 00 00 f3 0f 10 45 0c 0f
008adce0: 2e 05 cc 4c 0f 01 9f f6 c4 44 7b 11 b0 01 88 86
008adcf0: ad 00 00 00 5f 5e 5b 8b e5 5d c2 0c 00 32 c0 88
008add00: 86 ad 00 00 00 5f 5e 5b 8b e5 5d c2 0c 00 f3 0f
008add10: 10 45 0c f3 0f 11 86 9c 00 00 00 5f 5e 5b 8b e5
008add20: 5d c2 0c 00 81 ff e5 23 55 b8 0f 87 b5 00 00 00
008add30: dd d8 74 78 81 ff 5f 76 6a a2 74 2c 81 ff 39 25
008add40: f4 b1 0f 85 b7 00 00 00 f3 0f 10 45 0c f3 0f 11
008add50: 86 c8 0a 00 00 81 8e dc 0a 00 00 00 04 00 00 5f
008add60: 5e 5b 8b e5 5d c2 0c 00 f3 0f 10 86 90 00 00 00
008add70: f3 0f 10 4d 0c 0f 2e c1 9f f6 c4 44 f3 0f 11 8e
008add80: 90 00 00 00 c6 44 24 14 01 7a 05 c6 44 24 14 00
008add90: 81 8e dc 0a 00 00 00 00 01 00 f6 86 d0 00 00 00
008adda0: 08 0f 85 ec 01 00 00 e9 bb 00 00 00 f3 0f 10 45
008addb0: 0c 0f 2e 05 cc 4c 0f 01 9f f6 c4 44 7b 04 b0 01
008addc0: eb 02 32 c0 d9 05 18 b2 fa 00 8b 16 6a 01 51 d9
008addd0: 1c 24 6a 04 50 8b 42 1c 8b ce ff d0 5f 5e 5b 8b
008adde0: e5 5d c2 0c 00 81 ff f9 f4 f7 ba 0f 84 7a 01 00
008addf0: 00 81 ff f2 72 f8 e1 dd d8 0f 84 b1 00 00 00 8d
008ade00: 4d 08 51 8d 54 24 1c 8d 9e 08 01 00 00 52 8b cb
008ade10: e8 9b db 1a 00 8b 43 08 8b 53 04 8b 4c 24 18 3b
008ade20: 0c 82 f3 0f 10 45 0c 75 1d 8d 44 24 18 50 8d 4c
008ade30: 24 28 51 8b cb 89 7c 24 20 f3 0f 11 44 24 24 e8
008ade40: 2c f9 ff ff eb 21 f3 0f 10 49 04 0f 2e c8 9f f6
008ade50: c4 44 c6 44 24 14 01 7a 05 c6 44 24 14 00 f3 0f
008ade60: 11 41 04 eb 02 dd d8 83 7e 58 00 0f 84 22 01 00
008ade70: 00 80 7c 24 14 00 0f 84 17 01 00 00 8b 16 8b 42
008ade80: 20 6a 01 6a ff 8b ce ff d0 84 c0 0f 85 02 01 00
008ade90: 00 8b 76 58 d9 45 0c 8b 16 8b 42 34 6a 01 51 d9
008adea0: 1c 24 57 8b ce ff d0 5f 5e 5b 8b e5 5d c2 0c 00
008adeb0: f3 0f 10 4d 0c f3 0f 10 15 f8 98 f9 00 f3 0f 10
008adec0: 05 18 b2 fa 00 f3 0f 5c ca 0f c6 c0 00 0f c6 c9
008aded0: 00 0f 59 c1 0f 5f c1 f3 0f 10 0d fc b8 03 01 0f
008adee0: c6 c9 00 0f c2 c1 02 0f 50 c8 83 f9 0f 75 53 83
008adef0: 7e 58 00 0f 57 c0 74 29 d9 05 c8 f8 06 01 51 8d
008adf00: 54 24 18 d9 1c 24 52 8d 8e 7c 18 00 00 f3 0f 11
008adf10: 44 24 1c e8 88 d3 ff ff 5f 5e 5b 8b e5 5d c2 0c
008adf20: 00 f3 0f 11 86 80 18 00 00 f3 0f 11 86 7c 18 00
008adf30: 00 f3 0f 11 86 84 18 00 00 5f 5e 5b 8b e5 5d c2
008adf40: 0c 00 d9 05 c8 f8 06 01 51 8d 44 24 18 d9 1c 24
008adf50: 50 8d 8e 7c 18 00 00 f3 0f 11 54 24 1c e8 3e d3
008adf60: ff ff 5f 5e 5b 8b e5 5d c2 0c 00 d9 7c 24 14 0f
008adf70: b7 44 24 14 0d 00 0c 00 00 89 44 24 18 d9 6c 24
008adf80: 18 df 7c 24 18 8b 4c 24 18 89 8e 3c 03 00 00 d9
008adf90: 6c 24 14 5f 5e 5b 8b e5 5d c2 0c 00 cc cc cc cc

LINEAR DISASSEMBLY
008ad940 <.text+0x4ac940>:
  8ad940:	55                                              	push   ebp
  8ad941:	8b ec                                           	mov    ebp,esp
  8ad943:	83 e4 f0                                        	and    esp,0xfffffff0
  8ad946:	83 ec 24                                        	sub    esp,0x24
  8ad949:	53                                              	push   ebx
  8ad94a:	56                                              	push   esi
  8ad94b:	57                                              	push   edi
  8ad94c:	8b f1                                           	mov    esi,ecx
  8ad94e:	8d 45 08                                        	lea    eax,[ebp+0x8]
  8ad951:	50                                              	push   eax
  8ad952:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  8ad956:	8d be 98 08 00 00                               	lea    edi,[esi+0x898]
  8ad95c:	51                                              	push   ecx
  8ad95d:	8b cf                                           	mov    ecx,edi
  8ad95f:	e8 4c e0 1a 00                                  	call   0xa5b9b0
  8ad964:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
  8ad967:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
  8ad96a:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
  8ad96d:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  8ad971:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
  8ad974:	74 0f                                           	je     0x8ad985
  8ad976:	51                                              	push   ecx
  8ad977:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  8ad97a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8ad97d:	e8 ee 88 ff ff                                  	call   0x8a6270
  8ad982:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
  8ad985:	8b 7d 08                                        	mov    edi,DWORD PTR [ebp+0x8]
  8ad988:	81 ff cc 30 03 31                               	cmp    edi,0x310330cc
  8ad98e:	c6 44 24 14 01                                  	mov    BYTE PTR [esp+0x14],0x1
  8ad993:	0f 87 3c 02 00 00                               	ja     0x8adbd5
  8ad999:	0f 84 c1 01 00 00                               	je     0x8adb60
  8ad99f:	81 ff d4 a4 d2 12                               	cmp    edi,0x12d2a4d4
  8ad9a5:	dd d8                                           	fstp   st(0)
  8ad9a7:	0f 87 df 00 00 00                               	ja     0x8ada8c
  8ad9ad:	0f 84 a7 00 00 00                               	je     0x8ada5a
  8ad9b3:	81 ff 66 5d 0c 05                               	cmp    edi,0x50c5d66
  8ad9b9:	77 5f                                           	ja     0x8ada1a
  8ad9bb:	74 40                                           	je     0x8ad9fd
  8ad9bd:	81 ff 10 37 59 03                               	cmp    edi,0x3593710
  8ad9c3:	74 29                                           	je     0x8ad9ee
  8ad9c5:	81 ff 65 5d 0c 05                               	cmp    edi,0x50c5d65
  8ad9cb:	0f 85 2e 04 00 00                               	jne    0x8addff
  8ad9d1:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8ad9d6:	f3 0f 11 86 c0 00 00 00                         	movss  DWORD PTR [esi+0xc0],xmm0
  8ad9de:	80 8e d0 00 00 00 04                            	or     BYTE PTR [esi+0xd0],0x4
  8ad9e5:	5f                                              	pop    edi
  8ad9e6:	5e                                              	pop    esi
  8ad9e7:	5b                                              	pop    ebx
  8ad9e8:	8b e5                                           	mov    esp,ebp
  8ad9ea:	5d                                              	pop    ebp
  8ad9eb:	c2 0c 00                                        	ret    0xc
  8ad9ee:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8ad9f3:	f3 0f 11 46 6c                                  	movss  DWORD PTR [esi+0x6c],xmm0
  8ad9f8:	e9 6a 04 00 00                                  	jmp    0x8ade67
  8ad9fd:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8ada02:	f3 0f 11 86 bc 00 00 00                         	movss  DWORD PTR [esi+0xbc],xmm0
  8ada0a:	80 8e d0 00 00 00 02                            	or     BYTE PTR [esi+0xd0],0x2
  8ada11:	5f                                              	pop    edi
  8ada12:	5e                                              	pop    esi
  8ada13:	5b                                              	pop    ebx
  8ada14:	8b e5                                           	mov    esp,ebp
  8ada16:	5d                                              	pop    ebp
  8ada17:	c2 0c 00                                        	ret    0xc
  8ada1a:	81 ff 67 5d 0c 05                               	cmp    edi,0x50c5d67
  8ada20:	74 1b                                           	je     0x8ada3d
  8ada22:	81 ff 72 6b 61 0f                               	cmp    edi,0xf616b72
  8ada28:	0f 85 d1 03 00 00                               	jne    0x8addff
  8ada2e:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8ada33:	f3 0f 11 46 68                                  	movss  DWORD PTR [esi+0x68],xmm0
  8ada38:	e9 2a 04 00 00                                  	jmp    0x8ade67
  8ada3d:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8ada42:	f3 0f 11 86 b8 00 00 00                         	movss  DWORD PTR [esi+0xb8],xmm0
  8ada4a:	80 8e d0 00 00 00 01                            	or     BYTE PTR [esi+0xd0],0x1
  8ada51:	5f                                              	pop    edi
  8ada52:	5e                                              	pop    esi
  8ada53:	5b                                              	pop    ebx
  8ada54:	8b e5                                           	mov    esp,ebp
  8ada56:	5d                                              	pop    ebp
  8ada57:	c2 0c 00                                        	ret    0xc
  8ada5a:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8ada5f:	0f 2e 05 cc 4c 0f 01                            	ucomiss xmm0,DWORD PTR ds:0x10f4ccc
  8ada66:	9f                                              	lahf
  8ada67:	f6 c4 44                                        	test   ah,0x44
  8ada6a:	7b 10                                           	jnp    0x8ada7c
  8ada6c:	80 8e d0 00 00 00 08                            	or     BYTE PTR [esi+0xd0],0x8
  8ada73:	5f                                              	pop    edi
  8ada74:	5e                                              	pop    esi
  8ada75:	5b                                              	pop    ebx
  8ada76:	8b e5                                           	mov    esp,ebp
  8ada78:	5d                                              	pop    ebp
  8ada79:	c2 0c 00                                        	ret    0xc
  8ada7c:	80 a6 d0 00 00 00 f7                            	and    BYTE PTR [esi+0xd0],0xf7
  8ada83:	5f                                              	pop    edi
  8ada84:	5e                                              	pop    esi
  8ada85:	5b                                              	pop    ebx
  8ada86:	8b e5                                           	mov    esp,ebp
  8ada88:	5d                                              	pop    ebp
  8ada89:	c2 0c 00                                        	ret    0xc
  8ada8c:	81 ff 08 01 df 25                               	cmp    edi,0x25df0108
  8ada92:	77 70                                           	ja     0x8adb04
  8ada94:	74 5b                                           	je     0x8adaf1
  8ada96:	81 ff 06 80 2b 22                               	cmp    edi,0x222b8006
  8ada9c:	74 1f                                           	je     0x8adabd
  8ada9e:	81 ff 47 a0 06 24                               	cmp    edi,0x2406a047
  8adaa4:	0f 85 55 03 00 00                               	jne    0x8addff
  8adaaa:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8adaaf:	f3 0f 11 46 64                                  	movss  DWORD PTR [esi+0x64],xmm0
  8adab4:	5f                                              	pop    edi
  8adab5:	5e                                              	pop    esi
  8adab6:	5b                                              	pop    ebx
  8adab7:	8b e5                                           	mov    esp,ebp
  8adab9:	5d                                              	pop    ebp
  8adaba:	c2 0c 00                                        	ret    0xc
  8adabd:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8adac2:	0f 2e 05 cc 4c 0f 01                            	ucomiss xmm0,DWORD PTR ds:0x10f4ccc
  8adac9:	9f                                              	lahf
  8adaca:	f6 c4 44                                        	test   ah,0x44
  8adacd:	7b 11                                           	jnp    0x8adae0
  8adacf:	b0 01                                           	mov    al,0x1
  8adad1:	88 86 ac 00 00 00                               	mov    BYTE PTR [esi+0xac],al
  8adad7:	5f                                              	pop    edi
  8adad8:	5e                                              	pop    esi
  8adad9:	5b                                              	pop    ebx
  8adada:	8b e5                                           	mov    esp,ebp
  8adadc:	5d                                              	pop    ebp
  8adadd:	c2 0c 00                                        	ret    0xc
  8adae0:	32 c0                                           	xor    al,al
  8adae2:	88 86 ac 00 00 00                               	mov    BYTE PTR [esi+0xac],al
  8adae8:	5f                                              	pop    edi
  8adae9:	5e                                              	pop    esi
  8adaea:	5b                                              	pop    ebx
  8adaeb:	8b e5                                           	mov    esp,ebp
  8adaed:	5d                                              	pop    ebp
  8adaee:	c2 0c 00                                        	ret    0xc
  8adaf1:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8adaf6:	f3 0f 11 46 70                                  	movss  DWORD PTR [esi+0x70],xmm0
  8adafb:	5f                                              	pop    edi
  8adafc:	5e                                              	pop    esi
  8adafd:	5b                                              	pop    ebx
  8adafe:	8b e5                                           	mov    esp,ebp
  8adb00:	5d                                              	pop    ebp
  8adb01:	c2 0c 00                                        	ret    0xc
  8adb04:	81 ff de 1e 34 26                               	cmp    edi,0x26341ede
  8adb0a:	74 22                                           	je     0x8adb2e
  8adb0c:	81 ff f8 b9 e8 29                               	cmp    edi,0x29e8b9f8
  8adb12:	0f 85 e7 02 00 00                               	jne    0x8addff
  8adb18:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8adb1d:	f3 0f 11 86 34 03 00 00                         	movss  DWORD PTR [esi+0x334],xmm0
  8adb25:	5f                                              	pop    edi
  8adb26:	5e                                              	pop    esi
  8adb27:	5b                                              	pop    ebx
  8adb28:	8b e5                                           	mov    esp,ebp
  8adb2a:	5d                                              	pop    ebp
  8adb2b:	c2 0c 00                                        	ret    0xc
  8adb2e:	f3 0f 10 86 a8 00 00 00                         	movss  xmm0,DWORD PTR [esi+0xa8]
  8adb36:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  8adb3b:	0f 2e c1                                        	ucomiss xmm0,xmm1
  8adb3e:	9f                                              	lahf
  8adb3f:	f6 c4 44                                        	test   ah,0x44
  8adb42:	f3 0f 11 8e a8 00 00 00                         	movss  DWORD PTR [esi+0xa8],xmm1
  8adb4a:	7b 0a                                           	jnp    0x8adb56
  8adb4c:	c6 44 24 14 01                                  	mov    BYTE PTR [esp+0x14],0x1
  8adb51:	e9 11 03 00 00                                  	jmp    0x8ade67
  8adb56:	c6 44 24 14 00                                  	mov    BYTE PTR [esp+0x14],0x0
  8adb5b:	e9 07 03 00 00                                  	jmp    0x8ade67
  8adb60:	8b 8e e8 02 00 00                               	mov    ecx,DWORD PTR [esi+0x2e8]
  8adb66:	85 c9                                           	test   ecx,ecx
  8adb68:	0f 84 f7 02 00 00                               	je     0x8ade65
  8adb6e:	8b 86 84 0a 00 00                               	mov    eax,DWORD PTR [esi+0xa84]
  8adb74:	85 c0                                           	test   eax,eax
  8adb76:	74 22                                           	je     0x8adb9a
  8adb78:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  8adb7b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  8adb7d:	8b 92 b0 00 00 00                               	mov    edx,DWORD PTR [edx+0xb0]
  8adb83:	51                                              	push   ecx
  8adb84:	51                                              	push   ecx
  8adb85:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8adb88:	68 cc 30 03 31                                  	push   0x310330cc
  8adb8d:	8b c8                                           	mov    ecx,eax
  8adb8f:	ff d2                                           	call   edx
  8adb91:	5f                                              	pop    edi
  8adb92:	5e                                              	pop    esi
  8adb93:	5b                                              	pop    ebx
  8adb94:	8b e5                                           	mov    esp,ebp
  8adb96:	5d                                              	pop    ebp
  8adb97:	c2 0c 00                                        	ret    0xc
  8adb9a:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8adb9f:	dd d8                                           	fstp   st(0)
  8adba1:	0f 2e 05 cc 4c 0f 01                            	ucomiss xmm0,DWORD PTR ds:0x10f4ccc
  8adba8:	9f                                              	lahf
  8adba9:	f6 c4 44                                        	test   ah,0x44
  8adbac:	7b 04                                           	jnp    0x8adbb2
  8adbae:	b0 01                                           	mov    al,0x1
  8adbb0:	eb 02                                           	jmp    0x8adbb4
  8adbb2:	32 c0                                           	xor    al,al
  8adbb4:	84 c0                                           	test   al,al
  8adbb6:	0f 95 c0                                        	setne  al
  8adbb9:	50                                              	push   eax
  8adbba:	e8 e1 58 ff ff                                  	call   0x8a34a0
  8adbbf:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8adbc1:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  8adbc4:	6a 00                                           	push   0x0
  8adbc6:	6a 00                                           	push   0x0
  8adbc8:	8b ce                                           	mov    ecx,esi
  8adbca:	ff d0                                           	call   eax
  8adbcc:	5f                                              	pop    edi
  8adbcd:	5e                                              	pop    esi
  8adbce:	5b                                              	pop    ebx
  8adbcf:	8b e5                                           	mov    esp,ebp
  8adbd1:	5d                                              	pop    ebp
  8adbd2:	c2 0c 00                                        	ret    0xc
  8adbd5:	81 ff 09 30 bc 71                               	cmp    edi,0x71bc3009
  8adbdb:	0f 87 43 01 00 00                               	ja     0x8add24
  8adbe1:	dd d8                                           	fstp   st(0)
  8adbe3:	0f 84 25 01 00 00                               	je     0x8add0e
  8adbe9:	81 ff 36 78 7a 64                               	cmp    edi,0x647a7836
  8adbef:	0f 87 b4 00 00 00                               	ja     0x8adca9
  8adbf5:	74 6e                                           	je     0x8adc65
  8adbf7:	81 ff 7d 7f 3f 39                               	cmp    edi,0x393f7f7d
  8adbfd:	74 50                                           	je     0x8adc4f
  8adbff:	81 ff db 68 eb 49                               	cmp    edi,0x49eb68db
  8adc05:	0f 85 f4 01 00 00                               	jne    0x8addff
  8adc0b:	f3 0f 10 86 88 00 00 00                         	movss  xmm0,DWORD PTR [esi+0x88]
  8adc13:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  8adc18:	0f 2e c1                                        	ucomiss xmm0,xmm1
  8adc1b:	9f                                              	lahf
  8adc1c:	f6 c4 44                                        	test   ah,0x44
  8adc1f:	f3 0f 11 8e 88 00 00 00                         	movss  DWORD PTR [esi+0x88],xmm1
  8adc27:	c6 44 24 14 01                                  	mov    BYTE PTR [esp+0x14],0x1
  8adc2c:	7a 05                                           	jp     0x8adc33
  8adc2e:	c6 44 24 14 00                                  	mov    BYTE PTR [esp+0x14],0x0
  8adc33:	81 8e dc 0a 00 00 00 00 02 00                   	or     DWORD PTR [esi+0xadc],0x20000
  8adc3d:	f6 86 d0 00 00 00 08                            	test   BYTE PTR [esi+0xd0],0x8
  8adc44:	0f 85 49 03 00 00                               	jne    0x8adf93
  8adc4a:	e9 18 02 00 00                                  	jmp    0x8ade67
  8adc4f:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8adc54:	f3 0f 11 86 84 00 00 00                         	movss  DWORD PTR [esi+0x84],xmm0
  8adc5c:	5f                                              	pop    edi
  8adc5d:	5e                                              	pop    esi
  8adc5e:	5b                                              	pop    ebx
  8adc5f:	8b e5                                           	mov    esp,ebp
  8adc61:	5d                                              	pop    ebp
  8adc62:	c2 0c 00                                        	ret    0xc
  8adc65:	f3 0f 10 86 8c 00 00 00                         	movss  xmm0,DWORD PTR [esi+0x8c]
  8adc6d:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  8adc72:	0f 2e c1                                        	ucomiss xmm0,xmm1
  8adc75:	9f                                              	lahf
  8adc76:	f6 c4 44                                        	test   ah,0x44
  8adc79:	f3 0f 11 8e 8c 00 00 00                         	movss  DWORD PTR [esi+0x8c],xmm1
  8adc81:	c6 44 24 14 01                                  	mov    BYTE PTR [esp+0x14],0x1
  8adc86:	7a 05                                           	jp     0x8adc8d
  8adc88:	c6 44 24 14 00                                  	mov    BYTE PTR [esp+0x14],0x0
  8adc8d:	81 8e dc 0a 00 00 00 80 00 00                   	or     DWORD PTR [esi+0xadc],0x8000
  8adc97:	f6 86 d0 00 00 00 08                            	test   BYTE PTR [esi+0xd0],0x8
  8adc9e:	0f 85 ef 02 00 00                               	jne    0x8adf93
  8adca4:	e9 be 01 00 00                                  	jmp    0x8ade67
  8adca9:	81 ff 18 82 d0 6d                               	cmp    edi,0x6dd08218
  8adcaf:	74 29                                           	je     0x8adcda
  8adcb1:	81 ff 2d 82 f5 6d                               	cmp    edi,0x6df5822d
  8adcb7:	0f 85 42 01 00 00                               	jne    0x8addff
  8adcbd:	8b 8e 98 18 00 00                               	mov    ecx,DWORD PTR [esi+0x1898]
  8adcc3:	f3 0f 2c 45 0c                                  	cvttss2si eax,DWORD PTR [ebp+0xc]
  8adcc8:	3b c8                                           	cmp    ecx,eax
  8adcca:	89 86 98 18 00 00                               	mov    DWORD PTR [esi+0x1898],eax
  8adcd0:	0f 95 44 24 14                                  	setne  BYTE PTR [esp+0x14]
  8adcd5:	e9 8d 01 00 00                                  	jmp    0x8ade67
  8adcda:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8adcdf:	0f 2e 05 cc 4c 0f 01                            	ucomiss xmm0,DWORD PTR ds:0x10f4ccc
  8adce6:	9f                                              	lahf
  8adce7:	f6 c4 44                                        	test   ah,0x44
  8adcea:	7b 11                                           	jnp    0x8adcfd
  8adcec:	b0 01                                           	mov    al,0x1
  8adcee:	88 86 ad 00 00 00                               	mov    BYTE PTR [esi+0xad],al
  8adcf4:	5f                                              	pop    edi
  8adcf5:	5e                                              	pop    esi
  8adcf6:	5b                                              	pop    ebx
  8adcf7:	8b e5                                           	mov    esp,ebp
  8adcf9:	5d                                              	pop    ebp
  8adcfa:	c2 0c 00                                        	ret    0xc
  8adcfd:	32 c0                                           	xor    al,al
  8adcff:	88 86 ad 00 00 00                               	mov    BYTE PTR [esi+0xad],al
  8add05:	5f                                              	pop    edi
  8add06:	5e                                              	pop    esi
  8add07:	5b                                              	pop    ebx
  8add08:	8b e5                                           	mov    esp,ebp
  8add0a:	5d                                              	pop    ebp
  8add0b:	c2 0c 00                                        	ret    0xc
  8add0e:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8add13:	f3 0f 11 86 9c 00 00 00                         	movss  DWORD PTR [esi+0x9c],xmm0
  8add1b:	5f                                              	pop    edi
  8add1c:	5e                                              	pop    esi
  8add1d:	5b                                              	pop    ebx
  8add1e:	8b e5                                           	mov    esp,ebp
  8add20:	5d                                              	pop    ebp
  8add21:	c2 0c 00                                        	ret    0xc
  8add24:	81 ff e5 23 55 b8                               	cmp    edi,0xb85523e5
  8add2a:	0f 87 b5 00 00 00                               	ja     0x8adde5
  8add30:	dd d8                                           	fstp   st(0)
  8add32:	74 78                                           	je     0x8addac
  8add34:	81 ff 5f 76 6a a2                               	cmp    edi,0xa26a765f
  8add3a:	74 2c                                           	je     0x8add68
  8add3c:	81 ff 39 25 f4 b1                               	cmp    edi,0xb1f42539
  8add42:	0f 85 b7 00 00 00                               	jne    0x8addff
  8add48:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8add4d:	f3 0f 11 86 c8 0a 00 00                         	movss  DWORD PTR [esi+0xac8],xmm0
  8add55:	81 8e dc 0a 00 00 00 04 00 00                   	or     DWORD PTR [esi+0xadc],0x400
  8add5f:	5f                                              	pop    edi
  8add60:	5e                                              	pop    esi
  8add61:	5b                                              	pop    ebx
  8add62:	8b e5                                           	mov    esp,ebp
  8add64:	5d                                              	pop    ebp
  8add65:	c2 0c 00                                        	ret    0xc
  8add68:	f3 0f 10 86 90 00 00 00                         	movss  xmm0,DWORD PTR [esi+0x90]
  8add70:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  8add75:	0f 2e c1                                        	ucomiss xmm0,xmm1
  8add78:	9f                                              	lahf
  8add79:	f6 c4 44                                        	test   ah,0x44
  8add7c:	f3 0f 11 8e 90 00 00 00                         	movss  DWORD PTR [esi+0x90],xmm1
  8add84:	c6 44 24 14 01                                  	mov    BYTE PTR [esp+0x14],0x1
  8add89:	7a 05                                           	jp     0x8add90
  8add8b:	c6 44 24 14 00                                  	mov    BYTE PTR [esp+0x14],0x0
  8add90:	81 8e dc 0a 00 00 00 00 01 00                   	or     DWORD PTR [esi+0xadc],0x10000
  8add9a:	f6 86 d0 00 00 00 08                            	test   BYTE PTR [esi+0xd0],0x8
  8adda1:	0f 85 ec 01 00 00                               	jne    0x8adf93
  8adda7:	e9 bb 00 00 00                                  	jmp    0x8ade67
  8addac:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8addb1:	0f 2e 05 cc 4c 0f 01                            	ucomiss xmm0,DWORD PTR ds:0x10f4ccc
  8addb8:	9f                                              	lahf
  8addb9:	f6 c4 44                                        	test   ah,0x44
  8addbc:	7b 04                                           	jnp    0x8addc2
  8addbe:	b0 01                                           	mov    al,0x1
  8addc0:	eb 02                                           	jmp    0x8addc4
  8addc2:	32 c0                                           	xor    al,al
  8addc4:	d9 05 18 b2 fa 00                               	fld    DWORD PTR ds:0xfab218
  8addca:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8addcc:	6a 01                                           	push   0x1
  8addce:	51                                              	push   ecx
  8addcf:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8addd2:	6a 04                                           	push   0x4
  8addd4:	50                                              	push   eax
  8addd5:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  8addd8:	8b ce                                           	mov    ecx,esi
  8addda:	ff d0                                           	call   eax
  8adddc:	5f                                              	pop    edi
  8adddd:	5e                                              	pop    esi
  8addde:	5b                                              	pop    ebx
  8adddf:	8b e5                                           	mov    esp,ebp
  8adde1:	5d                                              	pop    ebp
  8adde2:	c2 0c 00                                        	ret    0xc
  8adde5:	81 ff f9 f4 f7 ba                               	cmp    edi,0xbaf7f4f9
  8addeb:	0f 84 7a 01 00 00                               	je     0x8adf6b
  8addf1:	81 ff f2 72 f8 e1                               	cmp    edi,0xe1f872f2
  8addf7:	dd d8                                           	fstp   st(0)
  8addf9:	0f 84 b1 00 00 00                               	je     0x8adeb0
  8addff:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
  8ade02:	51                                              	push   ecx
  8ade03:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  8ade07:	8d 9e 08 01 00 00                               	lea    ebx,[esi+0x108]
  8ade0d:	52                                              	push   edx
  8ade0e:	8b cb                                           	mov    ecx,ebx
  8ade10:	e8 9b db 1a 00                                  	call   0xa5b9b0
  8ade15:	8b 43 08                                        	mov    eax,DWORD PTR [ebx+0x8]
  8ade18:	8b 53 04                                        	mov    edx,DWORD PTR [ebx+0x4]
  8ade1b:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  8ade1f:	3b 0c 82                                        	cmp    ecx,DWORD PTR [edx+eax*4]
  8ade22:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8ade27:	75 1d                                           	jne    0x8ade46
  8ade29:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  8ade2d:	50                                              	push   eax
  8ade2e:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  8ade32:	51                                              	push   ecx
  8ade33:	8b cb                                           	mov    ecx,ebx
  8ade35:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  8ade39:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  8ade3f:	e8 2c f9 ff ff                                  	call   0x8ad770
  8ade44:	eb 21                                           	jmp    0x8ade67
  8ade46:	f3 0f 10 49 04                                  	movss  xmm1,DWORD PTR [ecx+0x4]
  8ade4b:	0f 2e c8                                        	ucomiss xmm1,xmm0
  8ade4e:	9f                                              	lahf
  8ade4f:	f6 c4 44                                        	test   ah,0x44
  8ade52:	c6 44 24 14 01                                  	mov    BYTE PTR [esp+0x14],0x1
  8ade57:	7a 05                                           	jp     0x8ade5e
  8ade59:	c6 44 24 14 00                                  	mov    BYTE PTR [esp+0x14],0x0
  8ade5e:	f3 0f 11 41 04                                  	movss  DWORD PTR [ecx+0x4],xmm0
  8ade63:	eb 02                                           	jmp    0x8ade67
  8ade65:	dd d8                                           	fstp   st(0)
  8ade67:	83 7e 58 00                                     	cmp    DWORD PTR [esi+0x58],0x0
  8ade6b:	0f 84 22 01 00 00                               	je     0x8adf93
  8ade71:	80 7c 24 14 00                                  	cmp    BYTE PTR [esp+0x14],0x0
  8ade76:	0f 84 17 01 00 00                               	je     0x8adf93
  8ade7c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8ade7e:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
  8ade81:	6a 01                                           	push   0x1
  8ade83:	6a ff                                           	push   0xffffffff
  8ade85:	8b ce                                           	mov    ecx,esi
  8ade87:	ff d0                                           	call   eax
  8ade89:	84 c0                                           	test   al,al
  8ade8b:	0f 85 02 01 00 00                               	jne    0x8adf93
  8ade91:	8b 76 58                                        	mov    esi,DWORD PTR [esi+0x58]
  8ade94:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
  8ade97:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8ade99:	8b 42 34                                        	mov    eax,DWORD PTR [edx+0x34]
  8ade9c:	6a 01                                           	push   0x1
  8ade9e:	51                                              	push   ecx
  8ade9f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8adea2:	57                                              	push   edi
  8adea3:	8b ce                                           	mov    ecx,esi
  8adea5:	ff d0                                           	call   eax
  8adea7:	5f                                              	pop    edi
  8adea8:	5e                                              	pop    esi
  8adea9:	5b                                              	pop    ebx
  8adeaa:	8b e5                                           	mov    esp,ebp
  8adeac:	5d                                              	pop    ebp
  8adead:	c2 0c 00                                        	ret    0xc
  8adeb0:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  8adeb5:	f3 0f 10 15 f8 98 f9 00                         	movss  xmm2,DWORD PTR ds:0xf998f8
  8adebd:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  8adec5:	f3 0f 5c ca                                     	subss  xmm1,xmm2
  8adec9:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  8adecd:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  8aded1:	0f 59 c1                                        	mulps  xmm0,xmm1
  8aded4:	0f 5f c1                                        	maxps  xmm0,xmm1
  8aded7:	f3 0f 10 0d fc b8 03 01                         	movss  xmm1,DWORD PTR ds:0x103b8fc
  8adedf:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  8adee3:	0f c2 c1 02                                     	cmpleps xmm0,xmm1
  8adee7:	0f 50 c8                                        	movmskps ecx,xmm0
  8adeea:	83 f9 0f                                        	cmp    ecx,0xf
  8adeed:	75 53                                           	jne    0x8adf42
  8adeef:	83 7e 58 00                                     	cmp    DWORD PTR [esi+0x58],0x0
  8adef3:	0f 57 c0                                        	xorps  xmm0,xmm0
  8adef6:	74 29                                           	je     0x8adf21
  8adef8:	d9 05 c8 f8 06 01                               	fld    DWORD PTR ds:0x106f8c8
  8adefe:	51                                              	push   ecx
  8adeff:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  8adf03:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8adf06:	52                                              	push   edx
  8adf07:	8d 8e 7c 18 00 00                               	lea    ecx,[esi+0x187c]
  8adf0d:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  8adf13:	e8 88 d3 ff ff                                  	call   0x8ab2a0
  8adf18:	5f                                              	pop    edi
  8adf19:	5e                                              	pop    esi
  8adf1a:	5b                                              	pop    ebx
  8adf1b:	8b e5                                           	mov    esp,ebp
  8adf1d:	5d                                              	pop    ebp
  8adf1e:	c2 0c 00                                        	ret    0xc
  8adf21:	f3 0f 11 86 80 18 00 00                         	movss  DWORD PTR [esi+0x1880],xmm0
  8adf29:	f3 0f 11 86 7c 18 00 00                         	movss  DWORD PTR [esi+0x187c],xmm0
  8adf31:	f3 0f 11 86 84 18 00 00                         	movss  DWORD PTR [esi+0x1884],xmm0
  8adf39:	5f                                              	pop    edi
  8adf3a:	5e                                              	pop    esi
  8adf3b:	5b                                              	pop    ebx
  8adf3c:	8b e5                                           	mov    esp,ebp
  8adf3e:	5d                                              	pop    ebp
  8adf3f:	c2 0c 00                                        	ret    0xc
  8adf42:	d9 05 c8 f8 06 01                               	fld    DWORD PTR ds:0x106f8c8
  8adf48:	51                                              	push   ecx
  8adf49:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  8adf4d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8adf50:	50                                              	push   eax
  8adf51:	8d 8e 7c 18 00 00                               	lea    ecx,[esi+0x187c]
  8adf57:	f3 0f 11 54 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm2
  8adf5d:	e8 3e d3 ff ff                                  	call   0x8ab2a0
  8adf62:	5f                                              	pop    edi
  8adf63:	5e                                              	pop    esi
  8adf64:	5b                                              	pop    ebx
  8adf65:	8b e5                                           	mov    esp,ebp
  8adf67:	5d                                              	pop    ebp
  8adf68:	c2 0c 00                                        	ret    0xc
  8adf6b:	d9 7c 24 14                                     	fnstcw WORD PTR [esp+0x14]
  8adf6f:	0f b7 44 24 14                                  	movzx  eax,WORD PTR [esp+0x14]
  8adf74:	0d 00 0c 00 00                                  	or     eax,0xc00
  8adf79:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  8adf7d:	d9 6c 24 18                                     	fldcw  WORD PTR [esp+0x18]
  8adf81:	df 7c 24 18                                     	fistp  QWORD PTR [esp+0x18]
  8adf85:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  8adf89:	89 8e 3c 03 00 00                               	mov    DWORD PTR [esi+0x33c],ecx
  8adf8f:	d9 6c 24 14                                     	fldcw  WORD PTR [esp+0x14]
  8adf93:	5f                                              	pop    edi
  8adf94:	5e                                              	pop    esi
  8adf95:	5b                                              	pop    ebx
  8adf96:	8b e5                                           	mov    esp,ebp
  8adf98:	5d                                              	pop    ebp
  8adf99:	c2 0c 00                                        	ret    0xc
  8adf9c:	cc                                              	int3
  8adf9d:	cc                                              	int3
  8adf9e:	cc                                              	int3
  8adf9f:	cc                                              	int3
