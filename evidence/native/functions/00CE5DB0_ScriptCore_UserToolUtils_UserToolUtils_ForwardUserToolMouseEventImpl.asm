# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce5db0 (ScriptCore.UserToolUtils::UserToolUtils_ForwardUserToolMouseEventImpl)
Paired Ghidra pseudocode: 00CE5DB0_ScriptCore_UserToolUtils_UserToolUtils_ForwardUserToolMouseEventImpl.c
Window: [0x00ce5db0, 0x00ce5e50) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce5e50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce5db0: e8 4b 97 00 00 8b c8 85 c9 74 31 8b 44 24 04 83
00ce5dc0: f8 03 77 28 ff 24 85 34 5e ce 00 8b 44 24 14 d9
00ce5dd0: 44 24 0c 8b 54 24 10 50 52 83 ec 08 d9 5c 24 04
00ce5de0: d9 44 24 18 d9 1c 24 e8 34 9a 00 00 c3 8b 44 24
00ce5df0: 14 d9 44 24 0c 8b 54 24 10 50 52 83 ec 08 d9 5c
00ce5e00: 24 04 d9 44 24 18 d9 1c 24 e8 d2 9a 00 00 c3 8b
00ce5e10: 44 24 14 d9 44 24 0c 50 83 ec 08 d9 5c 24 04 d9
00ce5e20: 44 24 14 d9 1c 24 e8 55 9b 00 00 c3 e9 ff 9b 00
00ce5e30: 00 8d 49 00 cb 5d ce 00 ed 5d ce 00 0f 5e ce 00
00ce5e40: 2c 5e ce 00 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce5db0 <.text+0x8e4db0>:
  ce5db0:	e8 4b 97 00 00                                  	call   0xcef500
  ce5db5:	8b c8                                           	mov    ecx,eax
  ce5db7:	85 c9                                           	test   ecx,ecx
  ce5db9:	74 31                                           	je     0xce5dec
  ce5dbb:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  ce5dbf:	83 f8 03                                        	cmp    eax,0x3
  ce5dc2:	77 28                                           	ja     0xce5dec
  ce5dc4:	ff 24 85 34 5e ce 00                            	jmp    DWORD PTR [eax*4+0xce5e34]
  ce5dcb:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  ce5dcf:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  ce5dd3:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  ce5dd7:	50                                              	push   eax
  ce5dd8:	52                                              	push   edx
  ce5dd9:	83 ec 08                                        	sub    esp,0x8
  ce5ddc:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  ce5de0:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  ce5de4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  ce5de7:	e8 34 9a 00 00                                  	call   0xcef820
  ce5dec:	c3                                              	ret
  ce5ded:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  ce5df1:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  ce5df5:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  ce5df9:	50                                              	push   eax
  ce5dfa:	52                                              	push   edx
  ce5dfb:	83 ec 08                                        	sub    esp,0x8
  ce5dfe:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  ce5e02:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  ce5e06:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  ce5e09:	e8 d2 9a 00 00                                  	call   0xcef8e0
  ce5e0e:	c3                                              	ret
  ce5e0f:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  ce5e13:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  ce5e17:	50                                              	push   eax
  ce5e18:	83 ec 08                                        	sub    esp,0x8
  ce5e1b:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  ce5e1f:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  ce5e23:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  ce5e26:	e8 55 9b 00 00                                  	call   0xcef980
  ce5e2b:	c3                                              	ret
  ce5e2c:	e9 ff 9b 00 00                                  	jmp    0xcefa30
  ce5e31:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  ce5e34:	cb                                              	retf
  ce5e35:	5d                                              	pop    ebp
  ce5e36:	ce                                              	into
  ce5e37:	00 ed                                           	add    ch,ch
  ce5e39:	5d                                              	pop    ebp
  ce5e3a:	ce                                              	into
  ce5e3b:	00 0f                                           	add    BYTE PTR [edi],cl
  ce5e3d:	5e                                              	pop    esi
  ce5e3e:	ce                                              	into
  ce5e3f:	00 2c 5e                                        	add    BYTE PTR [esi+ebx*2],ch
  ce5e42:	ce                                              	into
  ce5e43:	00 cc                                           	add    ah,cl
  ce5e45:	cc                                              	int3
  ce5e46:	cc                                              	int3
  ce5e47:	cc                                              	int3
  ce5e48:	cc                                              	int3
  ce5e49:	cc                                              	int3
  ce5e4a:	cc                                              	int3
  ce5e4b:	cc                                              	int3
  ce5e4c:	cc                                              	int3
  ce5e4d:	cc                                              	int3
  ce5e4e:	cc                                              	int3
  ce5e4f:	cc                                              	int3
