# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00741b50 (ScriptCore.EAText::EAText_GetMoneyString)
Paired Ghidra pseudocode: 00741B50_ScriptCore_EAText_EAText_GetMoneyString.c
Window: [0x00741b50, 0x00741c40) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x00741c40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00741b50: 81 ec b4 00 00 00 df ac 24 b8 00 00 00 56 68 70
00741b60: 1f 00 01 68 60 1f 00 01 6a 40 8d 44 24 44 50 83
00741b70: ec 08 dd 1c 24 e8 b6 7a d0 ff 83 c4 18 e8 0e 78
00741b80: 02 00 8d 4c 24 38 51 8d 4c 24 08 8b f0 c7 44 24
00741b90: 08 00 00 00 00 c7 44 24 0c 00 00 00 00 c7 44 24
00741ba0: 10 00 00 00 00 c7 44 24 14 44 1f 00 01 e8 de 99
00741bb0: cc ff 6a 01 6a 10 8d 54 24 0c 52 6a 09 6a 13 8d
00741bc0: 4c 24 2c c7 44 24 2c 6c 88 00 01 66 c7 44 24 36
00741bd0: 13 00 66 c7 44 24 34 0b 00 e8 e2 3d db ff 8b 06
00741be0: 8b 40 50 8d 4c 24 14 51 8d 54 24 1c 52 8b ce ff
00741bf0: d0 f6 44 24 20 04 8b 74 24 14 c7 44 24 18 f4 a6
00741c00: fb 00 74 0b 6a 00 8d 4c 24 1c e8 51 3b db ff 8b
00741c10: 4c 24 0c 8b 44 24 04 2b c8 83 e1 fe 83 f9 02 7e
00741c20: 0d 85 c0 74 09 50 e8 b5 28 da ff 83 c4 04 8b c6
00741c30: 5e 81 c4 b4 00 00 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00741b50 <.text+0x340b50>:
  741b50:	81 ec b4 00 00 00                               	sub    esp,0xb4
  741b56:	df ac 24 b8 00 00 00                            	fild   QWORD PTR [esp+0xb8]
  741b5d:	56                                              	push   esi
  741b5e:	68 70 1f 00 01                                  	push   0x1001f70
  741b63:	68 60 1f 00 01                                  	push   0x1001f60
  741b68:	6a 40                                           	push   0x40
  741b6a:	8d 44 24 44                                     	lea    eax,[esp+0x44]
  741b6e:	50                                              	push   eax
  741b6f:	83 ec 08                                        	sub    esp,0x8
  741b72:	dd 1c 24                                        	fstp   QWORD PTR [esp]
  741b75:	e8 b6 7a d0 ff                                  	call   0x449630
  741b7a:	83 c4 18                                        	add    esp,0x18
  741b7d:	e8 0e 78 02 00                                  	call   0x769390
  741b82:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  741b86:	51                                              	push   ecx
  741b87:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  741b8b:	8b f0                                           	mov    esi,eax
  741b8d:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  741b95:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  741b9d:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  741ba5:	c7 44 24 14 44 1f 00 01                         	mov    DWORD PTR [esp+0x14],0x1001f44
  741bad:	e8 de 99 cc ff                                  	call   0x40b590
  741bb2:	6a 01                                           	push   0x1
  741bb4:	6a 10                                           	push   0x10
  741bb6:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  741bba:	52                                              	push   edx
  741bbb:	6a 09                                           	push   0x9
  741bbd:	6a 13                                           	push   0x13
  741bbf:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  741bc3:	c7 44 24 2c 6c 88 00 01                         	mov    DWORD PTR [esp+0x2c],0x100886c
  741bcb:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
  741bd2:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
  741bd9:	e8 e2 3d db ff                                  	call   0x4f59c0
  741bde:	8b 06                                           	mov    eax,DWORD PTR [esi]
  741be0:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  741be3:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  741be7:	51                                              	push   ecx
  741be8:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  741bec:	52                                              	push   edx
  741bed:	8b ce                                           	mov    ecx,esi
  741bef:	ff d0                                           	call   eax
  741bf1:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  741bf6:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  741bfa:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  741c02:	74 0b                                           	je     0x741c0f
  741c04:	6a 00                                           	push   0x0
  741c06:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  741c0a:	e8 51 3b db ff                                  	call   0x4f5760
  741c0f:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  741c13:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  741c17:	2b c8                                           	sub    ecx,eax
  741c19:	83 e1 fe                                        	and    ecx,0xfffffffe
  741c1c:	83 f9 02                                        	cmp    ecx,0x2
  741c1f:	7e 0d                                           	jle    0x741c2e
  741c21:	85 c0                                           	test   eax,eax
  741c23:	74 09                                           	je     0x741c2e
  741c25:	50                                              	push   eax
  741c26:	e8 b5 28 da ff                                  	call   0x4e44e0
  741c2b:	83 c4 04                                        	add    esp,0x4
  741c2e:	8b c6                                           	mov    eax,esi
  741c30:	5e                                              	pop    esi
  741c31:	81 c4 b4 00 00 00                               	add    esp,0xb4
  741c37:	c3                                              	ret
  741c38:	cc                                              	int3
  741c39:	cc                                              	int3
  741c3a:	cc                                              	int3
  741c3b:	cc                                              	int3
  741c3c:	cc                                              	int3
  741c3d:	cc                                              	int3
  741c3e:	cc                                              	int3
  741c3f:	cc                                              	int3
