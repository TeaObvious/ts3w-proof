# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6920 (ScriptCore.CASUtils::CASUtils_SimBuilderGetFacialBlendImpl)
Paired Ghidra pseudocode: 005A6920_ScriptCore_CASUtils_CASUtils_SimBuilderGetFacialBlendImpl.c
Window: [0x005a6920, 0x005a6990) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6920: 83 ec 10 56 8b 74 24 18 8b c6 25 00 00 00 ff 3d
005a6930: 00 00 00 35 75 47 e8 55 2a 1c 00 8b 10 8b c8 8b
005a6940: 82 cc 00 00 00 56 ff d0 85 c0 74 31 8b 4c 24 24
005a6950: 8b 54 24 28 89 4c 24 04 8b 4c 24 1c 89 4c 24 0c
005a6960: 8d 4c 24 04 89 54 24 08 8b 54 24 20 51 8b c8 89
005a6970: 54 24 14 e8 e8 ae 03 00 5e 83 c4 10 c3 d9 ee 5e
005a6980: 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6920 <.text+0x1a5920>:
  5a6920:	83 ec 10                                        	sub    esp,0x10
  5a6923:	56                                              	push   esi
  5a6924:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  5a6928:	8b c6                                           	mov    eax,esi
  5a692a:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a692f:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6934:	75 47                                           	jne    0x5a697d
  5a6936:	e8 55 2a 1c 00                                  	call   0x769390
  5a693b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a693d:	8b c8                                           	mov    ecx,eax
  5a693f:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6945:	56                                              	push   esi
  5a6946:	ff d0                                           	call   eax
  5a6948:	85 c0                                           	test   eax,eax
  5a694a:	74 31                                           	je     0x5a697d
  5a694c:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5a6950:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5a6954:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  5a6958:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a695c:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  5a6960:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  5a6964:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  5a6968:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  5a696c:	51                                              	push   ecx
  5a696d:	8b c8                                           	mov    ecx,eax
  5a696f:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  5a6973:	e8 e8 ae 03 00                                  	call   0x5e1860
  5a6978:	5e                                              	pop    esi
  5a6979:	83 c4 10                                        	add    esp,0x10
  5a697c:	c3                                              	ret
  5a697d:	d9 ee                                           	fldz
  5a697f:	5e                                              	pop    esi
  5a6980:	83 c4 10                                        	add    esp,0x10
  5a6983:	c3                                              	ret
  5a6984:	cc                                              	int3
  5a6985:	cc                                              	int3
  5a6986:	cc                                              	int3
  5a6987:	cc                                              	int3
  5a6988:	cc                                              	int3
  5a6989:	cc                                              	int3
  5a698a:	cc                                              	int3
  5a698b:	cc                                              	int3
  5a698c:	cc                                              	int3
  5a698d:	cc                                              	int3
  5a698e:	cc                                              	int3
  5a698f:	cc                                              	int3
