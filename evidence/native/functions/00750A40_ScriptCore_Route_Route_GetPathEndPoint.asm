# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00750a40 (ScriptCore.Route::Route_GetPathEndPoint)
Paired Ghidra pseudocode: 00750A40_ScriptCore_Route_Route_GetPathEndPoint.c
Window: [0x00750a40, 0x00750af0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00750af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00750a40: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 1c 85
00750a50: c9 56 74 6c 8b 45 08 50 e8 53 aa ff ff 8b f0 85
00750a60: f6 74 5f 8b 16 8b 42 10 8b ce ff d0 8b 86 e0 00
00750a70: 00 00 8b 55 0c 8d 8e e0 00 00 00 3b c1 74 43 90
00750a80: 85 d2 74 09 8b 00 83 ea 01 3b c1 75 f3 3b c1 74
00750a90: 31 8b 40 08 85 c0 74 2a 8b 10 8b 92 34 01 00 00
00750aa0: 8d 4c 24 10 51 8b c8 ff d2 8b 4d 10 50 e8 4e b6
00750ab0: 01 00 8b 06 8b 50 14 8b ce ff d2 5e 8b e5 5d c3
00750ac0: 33 f6 d9 ee 8b 4d 10 83 ec 0c d9 54 24 08 d9 54
00750ad0: 24 04 d9 1c 24 e8 96 b4 01 00 85 f6 74 09 8b 06
00750ae0: 8b 50 14 8b ce ff d2 5e 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
00750a40 <.text+0x34fa40>:
  750a40:	55                                              	push   ebp
  750a41:	8b ec                                           	mov    ebp,esp
  750a43:	83 e4 f0                                        	and    esp,0xfffffff0
  750a46:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  750a4c:	83 ec 1c                                        	sub    esp,0x1c
  750a4f:	85 c9                                           	test   ecx,ecx
  750a51:	56                                              	push   esi
  750a52:	74 6c                                           	je     0x750ac0
  750a54:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  750a57:	50                                              	push   eax
  750a58:	e8 53 aa ff ff                                  	call   0x74b4b0
  750a5d:	8b f0                                           	mov    esi,eax
  750a5f:	85 f6                                           	test   esi,esi
  750a61:	74 5f                                           	je     0x750ac2
  750a63:	8b 16                                           	mov    edx,DWORD PTR [esi]
  750a65:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  750a68:	8b ce                                           	mov    ecx,esi
  750a6a:	ff d0                                           	call   eax
  750a6c:	8b 86 e0 00 00 00                               	mov    eax,DWORD PTR [esi+0xe0]
  750a72:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  750a75:	8d 8e e0 00 00 00                               	lea    ecx,[esi+0xe0]
  750a7b:	3b c1                                           	cmp    eax,ecx
  750a7d:	74 43                                           	je     0x750ac2
  750a7f:	90                                              	nop
  750a80:	85 d2                                           	test   edx,edx
  750a82:	74 09                                           	je     0x750a8d
  750a84:	8b 00                                           	mov    eax,DWORD PTR [eax]
  750a86:	83 ea 01                                        	sub    edx,0x1
  750a89:	3b c1                                           	cmp    eax,ecx
  750a8b:	75 f3                                           	jne    0x750a80
  750a8d:	3b c1                                           	cmp    eax,ecx
  750a8f:	74 31                                           	je     0x750ac2
  750a91:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  750a94:	85 c0                                           	test   eax,eax
  750a96:	74 2a                                           	je     0x750ac2
  750a98:	8b 10                                           	mov    edx,DWORD PTR [eax]
  750a9a:	8b 92 34 01 00 00                               	mov    edx,DWORD PTR [edx+0x134]
  750aa0:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  750aa4:	51                                              	push   ecx
  750aa5:	8b c8                                           	mov    ecx,eax
  750aa7:	ff d2                                           	call   edx
  750aa9:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  750aac:	50                                              	push   eax
  750aad:	e8 4e b6 01 00                                  	call   0x76c100
  750ab2:	8b 06                                           	mov    eax,DWORD PTR [esi]
  750ab4:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  750ab7:	8b ce                                           	mov    ecx,esi
  750ab9:	ff d2                                           	call   edx
  750abb:	5e                                              	pop    esi
  750abc:	8b e5                                           	mov    esp,ebp
  750abe:	5d                                              	pop    ebp
  750abf:	c3                                              	ret
  750ac0:	33 f6                                           	xor    esi,esi
  750ac2:	d9 ee                                           	fldz
  750ac4:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  750ac7:	83 ec 0c                                        	sub    esp,0xc
  750aca:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  750ace:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  750ad2:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  750ad5:	e8 96 b4 01 00                                  	call   0x76bf70
  750ada:	85 f6                                           	test   esi,esi
  750adc:	74 09                                           	je     0x750ae7
  750ade:	8b 06                                           	mov    eax,DWORD PTR [esi]
  750ae0:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  750ae3:	8b ce                                           	mov    ecx,esi
  750ae5:	ff d2                                           	call   edx
  750ae7:	5e                                              	pop    esi
  750ae8:	8b e5                                           	mov    esp,ebp
  750aea:	5d                                              	pop    ebp
  750aeb:	c3                                              	ret
  750aec:	cc                                              	int3
  750aed:	cc                                              	int3
  750aee:	cc                                              	int3
  750aef:	cc                                              	int3
