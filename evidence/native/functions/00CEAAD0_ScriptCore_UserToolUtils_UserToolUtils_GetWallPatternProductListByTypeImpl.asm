# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ceaad0 (ScriptCore.UserToolUtils::UserToolUtils_GetWallPatternProductListByTypeImpl)
Paired Ghidra pseudocode: 00CEAAD0_ScriptCore_UserToolUtils_UserToolUtils_GetWallPatternProductListByTypeImpl.c
Window: [0x00ceaad0, 0x00ceab40) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ceab40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ceaad0: 8b 0d 34 e0 1e 01 83 ec 10 85 c9 74 5b 8b 54 24
00ceaae0: 14 57 8d 44 24 04 50 52 c7 44 24 0c 00 00 00 00
00ceaaf0: c7 44 24 10 00 00 00 00 c7 44 24 14 00 00 00 00
00ceab00: c7 44 24 18 2c 17 08 01 e8 43 53 fa ff 6a 00 8d
00ceab10: 44 24 08 6a 00 50 e8 05 fd ff ff 8b f8 8b 44 24
00ceab20: 10 83 c4 0c 85 c0 74 09 50 e8 b2 99 7f ff 83 c4
00ceab30: 04 8b c7 5f 83 c4 10 c3 33 c0 83 c4 10 c3 cc cc

LINEAR DISASSEMBLY
00ceaad0 <.text+0x8e9ad0>:
  ceaad0:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ceaad6:	83 ec 10                                        	sub    esp,0x10
  ceaad9:	85 c9                                           	test   ecx,ecx
  ceaadb:	74 5b                                           	je     0xceab38
  ceaadd:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  ceaae1:	57                                              	push   edi
  ceaae2:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  ceaae6:	50                                              	push   eax
  ceaae7:	52                                              	push   edx
  ceaae8:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  ceaaf0:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  ceaaf8:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  ceab00:	c7 44 24 18 2c 17 08 01                         	mov    DWORD PTR [esp+0x18],0x108172c
  ceab08:	e8 43 53 fa ff                                  	call   0xc8fe50
  ceab0d:	6a 00                                           	push   0x0
  ceab0f:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  ceab13:	6a 00                                           	push   0x0
  ceab15:	50                                              	push   eax
  ceab16:	e8 05 fd ff ff                                  	call   0xcea820
  ceab1b:	8b f8                                           	mov    edi,eax
  ceab1d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ceab21:	83 c4 0c                                        	add    esp,0xc
  ceab24:	85 c0                                           	test   eax,eax
  ceab26:	74 09                                           	je     0xceab31
  ceab28:	50                                              	push   eax
  ceab29:	e8 b2 99 7f ff                                  	call   0x4e44e0
  ceab2e:	83 c4 04                                        	add    esp,0x4
  ceab31:	8b c7                                           	mov    eax,edi
  ceab33:	5f                                              	pop    edi
  ceab34:	83 c4 10                                        	add    esp,0x10
  ceab37:	c3                                              	ret
  ceab38:	33 c0                                           	xor    eax,eax
  ceab3a:	83 c4 10                                        	add    esp,0x10
  ceab3d:	c3                                              	ret
  ceab3e:	cc                                              	int3
  ceab3f:	cc                                              	int3
