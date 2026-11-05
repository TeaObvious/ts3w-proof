# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772040 (ScriptCore.SocialFeatures::SocialFeaturesHost_ReplyToPassportMessage)
Paired Ghidra pseudocode: 00772040_ScriptCore_SocialFeatures_SocialFeaturesHost_ReplyToPassportMessage.c
Window: [0x00772040, 0x00772100) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00772100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772040: 83 ec 20 e8 48 73 ff ff 85 c0 0f 84 a6 00 00 00
00772050: 8b 4c 24 28 8b 10 8b 52 58 53 56 57 51 8b c8 ff
00772060: d2 6a 00 6a ff 50 8d 44 24 28 bf 54 8e 1c 01 be
00772070: 55 8e 1c 01 50 c7 44 24 28 bc 9c 00 01 89 7c 24
00772080: 1c 89 7c 24 20 89 74 24 24 e8 32 1c d8 ff 8d 4c
00772090: 24 1c 83 c4 10 3b c1 74 14 8b 50 04 8b 00 52 50
007720a0: e8 6b 38 c9 ff 8b 74 24 14 8b 7c 24 0c 8b 4c 24
007720b0: 24 8b 44 24 1c 2b c8 83 f9 01 7e 0d 85 c0 74 09
007720c0: 50 e8 1a 24 d7 ff 83 c4 04 8b 54 24 30 57 52 e8
007720d0: cc 34 2b 00 2b f7 83 c4 08 83 fe 01 8b d8 7e 0d
007720e0: 85 ff 74 09 57 e8 f6 23 d7 ff 83 c4 04 5f 5e 8b
007720f0: c3 5b 83 c4 20 c3 83 c8 ff 83 c4 20 c3 cc cc cc

LINEAR DISASSEMBLY
00772040 <.text+0x371040>:
  772040:	83 ec 20                                        	sub    esp,0x20
  772043:	e8 48 73 ff ff                                  	call   0x769390
  772048:	85 c0                                           	test   eax,eax
  77204a:	0f 84 a6 00 00 00                               	je     0x7720f6
  772050:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  772054:	8b 10                                           	mov    edx,DWORD PTR [eax]
  772056:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  772059:	53                                              	push   ebx
  77205a:	56                                              	push   esi
  77205b:	57                                              	push   edi
  77205c:	51                                              	push   ecx
  77205d:	8b c8                                           	mov    ecx,eax
  77205f:	ff d2                                           	call   edx
  772061:	6a 00                                           	push   0x0
  772063:	6a ff                                           	push   0xffffffff
  772065:	50                                              	push   eax
  772066:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  77206a:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  77206f:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  772074:	50                                              	push   eax
  772075:	c7 44 24 28 bc 9c 00 01                         	mov    DWORD PTR [esp+0x28],0x1009cbc
  77207d:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  772081:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  772085:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  772089:	e8 32 1c d8 ff                                  	call   0x4f3cc0
  77208e:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  772092:	83 c4 10                                        	add    esp,0x10
  772095:	3b c1                                           	cmp    eax,ecx
  772097:	74 14                                           	je     0x7720ad
  772099:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  77209c:	8b 00                                           	mov    eax,DWORD PTR [eax]
  77209e:	52                                              	push   edx
  77209f:	50                                              	push   eax
  7720a0:	e8 6b 38 c9 ff                                  	call   0x405910
  7720a5:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  7720a9:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  7720ad:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  7720b1:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  7720b5:	2b c8                                           	sub    ecx,eax
  7720b7:	83 f9 01                                        	cmp    ecx,0x1
  7720ba:	7e 0d                                           	jle    0x7720c9
  7720bc:	85 c0                                           	test   eax,eax
  7720be:	74 09                                           	je     0x7720c9
  7720c0:	50                                              	push   eax
  7720c1:	e8 1a 24 d7 ff                                  	call   0x4e44e0
  7720c6:	83 c4 04                                        	add    esp,0x4
  7720c9:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  7720cd:	57                                              	push   edi
  7720ce:	52                                              	push   edx
  7720cf:	e8 cc 34 2b 00                                  	call   0xa255a0
  7720d4:	2b f7                                           	sub    esi,edi
  7720d6:	83 c4 08                                        	add    esp,0x8
  7720d9:	83 fe 01                                        	cmp    esi,0x1
  7720dc:	8b d8                                           	mov    ebx,eax
  7720de:	7e 0d                                           	jle    0x7720ed
  7720e0:	85 ff                                           	test   edi,edi
  7720e2:	74 09                                           	je     0x7720ed
  7720e4:	57                                              	push   edi
  7720e5:	e8 f6 23 d7 ff                                  	call   0x4e44e0
  7720ea:	83 c4 04                                        	add    esp,0x4
  7720ed:	5f                                              	pop    edi
  7720ee:	5e                                              	pop    esi
  7720ef:	8b c3                                           	mov    eax,ebx
  7720f1:	5b                                              	pop    ebx
  7720f2:	83 c4 20                                        	add    esp,0x20
  7720f5:	c3                                              	ret
  7720f6:	83 c8 ff                                        	or     eax,0xffffffff
  7720f9:	83 c4 20                                        	add    esp,0x20
  7720fc:	c3                                              	ret
  7720fd:	cc                                              	int3
  7720fe:	cc                                              	int3
  7720ff:	cc                                              	int3
