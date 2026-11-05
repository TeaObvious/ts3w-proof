# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007480d0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetUserID)
Paired Ghidra pseudocode: 007480D0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_GetUserID.c
Window: [0x007480d0, 0x007481d0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x007481d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007480d0: 83 ec 44 56 e8 b7 12 02 00 8b f0 a1 68 50 1d 01
007480e0: 85 c0 74 05 8d 48 f8 eb 02 33 c9 33 c0 85 f6 89
007480f0: 44 24 04 0f 84 c7 00 00 00 85 c9 0f 84 bf 00 00
00748100: 00 b8 54 8e 1c 01 89 44 24 08 89 44 24 0c 8d 44
00748110: 24 08 50 c7 44 24 18 a0 3f 00 01 c7 44 24 14 55
00748120: 8e 1c 01 e8 38 4d 14 00 8b 44 24 08 8b 4c 24 0c
00748130: 3b c1 74 70 2b c8 74 6c 8d 4c 24 08 51 8d 54 24
00748140: 1c 52 e8 49 bb da ff 83 c4 08 50 8d 4c 24 2c e8
00748150: 4c 31 e6 ff 8b 4c 24 20 8b 44 24 18 2b c8 83 e1
00748160: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 70 c3 d9 ff
00748170: 83 c4 04 8b 16 8b 52 50 8d 44 24 04 50 8d 4c 24
00748180: 2c 51 8b ce ff d2 f6 44 24 30 04 c7 44 24 28 f4
00748190: a6 fb 00 74 0b 6a 00 8d 4c 24 2c e8 c0 d5 da ff
007481a0: 8b 44 24 08 8b 4c 24 10 2b c8 83 f9 01 7e 0d 85
007481b0: c0 74 09 50 e8 27 c3 d9 ff 83 c4 04 8b 44 24 04
007481c0: 5e 83 c4 44 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007480d0 <.text+0x3470d0>:
  7480d0:	83 ec 44                                        	sub    esp,0x44
  7480d3:	56                                              	push   esi
  7480d4:	e8 b7 12 02 00                                  	call   0x769390
  7480d9:	8b f0                                           	mov    esi,eax
  7480db:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  7480e0:	85 c0                                           	test   eax,eax
  7480e2:	74 05                                           	je     0x7480e9
  7480e4:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  7480e7:	eb 02                                           	jmp    0x7480eb
  7480e9:	33 c9                                           	xor    ecx,ecx
  7480eb:	33 c0                                           	xor    eax,eax
  7480ed:	85 f6                                           	test   esi,esi
  7480ef:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  7480f3:	0f 84 c7 00 00 00                               	je     0x7481c0
  7480f9:	85 c9                                           	test   ecx,ecx
  7480fb:	0f 84 bf 00 00 00                               	je     0x7481c0
  748101:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  748106:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  74810a:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  74810e:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  748112:	50                                              	push   eax
  748113:	c7 44 24 18 a0 3f 00 01                         	mov    DWORD PTR [esp+0x18],0x1003fa0
  74811b:	c7 44 24 14 55 8e 1c 01                         	mov    DWORD PTR [esp+0x14],0x11c8e55
  748123:	e8 38 4d 14 00                                  	call   0x88ce60
  748128:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  74812c:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  748130:	3b c1                                           	cmp    eax,ecx
  748132:	74 70                                           	je     0x7481a4
  748134:	2b c8                                           	sub    ecx,eax
  748136:	74 6c                                           	je     0x7481a4
  748138:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  74813c:	51                                              	push   ecx
  74813d:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  748141:	52                                              	push   edx
  748142:	e8 49 bb da ff                                  	call   0x4f3c90
  748147:	83 c4 08                                        	add    esp,0x8
  74814a:	50                                              	push   eax
  74814b:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  74814f:	e8 4c 31 e6 ff                                  	call   0x5ab2a0
  748154:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  748158:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  74815c:	2b c8                                           	sub    ecx,eax
  74815e:	83 e1 fe                                        	and    ecx,0xfffffffe
  748161:	83 f9 02                                        	cmp    ecx,0x2
  748164:	7e 0d                                           	jle    0x748173
  748166:	85 c0                                           	test   eax,eax
  748168:	74 09                                           	je     0x748173
  74816a:	50                                              	push   eax
  74816b:	e8 70 c3 d9 ff                                  	call   0x4e44e0
  748170:	83 c4 04                                        	add    esp,0x4
  748173:	8b 16                                           	mov    edx,DWORD PTR [esi]
  748175:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  748178:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  74817c:	50                                              	push   eax
  74817d:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  748181:	51                                              	push   ecx
  748182:	8b ce                                           	mov    ecx,esi
  748184:	ff d2                                           	call   edx
  748186:	f6 44 24 30 04                                  	test   BYTE PTR [esp+0x30],0x4
  74818b:	c7 44 24 28 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x28],0xfba6f4
  748193:	74 0b                                           	je     0x7481a0
  748195:	6a 00                                           	push   0x0
  748197:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  74819b:	e8 c0 d5 da ff                                  	call   0x4f5760
  7481a0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7481a4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7481a8:	2b c8                                           	sub    ecx,eax
  7481aa:	83 f9 01                                        	cmp    ecx,0x1
  7481ad:	7e 0d                                           	jle    0x7481bc
  7481af:	85 c0                                           	test   eax,eax
  7481b1:	74 09                                           	je     0x7481bc
  7481b3:	50                                              	push   eax
  7481b4:	e8 27 c3 d9 ff                                  	call   0x4e44e0
  7481b9:	83 c4 04                                        	add    esp,0x4
  7481bc:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7481c0:	5e                                              	pop    esi
  7481c1:	83 c4 44                                        	add    esp,0x44
  7481c4:	c3                                              	ret
  7481c5:	cc                                              	int3
  7481c6:	cc                                              	int3
  7481c7:	cc                                              	int3
  7481c8:	cc                                              	int3
  7481c9:	cc                                              	int3
  7481ca:	cc                                              	int3
  7481cb:	cc                                              	int3
  7481cc:	cc                                              	int3
  7481cd:	cc                                              	int3
  7481ce:	cc                                              	int3
  7481cf:	cc                                              	int3
