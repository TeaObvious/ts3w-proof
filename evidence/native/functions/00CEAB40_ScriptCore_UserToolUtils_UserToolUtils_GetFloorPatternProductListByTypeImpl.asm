# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ceab40 (ScriptCore.UserToolUtils::UserToolUtils_GetFloorPatternProductListByTypeImpl)
Paired Ghidra pseudocode: 00CEAB40_ScriptCore_UserToolUtils_UserToolUtils_GetFloorPatternProductListByTypeImpl.c
Window: [0x00ceab40, 0x00ceabb0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ceabb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ceab40: 8b 0d 34 e0 1e 01 83 ec 10 85 c9 74 5b 8b 54 24
00ceab50: 14 57 8d 44 24 04 50 52 c7 44 24 0c 00 00 00 00
00ceab60: c7 44 24 10 00 00 00 00 c7 44 24 14 00 00 00 00
00ceab70: c7 44 24 18 2c 17 08 01 e8 33 53 fa ff 6a 00 8d
00ceab80: 44 24 08 6a 02 50 e8 95 fc ff ff 8b f8 8b 44 24
00ceab90: 10 83 c4 0c 85 c0 74 09 50 e8 42 99 7f ff 83 c4
00ceaba0: 04 8b c7 5f 83 c4 10 c3 33 c0 83 c4 10 c3 cc cc

LINEAR DISASSEMBLY
00ceab40 <.text+0x8e9b40>:
  ceab40:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ceab46:	83 ec 10                                        	sub    esp,0x10
  ceab49:	85 c9                                           	test   ecx,ecx
  ceab4b:	74 5b                                           	je     0xceaba8
  ceab4d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  ceab51:	57                                              	push   edi
  ceab52:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  ceab56:	50                                              	push   eax
  ceab57:	52                                              	push   edx
  ceab58:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  ceab60:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  ceab68:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  ceab70:	c7 44 24 18 2c 17 08 01                         	mov    DWORD PTR [esp+0x18],0x108172c
  ceab78:	e8 33 53 fa ff                                  	call   0xc8feb0
  ceab7d:	6a 00                                           	push   0x0
  ceab7f:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  ceab83:	6a 02                                           	push   0x2
  ceab85:	50                                              	push   eax
  ceab86:	e8 95 fc ff ff                                  	call   0xcea820
  ceab8b:	8b f8                                           	mov    edi,eax
  ceab8d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ceab91:	83 c4 0c                                        	add    esp,0xc
  ceab94:	85 c0                                           	test   eax,eax
  ceab96:	74 09                                           	je     0xceaba1
  ceab98:	50                                              	push   eax
  ceab99:	e8 42 99 7f ff                                  	call   0x4e44e0
  ceab9e:	83 c4 04                                        	add    esp,0x4
  ceaba1:	8b c7                                           	mov    eax,edi
  ceaba3:	5f                                              	pop    edi
  ceaba4:	83 c4 10                                        	add    esp,0x10
  ceaba7:	c3                                              	ret
  ceaba8:	33 c0                                           	xor    eax,eax
  ceabaa:	83 c4 10                                        	add    esp,0x10
  ceabad:	c3                                              	ret
  ceabae:	cc                                              	int3
  ceabaf:	cc                                              	int3
