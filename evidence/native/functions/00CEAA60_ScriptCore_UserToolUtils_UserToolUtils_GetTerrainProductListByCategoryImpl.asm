# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ceaa60 (ScriptCore.UserToolUtils::UserToolUtils_GetTerrainProductListByCategoryImpl)
Paired Ghidra pseudocode: 00CEAA60_ScriptCore_UserToolUtils_UserToolUtils_GetTerrainProductListByCategoryImpl.c
Window: [0x00ceaa60, 0x00ceaad0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ceaad0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ceaa60: 8b 0d 34 e0 1e 01 83 ec 10 85 c9 74 5b 8b 54 24
00ceaa70: 14 57 8d 44 24 04 50 52 c7 44 24 0c 00 00 00 00
00ceaa80: c7 44 24 10 00 00 00 00 c7 44 24 14 00 00 00 00
00ceaa90: c7 44 24 18 2c 17 08 01 e8 03 5b fa ff 6a 00 8d
00ceaaa0: 44 24 08 6a 12 50 e8 75 fd ff ff 8b f8 8b 44 24
00ceaab0: 10 83 c4 0c 85 c0 74 09 50 e8 22 9a 7f ff 83 c4
00ceaac0: 04 8b c7 5f 83 c4 10 c3 33 c0 83 c4 10 c3 cc cc

LINEAR DISASSEMBLY
00ceaa60 <.text+0x8e9a60>:
  ceaa60:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ceaa66:	83 ec 10                                        	sub    esp,0x10
  ceaa69:	85 c9                                           	test   ecx,ecx
  ceaa6b:	74 5b                                           	je     0xceaac8
  ceaa6d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  ceaa71:	57                                              	push   edi
  ceaa72:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  ceaa76:	50                                              	push   eax
  ceaa77:	52                                              	push   edx
  ceaa78:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  ceaa80:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  ceaa88:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  ceaa90:	c7 44 24 18 2c 17 08 01                         	mov    DWORD PTR [esp+0x18],0x108172c
  ceaa98:	e8 03 5b fa ff                                  	call   0xc905a0
  ceaa9d:	6a 00                                           	push   0x0
  ceaa9f:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  ceaaa3:	6a 12                                           	push   0x12
  ceaaa5:	50                                              	push   eax
  ceaaa6:	e8 75 fd ff ff                                  	call   0xcea820
  ceaaab:	8b f8                                           	mov    edi,eax
  ceaaad:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ceaab1:	83 c4 0c                                        	add    esp,0xc
  ceaab4:	85 c0                                           	test   eax,eax
  ceaab6:	74 09                                           	je     0xceaac1
  ceaab8:	50                                              	push   eax
  ceaab9:	e8 22 9a 7f ff                                  	call   0x4e44e0
  ceaabe:	83 c4 04                                        	add    esp,0x4
  ceaac1:	8b c7                                           	mov    eax,edi
  ceaac3:	5f                                              	pop    edi
  ceaac4:	83 c4 10                                        	add    esp,0x10
  ceaac7:	c3                                              	ret
  ceaac8:	33 c0                                           	xor    eax,eax
  ceaaca:	83 c4 10                                        	add    esp,0x10
  ceaacd:	c3                                              	ret
  ceaace:	cc                                              	int3
  ceaacf:	cc                                              	int3
