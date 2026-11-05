# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00771a40 (ScriptCore.SocialFeatures::SocialFeaturesHost_SetProfileCrossroadsDesc)
Paired Ghidra pseudocode: 00771A40_ScriptCore_SocialFeatures_SocialFeaturesHost_SetProfileCrossroadsDesc.c
Window: [0x00771a40, 0x00771b10) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00771b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00771a40: 83 ec 20 e8 48 79 ff ff 85 c0 0f 84 ab 00 00 00
00771a50: 8b 4c 24 2c 8b 10 8b 52 58 53 56 57 51 8b c8 ff
00771a60: d2 6a 00 6a ff 50 8d 44 24 28 bf 54 8e 1c 01 be
00771a70: 55 8e 1c 01 50 c7 44 24 28 bc 9c 00 01 89 7c 24
00771a80: 1c 89 7c 24 20 89 74 24 24 e8 32 22 d8 ff 8d 4c
00771a90: 24 1c 83 c4 10 3b c1 74 14 8b 50 04 8b 00 52 50
00771aa0: e8 6b 3e c9 ff 8b 74 24 14 8b 7c 24 0c 8b 4c 24
00771ab0: 24 8b 44 24 1c 2b c8 83 f9 01 7e 0d 85 c0 74 09
00771ac0: 50 e8 1a 2a d7 ff 83 c4 04 8b 54 24 34 8b 44 24
00771ad0: 30 57 52 50 e8 27 29 2b 00 2b f7 83 c4 0c 83 fe
00771ae0: 01 8b d8 7e 0d 85 ff 74 09 57 e8 f1 29 d7 ff 83
00771af0: c4 04 5f 5e 8b c3 5b 83 c4 20 c3 b8 01 00 00 00
00771b00: 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00771a40 <.text+0x370a40>:
  771a40:	83 ec 20                                        	sub    esp,0x20
  771a43:	e8 48 79 ff ff                                  	call   0x769390
  771a48:	85 c0                                           	test   eax,eax
  771a4a:	0f 84 ab 00 00 00                               	je     0x771afb
  771a50:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  771a54:	8b 10                                           	mov    edx,DWORD PTR [eax]
  771a56:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  771a59:	53                                              	push   ebx
  771a5a:	56                                              	push   esi
  771a5b:	57                                              	push   edi
  771a5c:	51                                              	push   ecx
  771a5d:	8b c8                                           	mov    ecx,eax
  771a5f:	ff d2                                           	call   edx
  771a61:	6a 00                                           	push   0x0
  771a63:	6a ff                                           	push   0xffffffff
  771a65:	50                                              	push   eax
  771a66:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  771a6a:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  771a6f:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  771a74:	50                                              	push   eax
  771a75:	c7 44 24 28 bc 9c 00 01                         	mov    DWORD PTR [esp+0x28],0x1009cbc
  771a7d:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  771a81:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  771a85:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  771a89:	e8 32 22 d8 ff                                  	call   0x4f3cc0
  771a8e:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  771a92:	83 c4 10                                        	add    esp,0x10
  771a95:	3b c1                                           	cmp    eax,ecx
  771a97:	74 14                                           	je     0x771aad
  771a99:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  771a9c:	8b 00                                           	mov    eax,DWORD PTR [eax]
  771a9e:	52                                              	push   edx
  771a9f:	50                                              	push   eax
  771aa0:	e8 6b 3e c9 ff                                  	call   0x405910
  771aa5:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  771aa9:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  771aad:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  771ab1:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  771ab5:	2b c8                                           	sub    ecx,eax
  771ab7:	83 f9 01                                        	cmp    ecx,0x1
  771aba:	7e 0d                                           	jle    0x771ac9
  771abc:	85 c0                                           	test   eax,eax
  771abe:	74 09                                           	je     0x771ac9
  771ac0:	50                                              	push   eax
  771ac1:	e8 1a 2a d7 ff                                  	call   0x4e44e0
  771ac6:	83 c4 04                                        	add    esp,0x4
  771ac9:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  771acd:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  771ad1:	57                                              	push   edi
  771ad2:	52                                              	push   edx
  771ad3:	50                                              	push   eax
  771ad4:	e8 27 29 2b 00                                  	call   0xa24400
  771ad9:	2b f7                                           	sub    esi,edi
  771adb:	83 c4 0c                                        	add    esp,0xc
  771ade:	83 fe 01                                        	cmp    esi,0x1
  771ae1:	8b d8                                           	mov    ebx,eax
  771ae3:	7e 0d                                           	jle    0x771af2
  771ae5:	85 ff                                           	test   edi,edi
  771ae7:	74 09                                           	je     0x771af2
  771ae9:	57                                              	push   edi
  771aea:	e8 f1 29 d7 ff                                  	call   0x4e44e0
  771aef:	83 c4 04                                        	add    esp,0x4
  771af2:	5f                                              	pop    edi
  771af3:	5e                                              	pop    esi
  771af4:	8b c3                                           	mov    eax,ebx
  771af6:	5b                                              	pop    ebx
  771af7:	83 c4 20                                        	add    esp,0x20
  771afa:	c3                                              	ret
  771afb:	b8 01 00 00 00                                  	mov    eax,0x1
  771b00:	83 c4 20                                        	add    esp,0x20
  771b03:	c3                                              	ret
  771b04:	cc                                              	int3
  771b05:	cc                                              	int3
  771b06:	cc                                              	int3
  771b07:	cc                                              	int3
  771b08:	cc                                              	int3
  771b09:	cc                                              	int3
  771b0a:	cc                                              	int3
  771b0b:	cc                                              	int3
  771b0c:	cc                                              	int3
  771b0d:	cc                                              	int3
  771b0e:	cc                                              	int3
  771b0f:	cc                                              	int3
