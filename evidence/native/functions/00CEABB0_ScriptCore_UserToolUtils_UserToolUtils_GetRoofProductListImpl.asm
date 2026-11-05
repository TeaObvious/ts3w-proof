# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ceabb0 (ScriptCore.UserToolUtils::UserToolUtils_GetRoofProductListImpl)
Paired Ghidra pseudocode: 00CEABB0_ScriptCore_UserToolUtils_UserToolUtils_GetRoofProductListImpl.c
Window: [0x00ceabb0, 0x00ceac20) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ceac20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ceabb0: 8b 0d 34 e0 1e 01 83 ec 10 85 c9 74 5b 8b 54 24
00ceabc0: 14 57 8d 44 24 04 50 52 c7 44 24 0c 00 00 00 00
00ceabd0: c7 44 24 10 00 00 00 00 c7 44 24 14 00 00 00 00
00ceabe0: c7 44 24 18 2c 17 08 01 e8 23 57 fa ff 6a 00 8d
00ceabf0: 44 24 08 6a 06 50 e8 25 fc ff ff 8b f8 8b 44 24
00ceac00: 10 83 c4 0c 85 c0 74 09 50 e8 d2 98 7f ff 83 c4
00ceac10: 04 8b c7 5f 83 c4 10 c3 33 c0 83 c4 10 c3 cc cc

LINEAR DISASSEMBLY
00ceabb0 <.text+0x8e9bb0>:
  ceabb0:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ceabb6:	83 ec 10                                        	sub    esp,0x10
  ceabb9:	85 c9                                           	test   ecx,ecx
  ceabbb:	74 5b                                           	je     0xceac18
  ceabbd:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  ceabc1:	57                                              	push   edi
  ceabc2:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  ceabc6:	50                                              	push   eax
  ceabc7:	52                                              	push   edx
  ceabc8:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  ceabd0:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  ceabd8:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  ceabe0:	c7 44 24 18 2c 17 08 01                         	mov    DWORD PTR [esp+0x18],0x108172c
  ceabe8:	e8 23 57 fa ff                                  	call   0xc90310
  ceabed:	6a 00                                           	push   0x0
  ceabef:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  ceabf3:	6a 06                                           	push   0x6
  ceabf5:	50                                              	push   eax
  ceabf6:	e8 25 fc ff ff                                  	call   0xcea820
  ceabfb:	8b f8                                           	mov    edi,eax
  ceabfd:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ceac01:	83 c4 0c                                        	add    esp,0xc
  ceac04:	85 c0                                           	test   eax,eax
  ceac06:	74 09                                           	je     0xceac11
  ceac08:	50                                              	push   eax
  ceac09:	e8 d2 98 7f ff                                  	call   0x4e44e0
  ceac0e:	83 c4 04                                        	add    esp,0x4
  ceac11:	8b c7                                           	mov    eax,edi
  ceac13:	5f                                              	pop    edi
  ceac14:	83 c4 10                                        	add    esp,0x10
  ceac17:	c3                                              	ret
  ceac18:	33 c0                                           	xor    eax,eax
  ceac1a:	83 c4 10                                        	add    esp,0x10
  ceac1d:	c3                                              	ret
  ceac1e:	cc                                              	int3
  ceac1f:	cc                                              	int3
