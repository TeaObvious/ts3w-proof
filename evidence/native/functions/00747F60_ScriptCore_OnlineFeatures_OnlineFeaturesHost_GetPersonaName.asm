# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00747f60 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetPersonaName)
Paired Ghidra pseudocode: 00747F60_ScriptCore_OnlineFeatures_OnlineFeaturesHost_GetPersonaName.c
Window: [0x00747f60, 0x007480d0) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x007480d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00747f60: 83 ec 44 55 e8 27 14 02 00 8b e8 a1 68 50 1d 01
00747f70: 85 c0 74 05 8d 48 f8 eb 02 33 c9 33 c0 85 ed 89
00747f80: 44 24 04 0f 84 37 01 00 00 85 c9 0f 84 2f 01 00
00747f90: 00 53 56 57 bf 54 8e 1c 01 8d 44 24 24 8b f7 bb
00747fa0: 55 8e 1c 01 50 c7 44 24 24 a0 3f 00 01 89 7c 24
00747fb0: 18 89 74 24 1c 89 5c 24 20 e8 b2 e9 ff ff 8d 4c
00747fc0: 24 14 3b c1 74 18 8b 50 04 8b 00 52 50 e8 3e d9
00747fd0: cb ff 8b 5c 24 1c 8b 74 24 18 8b 7c 24 14 8b 4c
00747fe0: 24 2c 8b 44 24 24 2b c8 83 f9 01 7e 0d 85 c0 74
00747ff0: 09 50 e8 e9 c4 d9 ff 83 c4 04 3b fe 0f 84 a3 00
00748000: 00 00 2b f7 0f 84 9b 00 00 00 a1 68 50 1d 01 85
00748010: c0 74 05 8d 48 f8 eb 02 33 c9 8d 54 24 14 52 e8
00748020: 4c e9 ff ff 50 8d 44 24 28 50 e8 61 bc da ff 83
00748030: c4 08 50 8d 4c 24 38 e8 64 32 e6 ff 8b 4c 24 2c
00748040: 8b 44 24 24 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0
00748050: 74 09 50 e8 88 c4 d9 ff 83 c4 04 8b 54 24 1c 8b
00748060: 44 24 14 2b d0 83 fa 01 7e 0d 85 c0 74 09 50 e8
00748070: 6c c4 d9 ff 83 c4 04 8b 45 00 8b 40 50 8d 4c 24
00748080: 10 51 8d 54 24 38 52 8b cd ff d0 f6 44 24 3c 04
00748090: c7 44 24 34 f4 a6 fb 00 74 0b 6a 00 8d 4c 24 38
007480a0: e8 bb d6 da ff 2b df 83 fb 01 7e 0d 85 ff 74 09
007480b0: 57 e8 2a c4 d9 ff 83 c4 04 8b 44 24 10 5f 5e 5b
007480c0: 5d 83 c4 44 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00747f60 <.text+0x346f60>:
  747f60:	83 ec 44                                        	sub    esp,0x44
  747f63:	55                                              	push   ebp
  747f64:	e8 27 14 02 00                                  	call   0x769390
  747f69:	8b e8                                           	mov    ebp,eax
  747f6b:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  747f70:	85 c0                                           	test   eax,eax
  747f72:	74 05                                           	je     0x747f79
  747f74:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  747f77:	eb 02                                           	jmp    0x747f7b
  747f79:	33 c9                                           	xor    ecx,ecx
  747f7b:	33 c0                                           	xor    eax,eax
  747f7d:	85 ed                                           	test   ebp,ebp
  747f7f:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  747f83:	0f 84 37 01 00 00                               	je     0x7480c0
  747f89:	85 c9                                           	test   ecx,ecx
  747f8b:	0f 84 2f 01 00 00                               	je     0x7480c0
  747f91:	53                                              	push   ebx
  747f92:	56                                              	push   esi
  747f93:	57                                              	push   edi
  747f94:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  747f99:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  747f9d:	8b f7                                           	mov    esi,edi
  747f9f:	bb 55 8e 1c 01                                  	mov    ebx,0x11c8e55
  747fa4:	50                                              	push   eax
  747fa5:	c7 44 24 24 a0 3f 00 01                         	mov    DWORD PTR [esp+0x24],0x1003fa0
  747fad:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  747fb1:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  747fb5:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  747fb9:	e8 b2 e9 ff ff                                  	call   0x746970
  747fbe:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  747fc2:	3b c1                                           	cmp    eax,ecx
  747fc4:	74 18                                           	je     0x747fde
  747fc6:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  747fc9:	8b 00                                           	mov    eax,DWORD PTR [eax]
  747fcb:	52                                              	push   edx
  747fcc:	50                                              	push   eax
  747fcd:	e8 3e d9 cb ff                                  	call   0x405910
  747fd2:	8b 5c 24 1c                                     	mov    ebx,DWORD PTR [esp+0x1c]
  747fd6:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  747fda:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  747fde:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  747fe2:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  747fe6:	2b c8                                           	sub    ecx,eax
  747fe8:	83 f9 01                                        	cmp    ecx,0x1
  747feb:	7e 0d                                           	jle    0x747ffa
  747fed:	85 c0                                           	test   eax,eax
  747fef:	74 09                                           	je     0x747ffa
  747ff1:	50                                              	push   eax
  747ff2:	e8 e9 c4 d9 ff                                  	call   0x4e44e0
  747ff7:	83 c4 04                                        	add    esp,0x4
  747ffa:	3b fe                                           	cmp    edi,esi
  747ffc:	0f 84 a3 00 00 00                               	je     0x7480a5
  748002:	2b f7                                           	sub    esi,edi
  748004:	0f 84 9b 00 00 00                               	je     0x7480a5
  74800a:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  74800f:	85 c0                                           	test   eax,eax
  748011:	74 05                                           	je     0x748018
  748013:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  748016:	eb 02                                           	jmp    0x74801a
  748018:	33 c9                                           	xor    ecx,ecx
  74801a:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  74801e:	52                                              	push   edx
  74801f:	e8 4c e9 ff ff                                  	call   0x746970
  748024:	50                                              	push   eax
  748025:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  748029:	50                                              	push   eax
  74802a:	e8 61 bc da ff                                  	call   0x4f3c90
  74802f:	83 c4 08                                        	add    esp,0x8
  748032:	50                                              	push   eax
  748033:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  748037:	e8 64 32 e6 ff                                  	call   0x5ab2a0
  74803c:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  748040:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  748044:	2b c8                                           	sub    ecx,eax
  748046:	83 e1 fe                                        	and    ecx,0xfffffffe
  748049:	83 f9 02                                        	cmp    ecx,0x2
  74804c:	7e 0d                                           	jle    0x74805b
  74804e:	85 c0                                           	test   eax,eax
  748050:	74 09                                           	je     0x74805b
  748052:	50                                              	push   eax
  748053:	e8 88 c4 d9 ff                                  	call   0x4e44e0
  748058:	83 c4 04                                        	add    esp,0x4
  74805b:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  74805f:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  748063:	2b d0                                           	sub    edx,eax
  748065:	83 fa 01                                        	cmp    edx,0x1
  748068:	7e 0d                                           	jle    0x748077
  74806a:	85 c0                                           	test   eax,eax
  74806c:	74 09                                           	je     0x748077
  74806e:	50                                              	push   eax
  74806f:	e8 6c c4 d9 ff                                  	call   0x4e44e0
  748074:	83 c4 04                                        	add    esp,0x4
  748077:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  74807a:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  74807d:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  748081:	51                                              	push   ecx
  748082:	8d 54 24 38                                     	lea    edx,[esp+0x38]
  748086:	52                                              	push   edx
  748087:	8b cd                                           	mov    ecx,ebp
  748089:	ff d0                                           	call   eax
  74808b:	f6 44 24 3c 04                                  	test   BYTE PTR [esp+0x3c],0x4
  748090:	c7 44 24 34 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x34],0xfba6f4
  748098:	74 0b                                           	je     0x7480a5
  74809a:	6a 00                                           	push   0x0
  74809c:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  7480a0:	e8 bb d6 da ff                                  	call   0x4f5760
  7480a5:	2b df                                           	sub    ebx,edi
  7480a7:	83 fb 01                                        	cmp    ebx,0x1
  7480aa:	7e 0d                                           	jle    0x7480b9
  7480ac:	85 ff                                           	test   edi,edi
  7480ae:	74 09                                           	je     0x7480b9
  7480b0:	57                                              	push   edi
  7480b1:	e8 2a c4 d9 ff                                  	call   0x4e44e0
  7480b6:	83 c4 04                                        	add    esp,0x4
  7480b9:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7480bd:	5f                                              	pop    edi
  7480be:	5e                                              	pop    esi
  7480bf:	5b                                              	pop    ebx
  7480c0:	5d                                              	pop    ebp
  7480c1:	83 c4 44                                        	add    esp,0x44
  7480c4:	c3                                              	ret
  7480c5:	cc                                              	int3
  7480c6:	cc                                              	int3
  7480c7:	cc                                              	int3
  7480c8:	cc                                              	int3
  7480c9:	cc                                              	int3
  7480ca:	cc                                              	int3
  7480cb:	cc                                              	int3
  7480cc:	cc                                              	int3
  7480cd:	cc                                              	int3
  7480ce:	cc                                              	int3
  7480cf:	cc                                              	int3
