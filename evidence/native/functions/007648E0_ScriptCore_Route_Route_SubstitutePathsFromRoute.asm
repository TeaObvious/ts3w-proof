# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007648e0 (ScriptCore.Route::Route_SubstitutePathsFromRoute)
Paired Ghidra pseudocode: 007648E0_ScriptCore_Route_Route_SubstitutePathsFromRoute.c
Window: [0x007648e0, 0x007649a0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x007649a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007648e0: 8b 0d c4 50 1d 01 85 c9 56 57 74 5f 8b 44 24 0c
007648f0: 50 e8 ba 6b fe ff 8b f8 85 ff 74 09 8b 17 8b 42
00764900: 10 8b cf ff d0 8b 0d c4 50 1d 01 85 c9 74 3e 8b
00764910: 54 24 10 52 e8 97 6b fe ff 8b f0 85 f6 74 09 8b
00764920: 06 8b 50 10 8b ce ff d2 85 ff 74 48 85 f6 74 51
00764930: 3b fe 75 1d 8b 06 8b 50 14 8b ce ff d2 8b 07 8b
00764940: 50 14 8b cf ff d2 5f b0 01 5e c3 33 ff 33 f6 eb
00764950: d7 53 56 8b cf e8 56 fb ff ff 8a d8 8b 06 8b 50
00764960: 14 8b ce ff d2 8b 07 8b 50 14 8b cf ff d2 8a c3
00764970: 5b 5f 5e c3 85 f6 74 09 8b 06 8b 50 14 8b ce ff
00764980: d2 85 ff 74 09 8b 07 8b 50 14 8b cf ff d2 5f 32
00764990: c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007648e0 <.text+0x3638e0>:
  7648e0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  7648e6:	85 c9                                           	test   ecx,ecx
  7648e8:	56                                              	push   esi
  7648e9:	57                                              	push   edi
  7648ea:	74 5f                                           	je     0x76494b
  7648ec:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7648f0:	50                                              	push   eax
  7648f1:	e8 ba 6b fe ff                                  	call   0x74b4b0
  7648f6:	8b f8                                           	mov    edi,eax
  7648f8:	85 ff                                           	test   edi,edi
  7648fa:	74 09                                           	je     0x764905
  7648fc:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7648fe:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  764901:	8b cf                                           	mov    ecx,edi
  764903:	ff d0                                           	call   eax
  764905:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  76490b:	85 c9                                           	test   ecx,ecx
  76490d:	74 3e                                           	je     0x76494d
  76490f:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  764913:	52                                              	push   edx
  764914:	e8 97 6b fe ff                                  	call   0x74b4b0
  764919:	8b f0                                           	mov    esi,eax
  76491b:	85 f6                                           	test   esi,esi
  76491d:	74 09                                           	je     0x764928
  76491f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  764921:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  764924:	8b ce                                           	mov    ecx,esi
  764926:	ff d2                                           	call   edx
  764928:	85 ff                                           	test   edi,edi
  76492a:	74 48                                           	je     0x764974
  76492c:	85 f6                                           	test   esi,esi
  76492e:	74 51                                           	je     0x764981
  764930:	3b fe                                           	cmp    edi,esi
  764932:	75 1d                                           	jne    0x764951
  764934:	8b 06                                           	mov    eax,DWORD PTR [esi]
  764936:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  764939:	8b ce                                           	mov    ecx,esi
  76493b:	ff d2                                           	call   edx
  76493d:	8b 07                                           	mov    eax,DWORD PTR [edi]
  76493f:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  764942:	8b cf                                           	mov    ecx,edi
  764944:	ff d2                                           	call   edx
  764946:	5f                                              	pop    edi
  764947:	b0 01                                           	mov    al,0x1
  764949:	5e                                              	pop    esi
  76494a:	c3                                              	ret
  76494b:	33 ff                                           	xor    edi,edi
  76494d:	33 f6                                           	xor    esi,esi
  76494f:	eb d7                                           	jmp    0x764928
  764951:	53                                              	push   ebx
  764952:	56                                              	push   esi
  764953:	8b cf                                           	mov    ecx,edi
  764955:	e8 56 fb ff ff                                  	call   0x7644b0
  76495a:	8a d8                                           	mov    bl,al
  76495c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76495e:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  764961:	8b ce                                           	mov    ecx,esi
  764963:	ff d2                                           	call   edx
  764965:	8b 07                                           	mov    eax,DWORD PTR [edi]
  764967:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  76496a:	8b cf                                           	mov    ecx,edi
  76496c:	ff d2                                           	call   edx
  76496e:	8a c3                                           	mov    al,bl
  764970:	5b                                              	pop    ebx
  764971:	5f                                              	pop    edi
  764972:	5e                                              	pop    esi
  764973:	c3                                              	ret
  764974:	85 f6                                           	test   esi,esi
  764976:	74 09                                           	je     0x764981
  764978:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76497a:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  76497d:	8b ce                                           	mov    ecx,esi
  76497f:	ff d2                                           	call   edx
  764981:	85 ff                                           	test   edi,edi
  764983:	74 09                                           	je     0x76498e
  764985:	8b 07                                           	mov    eax,DWORD PTR [edi]
  764987:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  76498a:	8b cf                                           	mov    ecx,edi
  76498c:	ff d2                                           	call   edx
  76498e:	5f                                              	pop    edi
  76498f:	32 c0                                           	xor    al,al
  764991:	5e                                              	pop    esi
  764992:	c3                                              	ret
  764993:	cc                                              	int3
  764994:	cc                                              	int3
  764995:	cc                                              	int3
  764996:	cc                                              	int3
  764997:	cc                                              	int3
  764998:	cc                                              	int3
  764999:	cc                                              	int3
  76499a:	cc                                              	int3
  76499b:	cc                                              	int3
  76499c:	cc                                              	int3
  76499d:	cc                                              	int3
  76499e:	cc                                              	int3
  76499f:	cc                                              	int3
