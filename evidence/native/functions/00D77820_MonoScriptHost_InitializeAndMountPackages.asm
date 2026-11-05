# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d77820 (MonoScriptHost_InitializeAndMountPackages)
Paired Ghidra pseudocode: 00D77820_MonoScriptHost_InitializeAndMountPackages.c
Window: [0x00d77820, 0x00d77b40) (800 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d77b40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d77820: 8b 44 24 04 57 8b f9 a3 c8 5b 1d 01 e8 8f 30 02
00d77830: 00 e8 2a 70 0c 00 6a 00 6a 00 6a 00 6a 00 6a 00
00d77840: 68 e8 c4 08 01 68 18 05 00 00 e8 c1 b1 00 00 83
00d77850: c4 1c 85 c0 74 15 6a 00 6a 00 6a 00 6a 00 6a 00
00d77860: 6a 00 8b c8 e8 87 e7 76 ff eb 02 33 c0 8d 8f 68
00d77870: 0b 00 00 51 68 80 77 d7 00 8b c8 89 87 64 0b 00
00d77880: 00 e8 da d1 76 ff 6a 00 68 c0 c4 08 01 e8 4e 38
00d77890: 81 ff 83 c4 08 85 c0 89 44 24 08 75 13 8d 54 24
00d778a0: 08 6a 04 52 e8 07 31 78 ff 8b 44 24 10 83 c4 08
00d778b0: 50 8d 8f 28 0c 00 00 e8 c4 32 78 ff 8b 44 24 08
00d778c0: 50 8d 8f f0 15 00 00 e8 24 31 78 ff 33 c9 8d 97
00d778d0: 08 0c 00 00 87 0a 33 c0 8d 8f 20 0a 00 00 87 01
00d778e0: 6a 00 68 8c c4 08 01 e8 a4 33 81 ff 83 c4 08 f7
00d778f0: d8 1b c0 83 c0 01 8d 97 24 0a 00 00 87 02 8b 44
00d77900: 24 0c 6a 00 50 8b cf e8 24 1e 9f ff 84 c0 75 0f
00d77910: 8b 17 8b 42 2c 8b cf ff d0 32 c0 5f c2 10 00 b9
00d77920: e0 ed 1c 01 e8 d7 d8 81 ff 84 c0 74 22 8d 4f f8
00d77930: e8 7b e2 ff ff 84 c0 75 16 8b 44 24 10 85 c0 74
00d77940: 0e 8b 4c 24 14 51 ff d0 83 c4 04 84 c0 75 c1 56
00d77950: e8 4b 1a 9f ff 8b f0 85 f6 0f 84 13 01 00 00 53
00d77960: 8d 5f f8 85 db 74 05 8d 47 fc eb 02 33 c0 8b 16
00d77970: 6a 00 6a 00 68 f0 90 02 03 50 8b 42 24 8b ce ff
00d77980: d0 85 db 74 05 8d 47 fc eb 02 33 c0 8b 16 6a 00
00d77990: 6a 00 68 a1 f7 88 d4 50 8b 42 24 8b ce ff d0 85
00d779a0: db 74 05 8d 47 fc eb 02 33 c0 8b 16 6a 00 6a 00
00d779b0: 68 0e 3c 8e 03 50 8b 42 24 8b ce ff d0 85 db 74
00d779c0: 05 8d 47 fc eb 02 33 c0 8b 16 6a 00 6a 00 68 1e
00d779d0: 3c 8e 03 50 8b 42 24 8b ce ff d0 85 db 74 05 8d
00d779e0: 47 fc eb 02 33 c0 8b 16 6a 00 6a 00 68 98 ab 10
00d779f0: 05 50 8b 42 24 8b ce ff d0 85 db 74 05 8d 47 fc
00d77a00: eb 02 33 c0 8b 16 6a 00 6a 00 68 1b 4f de 06 50
00d77a10: 8b 42 24 8b ce ff d0 85 db 74 05 8d 47 fc eb 02
00d77a20: 33 c0 8b 16 6a 00 6a 00 68 75 da f1 07 50 8b 42
00d77a30: 24 8b ce ff d0 85 db 74 05 8d 47 fc eb 02 33 c0
00d77a40: 8b 16 6a 00 6a 00 68 20 4b 9e 03 50 8b 42 24 8b
00d77a50: ce ff d0 85 db 5b 74 05 8d 47 fc eb 02 33 c0 8b
00d77a60: 16 6a 00 6a 00 68 4a b4 c0 12 50 8b 42 24 8b ce
00d77a70: ff d0 e8 79 4a 6d ff 8d 4f f8 85 c9 5e 74 05 8d
00d77a80: 4f fc eb 02 33 c9 8b 10 6a 00 6a 00 68 f0 90 02
00d77a90: 03 51 8b c8 8b 42 24 ff d0 6a 00 6a 00 6a 00 6a
00d77aa0: 00 68 60 c4 08 01 6a 04 e8 53 ca 76 ff 83 c4 18
00d77ab0: 85 c0 74 09 8b c8 e8 35 c3 00 00 eb 02 33 c0 8b
00d77ac0: 17 50 8b 42 48 8b cf ff d0 6a 00 6a 00 6a 00 6a
00d77ad0: 00 68 38 c4 08 01 6a 04 e8 23 ca 76 ff 83 c4 18
00d77ae0: 85 c0 74 09 8b c8 e8 d5 ba 00 00 eb 02 33 c0 8b
00d77af0: 17 50 8b 42 48 8b cf ff d0 6a 00 6a 00 6a 00 6a
00d77b00: 00 68 10 c4 08 01 6a 04 e8 f3 c9 76 ff 83 c4 18
00d77b10: 85 c0 74 17 8b c8 e8 55 b4 00 00 8b 17 50 8b 42
00d77b20: 48 8b cf ff d0 b0 01 5f c2 10 00 8b 17 33 c0 50
00d77b30: 8b 42 48 8b cf ff d0 b0 01 5f c2 10 00 cc cc cc

LINEAR DISASSEMBLY
00d77820 <.text+0x976820>:
  d77820:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  d77824:	57                                              	push   edi
  d77825:	8b f9                                           	mov    edi,ecx
  d77827:	a3 c8 5b 1d 01                                  	mov    ds:0x11d5bc8,eax
  d7782c:	e8 8f 30 02 00                                  	call   0xd9a8c0
  d77831:	e8 2a 70 0c 00                                  	call   0xe3e860
  d77836:	6a 00                                           	push   0x0
  d77838:	6a 00                                           	push   0x0
  d7783a:	6a 00                                           	push   0x0
  d7783c:	6a 00                                           	push   0x0
  d7783e:	6a 00                                           	push   0x0
  d77840:	68 e8 c4 08 01                                  	push   0x108c4e8
  d77845:	68 18 05 00 00                                  	push   0x518
  d7784a:	e8 c1 b1 00 00                                  	call   0xd82a10
  d7784f:	83 c4 1c                                        	add    esp,0x1c
  d77852:	85 c0                                           	test   eax,eax
  d77854:	74 15                                           	je     0xd7786b
  d77856:	6a 00                                           	push   0x0
  d77858:	6a 00                                           	push   0x0
  d7785a:	6a 00                                           	push   0x0
  d7785c:	6a 00                                           	push   0x0
  d7785e:	6a 00                                           	push   0x0
  d77860:	6a 00                                           	push   0x0
  d77862:	8b c8                                           	mov    ecx,eax
  d77864:	e8 87 e7 76 ff                                  	call   0x4e5ff0
  d77869:	eb 02                                           	jmp    0xd7786d
  d7786b:	33 c0                                           	xor    eax,eax
  d7786d:	8d 8f 68 0b 00 00                               	lea    ecx,[edi+0xb68]
  d77873:	51                                              	push   ecx
  d77874:	68 80 77 d7 00                                  	push   0xd77780
  d77879:	8b c8                                           	mov    ecx,eax
  d7787b:	89 87 64 0b 00 00                               	mov    DWORD PTR [edi+0xb64],eax
  d77881:	e8 da d1 76 ff                                  	call   0x4e4a60
  d77886:	6a 00                                           	push   0x0
  d77888:	68 c0 c4 08 01                                  	push   0x108c4c0
  d7788d:	e8 4e 38 81 ff                                  	call   0x58b0e0
  d77892:	83 c4 08                                        	add    esp,0x8
  d77895:	85 c0                                           	test   eax,eax
  d77897:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  d7789b:	75 13                                           	jne    0xd778b0
  d7789d:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  d778a1:	6a 04                                           	push   0x4
  d778a3:	52                                              	push   edx
  d778a4:	e8 07 31 78 ff                                  	call   0x4fa9b0
  d778a9:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d778ad:	83 c4 08                                        	add    esp,0x8
  d778b0:	50                                              	push   eax
  d778b1:	8d 8f 28 0c 00 00                               	lea    ecx,[edi+0xc28]
  d778b7:	e8 c4 32 78 ff                                  	call   0x4fab80
  d778bc:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  d778c0:	50                                              	push   eax
  d778c1:	8d 8f f0 15 00 00                               	lea    ecx,[edi+0x15f0]
  d778c7:	e8 24 31 78 ff                                  	call   0x4fa9f0
  d778cc:	33 c9                                           	xor    ecx,ecx
  d778ce:	8d 97 08 0c 00 00                               	lea    edx,[edi+0xc08]
  d778d4:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  d778d6:	33 c0                                           	xor    eax,eax
  d778d8:	8d 8f 20 0a 00 00                               	lea    ecx,[edi+0xa20]
  d778de:	87 01                                           	xchg   DWORD PTR [ecx],eax
  d778e0:	6a 00                                           	push   0x0
  d778e2:	68 8c c4 08 01                                  	push   0x108c48c
  d778e7:	e8 a4 33 81 ff                                  	call   0x58ac90
  d778ec:	83 c4 08                                        	add    esp,0x8
  d778ef:	f7 d8                                           	neg    eax
  d778f1:	1b c0                                           	sbb    eax,eax
  d778f3:	83 c0 01                                        	add    eax,0x1
  d778f6:	8d 97 24 0a 00 00                               	lea    edx,[edi+0xa24]
  d778fc:	87 02                                           	xchg   DWORD PTR [edx],eax
  d778fe:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  d77902:	6a 00                                           	push   0x0
  d77904:	50                                              	push   eax
  d77905:	8b cf                                           	mov    ecx,edi
  d77907:	e8 24 1e 9f ff                                  	call   0x769730
  d7790c:	84 c0                                           	test   al,al
  d7790e:	75 0f                                           	jne    0xd7791f
  d77910:	8b 17                                           	mov    edx,DWORD PTR [edi]
  d77912:	8b 42 2c                                        	mov    eax,DWORD PTR [edx+0x2c]
  d77915:	8b cf                                           	mov    ecx,edi
  d77917:	ff d0                                           	call   eax
  d77919:	32 c0                                           	xor    al,al
  d7791b:	5f                                              	pop    edi
  d7791c:	c2 10 00                                        	ret    0x10
  d7791f:	b9 e0 ed 1c 01                                  	mov    ecx,0x11cede0
  d77924:	e8 d7 d8 81 ff                                  	call   0x595200
  d77929:	84 c0                                           	test   al,al
  d7792b:	74 22                                           	je     0xd7794f
  d7792d:	8d 4f f8                                        	lea    ecx,[edi-0x8]
  d77930:	e8 7b e2 ff ff                                  	call   0xd75bb0
  d77935:	84 c0                                           	test   al,al
  d77937:	75 16                                           	jne    0xd7794f
  d77939:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  d7793d:	85 c0                                           	test   eax,eax
  d7793f:	74 0e                                           	je     0xd7794f
  d77941:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  d77945:	51                                              	push   ecx
  d77946:	ff d0                                           	call   eax
  d77948:	83 c4 04                                        	add    esp,0x4
  d7794b:	84 c0                                           	test   al,al
  d7794d:	75 c1                                           	jne    0xd77910
  d7794f:	56                                              	push   esi
  d77950:	e8 4b 1a 9f ff                                  	call   0x7693a0
  d77955:	8b f0                                           	mov    esi,eax
  d77957:	85 f6                                           	test   esi,esi
  d77959:	0f 84 13 01 00 00                               	je     0xd77a72
  d7795f:	53                                              	push   ebx
  d77960:	8d 5f f8                                        	lea    ebx,[edi-0x8]
  d77963:	85 db                                           	test   ebx,ebx
  d77965:	74 05                                           	je     0xd7796c
  d77967:	8d 47 fc                                        	lea    eax,[edi-0x4]
  d7796a:	eb 02                                           	jmp    0xd7796e
  d7796c:	33 c0                                           	xor    eax,eax
  d7796e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d77970:	6a 00                                           	push   0x0
  d77972:	6a 00                                           	push   0x0
  d77974:	68 f0 90 02 03                                  	push   0x30290f0
  d77979:	50                                              	push   eax
  d7797a:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  d7797d:	8b ce                                           	mov    ecx,esi
  d7797f:	ff d0                                           	call   eax
  d77981:	85 db                                           	test   ebx,ebx
  d77983:	74 05                                           	je     0xd7798a
  d77985:	8d 47 fc                                        	lea    eax,[edi-0x4]
  d77988:	eb 02                                           	jmp    0xd7798c
  d7798a:	33 c0                                           	xor    eax,eax
  d7798c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d7798e:	6a 00                                           	push   0x0
  d77990:	6a 00                                           	push   0x0
  d77992:	68 a1 f7 88 d4                                  	push   0xd488f7a1
  d77997:	50                                              	push   eax
  d77998:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  d7799b:	8b ce                                           	mov    ecx,esi
  d7799d:	ff d0                                           	call   eax
  d7799f:	85 db                                           	test   ebx,ebx
  d779a1:	74 05                                           	je     0xd779a8
  d779a3:	8d 47 fc                                        	lea    eax,[edi-0x4]
  d779a6:	eb 02                                           	jmp    0xd779aa
  d779a8:	33 c0                                           	xor    eax,eax
  d779aa:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d779ac:	6a 00                                           	push   0x0
  d779ae:	6a 00                                           	push   0x0
  d779b0:	68 0e 3c 8e 03                                  	push   0x38e3c0e
  d779b5:	50                                              	push   eax
  d779b6:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  d779b9:	8b ce                                           	mov    ecx,esi
  d779bb:	ff d0                                           	call   eax
  d779bd:	85 db                                           	test   ebx,ebx
  d779bf:	74 05                                           	je     0xd779c6
  d779c1:	8d 47 fc                                        	lea    eax,[edi-0x4]
  d779c4:	eb 02                                           	jmp    0xd779c8
  d779c6:	33 c0                                           	xor    eax,eax
  d779c8:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d779ca:	6a 00                                           	push   0x0
  d779cc:	6a 00                                           	push   0x0
  d779ce:	68 1e 3c 8e 03                                  	push   0x38e3c1e
  d779d3:	50                                              	push   eax
  d779d4:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  d779d7:	8b ce                                           	mov    ecx,esi
  d779d9:	ff d0                                           	call   eax
  d779db:	85 db                                           	test   ebx,ebx
  d779dd:	74 05                                           	je     0xd779e4
  d779df:	8d 47 fc                                        	lea    eax,[edi-0x4]
  d779e2:	eb 02                                           	jmp    0xd779e6
  d779e4:	33 c0                                           	xor    eax,eax
  d779e6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d779e8:	6a 00                                           	push   0x0
  d779ea:	6a 00                                           	push   0x0
  d779ec:	68 98 ab 10 05                                  	push   0x510ab98
  d779f1:	50                                              	push   eax
  d779f2:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  d779f5:	8b ce                                           	mov    ecx,esi
  d779f7:	ff d0                                           	call   eax
  d779f9:	85 db                                           	test   ebx,ebx
  d779fb:	74 05                                           	je     0xd77a02
  d779fd:	8d 47 fc                                        	lea    eax,[edi-0x4]
  d77a00:	eb 02                                           	jmp    0xd77a04
  d77a02:	33 c0                                           	xor    eax,eax
  d77a04:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d77a06:	6a 00                                           	push   0x0
  d77a08:	6a 00                                           	push   0x0
  d77a0a:	68 1b 4f de 06                                  	push   0x6de4f1b
  d77a0f:	50                                              	push   eax
  d77a10:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  d77a13:	8b ce                                           	mov    ecx,esi
  d77a15:	ff d0                                           	call   eax
  d77a17:	85 db                                           	test   ebx,ebx
  d77a19:	74 05                                           	je     0xd77a20
  d77a1b:	8d 47 fc                                        	lea    eax,[edi-0x4]
  d77a1e:	eb 02                                           	jmp    0xd77a22
  d77a20:	33 c0                                           	xor    eax,eax
  d77a22:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d77a24:	6a 00                                           	push   0x0
  d77a26:	6a 00                                           	push   0x0
  d77a28:	68 75 da f1 07                                  	push   0x7f1da75
  d77a2d:	50                                              	push   eax
  d77a2e:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  d77a31:	8b ce                                           	mov    ecx,esi
  d77a33:	ff d0                                           	call   eax
  d77a35:	85 db                                           	test   ebx,ebx
  d77a37:	74 05                                           	je     0xd77a3e
  d77a39:	8d 47 fc                                        	lea    eax,[edi-0x4]
  d77a3c:	eb 02                                           	jmp    0xd77a40
  d77a3e:	33 c0                                           	xor    eax,eax
  d77a40:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d77a42:	6a 00                                           	push   0x0
  d77a44:	6a 00                                           	push   0x0
  d77a46:	68 20 4b 9e 03                                  	push   0x39e4b20
  d77a4b:	50                                              	push   eax
  d77a4c:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  d77a4f:	8b ce                                           	mov    ecx,esi
  d77a51:	ff d0                                           	call   eax
  d77a53:	85 db                                           	test   ebx,ebx
  d77a55:	5b                                              	pop    ebx
  d77a56:	74 05                                           	je     0xd77a5d
  d77a58:	8d 47 fc                                        	lea    eax,[edi-0x4]
  d77a5b:	eb 02                                           	jmp    0xd77a5f
  d77a5d:	33 c0                                           	xor    eax,eax
  d77a5f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d77a61:	6a 00                                           	push   0x0
  d77a63:	6a 00                                           	push   0x0
  d77a65:	68 4a b4 c0 12                                  	push   0x12c0b44a
  d77a6a:	50                                              	push   eax
  d77a6b:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  d77a6e:	8b ce                                           	mov    ecx,esi
  d77a70:	ff d0                                           	call   eax
  d77a72:	e8 79 4a 6d ff                                  	call   0x44c4f0
  d77a77:	8d 4f f8                                        	lea    ecx,[edi-0x8]
  d77a7a:	85 c9                                           	test   ecx,ecx
  d77a7c:	5e                                              	pop    esi
  d77a7d:	74 05                                           	je     0xd77a84
  d77a7f:	8d 4f fc                                        	lea    ecx,[edi-0x4]
  d77a82:	eb 02                                           	jmp    0xd77a86
  d77a84:	33 c9                                           	xor    ecx,ecx
  d77a86:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d77a88:	6a 00                                           	push   0x0
  d77a8a:	6a 00                                           	push   0x0
  d77a8c:	68 f0 90 02 03                                  	push   0x30290f0
  d77a91:	51                                              	push   ecx
  d77a92:	8b c8                                           	mov    ecx,eax
  d77a94:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  d77a97:	ff d0                                           	call   eax
  d77a99:	6a 00                                           	push   0x0
  d77a9b:	6a 00                                           	push   0x0
  d77a9d:	6a 00                                           	push   0x0
  d77a9f:	6a 00                                           	push   0x0
  d77aa1:	68 60 c4 08 01                                  	push   0x108c460
  d77aa6:	6a 04                                           	push   0x4
  d77aa8:	e8 53 ca 76 ff                                  	call   0x4e4500
  d77aad:	83 c4 18                                        	add    esp,0x18
  d77ab0:	85 c0                                           	test   eax,eax
  d77ab2:	74 09                                           	je     0xd77abd
  d77ab4:	8b c8                                           	mov    ecx,eax
  d77ab6:	e8 35 c3 00 00                                  	call   0xd83df0
  d77abb:	eb 02                                           	jmp    0xd77abf
  d77abd:	33 c0                                           	xor    eax,eax
  d77abf:	8b 17                                           	mov    edx,DWORD PTR [edi]
  d77ac1:	50                                              	push   eax
  d77ac2:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  d77ac5:	8b cf                                           	mov    ecx,edi
  d77ac7:	ff d0                                           	call   eax
  d77ac9:	6a 00                                           	push   0x0
  d77acb:	6a 00                                           	push   0x0
  d77acd:	6a 00                                           	push   0x0
  d77acf:	6a 00                                           	push   0x0
  d77ad1:	68 38 c4 08 01                                  	push   0x108c438
  d77ad6:	6a 04                                           	push   0x4
  d77ad8:	e8 23 ca 76 ff                                  	call   0x4e4500
  d77add:	83 c4 18                                        	add    esp,0x18
  d77ae0:	85 c0                                           	test   eax,eax
  d77ae2:	74 09                                           	je     0xd77aed
  d77ae4:	8b c8                                           	mov    ecx,eax
  d77ae6:	e8 d5 ba 00 00                                  	call   0xd835c0
  d77aeb:	eb 02                                           	jmp    0xd77aef
  d77aed:	33 c0                                           	xor    eax,eax
  d77aef:	8b 17                                           	mov    edx,DWORD PTR [edi]
  d77af1:	50                                              	push   eax
  d77af2:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  d77af5:	8b cf                                           	mov    ecx,edi
  d77af7:	ff d0                                           	call   eax
  d77af9:	6a 00                                           	push   0x0
  d77afb:	6a 00                                           	push   0x0
  d77afd:	6a 00                                           	push   0x0
  d77aff:	6a 00                                           	push   0x0
  d77b01:	68 10 c4 08 01                                  	push   0x108c410
  d77b06:	6a 04                                           	push   0x4
  d77b08:	e8 f3 c9 76 ff                                  	call   0x4e4500
  d77b0d:	83 c4 18                                        	add    esp,0x18
  d77b10:	85 c0                                           	test   eax,eax
  d77b12:	74 17                                           	je     0xd77b2b
  d77b14:	8b c8                                           	mov    ecx,eax
  d77b16:	e8 55 b4 00 00                                  	call   0xd82f70
  d77b1b:	8b 17                                           	mov    edx,DWORD PTR [edi]
  d77b1d:	50                                              	push   eax
  d77b1e:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  d77b21:	8b cf                                           	mov    ecx,edi
  d77b23:	ff d0                                           	call   eax
  d77b25:	b0 01                                           	mov    al,0x1
  d77b27:	5f                                              	pop    edi
  d77b28:	c2 10 00                                        	ret    0x10
  d77b2b:	8b 17                                           	mov    edx,DWORD PTR [edi]
  d77b2d:	33 c0                                           	xor    eax,eax
  d77b2f:	50                                              	push   eax
  d77b30:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  d77b33:	8b cf                                           	mov    ecx,edi
  d77b35:	ff d0                                           	call   eax
  d77b37:	b0 01                                           	mov    al,0x1
  d77b39:	5f                                              	pop    edi
  d77b3a:	c2 10 00                                        	ret    0x10
  d77b3d:	cc                                              	int3
  d77b3e:	cc                                              	int3
  d77b3f:	cc                                              	int3
