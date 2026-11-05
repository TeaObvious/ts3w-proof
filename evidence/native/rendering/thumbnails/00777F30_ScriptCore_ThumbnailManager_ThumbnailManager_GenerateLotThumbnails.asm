TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra evidence; current name: ScriptCore.ThumbnailManager::ThumbnailManager_GenerateLotThumbnails.
Original instruction/byte blocks and ownership qualifications are unchanged.
Generated types and signatures remain projections; consult the machine instructions.

TS3W.exe PC 1.67 — original bytes and saved Ghidra Listing
DB entry: 00777F30
Paired actual Ghidra pseudocode: 00777F30_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateLotThumbnails.c
Owned body inclusive: 00777F30..00777F30
Qualified original-byte prefix (outside singleton DB body; not a complete owned function)
Preserved interval: [00777F30, 00777F74)
Originalbytes read from identified pristine PE; independently decoded by GNU objdump.
Ghidra names/comments are analyst-assigned where stated; no runtime observed.

ORIGINAL BYTES
00777F30: 83 ec 24 83 7c 24 3c 00 57 8b 3d 30 ec 1e 01 89
00777F40: 7c 24 04 75 2f 85 ff 0f 84 40 01 00 00 8b 44 24
00777F50: 3c 8b 4c 24 38 8b 54 24 34 6a 00 50 8b 44 24 38
00777F60: 51 8b 4c 24 38 52 50 51 8b cf e8 91 9b 5e 00 5f
00777F70: 83 c4 24 c3

SAVED GHIDRA LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: ScriptCore.ThumbnailManager::ThumbnailManager_GenerateLotThumbnails
Entry Point: 00777f30


Total instructions: 0

INDEPENDENT PE DISASSEMBLY
00777f30 <.text+0x376f30>:
  777f30:	83 ec 24                                        	sub    esp,0x24
  777f33:	83 7c 24 3c 00                                  	cmp    DWORD PTR [esp+0x3c],0x0
  777f38:	57                                              	push   edi
  777f39:	8b 3d 30 ec 1e 01                               	mov    edi,DWORD PTR ds:0x11eec30
  777f3f:	89 7c 24 04                                     	mov    DWORD PTR [esp+0x4],edi
  777f43:	75 2f                                           	jne    0x777f74
  777f45:	85 ff                                           	test   edi,edi
  777f47:	0f 84 40 01 00 00                               	je     0x77808d
  777f4d:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  777f51:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  777f55:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  777f59:	6a 00                                           	push   0x0
  777f5b:	50                                              	push   eax
  777f5c:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  777f60:	51                                              	push   ecx
  777f61:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  777f65:	52                                              	push   edx
  777f66:	50                                              	push   eax
  777f67:	51                                              	push   ecx
  777f68:	8b cf                                           	mov    ecx,edi
  777f6a:	e8 91 9b 5e 00                                  	call   0xd61b00
  777f6f:	5f                                              	pop    edi
  777f70:	83 c4 24                                        	add    esp,0x24
  777f73:	c3                                              	ret
