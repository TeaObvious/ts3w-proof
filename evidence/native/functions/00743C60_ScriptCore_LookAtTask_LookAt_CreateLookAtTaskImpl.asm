# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743c60 (ScriptCore.LookAtTask::LookAt_CreateLookAtTaskImpl)
Paired Ghidra pseudocode: 00743C60_ScriptCore_LookAtTask_LookAt_CreateLookAtTaskImpl.c
Window: [0x00743c60, 0x00743d00) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743d00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743c60: e8 0b 39 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
00743c70: c8 e8 0a 43 1f 00 85 c0 75 03 33 c0 c3 8b 0d 84
00743c80: d4 1d 01 51 8b c8 e8 d5 05 1f 00 85 c0 74 eb 8b
00743c90: 48 28 85 c9 56 57 74 64 8b 54 24 18 8b 40 04 52
00743ca0: 8b 54 24 18 52 50 e8 95 cb e3 ff 8b f0 85 f6 74
00743cb0: 04 83 46 04 01 83 cf ff 85 f6 74 3b e8 cf 56 02
00743cc0: 00 8b 10 6a 46 8b c8 8b 82 c8 00 00 00 56 ff d0
00743cd0: 6a 01 8b ce 8b f8 e8 55 c8 e3 ff 8b 46 04 83 c0
00743ce0: ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b
00743cf0: 02 6a 01 8b ce ff d0 8b c7 5f 5e c3 33 f6 eb b5

LINEAR DISASSEMBLY
00743c60 <.text+0x342c60>:
  743c60:	e8 0b 39 1f 00                                  	call   0x937570
  743c65:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  743c69:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  743c6d:	51                                              	push   ecx
  743c6e:	52                                              	push   edx
  743c6f:	8b c8                                           	mov    ecx,eax
  743c71:	e8 0a 43 1f 00                                  	call   0x937f80
  743c76:	85 c0                                           	test   eax,eax
  743c78:	75 03                                           	jne    0x743c7d
  743c7a:	33 c0                                           	xor    eax,eax
  743c7c:	c3                                              	ret
  743c7d:	8b 0d 84 d4 1d 01                               	mov    ecx,DWORD PTR ds:0x11dd484
  743c83:	51                                              	push   ecx
  743c84:	8b c8                                           	mov    ecx,eax
  743c86:	e8 d5 05 1f 00                                  	call   0x934260
  743c8b:	85 c0                                           	test   eax,eax
  743c8d:	74 eb                                           	je     0x743c7a
  743c8f:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  743c92:	85 c9                                           	test   ecx,ecx
  743c94:	56                                              	push   esi
  743c95:	57                                              	push   edi
  743c96:	74 64                                           	je     0x743cfc
  743c98:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  743c9c:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
  743c9f:	52                                              	push   edx
  743ca0:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  743ca4:	52                                              	push   edx
  743ca5:	50                                              	push   eax
  743ca6:	e8 95 cb e3 ff                                  	call   0x580840
  743cab:	8b f0                                           	mov    esi,eax
  743cad:	85 f6                                           	test   esi,esi
  743caf:	74 04                                           	je     0x743cb5
  743cb1:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  743cb5:	83 cf ff                                        	or     edi,0xffffffff
  743cb8:	85 f6                                           	test   esi,esi
  743cba:	74 3b                                           	je     0x743cf7
  743cbc:	e8 cf 56 02 00                                  	call   0x769390
  743cc1:	8b 10                                           	mov    edx,DWORD PTR [eax]
  743cc3:	6a 46                                           	push   0x46
  743cc5:	8b c8                                           	mov    ecx,eax
  743cc7:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  743ccd:	56                                              	push   esi
  743cce:	ff d0                                           	call   eax
  743cd0:	6a 01                                           	push   0x1
  743cd2:	8b ce                                           	mov    ecx,esi
  743cd4:	8b f8                                           	mov    edi,eax
  743cd6:	e8 55 c8 e3 ff                                  	call   0x580530
  743cdb:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  743cde:	83 c0 ff                                        	add    eax,0xffffffff
  743ce1:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  743ce4:	75 11                                           	jne    0x743cf7
  743ce6:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  743ced:	8b 16                                           	mov    edx,DWORD PTR [esi]
  743cef:	8b 02                                           	mov    eax,DWORD PTR [edx]
  743cf1:	6a 01                                           	push   0x1
  743cf3:	8b ce                                           	mov    ecx,esi
  743cf5:	ff d0                                           	call   eax
  743cf7:	8b c7                                           	mov    eax,edi
  743cf9:	5f                                              	pop    edi
  743cfa:	5e                                              	pop    esi
  743cfb:	c3                                              	ret
  743cfc:	33 f6                                           	xor    esi,esi
  743cfe:	eb b5                                           	jmp    0x743cb5
