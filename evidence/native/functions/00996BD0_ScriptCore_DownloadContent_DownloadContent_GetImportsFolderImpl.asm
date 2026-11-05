# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00996bd0 (ScriptCore.DownloadContent::DownloadContent_GetImportsFolderImpl)
Paired Ghidra pseudocode: 00996BD0_ScriptCore_DownloadContent_DownloadContent_GetImportsFolderImpl.c
Window: [0x00996bd0, 0x00996c60) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00996c60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00996bd0: 83 ec 24 56 e8 b7 27 dd ff 8b f0 85 f6 74 79 a1
00996be0: 00 16 18 01 3b 05 04 16 18 01 74 6c 6a 01 6a 10
00996bf0: 68 00 16 18 01 6a 09 6a 13 8d 4c 24 1c c7 44 24
00996c00: 1c f4 a6 fb 00 66 c7 44 24 24 00 00 66 c7 44 24
00996c10: 26 00 00 e8 a8 ed b5 ff 8b 16 8b 52 50 8d 44 24
00996c20: 04 50 8d 4c 24 0c 51 8b ce c7 44 24 0c 00 00 00
00996c30: 00 ff d2 f6 44 24 10 04 8b 74 24 04 c7 44 24 08
00996c40: f4 a6 fb 00 74 0b 6a 00 8d 4c 24 0c e8 0f eb b5
00996c50: ff 8b c6 5e 83 c4 24 c3 33 c0 5e 83 c4 24 c3 cc

LINEAR DISASSEMBLY
00996bd0 <.text+0x595bd0>:
  996bd0:	83 ec 24                                        	sub    esp,0x24
  996bd3:	56                                              	push   esi
  996bd4:	e8 b7 27 dd ff                                  	call   0x769390
  996bd9:	8b f0                                           	mov    esi,eax
  996bdb:	85 f6                                           	test   esi,esi
  996bdd:	74 79                                           	je     0x996c58
  996bdf:	a1 00 16 18 01                                  	mov    eax,ds:0x1181600
  996be4:	3b 05 04 16 18 01                               	cmp    eax,DWORD PTR ds:0x1181604
  996bea:	74 6c                                           	je     0x996c58
  996bec:	6a 01                                           	push   0x1
  996bee:	6a 10                                           	push   0x10
  996bf0:	68 00 16 18 01                                  	push   0x1181600
  996bf5:	6a 09                                           	push   0x9
  996bf7:	6a 13                                           	push   0x13
  996bf9:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  996bfd:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  996c05:	66 c7 44 24 24 00 00                            	mov    WORD PTR [esp+0x24],0x0
  996c0c:	66 c7 44 24 26 00 00                            	mov    WORD PTR [esp+0x26],0x0
  996c13:	e8 a8 ed b5 ff                                  	call   0x4f59c0
  996c18:	8b 16                                           	mov    edx,DWORD PTR [esi]
  996c1a:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  996c1d:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  996c21:	50                                              	push   eax
  996c22:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  996c26:	51                                              	push   ecx
  996c27:	8b ce                                           	mov    ecx,esi
  996c29:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  996c31:	ff d2                                           	call   edx
  996c33:	f6 44 24 10 04                                  	test   BYTE PTR [esp+0x10],0x4
  996c38:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  996c3c:	c7 44 24 08 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x8],0xfba6f4
  996c44:	74 0b                                           	je     0x996c51
  996c46:	6a 00                                           	push   0x0
  996c48:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  996c4c:	e8 0f eb b5 ff                                  	call   0x4f5760
  996c51:	8b c6                                           	mov    eax,esi
  996c53:	5e                                              	pop    esi
  996c54:	83 c4 24                                        	add    esp,0x24
  996c57:	c3                                              	ret
  996c58:	33 c0                                           	xor    eax,eax
  996c5a:	5e                                              	pop    esi
  996c5b:	83 c4 24                                        	add    esp,0x24
  996c5e:	c3                                              	ret
  996c5f:	cc                                              	int3
