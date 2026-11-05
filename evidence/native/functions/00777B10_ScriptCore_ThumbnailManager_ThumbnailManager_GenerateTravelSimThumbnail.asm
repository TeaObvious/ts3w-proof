# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777b10 (ScriptCore.ThumbnailManager::ThumbnailManager_GenerateTravelSimThumbnail)
Paired Ghidra pseudocode: 00777B10_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateTravelSimThumbnail.c
Window: [0x00777b10, 0x00777b70) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777b70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777b10: 83 ec 10 56 8b 35 30 ec 1e 01 85 f6 75 07 32 c0
00777b20: 5e 83 c4 10 c3 8d 44 24 04 50 8d 4c 24 1c e8 ad
00777b30: 45 ff ff 8b 4c 24 34 8b 54 24 30 6a 00 51 8b 4c
00777b40: 24 34 52 8b 54 24 34 51 52 8b 10 83 ec 10 8b cc
00777b50: 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c 89 51
00777b60: 08 89 41 0c 8b ce e8 35 5a 5d 00 5e 83 c4 10 c3

LINEAR DISASSEMBLY
00777b10 <.text+0x376b10>:
  777b10:	83 ec 10                                        	sub    esp,0x10
  777b13:	56                                              	push   esi
  777b14:	8b 35 30 ec 1e 01                               	mov    esi,DWORD PTR ds:0x11eec30
  777b1a:	85 f6                                           	test   esi,esi
  777b1c:	75 07                                           	jne    0x777b25
  777b1e:	32 c0                                           	xor    al,al
  777b20:	5e                                              	pop    esi
  777b21:	83 c4 10                                        	add    esp,0x10
  777b24:	c3                                              	ret
  777b25:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  777b29:	50                                              	push   eax
  777b2a:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  777b2e:	e8 ad 45 ff ff                                  	call   0x76c0e0
  777b33:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  777b37:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  777b3b:	6a 00                                           	push   0x0
  777b3d:	51                                              	push   ecx
  777b3e:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  777b42:	52                                              	push   edx
  777b43:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  777b47:	51                                              	push   ecx
  777b48:	52                                              	push   edx
  777b49:	8b 10                                           	mov    edx,DWORD PTR [eax]
  777b4b:	83 ec 10                                        	sub    esp,0x10
  777b4e:	8b cc                                           	mov    ecx,esp
  777b50:	89 11                                           	mov    DWORD PTR [ecx],edx
  777b52:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  777b55:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  777b58:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  777b5b:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  777b5e:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  777b61:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  777b64:	8b ce                                           	mov    ecx,esi
  777b66:	e8 35 5a 5d 00                                  	call   0xd4d5a0
  777b6b:	5e                                              	pop    esi
  777b6c:	83 c4 10                                        	add    esp,0x10
  777b6f:	c3                                              	ret
