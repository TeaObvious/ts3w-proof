# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00750990 (ScriptCore.Route::Route_GetPathStartPoint)
Paired Ghidra pseudocode: 00750990_ScriptCore_Route_Route_GetPathStartPoint.c
Window: [0x00750990, 0x00750a40) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00750a40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00750990: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 1c 85
007509a0: c9 56 74 6c 8b 45 08 50 e8 03 ab ff ff 8b f0 85
007509b0: f6 74 5f 8b 16 8b 42 10 8b ce ff d0 8b 86 e0 00
007509c0: 00 00 8b 55 0c 8d 8e e0 00 00 00 3b c1 74 43 90
007509d0: 85 d2 74 09 8b 00 83 ea 01 3b c1 75 f3 3b c1 74
007509e0: 31 8b 40 08 85 c0 74 2a 8b 10 8b 92 38 01 00 00
007509f0: 8d 4c 24 10 51 8b c8 ff d2 8b 4d 10 50 e8 fe b6
00750a00: 01 00 8b 06 8b 50 14 8b ce ff d2 5e 8b e5 5d c3
00750a10: 33 f6 d9 ee 8b 4d 10 83 ec 0c d9 54 24 08 d9 54
00750a20: 24 04 d9 1c 24 e8 46 b5 01 00 85 f6 74 09 8b 06
00750a30: 8b 50 14 8b ce ff d2 5e 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
00750990 <.text+0x34f990>:
  750990:	55                                              	push   ebp
  750991:	8b ec                                           	mov    ebp,esp
  750993:	83 e4 f0                                        	and    esp,0xfffffff0
  750996:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75099c:	83 ec 1c                                        	sub    esp,0x1c
  75099f:	85 c9                                           	test   ecx,ecx
  7509a1:	56                                              	push   esi
  7509a2:	74 6c                                           	je     0x750a10
  7509a4:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  7509a7:	50                                              	push   eax
  7509a8:	e8 03 ab ff ff                                  	call   0x74b4b0
  7509ad:	8b f0                                           	mov    esi,eax
  7509af:	85 f6                                           	test   esi,esi
  7509b1:	74 5f                                           	je     0x750a12
  7509b3:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7509b5:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  7509b8:	8b ce                                           	mov    ecx,esi
  7509ba:	ff d0                                           	call   eax
  7509bc:	8b 86 e0 00 00 00                               	mov    eax,DWORD PTR [esi+0xe0]
  7509c2:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  7509c5:	8d 8e e0 00 00 00                               	lea    ecx,[esi+0xe0]
  7509cb:	3b c1                                           	cmp    eax,ecx
  7509cd:	74 43                                           	je     0x750a12
  7509cf:	90                                              	nop
  7509d0:	85 d2                                           	test   edx,edx
  7509d2:	74 09                                           	je     0x7509dd
  7509d4:	8b 00                                           	mov    eax,DWORD PTR [eax]
  7509d6:	83 ea 01                                        	sub    edx,0x1
  7509d9:	3b c1                                           	cmp    eax,ecx
  7509db:	75 f3                                           	jne    0x7509d0
  7509dd:	3b c1                                           	cmp    eax,ecx
  7509df:	74 31                                           	je     0x750a12
  7509e1:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  7509e4:	85 c0                                           	test   eax,eax
  7509e6:	74 2a                                           	je     0x750a12
  7509e8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7509ea:	8b 92 38 01 00 00                               	mov    edx,DWORD PTR [edx+0x138]
  7509f0:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7509f4:	51                                              	push   ecx
  7509f5:	8b c8                                           	mov    ecx,eax
  7509f7:	ff d2                                           	call   edx
  7509f9:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  7509fc:	50                                              	push   eax
  7509fd:	e8 fe b6 01 00                                  	call   0x76c100
  750a02:	8b 06                                           	mov    eax,DWORD PTR [esi]
  750a04:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  750a07:	8b ce                                           	mov    ecx,esi
  750a09:	ff d2                                           	call   edx
  750a0b:	5e                                              	pop    esi
  750a0c:	8b e5                                           	mov    esp,ebp
  750a0e:	5d                                              	pop    ebp
  750a0f:	c3                                              	ret
  750a10:	33 f6                                           	xor    esi,esi
  750a12:	d9 ee                                           	fldz
  750a14:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  750a17:	83 ec 0c                                        	sub    esp,0xc
  750a1a:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  750a1e:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  750a22:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  750a25:	e8 46 b5 01 00                                  	call   0x76bf70
  750a2a:	85 f6                                           	test   esi,esi
  750a2c:	74 09                                           	je     0x750a37
  750a2e:	8b 06                                           	mov    eax,DWORD PTR [esi]
  750a30:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  750a33:	8b ce                                           	mov    ecx,esi
  750a35:	ff d2                                           	call   edx
  750a37:	5e                                              	pop    esi
  750a38:	8b e5                                           	mov    esp,ebp
  750a3a:	5d                                              	pop    ebp
  750a3b:	c3                                              	ret
  750a3c:	cc                                              	int3
  750a3d:	cc                                              	int3
  750a3e:	cc                                              	int3
  750a3f:	cc                                              	int3
