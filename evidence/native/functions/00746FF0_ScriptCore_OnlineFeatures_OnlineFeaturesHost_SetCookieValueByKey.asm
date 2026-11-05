# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00746ff0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_SetCookieValueByKey)
Paired Ghidra pseudocode: 00746FF0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_SetCookieValueByKey.c
Window: [0x00746ff0, 0x007470c0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007470c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00746ff0: 83 ec 20 e8 98 23 02 00 85 c0 0f 84 b9 00 00 00
00747000: 8b 4c 24 28 85 c9 0f 84 ad 00 00 00 8b 10 56 57
00747010: 51 bf 54 8e 1c 01 8b c8 8b 42 58 be 55 8e 1c 01
00747020: c7 44 24 18 04 3c 00 01 89 7c 24 0c 89 7c 24 10
00747030: 89 74 24 14 ff d0 6a 00 6a ff 50 8d 4c 24 24 51
00747040: e8 7b cc da ff 8d 54 24 18 83 c4 10 3b c2 74 18
00747050: 8b 48 04 8b 10 51 52 8d 4c 24 10 e8 b0 e8 cb ff
00747060: 8b 74 24 10 8b 7c 24 08 8b 4c 24 20 8b 44 24 18
00747070: 2b c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 5f d4 d9
00747080: ff 83 c4 04 a1 68 50 1d 01 85 c0 74 16 83 c0 f8
00747090: 74 11 8b 54 24 2c 8b 88 1c 01 00 00 57 52 e8 ad
007470a0: f7 ff ff 2b f7 83 fe 01 7e 0d 85 ff 74 09 57 e8
007470b0: 2c d4 d9 ff 83 c4 04 5f 5e 83 c4 20 c3 cc cc cc

LINEAR DISASSEMBLY
00746ff0 <.text+0x345ff0>:
  746ff0:	83 ec 20                                        	sub    esp,0x20
  746ff3:	e8 98 23 02 00                                  	call   0x769390
  746ff8:	85 c0                                           	test   eax,eax
  746ffa:	0f 84 b9 00 00 00                               	je     0x7470b9
  747000:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  747004:	85 c9                                           	test   ecx,ecx
  747006:	0f 84 ad 00 00 00                               	je     0x7470b9
  74700c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74700e:	56                                              	push   esi
  74700f:	57                                              	push   edi
  747010:	51                                              	push   ecx
  747011:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  747016:	8b c8                                           	mov    ecx,eax
  747018:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  74701b:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  747020:	c7 44 24 18 04 3c 00 01                         	mov    DWORD PTR [esp+0x18],0x1003c04
  747028:	89 7c 24 0c                                     	mov    DWORD PTR [esp+0xc],edi
  74702c:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  747030:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  747034:	ff d0                                           	call   eax
  747036:	6a 00                                           	push   0x0
  747038:	6a ff                                           	push   0xffffffff
  74703a:	50                                              	push   eax
  74703b:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  74703f:	51                                              	push   ecx
  747040:	e8 7b cc da ff                                  	call   0x4f3cc0
  747045:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  747049:	83 c4 10                                        	add    esp,0x10
  74704c:	3b c2                                           	cmp    eax,edx
  74704e:	74 18                                           	je     0x747068
  747050:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  747053:	8b 10                                           	mov    edx,DWORD PTR [eax]
  747055:	51                                              	push   ecx
  747056:	52                                              	push   edx
  747057:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  74705b:	e8 b0 e8 cb ff                                  	call   0x405910
  747060:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  747064:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  747068:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  74706c:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  747070:	2b c8                                           	sub    ecx,eax
  747072:	83 f9 01                                        	cmp    ecx,0x1
  747075:	7e 0d                                           	jle    0x747084
  747077:	85 c0                                           	test   eax,eax
  747079:	74 09                                           	je     0x747084
  74707b:	50                                              	push   eax
  74707c:	e8 5f d4 d9 ff                                  	call   0x4e44e0
  747081:	83 c4 04                                        	add    esp,0x4
  747084:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  747089:	85 c0                                           	test   eax,eax
  74708b:	74 16                                           	je     0x7470a3
  74708d:	83 c0 f8                                        	add    eax,0xfffffff8
  747090:	74 11                                           	je     0x7470a3
  747092:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  747096:	8b 88 1c 01 00 00                               	mov    ecx,DWORD PTR [eax+0x11c]
  74709c:	57                                              	push   edi
  74709d:	52                                              	push   edx
  74709e:	e8 ad f7 ff ff                                  	call   0x746850
  7470a3:	2b f7                                           	sub    esi,edi
  7470a5:	83 fe 01                                        	cmp    esi,0x1
  7470a8:	7e 0d                                           	jle    0x7470b7
  7470aa:	85 ff                                           	test   edi,edi
  7470ac:	74 09                                           	je     0x7470b7
  7470ae:	57                                              	push   edi
  7470af:	e8 2c d4 d9 ff                                  	call   0x4e44e0
  7470b4:	83 c4 04                                        	add    esp,0x4
  7470b7:	5f                                              	pop    edi
  7470b8:	5e                                              	pop    esi
  7470b9:	83 c4 20                                        	add    esp,0x20
  7470bc:	c3                                              	ret
  7470bd:	cc                                              	int3
  7470be:	cc                                              	int3
  7470bf:	cc                                              	int3
