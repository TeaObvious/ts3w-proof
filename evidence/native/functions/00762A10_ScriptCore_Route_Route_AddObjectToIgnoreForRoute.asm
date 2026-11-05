# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00762a10 (ScriptCore.Route::Route_AddObjectToIgnoreForRoute)
Paired Ghidra pseudocode: 00762A10_ScriptCore_Route_Route_AddObjectToIgnoreForRoute.c
Window: [0x00762a10, 0x00762b10) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00762b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00762a10: 51 8b 0d c4 50 1d 01 85 c9 0f 84 eb 00 00 00 8b
00762a20: 44 24 08 53 50 e8 86 8a fe ff 8b d8 85 db 0f 84
00762a30: d5 00 00 00 8b 13 8b 42 10 55 56 57 8b cb ff d0
00762a40: 8d 8b 58 01 00 00 e8 d5 9a 0b 00 8b 70 04 8b 10
00762a50: 3b d6 8b 4c 24 20 8b 7c 24 1c 74 20 8d 64 24 00
00762a60: 8b 2a 3b ef 75 07 8b 6a 04 3b e9 74 07 83 c2 08
00762a70: 3b d6 75 ec 3b d6 0f 85 7d 00 00 00 3b 70 08 73
00762a80: 11 85 f6 8d 56 08 89 50 04 74 14 89 3e 89 4e 04
00762a90: eb 0d 8d 4c 24 1c 51 56 8b c8 e8 c1 f8 e0 ff 8b
00762aa0: bb e0 00 00 00 8d ab e0 00 00 00 3b fd 74 4a 90
00762ab0: 8b 77 08 85 f6 74 0c 8d 56 04 b8 01 00 00 00 f0
00762ac0: 0f c1 02 8b 16 8d 83 58 01 00 00 50 8b 42 10 8b
00762ad0: ce ff d0 8d 46 04 8b c8 83 ca ff f0 0f c1 11 4a
00762ae0: 75 11 b9 01 00 00 00 87 08 8b 16 8b 02 6a 01 8b
00762af0: ce ff d0 8b 3f 3b fd 75 b7 8b 13 8b 42 14 5f 5e
00762b00: 5d 8b cb 5b 83 c4 04 ff e0 5b 59 c3 cc cc cc cc

