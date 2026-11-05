# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00771970 (ScriptCore.SocialFeatures::SocialFeaturesHost_SetProfileMyStatus)
Paired Ghidra pseudocode: 00771970_ScriptCore_SocialFeatures_SocialFeaturesHost_SetProfileMyStatus.c
Window: [0x00771970, 0x00771a40) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00771a40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00771970: 83 ec 20 56 33 f6 e8 15 7a ff ff 85 c0 0f 84 aa
00771980: 00 00 00 8b 4c 24 30 8b 10 8b 52 58 57 51 8b c8
00771990: ff d2 6a 00 6a ff 50 8d 44 24 24 bf 54 8e 1c 01
007719a0: be 55 8e 1c 01 50 c7 44 24 24 bc 9c 00 01 89 7c
007719b0: 24 18 89 7c 24 1c 89 74 24 20 e8 01 23 d8 ff 8d
007719c0: 4c 24 18 83 c4 10 3b c1 74 14 8b 50 04 8b 00 52
007719d0: 50 e8 3a 3f c9 ff 8b 74 24 10 8b 7c 24 08 8b 4c
007719e0: 24 20 8b 44 24 18 2b c8 83 f9 01 7e 0d 85 c0 74
007719f0: 09 50 e8 e9 2a d7 ff 83 c4 04 8b 54 24 30 8b 44
00771a00: 24 2c 53 57 52 50 e8 b5 29 2b 00 2b f7 83 c4 0c
00771a10: 83 fe 01 8b d8 7e 0d 85 ff 74 09 57 e8 bf 2a d7
00771a20: ff 83 c4 04 8b c3 5b 5f 5e 83 c4 20 c3 8b c6 5e
00771a30: 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00771970 <.text+0x370970>:
  771970:	83 ec 20                                        	sub    esp,0x20
  771973:	56                                              	push   esi
  771974:	33 f6                                           	xor    esi,esi
  771976:	e8 15 7a ff ff                                  	call   0x769390
  77197b:	85 c0                                           	test   eax,eax
  77197d:	0f 84 aa 00 00 00                               	je     0x771a2d
  771983:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  771987:	8b 10                                           	mov    edx,DWORD PTR [eax]
  771989:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  77198c:	57                                              	push   edi
  77198d:	51                                              	push   ecx
  77198e:	8b c8                                           	mov    ecx,eax
  771990:	ff d2                                           	call   edx
  771992:	6a 00                                           	push   0x0
  771994:	6a ff                                           	push   0xffffffff
  771996:	50                                              	push   eax
  771997:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  77199b:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  7719a0:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  7719a5:	50                                              	push   eax
  7719a6:	c7 44 24 24 bc 9c 00 01                         	mov    DWORD PTR [esp+0x24],0x1009cbc
  7719ae:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  7719b2:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  7719b6:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  7719ba:	e8 01 23 d8 ff                                  	call   0x4f3cc0
  7719bf:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  7719c3:	83 c4 10                                        	add    esp,0x10
  7719c6:	3b c1                                           	cmp    eax,ecx
  7719c8:	74 14                                           	je     0x7719de
  7719ca:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7719cd:	8b 00                                           	mov    eax,DWORD PTR [eax]
  7719cf:	52                                              	push   edx
  7719d0:	50                                              	push   eax
  7719d1:	e8 3a 3f c9 ff                                  	call   0x405910
  7719d6:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  7719da:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  7719de:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  7719e2:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  7719e6:	2b c8                                           	sub    ecx,eax
  7719e8:	83 f9 01                                        	cmp    ecx,0x1
  7719eb:	7e 0d                                           	jle    0x7719fa
  7719ed:	85 c0                                           	test   eax,eax
  7719ef:	74 09                                           	je     0x7719fa
  7719f1:	50                                              	push   eax
  7719f2:	e8 e9 2a d7 ff                                  	call   0x4e44e0
  7719f7:	83 c4 04                                        	add    esp,0x4
  7719fa:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  7719fe:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  771a02:	53                                              	push   ebx
  771a03:	57                                              	push   edi
  771a04:	52                                              	push   edx
  771a05:	50                                              	push   eax
  771a06:	e8 b5 29 2b 00                                  	call   0xa243c0
  771a0b:	2b f7                                           	sub    esi,edi
  771a0d:	83 c4 0c                                        	add    esp,0xc
  771a10:	83 fe 01                                        	cmp    esi,0x1
  771a13:	8b d8                                           	mov    ebx,eax
  771a15:	7e 0d                                           	jle    0x771a24
  771a17:	85 ff                                           	test   edi,edi
  771a19:	74 09                                           	je     0x771a24
  771a1b:	57                                              	push   edi
  771a1c:	e8 bf 2a d7 ff                                  	call   0x4e44e0
  771a21:	83 c4 04                                        	add    esp,0x4
  771a24:	8b c3                                           	mov    eax,ebx
  771a26:	5b                                              	pop    ebx
  771a27:	5f                                              	pop    edi
  771a28:	5e                                              	pop    esi
  771a29:	83 c4 20                                        	add    esp,0x20
  771a2c:	c3                                              	ret
  771a2d:	8b c6                                           	mov    eax,esi
  771a2f:	5e                                              	pop    esi
  771a30:	83 c4 20                                        	add    esp,0x20
  771a33:	c3                                              	ret
  771a34:	cc                                              	int3
  771a35:	cc                                              	int3
  771a36:	cc                                              	int3
  771a37:	cc                                              	int3
  771a38:	cc                                              	int3
  771a39:	cc                                              	int3
  771a3a:	cc                                              	int3
  771a3b:	cc                                              	int3
  771a3c:	cc                                              	int3
  771a3d:	cc                                              	int3
  771a3e:	cc                                              	int3
  771a3f:	cc                                              	int3
