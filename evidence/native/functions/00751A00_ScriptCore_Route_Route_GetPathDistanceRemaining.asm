# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00751a00 (ScriptCore.Route::Route_GetPathDistanceRemaining)
Paired Ghidra pseudocode: 00751A00_ScriptCore_Route_Route_GetPathDistanceRemaining.c
Window: [0x00751a00, 0x00751b10) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x00751b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00751a00: 8b 44 24 04 8b 0d c4 50 1d 01 83 ec 08 56 57 50
00751a10: e8 9b 9a ff ff 8b f0 85 f6 0f 84 e0 00 00 00 8b
00751a20: 16 8b 42 10 8b ce ff d0 8b 86 e0 00 00 00 8b 54
00751a30: 24 18 8d 8e e0 00 00 00 3b c1 0f 84 b6 00 00 00
00751a40: 85 d2 74 09 8b 00 83 ea 01 3b c1 75 f3 3b c1 0f
00751a50: 84 a1 00 00 00 8b 78 08 85 ff 0f 84 96 00 00 00
00751a60: 0f 57 c0 6a 00 68 00 20 00 00 6a 00 8d 8e 58 01
00751a70: 00 00 f3 0f 11 44 24 14 e8 63 aa 0c 00 84 c0 74
00751a80: 15 8b 46 3c 25 7f cf 00 00 50 e8 a1 5f 0f 00 d9
00751a90: 5c 24 0c 83 c4 04 8b 17 8b 82 2c 01 00 00 8b cf
00751aa0: ff d0 d9 5c 24 0c 8b 17 8b 82 a4 00 00 00 6a 00
00751ab0: 6a 00 8b cf ff d0 d8 6c 24 0c 0f 57 c0 8d 44 24
00751ac0: 0c d8 64 24 08 f3 0f 11 44 24 08 d9 54 24 0c d9
00751ad0: ee d9 c9 df f1 dd d8 77 04 8d 44 24 08 d9 00 8b
00751ae0: 16 8b 42 14 d9 5c 24 0c 8b ce ff d0 d9 44 24 0c
00751af0: 5f 5e 83 c4 08 c3 8b 16 8b 42 14 8b ce ff d0 d9
00751b00: ee 5f 5e 83 c4 08 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00751a00 <.text+0x350a00>:
  751a00:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  751a04:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  751a0a:	83 ec 08                                        	sub    esp,0x8
  751a0d:	56                                              	push   esi
  751a0e:	57                                              	push   edi
  751a0f:	50                                              	push   eax
  751a10:	e8 9b 9a ff ff                                  	call   0x74b4b0
  751a15:	8b f0                                           	mov    esi,eax
  751a17:	85 f6                                           	test   esi,esi
  751a19:	0f 84 e0 00 00 00                               	je     0x751aff
  751a1f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  751a21:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  751a24:	8b ce                                           	mov    ecx,esi
  751a26:	ff d0                                           	call   eax
  751a28:	8b 86 e0 00 00 00                               	mov    eax,DWORD PTR [esi+0xe0]
  751a2e:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  751a32:	8d 8e e0 00 00 00                               	lea    ecx,[esi+0xe0]
  751a38:	3b c1                                           	cmp    eax,ecx
  751a3a:	0f 84 b6 00 00 00                               	je     0x751af6
  751a40:	85 d2                                           	test   edx,edx
  751a42:	74 09                                           	je     0x751a4d
  751a44:	8b 00                                           	mov    eax,DWORD PTR [eax]
  751a46:	83 ea 01                                        	sub    edx,0x1
  751a49:	3b c1                                           	cmp    eax,ecx
  751a4b:	75 f3                                           	jne    0x751a40
  751a4d:	3b c1                                           	cmp    eax,ecx
  751a4f:	0f 84 a1 00 00 00                               	je     0x751af6
  751a55:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  751a58:	85 ff                                           	test   edi,edi
  751a5a:	0f 84 96 00 00 00                               	je     0x751af6
  751a60:	0f 57 c0                                        	xorps  xmm0,xmm0
  751a63:	6a 00                                           	push   0x0
  751a65:	68 00 20 00 00                                  	push   0x2000
  751a6a:	6a 00                                           	push   0x0
  751a6c:	8d 8e 58 01 00 00                               	lea    ecx,[esi+0x158]
  751a72:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  751a78:	e8 63 aa 0c 00                                  	call   0x81c4e0
  751a7d:	84 c0                                           	test   al,al
  751a7f:	74 15                                           	je     0x751a96
  751a81:	8b 46 3c                                        	mov    eax,DWORD PTR [esi+0x3c]
  751a84:	25 7f cf 00 00                                  	and    eax,0xcf7f
  751a89:	50                                              	push   eax
  751a8a:	e8 a1 5f 0f 00                                  	call   0x847a30
  751a8f:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  751a93:	83 c4 04                                        	add    esp,0x4
  751a96:	8b 17                                           	mov    edx,DWORD PTR [edi]
  751a98:	8b 82 2c 01 00 00                               	mov    eax,DWORD PTR [edx+0x12c]
  751a9e:	8b cf                                           	mov    ecx,edi
  751aa0:	ff d0                                           	call   eax
  751aa2:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  751aa6:	8b 17                                           	mov    edx,DWORD PTR [edi]
  751aa8:	8b 82 a4 00 00 00                               	mov    eax,DWORD PTR [edx+0xa4]
  751aae:	6a 00                                           	push   0x0
  751ab0:	6a 00                                           	push   0x0
  751ab2:	8b cf                                           	mov    ecx,edi
  751ab4:	ff d0                                           	call   eax
  751ab6:	d8 6c 24 0c                                     	fsubr  DWORD PTR [esp+0xc]
  751aba:	0f 57 c0                                        	xorps  xmm0,xmm0
  751abd:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  751ac1:	d8 64 24 08                                     	fsub   DWORD PTR [esp+0x8]
  751ac5:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  751acb:	d9 54 24 0c                                     	fst    DWORD PTR [esp+0xc]
  751acf:	d9 ee                                           	fldz
  751ad1:	d9 c9                                           	fxch   st(1)
  751ad3:	df f1                                           	fcomip st,st(1)
  751ad5:	dd d8                                           	fstp   st(0)
  751ad7:	77 04                                           	ja     0x751add
  751ad9:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  751add:	d9 00                                           	fld    DWORD PTR [eax]
  751adf:	8b 16                                           	mov    edx,DWORD PTR [esi]
  751ae1:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  751ae4:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  751ae8:	8b ce                                           	mov    ecx,esi
  751aea:	ff d0                                           	call   eax
  751aec:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  751af0:	5f                                              	pop    edi
  751af1:	5e                                              	pop    esi
  751af2:	83 c4 08                                        	add    esp,0x8
  751af5:	c3                                              	ret
  751af6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  751af8:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  751afb:	8b ce                                           	mov    ecx,esi
  751afd:	ff d0                                           	call   eax
  751aff:	d9 ee                                           	fldz
  751b01:	5f                                              	pop    edi
  751b02:	5e                                              	pop    esi
  751b03:	83 c4 08                                        	add    esp,0x8
  751b06:	c3                                              	ret
  751b07:	cc                                              	int3
  751b08:	cc                                              	int3
  751b09:	cc                                              	int3
  751b0a:	cc                                              	int3
  751b0b:	cc                                              	int3
  751b0c:	cc                                              	int3
  751b0d:	cc                                              	int3
  751b0e:	cc                                              	int3
  751b0f:	cc                                              	int3