LINEAR DISASSEMBLY
00762a10 <.text+0x361a10>:
  762a10:	51                                              	push   ecx
  762a11:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  762a17:	85 c9                                           	test   ecx,ecx
  762a19:	0f 84 eb 00 00 00                               	je     0x762b0a
  762a1f:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  762a23:	53                                              	push   ebx
  762a24:	50                                              	push   eax
  762a25:	e8 86 8a fe ff                                  	call   0x74b4b0
  762a2a:	8b d8                                           	mov    ebx,eax
  762a2c:	85 db                                           	test   ebx,ebx
  762a2e:	0f 84 d5 00 00 00                               	je     0x762b09
  762a34:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  762a36:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  762a39:	55                                              	push   ebp
  762a3a:	56                                              	push   esi
  762a3b:	57                                              	push   edi
  762a3c:	8b cb                                           	mov    ecx,ebx
  762a3e:	ff d0                                           	call   eax
  762a40:	8d 8b 58 01 00 00                               	lea    ecx,[ebx+0x158]
  762a46:	e8 d5 9a 0b 00                                  	call   0x81c520
  762a4b:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  762a4e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  762a50:	3b d6                                           	cmp    edx,esi
  762a52:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  762a56:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
  762a5a:	74 20                                           	je     0x762a7c
  762a5c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  762a60:	8b 2a                                           	mov    ebp,DWORD PTR [edx]
  762a62:	3b ef                                           	cmp    ebp,edi
  762a64:	75 07                                           	jne    0x762a6d
  762a66:	8b 6a 04                                        	mov    ebp,DWORD PTR [edx+0x4]
  762a69:	3b e9                                           	cmp    ebp,ecx
  762a6b:	74 07                                           	je     0x762a74
  762a6d:	83 c2 08                                        	add    edx,0x8
  762a70:	3b d6                                           	cmp    edx,esi
  762a72:	75 ec                                           	jne    0x762a60
  762a74:	3b d6                                           	cmp    edx,esi
  762a76:	0f 85 7d 00 00 00                               	jne    0x762af9
  762a7c:	3b 70 08                                        	cmp    esi,DWORD PTR [eax+0x8]
  762a7f:	73 11                                           	jae    0x762a92
  762a81:	85 f6                                           	test   esi,esi
  762a83:	8d 56 08                                        	lea    edx,[esi+0x8]
  762a86:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  762a89:	74 14                                           	je     0x762a9f
  762a8b:	89 3e                                           	mov    DWORD PTR [esi],edi
  762a8d:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  762a90:	eb 0d                                           	jmp    0x762a9f
  762a92:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  762a96:	51                                              	push   ecx
  762a97:	56                                              	push   esi
  762a98:	8b c8                                           	mov    ecx,eax
  762a9a:	e8 c1 f8 e0 ff                                  	call   0x572360
  762a9f:	8b bb e0 00 00 00                               	mov    edi,DWORD PTR [ebx+0xe0]
  762aa5:	8d ab e0 00 00 00                               	lea    ebp,[ebx+0xe0]
  762aab:	3b fd                                           	cmp    edi,ebp
  762aad:	74 4a                                           	je     0x762af9
  762aaf:	90                                              	nop
  762ab0:	8b 77 08                                        	mov    esi,DWORD PTR [edi+0x8]
  762ab3:	85 f6                                           	test   esi,esi
  762ab5:	74 0c                                           	je     0x762ac3
  762ab7:	8d 56 04                                        	lea    edx,[esi+0x4]
  762aba:	b8 01 00 00 00                                  	mov    eax,0x1
  762abf:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  762ac3:	8b 16                                           	mov    edx,DWORD PTR [esi]
  762ac5:	8d 83 58 01 00 00                               	lea    eax,[ebx+0x158]
  762acb:	50                                              	push   eax
  762acc:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  762acf:	8b ce                                           	mov    ecx,esi
  762ad1:	ff d0                                           	call   eax
  762ad3:	8d 46 04                                        	lea    eax,[esi+0x4]
  762ad6:	8b c8                                           	mov    ecx,eax
  762ad8:	83 ca ff                                        	or     edx,0xffffffff
  762adb:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  762adf:	4a                                              	dec    edx
  762ae0:	75 11                                           	jne    0x762af3
  762ae2:	b9 01 00 00 00                                  	mov    ecx,0x1
  762ae7:	87 08                                           	xchg   DWORD PTR [eax],ecx
  762ae9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  762aeb:	8b 02                                           	mov    eax,DWORD PTR [edx]
  762aed:	6a 01                                           	push   0x1
  762aef:	8b ce                                           	mov    ecx,esi
  762af1:	ff d0                                           	call   eax
  762af3:	8b 3f                                           	mov    edi,DWORD PTR [edi]
  762af5:	3b fd                                           	cmp    edi,ebp
  762af7:	75 b7                                           	jne    0x762ab0
  762af9:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  762afb:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  762afe:	5f                                              	pop    edi
  762aff:	5e                                              	pop    esi
  762b00:	5d                                              	pop    ebp
  762b01:	8b cb                                           	mov    ecx,ebx
  762b03:	5b                                              	pop    ebx
  762b04:	83 c4 04                                        	add    esp,0x4
  762b07:	ff e0                                           	jmp    eax
  762b09:	5b                                              	pop    ebx
  762b0a:	59                                              	pop    ecx
  762b0b:	c3                                              	ret
  762b0c:	cc                                              	int3
  762b0d:	cc                                              	int3
  762b0e:	cc                                              	int3
  762b0f:	cc                                              	int3
