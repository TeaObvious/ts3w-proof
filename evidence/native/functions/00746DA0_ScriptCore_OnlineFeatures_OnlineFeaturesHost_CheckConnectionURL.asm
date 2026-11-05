# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00746da0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_CheckConnectionURL)
Paired Ghidra pseudocode: 00746DA0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_CheckConnectionURL.c
Window: [0x00746da0, 0x00746e70) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00746e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00746da0: 83 ec 20 53 e8 e7 25 02 00 8b 0d 68 50 1d 01 85
00746db0: c9 74 05 8d 59 f8 eb 02 33 db 85 c0 0f 84 a7 00
00746dc0: 00 00 85 db 0f 84 9f 00 00 00 8b 4c 24 28 8b 10
00746dd0: 8b 52 58 56 57 bf 54 8e 1c 01 51 be 55 8e 1c 01
00746de0: 8b c8 c7 44 24 1c 04 3c 00 01 89 7c 24 10 89 7c
00746df0: 24 14 89 74 24 18 ff d2 6a 00 6a ff 50 8d 44 24
00746e00: 28 50 e8 b9 ce da ff 8d 4c 24 1c 83 c4 10 3b c1
00746e10: 74 14 8b 50 04 8b 00 52 50 e8 f2 ea cb ff 8b 74
00746e20: 24 14 8b 7c 24 0c 8b 4c 24 24 8b 44 24 1c 2b c8
00746e30: 83 f9 01 7e 0d 85 c0 74 09 50 e8 a1 d6 d9 ff 83
00746e40: c4 04 57 8b cb e8 c6 05 14 00 2b f7 83 fe 01 8a
00746e50: d8 7e 0d 85 ff 74 09 57 e8 83 d6 d9 ff 83 c4 04
00746e60: 5f 5e 8a c3 5b 83 c4 20 c3 32 c0 5b 83 c4 20 c3

LINEAR DISASSEMBLY
00746da0 <.text+0x345da0>:
  746da0:	83 ec 20                                        	sub    esp,0x20
  746da3:	53                                              	push   ebx
  746da4:	e8 e7 25 02 00                                  	call   0x769390
  746da9:	8b 0d 68 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d5068
  746daf:	85 c9                                           	test   ecx,ecx
  746db1:	74 05                                           	je     0x746db8
  746db3:	8d 59 f8                                        	lea    ebx,[ecx-0x8]
  746db6:	eb 02                                           	jmp    0x746dba
  746db8:	33 db                                           	xor    ebx,ebx
  746dba:	85 c0                                           	test   eax,eax
  746dbc:	0f 84 a7 00 00 00                               	je     0x746e69
  746dc2:	85 db                                           	test   ebx,ebx
  746dc4:	0f 84 9f 00 00 00                               	je     0x746e69
  746dca:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  746dce:	8b 10                                           	mov    edx,DWORD PTR [eax]
  746dd0:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  746dd3:	56                                              	push   esi
  746dd4:	57                                              	push   edi
  746dd5:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  746dda:	51                                              	push   ecx
  746ddb:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  746de0:	8b c8                                           	mov    ecx,eax
  746de2:	c7 44 24 1c 04 3c 00 01                         	mov    DWORD PTR [esp+0x1c],0x1003c04
  746dea:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  746dee:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  746df2:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  746df6:	ff d2                                           	call   edx
  746df8:	6a 00                                           	push   0x0
  746dfa:	6a ff                                           	push   0xffffffff
  746dfc:	50                                              	push   eax
  746dfd:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  746e01:	50                                              	push   eax
  746e02:	e8 b9 ce da ff                                  	call   0x4f3cc0
  746e07:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  746e0b:	83 c4 10                                        	add    esp,0x10
  746e0e:	3b c1                                           	cmp    eax,ecx
  746e10:	74 14                                           	je     0x746e26
  746e12:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  746e15:	8b 00                                           	mov    eax,DWORD PTR [eax]
  746e17:	52                                              	push   edx
  746e18:	50                                              	push   eax
  746e19:	e8 f2 ea cb ff                                  	call   0x405910
  746e1e:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  746e22:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  746e26:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  746e2a:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  746e2e:	2b c8                                           	sub    ecx,eax
  746e30:	83 f9 01                                        	cmp    ecx,0x1
  746e33:	7e 0d                                           	jle    0x746e42
  746e35:	85 c0                                           	test   eax,eax
  746e37:	74 09                                           	je     0x746e42
  746e39:	50                                              	push   eax
  746e3a:	e8 a1 d6 d9 ff                                  	call   0x4e44e0
  746e3f:	83 c4 04                                        	add    esp,0x4
  746e42:	57                                              	push   edi
  746e43:	8b cb                                           	mov    ecx,ebx
  746e45:	e8 c6 05 14 00                                  	call   0x887410
  746e4a:	2b f7                                           	sub    esi,edi
  746e4c:	83 fe 01                                        	cmp    esi,0x1
  746e4f:	8a d8                                           	mov    bl,al
  746e51:	7e 0d                                           	jle    0x746e60
  746e53:	85 ff                                           	test   edi,edi
  746e55:	74 09                                           	je     0x746e60
  746e57:	57                                              	push   edi
  746e58:	e8 83 d6 d9 ff                                  	call   0x4e44e0
  746e5d:	83 c4 04                                        	add    esp,0x4
  746e60:	5f                                              	pop    edi
  746e61:	5e                                              	pop    esi
  746e62:	8a c3                                           	mov    al,bl
  746e64:	5b                                              	pop    ebx
  746e65:	83 c4 20                                        	add    esp,0x20
  746e68:	c3                                              	ret
  746e69:	32 c0                                           	xor    al,al
  746e6b:	5b                                              	pop    ebx
  746e6c:	83 c4 20                                        	add    esp,0x20
  746e6f:	c3                                              	ret
