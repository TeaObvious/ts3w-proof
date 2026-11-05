# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d83900 (ScriptCore.TaskControl::TaskControl_SetFieldValue)
Paired Ghidra pseudocode: 00D83900_ScriptCore_TaskControl_TaskControl_SetFieldValue.c
Window: [0x00d83900, 0x00d839d0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d839d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d83900: 51 e8 8a 5a 9e ff 85 c0 74 05 83 c0 f8 eb 02 33
00d83910: c0 8d 48 08 8b 01 8b 90 18 01 00 00 56 ff d2 8b
00d83920: 4c 24 0c 3b c8 8b 74 24 10 75 08 3b f2 0f 84 8f
00d83930: 00 00 00 8d 44 24 0c 50 8b 44 24 18 8d 54 24 08
00d83940: 52 8b 50 04 8b 00 52 50 56 51 e8 61 fe ff ff 83
00d83950: c4 18 84 c0 74 6c 53 8b 5c 24 08 57 53 e8 de d6
00d83960: 0e 00 8b 74 24 24 83 c4 04 85 f6 8b f8 74 14 56
00d83970: e8 bb df 11 00 50 57 e8 74 c6 0e 00 83 c4 0c 85
00d83980: c0 74 3d f7 43 04 00 00 00 40 75 34 f6 47 14 08
00d83990: 74 28 85 f6 74 2a 56 e8 a4 df 11 00 6a 00 57 8b
00d839a0: f0 e8 ea be 0e 00 8b 4c 24 20 50 56 51 e8 d4 b8
00d839b0: 1f 00 83 c4 18 5f 5b 5e 59 c3 8b 54 24 14 89 32
00d839c0: 5f 5b 5e 59 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00d83900 <.text+0x982900>:
  d83900:	51                                              	push   ecx
  d83901:	e8 8a 5a 9e ff                                  	call   0x769390
  d83906:	85 c0                                           	test   eax,eax
  d83908:	74 05                                           	je     0xd8390f
  d8390a:	83 c0 f8                                        	add    eax,0xfffffff8
  d8390d:	eb 02                                           	jmp    0xd83911
  d8390f:	33 c0                                           	xor    eax,eax
  d83911:	8d 48 08                                        	lea    ecx,[eax+0x8]
  d83914:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d83916:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  d8391c:	56                                              	push   esi
  d8391d:	ff d2                                           	call   edx
  d8391f:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  d83923:	3b c8                                           	cmp    ecx,eax
  d83925:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  d83929:	75 08                                           	jne    0xd83933
  d8392b:	3b f2                                           	cmp    esi,edx
  d8392d:	0f 84 8f 00 00 00                               	je     0xd839c2
  d83933:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  d83937:	50                                              	push   eax
  d83938:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  d8393c:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  d83940:	52                                              	push   edx
  d83941:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d83944:	8b 00                                           	mov    eax,DWORD PTR [eax]
  d83946:	52                                              	push   edx
  d83947:	50                                              	push   eax
  d83948:	56                                              	push   esi
  d83949:	51                                              	push   ecx
  d8394a:	e8 61 fe ff ff                                  	call   0xd837b0
  d8394f:	83 c4 18                                        	add    esp,0x18
  d83952:	84 c0                                           	test   al,al
  d83954:	74 6c                                           	je     0xd839c2
  d83956:	53                                              	push   ebx
  d83957:	8b 5c 24 08                                     	mov    ebx,DWORD PTR [esp+0x8]
  d8395b:	57                                              	push   edi
  d8395c:	53                                              	push   ebx
  d8395d:	e8 de d6 0e 00                                  	call   0xe71040
  d83962:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
  d83966:	83 c4 04                                        	add    esp,0x4
  d83969:	85 f6                                           	test   esi,esi
  d8396b:	8b f8                                           	mov    edi,eax
  d8396d:	74 14                                           	je     0xd83983
  d8396f:	56                                              	push   esi
  d83970:	e8 bb df 11 00                                  	call   0xea1930
  d83975:	50                                              	push   eax
  d83976:	57                                              	push   edi
  d83977:	e8 74 c6 0e 00                                  	call   0xe6fff0
  d8397c:	83 c4 0c                                        	add    esp,0xc
  d8397f:	85 c0                                           	test   eax,eax
  d83981:	74 3d                                           	je     0xd839c0
  d83983:	f7 43 04 00 00 00 40                            	test   DWORD PTR [ebx+0x4],0x40000000
  d8398a:	75 34                                           	jne    0xd839c0
  d8398c:	f6 47 14 08                                     	test   BYTE PTR [edi+0x14],0x8
  d83990:	74 28                                           	je     0xd839ba
  d83992:	85 f6                                           	test   esi,esi
  d83994:	74 2a                                           	je     0xd839c0
  d83996:	56                                              	push   esi
  d83997:	e8 a4 df 11 00                                  	call   0xea1940
  d8399c:	6a 00                                           	push   0x0
  d8399e:	57                                              	push   edi
  d8399f:	8b f0                                           	mov    esi,eax
  d839a1:	e8 ea be 0e 00                                  	call   0xe6f890
  d839a6:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  d839aa:	50                                              	push   eax
  d839ab:	56                                              	push   esi
  d839ac:	51                                              	push   ecx
  d839ad:	e8 d4 b8 1f 00                                  	call   0xf7f286
  d839b2:	83 c4 18                                        	add    esp,0x18
  d839b5:	5f                                              	pop    edi
  d839b6:	5b                                              	pop    ebx
  d839b7:	5e                                              	pop    esi
  d839b8:	59                                              	pop    ecx
  d839b9:	c3                                              	ret
  d839ba:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  d839be:	89 32                                           	mov    DWORD PTR [edx],esi
  d839c0:	5f                                              	pop    edi
  d839c1:	5b                                              	pop    ebx
  d839c2:	5e                                              	pop    esi
  d839c3:	59                                              	pop    ecx
  d839c4:	c3                                              	ret
  d839c5:	cc                                              	int3
  d839c6:	cc                                              	int3
  d839c7:	cc                                              	int3
  d839c8:	cc                                              	int3
  d839c9:	cc                                              	int3
  d839ca:	cc                                              	int3
  d839cb:	cc                                              	int3
  d839cc:	cc                                              	int3
  d839cd:	cc                                              	int3
  d839ce:	cc                                              	int3
  d839cf:	cc                                              	int3
