# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074e120 (ScriptCore.RouteManager::RouteManager_IsObjectRouting)
Paired Ghidra pseudocode: 0074E120_ScriptCore_RouteManager_RouteManager_IsObjectRouting.c
Window: [0x0074e120, 0x0074e210) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074e210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074e120: 55 8b ec 83 e4 f0 83 ec 28 56 8b 75 08 57 8b 7d
0074e130: 0c 8b c6 0b c7 75 08 32 c0 5f 5e 8b e5 5d c3 e8
0074e140: 2c 94 1e 00 57 56 8b c8 e8 33 9e 1e 00 85 c0 74
0074e150: e6 8b 0d 38 a1 1e 01 51 8b c8 e8 01 61 1e 00 85
0074e160: c0 74 d4 8d 70 08 8b ce e8 d3 b4 0e 00 85 c0 74
0074e170: c6 8b 16 8b 52 1c 8d 44 24 10 50 8b ce ff d2 8b
0074e180: 06 8b 50 38 8d 4c 24 20 51 8b ce ff d2 0f 28 44
0074e190: 24 10 8b 45 10 0f 29 44 24 10 f3 0f 10 4c 24 10
0074e1a0: f3 0f 11 08 0f 29 44 24 10 f3 0f 10 4c 24 14 f3
0074e1b0: 0f 11 48 04 0f 29 44 24 10 f3 0f 10 44 24 18 f3
0074e1c0: 0f 11 40 08 0f 28 44 24 20 8b 45 14 0f 29 44 24
0074e1d0: 20 f3 0f 10 4c 24 20 0f 29 44 24 20 f3 0f 11 08
0074e1e0: f3 0f 10 4c 24 24 0f 29 44 24 20 f3 0f 10 44 24
0074e1f0: 28 5f f3 0f 11 48 04 f3 0f 11 40 08 b0 01 5e 8b
0074e200: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074e120 <.text+0x34d120>:
  74e120:	55                                              	push   ebp
  74e121:	8b ec                                           	mov    ebp,esp
  74e123:	83 e4 f0                                        	and    esp,0xfffffff0
  74e126:	83 ec 28                                        	sub    esp,0x28
  74e129:	56                                              	push   esi
  74e12a:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  74e12d:	57                                              	push   edi
  74e12e:	8b 7d 0c                                        	mov    edi,DWORD PTR [ebp+0xc]
  74e131:	8b c6                                           	mov    eax,esi
  74e133:	0b c7                                           	or     eax,edi
  74e135:	75 08                                           	jne    0x74e13f
  74e137:	32 c0                                           	xor    al,al
  74e139:	5f                                              	pop    edi
  74e13a:	5e                                              	pop    esi
  74e13b:	8b e5                                           	mov    esp,ebp
  74e13d:	5d                                              	pop    ebp
  74e13e:	c3                                              	ret
  74e13f:	e8 2c 94 1e 00                                  	call   0x937570
  74e144:	57                                              	push   edi
  74e145:	56                                              	push   esi
  74e146:	8b c8                                           	mov    ecx,eax
  74e148:	e8 33 9e 1e 00                                  	call   0x937f80
  74e14d:	85 c0                                           	test   eax,eax
  74e14f:	74 e6                                           	je     0x74e137
  74e151:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  74e157:	51                                              	push   ecx
  74e158:	8b c8                                           	mov    ecx,eax
  74e15a:	e8 01 61 1e 00                                  	call   0x934260
  74e15f:	85 c0                                           	test   eax,eax
  74e161:	74 d4                                           	je     0x74e137
  74e163:	8d 70 08                                        	lea    esi,[eax+0x8]
  74e166:	8b ce                                           	mov    ecx,esi
  74e168:	e8 d3 b4 0e 00                                  	call   0x839640
  74e16d:	85 c0                                           	test   eax,eax
  74e16f:	74 c6                                           	je     0x74e137
  74e171:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74e173:	8b 52 1c                                        	mov    edx,DWORD PTR [edx+0x1c]
  74e176:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  74e17a:	50                                              	push   eax
  74e17b:	8b ce                                           	mov    ecx,esi
  74e17d:	ff d2                                           	call   edx
  74e17f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  74e181:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  74e184:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  74e188:	51                                              	push   ecx
  74e189:	8b ce                                           	mov    ecx,esi
  74e18b:	ff d2                                           	call   edx
  74e18d:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  74e192:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  74e195:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  74e19a:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
  74e1a0:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  74e1a4:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  74e1a9:	f3 0f 10 4c 24 14                               	movss  xmm1,DWORD PTR [esp+0x14]
  74e1af:	f3 0f 11 48 04                                  	movss  DWORD PTR [eax+0x4],xmm1
  74e1b4:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  74e1b9:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
  74e1bf:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
  74e1c4:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  74e1c9:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  74e1cc:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  74e1d1:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  74e1d7:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  74e1dc:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  74e1e0:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
  74e1e6:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  74e1eb:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  74e1f1:	5f                                              	pop    edi
  74e1f2:	f3 0f 11 48 04                                  	movss  DWORD PTR [eax+0x4],xmm1
  74e1f7:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
  74e1fc:	b0 01                                           	mov    al,0x1
  74e1fe:	5e                                              	pop    esi
  74e1ff:	8b e5                                           	mov    esp,ebp
  74e201:	5d                                              	pop    ebp
  74e202:	c3                                              	ret
  74e203:	cc                                              	int3
  74e204:	cc                                              	int3
  74e205:	cc                                              	int3
  74e206:	cc                                              	int3
  74e207:	cc                                              	int3
  74e208:	cc                                              	int3
  74e209:	cc                                              	int3
  74e20a:	cc                                              	int3
  74e20b:	cc                                              	int3
  74e20c:	cc                                              	int3
  74e20d:	cc                                              	int3
  74e20e:	cc                                              	int3
  74e20f:	cc                                              	int3
