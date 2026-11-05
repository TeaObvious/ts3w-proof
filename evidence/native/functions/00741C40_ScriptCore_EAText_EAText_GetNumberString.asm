# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00741c40 (ScriptCore.EAText::EAText_GetNumberString)
Paired Ghidra pseudocode: 00741C40_ScriptCore_EAText_EAText_GetNumberString.c
Window: [0x00741c40, 0x00741d20) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00741d20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00741c40: 81 ec b4 00 00 00 dd 84 24 b8 00 00 00 56 6a 00
00741c50: 6a 40 8d 44 24 40 50 83 ec 08 dd 1c 24 e8 2e 75
00741c60: d0 ff 83 c4 14 e8 26 77 02 00 8d 4c 24 38 51 8d
00741c70: 4c 24 08 8b f0 c7 44 24 08 00 00 00 00 c7 44 24
00741c80: 0c 00 00 00 00 c7 44 24 10 00 00 00 00 c7 44 24
00741c90: 14 74 1f 00 01 e8 f6 98 cc ff 6a 01 6a 10 8d 54
00741ca0: 24 0c 52 6a 09 6a 13 8d 4c 24 2c c7 44 24 2c 6c
00741cb0: 88 00 01 66 c7 44 24 36 13 00 66 c7 44 24 34 0b
00741cc0: 00 e8 fa 3c db ff 8b 06 8b 40 50 8d 4c 24 14 51
00741cd0: 8d 54 24 1c 52 8b ce ff d0 f6 44 24 20 04 8b 74
00741ce0: 24 14 c7 44 24 18 f4 a6 fb 00 74 0b 6a 00 8d 4c
00741cf0: 24 1c e8 69 3a db ff 8b 4c 24 0c 8b 44 24 04 2b
00741d00: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 cd
00741d10: 27 da ff 83 c4 04 8b c6 5e 81 c4 b4 00 00 00 c3

LINEAR DISASSEMBLY
00741c40 <.text+0x340c40>:
  741c40:	81 ec b4 00 00 00                               	sub    esp,0xb4
  741c46:	dd 84 24 b8 00 00 00                            	fld    QWORD PTR [esp+0xb8]
  741c4d:	56                                              	push   esi
  741c4e:	6a 00                                           	push   0x0
  741c50:	6a 40                                           	push   0x40
  741c52:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  741c56:	50                                              	push   eax
  741c57:	83 ec 08                                        	sub    esp,0x8
  741c5a:	dd 1c 24                                        	fstp   QWORD PTR [esp]
  741c5d:	e8 2e 75 d0 ff                                  	call   0x449190
  741c62:	83 c4 14                                        	add    esp,0x14
  741c65:	e8 26 77 02 00                                  	call   0x769390
  741c6a:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  741c6e:	51                                              	push   ecx
  741c6f:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  741c73:	8b f0                                           	mov    esi,eax
  741c75:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  741c7d:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  741c85:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  741c8d:	c7 44 24 14 74 1f 00 01                         	mov    DWORD PTR [esp+0x14],0x1001f74
  741c95:	e8 f6 98 cc ff                                  	call   0x40b590
  741c9a:	6a 01                                           	push   0x1
  741c9c:	6a 10                                           	push   0x10
  741c9e:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  741ca2:	52                                              	push   edx
  741ca3:	6a 09                                           	push   0x9
  741ca5:	6a 13                                           	push   0x13
  741ca7:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  741cab:	c7 44 24 2c 6c 88 00 01                         	mov    DWORD PTR [esp+0x2c],0x100886c
  741cb3:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
  741cba:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
  741cc1:	e8 fa 3c db ff                                  	call   0x4f59c0
  741cc6:	8b 06                                           	mov    eax,DWORD PTR [esi]
  741cc8:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  741ccb:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  741ccf:	51                                              	push   ecx
  741cd0:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  741cd4:	52                                              	push   edx
  741cd5:	8b ce                                           	mov    ecx,esi
  741cd7:	ff d0                                           	call   eax
  741cd9:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  741cde:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  741ce2:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  741cea:	74 0b                                           	je     0x741cf7
  741cec:	6a 00                                           	push   0x0
  741cee:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  741cf2:	e8 69 3a db ff                                  	call   0x4f5760
  741cf7:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  741cfb:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  741cff:	2b c8                                           	sub    ecx,eax
  741d01:	83 e1 fe                                        	and    ecx,0xfffffffe
  741d04:	83 f9 02                                        	cmp    ecx,0x2
  741d07:	7e 0d                                           	jle    0x741d16
  741d09:	85 c0                                           	test   eax,eax
  741d0b:	74 09                                           	je     0x741d16
  741d0d:	50                                              	push   eax
  741d0e:	e8 cd 27 da ff                                  	call   0x4e44e0
  741d13:	83 c4 04                                        	add    esp,0x4
  741d16:	8b c6                                           	mov    eax,esi
  741d18:	5e                                              	pop    esi
  741d19:	81 c4 b4 00 00 00                               	add    esp,0xb4
  741d1f:	c3                                              	ret
