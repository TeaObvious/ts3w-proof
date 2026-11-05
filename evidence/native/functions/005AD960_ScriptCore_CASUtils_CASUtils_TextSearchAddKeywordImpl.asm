# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005ad960 (ScriptCore.CASUtils::CASUtils_TextSearchAddKeywordImpl)
Paired Ghidra pseudocode: 005AD960_ScriptCore_CASUtils_CASUtils_TextSearchAddKeywordImpl.c
Window: [0x005ad960, 0x005ad9e0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ad9e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005ad960: 83 ec 10 57 8b 7c 24 18 8b c7 25 00 00 00 ff 3d
005ad970: 00 00 00 35 75 57 56 e8 14 ba 1b 00 8b f0 8b 16
005ad980: 8b 82 cc 00 00 00 57 8b ce ff d0 8b f8 85 ff 74
005ad990: 3b 8b 16 8b 44 24 20 8b 52 58 50 8b ce ff d2 8b
005ad9a0: 4c 24 2c 8b 54 24 30 89 4c 24 08 8b 4c 24 28 89
005ad9b0: 4c 24 14 8d 4c 24 08 51 89 54 24 10 8b 54 24 28
005ad9c0: 50 8b cf 89 54 24 18 e8 74 fa ff ff 5e 5f 83 c4
005ad9d0: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005ad960 <.text+0x1ac960>:
  5ad960:	83 ec 10                                        	sub    esp,0x10
  5ad963:	57                                              	push   edi
  5ad964:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
  5ad968:	8b c7                                           	mov    eax,edi
  5ad96a:	25 00 00 00 ff                                  	and    eax,0xff000000
  5ad96f:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5ad974:	75 57                                           	jne    0x5ad9cd
  5ad976:	56                                              	push   esi
  5ad977:	e8 14 ba 1b 00                                  	call   0x769390
  5ad97c:	8b f0                                           	mov    esi,eax
  5ad97e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5ad980:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5ad986:	57                                              	push   edi
  5ad987:	8b ce                                           	mov    ecx,esi
  5ad989:	ff d0                                           	call   eax
  5ad98b:	8b f8                                           	mov    edi,eax
  5ad98d:	85 ff                                           	test   edi,edi
  5ad98f:	74 3b                                           	je     0x5ad9cc
  5ad991:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5ad993:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  5ad997:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  5ad99a:	50                                              	push   eax
  5ad99b:	8b ce                                           	mov    ecx,esi
  5ad99d:	ff d2                                           	call   edx
  5ad99f:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  5ad9a3:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  5ad9a7:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5ad9ab:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  5ad9af:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  5ad9b3:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  5ad9b7:	51                                              	push   ecx
  5ad9b8:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  5ad9bc:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5ad9c0:	50                                              	push   eax
  5ad9c1:	8b cf                                           	mov    ecx,edi
  5ad9c3:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  5ad9c7:	e8 74 fa ff ff                                  	call   0x5ad440
  5ad9cc:	5e                                              	pop    esi
  5ad9cd:	5f                                              	pop    edi
  5ad9ce:	83 c4 10                                        	add    esp,0x10
  5ad9d1:	c3                                              	ret
  5ad9d2:	cc                                              	int3
  5ad9d3:	cc                                              	int3
  5ad9d4:	cc                                              	int3
  5ad9d5:	cc                                              	int3
  5ad9d6:	cc                                              	int3
  5ad9d7:	cc                                              	int3
  5ad9d8:	cc                                              	int3
  5ad9d9:	cc                                              	int3
  5ad9da:	cc                                              	int3
  5ad9db:	cc                                              	int3
  5ad9dc:	cc                                              	int3
  5ad9dd:	cc                                              	int3
  5ad9de:	cc                                              	int3
  5ad9df:	cc                                              	int3
