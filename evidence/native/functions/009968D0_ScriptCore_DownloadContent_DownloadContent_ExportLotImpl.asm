# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009968d0 (ScriptCore.DownloadContent::DownloadContent_ExportLotImpl)
Paired Ghidra pseudocode: 009968D0_ScriptCore_DownloadContent_DownloadContent_ExportLotImpl.c
Window: [0x009968d0, 0x00996a50) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x00996a50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009968d0: 83 ec 54 57 8b 7c 24 5c 85 ff 75 07 32 c0 5f 83
009968e0: c4 54 c3 56 e8 a7 2a dd ff 8b f0 85 f6 0f 84 c9
009968f0: 00 00 00 b8 54 8e 1c 01 c7 44 24 14 b0 a0 04 01
00996900: 89 44 24 08 89 44 24 0c c7 44 24 10 56 8e 1c 01
00996910: 8b 06 8b 50 58 57 8b ce ff d2 66 83 38 00 8b c8
00996920: 74 09 83 c1 02 66 83 39 00 75 f7 2b c8 d1 f9 8d
00996930: 0c 48 51 50 8d 4c 24 10 e8 23 24 a7 ff 68 80 a0
00996940: 04 01 6a 00 6a 00 8d 4c 24 3c e8 11 8b b4 ff d9
00996950: e8 83 44 24 3c 01 51 d9 1c 24 6a 01 8d 4c 24 38
00996960: e8 db 84 b4 ff 8b 44 24 64 85 c0 74 57 8d 54 24
00996970: 30 52 50 56 e8 37 e6 ff ff 83 c4 0c 84 c0 75 44
00996980: 8b 4c 24 34 85 c9 c7 44 24 30 00 6c fb 00 74 05
00996990: e8 6b 84 b4 ff 8b 4c 24 10 8b 44 24 08 2b c8 83
009969a0: e1 fe 83 f9 02 c7 44 24 30 04 aa fa 00 7e 0d 85
009969b0: c0 74 09 50 e8 27 db b4 ff 83 c4 04 5e 32 c0 5f
009969c0: 83 c4 54 c3 53 6a 00 6a 00 8d 4c 24 3c e8 de 88
009969d0: b4 ff 6a 01 8d 54 24 38 52 8d 4c 24 24 e8 fe 29
009969e0: e4 ff 8d 44 24 1c 50 8d 4c 24 10 51 e8 9f 0c 01
009969f0: 00 83 c4 08 8d 4c 24 1c 8a d8 e8 91 0f e4 ff 8b
00996a00: 4c 24 38 85 c9 c7 44 24 34 00 6c fb 00 74 05 e8
00996a10: ec 83 b4 ff 8b 54 24 14 8b 44 24 0c 2b d0 83 e2
00996a20: fe 83 fa 02 c7 44 24 34 04 aa fa 00 7e 0d 85 c0
00996a30: 74 09 50 e8 a8 da b4 ff 83 c4 04 8a c3 5b 5e 5f
00996a40: 83 c4 54 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
009968d0 <.text+0x5958d0>:
  9968d0:	83 ec 54                                        	sub    esp,0x54
  9968d3:	57                                              	push   edi
  9968d4:	8b 7c 24 5c                                     	mov    edi,DWORD PTR [esp+0x5c]
  9968d8:	85 ff                                           	test   edi,edi
  9968da:	75 07                                           	jne    0x9968e3
  9968dc:	32 c0                                           	xor    al,al
  9968de:	5f                                              	pop    edi
  9968df:	83 c4 54                                        	add    esp,0x54
  9968e2:	c3                                              	ret
  9968e3:	56                                              	push   esi
  9968e4:	e8 a7 2a dd ff                                  	call   0x769390
  9968e9:	8b f0                                           	mov    esi,eax
  9968eb:	85 f6                                           	test   esi,esi
  9968ed:	0f 84 c9 00 00 00                               	je     0x9969bc
  9968f3:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  9968f8:	c7 44 24 14 b0 a0 04 01                         	mov    DWORD PTR [esp+0x14],0x104a0b0
  996900:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  996904:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  996908:	c7 44 24 10 56 8e 1c 01                         	mov    DWORD PTR [esp+0x10],0x11c8e56
  996910:	8b 06                                           	mov    eax,DWORD PTR [esi]
  996912:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  996915:	57                                              	push   edi
  996916:	8b ce                                           	mov    ecx,esi
  996918:	ff d2                                           	call   edx
  99691a:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  99691e:	8b c8                                           	mov    ecx,eax
  996920:	74 09                                           	je     0x99692b
  996922:	83 c1 02                                        	add    ecx,0x2
  996925:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
  996929:	75 f7                                           	jne    0x996922
  99692b:	2b c8                                           	sub    ecx,eax
  99692d:	d1 f9                                           	sar    ecx,1
  99692f:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
  996932:	51                                              	push   ecx
  996933:	50                                              	push   eax
  996934:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  996938:	e8 23 24 a7 ff                                  	call   0x408d60
  99693d:	68 80 a0 04 01                                  	push   0x104a080
  996942:	6a 00                                           	push   0x0
  996944:	6a 00                                           	push   0x0
  996946:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  99694a:	e8 11 8b b4 ff                                  	call   0x4df460
  99694f:	d9 e8                                           	fld1
  996951:	83 44 24 3c 01                                  	add    DWORD PTR [esp+0x3c],0x1
  996956:	51                                              	push   ecx
  996957:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  99695a:	6a 01                                           	push   0x1
  99695c:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  996960:	e8 db 84 b4 ff                                  	call   0x4dee40
  996965:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  996969:	85 c0                                           	test   eax,eax
  99696b:	74 57                                           	je     0x9969c4
  99696d:	8d 54 24 30                                     	lea    edx,[esp+0x30]
  996971:	52                                              	push   edx
  996972:	50                                              	push   eax
  996973:	56                                              	push   esi
  996974:	e8 37 e6 ff ff                                  	call   0x994fb0
  996979:	83 c4 0c                                        	add    esp,0xc
  99697c:	84 c0                                           	test   al,al
  99697e:	75 44                                           	jne    0x9969c4
  996980:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  996984:	85 c9                                           	test   ecx,ecx
  996986:	c7 44 24 30 00 6c fb 00                         	mov    DWORD PTR [esp+0x30],0xfb6c00
  99698e:	74 05                                           	je     0x996995
  996990:	e8 6b 84 b4 ff                                  	call   0x4dee00
  996995:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  996999:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  99699d:	2b c8                                           	sub    ecx,eax
  99699f:	83 e1 fe                                        	and    ecx,0xfffffffe
  9969a2:	83 f9 02                                        	cmp    ecx,0x2
  9969a5:	c7 44 24 30 04 aa fa 00                         	mov    DWORD PTR [esp+0x30],0xfaaa04
  9969ad:	7e 0d                                           	jle    0x9969bc
  9969af:	85 c0                                           	test   eax,eax
  9969b1:	74 09                                           	je     0x9969bc
  9969b3:	50                                              	push   eax
  9969b4:	e8 27 db b4 ff                                  	call   0x4e44e0
  9969b9:	83 c4 04                                        	add    esp,0x4
  9969bc:	5e                                              	pop    esi
  9969bd:	32 c0                                           	xor    al,al
  9969bf:	5f                                              	pop    edi
  9969c0:	83 c4 54                                        	add    esp,0x54
  9969c3:	c3                                              	ret
  9969c4:	53                                              	push   ebx
  9969c5:	6a 00                                           	push   0x0
  9969c7:	6a 00                                           	push   0x0
  9969c9:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  9969cd:	e8 de 88 b4 ff                                  	call   0x4df2b0
  9969d2:	6a 01                                           	push   0x1
  9969d4:	8d 54 24 38                                     	lea    edx,[esp+0x38]
  9969d8:	52                                              	push   edx
  9969d9:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  9969dd:	e8 fe 29 e4 ff                                  	call   0x7d93e0
  9969e2:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  9969e6:	50                                              	push   eax
  9969e7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  9969eb:	51                                              	push   ecx
  9969ec:	e8 9f 0c 01 00                                  	call   0x9a7690
  9969f1:	83 c4 08                                        	add    esp,0x8
  9969f4:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  9969f8:	8a d8                                           	mov    bl,al
  9969fa:	e8 91 0f e4 ff                                  	call   0x7d7990
  9969ff:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  996a03:	85 c9                                           	test   ecx,ecx
  996a05:	c7 44 24 34 00 6c fb 00                         	mov    DWORD PTR [esp+0x34],0xfb6c00
  996a0d:	74 05                                           	je     0x996a14
  996a0f:	e8 ec 83 b4 ff                                  	call   0x4dee00
  996a14:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  996a18:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  996a1c:	2b d0                                           	sub    edx,eax
  996a1e:	83 e2 fe                                        	and    edx,0xfffffffe
  996a21:	83 fa 02                                        	cmp    edx,0x2
  996a24:	c7 44 24 34 04 aa fa 00                         	mov    DWORD PTR [esp+0x34],0xfaaa04
  996a2c:	7e 0d                                           	jle    0x996a3b
  996a2e:	85 c0                                           	test   eax,eax
  996a30:	74 09                                           	je     0x996a3b
  996a32:	50                                              	push   eax
  996a33:	e8 a8 da b4 ff                                  	call   0x4e44e0
  996a38:	83 c4 04                                        	add    esp,0x4
  996a3b:	8a c3                                           	mov    al,bl
  996a3d:	5b                                              	pop    ebx
  996a3e:	5e                                              	pop    esi
  996a3f:	5f                                              	pop    edi
  996a40:	83 c4 54                                        	add    esp,0x54
  996a43:	c3                                              	ret
  996a44:	cc                                              	int3
  996a45:	cc                                              	int3
  996a46:	cc                                              	int3
  996a47:	cc                                              	int3
  996a48:	cc                                              	int3
  996a49:	cc                                              	int3
  996a4a:	cc                                              	int3
  996a4b:	cc                                              	int3
  996a4c:	cc                                              	int3
  996a4d:	cc                                              	int3
  996a4e:	cc                                              	int3
  996a4f:	cc                                              	int3
