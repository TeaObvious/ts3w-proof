# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777e40 (ScriptCore.ThumbnailManager::ThumbnailManager_LookupBBPreviewBound)
Paired Ghidra pseudocode: 00777E40_ScriptCore_ThumbnailManager_ThumbnailManager_LookupBBPreviewBound.c
Window: [0x00777e40, 0x00777f30) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777e40: 55 8b ec 83 e4 f0 8b 0d 30 ec 1e 01 83 ec 5c 85
00777e50: c9 56 75 07 33 c0 5e 8b e5 5d c3 8d 44 24 30 50
00777e60: 8b 45 0c 8d 54 24 14 52 8b 55 08 50 52 e8 6e 72
00777e70: 5d 00 84 c0 74 de e8 15 15 ff ff 8b f0 85 f6 74
00777e80: d3 0f 28 44 24 10 0f 29 44 24 20 f3 0f 10 4c 24
00777e90: 20 0f 29 44 24 20 f3 0f 11 4c 24 48 f3 0f 10 4c
00777ea0: 24 24 0f 29 44 24 20 f3 0f 10 44 24 28 f3 0f 11
00777eb0: 44 24 50 0f 28 44 24 30 0f 29 44 24 20 f3 0f 11
00777ec0: 4c 24 4c f3 0f 10 4c 24 20 0f 29 44 24 20 f3 0f
00777ed0: 11 4c 24 54 f3 0f 10 4c 24 24 0f 29 44 24 20 f3
00777ee0: 0f 10 44 24 28 c7 44 24 0c 00 00 00 00 f3 0f 11
00777ef0: 4c 24 58 f3 0f 11 44 24 5c 8b 06 8b 90 8c 00 00
00777f00: 00 6a 06 8d 4c 24 10 51 8b ce ff d2 8b 06 8b 80
00777f10: a8 00 00 00 6a 06 6a 00 8d 4c 24 50 51 8d 54 24
00777f20: 18 52 8b ce ff d0 8b 44 24 0c 5e 8b e5 5d c3 cc

LINEAR DISASSEMBLY
00777e40 <.text+0x376e40>:
  777e40:	55                                              	push   ebp
  777e41:	8b ec                                           	mov    ebp,esp
  777e43:	83 e4 f0                                        	and    esp,0xfffffff0
  777e46:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  777e4c:	83 ec 5c                                        	sub    esp,0x5c
  777e4f:	85 c9                                           	test   ecx,ecx
  777e51:	56                                              	push   esi
  777e52:	75 07                                           	jne    0x777e5b
  777e54:	33 c0                                           	xor    eax,eax
  777e56:	5e                                              	pop    esi
  777e57:	8b e5                                           	mov    esp,ebp
  777e59:	5d                                              	pop    ebp
  777e5a:	c3                                              	ret
  777e5b:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  777e5f:	50                                              	push   eax
  777e60:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  777e63:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  777e67:	52                                              	push   edx
  777e68:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  777e6b:	50                                              	push   eax
  777e6c:	52                                              	push   edx
  777e6d:	e8 6e 72 5d 00                                  	call   0xd4f0e0
  777e72:	84 c0                                           	test   al,al
  777e74:	74 de                                           	je     0x777e54
  777e76:	e8 15 15 ff ff                                  	call   0x769390
  777e7b:	8b f0                                           	mov    esi,eax
  777e7d:	85 f6                                           	test   esi,esi
  777e7f:	74 d3                                           	je     0x777e54
  777e81:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  777e86:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  777e8b:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  777e91:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  777e96:	f3 0f 11 4c 24 48                               	movss  DWORD PTR [esp+0x48],xmm1
  777e9c:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
  777ea2:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  777ea7:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  777ead:	f3 0f 11 44 24 50                               	movss  DWORD PTR [esp+0x50],xmm0
  777eb3:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
  777eb8:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  777ebd:	f3 0f 11 4c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm1
  777ec3:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  777ec9:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  777ece:	f3 0f 11 4c 24 54                               	movss  DWORD PTR [esp+0x54],xmm1
  777ed4:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
  777eda:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  777edf:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  777ee5:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  777eed:	f3 0f 11 4c 24 58                               	movss  DWORD PTR [esp+0x58],xmm1
  777ef3:	f3 0f 11 44 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm0
  777ef9:	8b 06                                           	mov    eax,DWORD PTR [esi]
  777efb:	8b 90 8c 00 00 00                               	mov    edx,DWORD PTR [eax+0x8c]
  777f01:	6a 06                                           	push   0x6
  777f03:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  777f07:	51                                              	push   ecx
  777f08:	8b ce                                           	mov    ecx,esi
  777f0a:	ff d2                                           	call   edx
  777f0c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  777f0e:	8b 80 a8 00 00 00                               	mov    eax,DWORD PTR [eax+0xa8]
  777f14:	6a 06                                           	push   0x6
  777f16:	6a 00                                           	push   0x0
  777f18:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  777f1c:	51                                              	push   ecx
  777f1d:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  777f21:	52                                              	push   edx
  777f22:	8b ce                                           	mov    ecx,esi
  777f24:	ff d0                                           	call   eax
  777f26:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  777f2a:	5e                                              	pop    esi
  777f2b:	8b e5                                           	mov    esp,ebp
  777f2d:	5d                                              	pop    ebp
  777f2e:	c3                                              	ret
  777f2f:	cc                                              	int3
