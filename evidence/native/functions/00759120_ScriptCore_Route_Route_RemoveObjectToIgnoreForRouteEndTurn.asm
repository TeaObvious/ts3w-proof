# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00759120 (ScriptCore.Route::Route_RemoveObjectToIgnoreForRouteEndTurn)
Paired Ghidra pseudocode: 00759120_ScriptCore_Route_Route_RemoveObjectToIgnoreForRouteEndTurn.c
Window: [0x00759120, 0x007591b0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x007591b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00759120: 8b 0d c4 50 1d 01 85 c9 74 7a 8b 44 24 04 56 50
00759130: e8 7b 23 ff ff 8b f0 85 f6 74 68 8b 16 8b 42 10
00759140: 57 8b ce ff d0 8d 8e 58 01 00 00 e8 e0 33 0c 00
00759150: 8b f8 8b 4f 04 8b 07 3b c1 74 3d 8b 54 24 14 53
00759160: 8b 5c 24 14 55 8b 28 3b eb 75 07 8b 68 04 3b ea
00759170: 74 07 83 c0 08 3b c1 75 ec 3b c1 5d 5b 74 19 8d
00759180: 50 08 3b d1 73 0e 2b ca 51 52 50 ff 15 88 66 f9
00759190: 00 83 c4 0c 83 47 04 f8 8b 16 8b 42 14 5f 8b ce
007591a0: 5e ff e0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00759120 <.text+0x358120>:
  759120:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  759126:	85 c9                                           	test   ecx,ecx
  759128:	74 7a                                           	je     0x7591a4
  75912a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  75912e:	56                                              	push   esi
  75912f:	50                                              	push   eax
  759130:	e8 7b 23 ff ff                                  	call   0x74b4b0
  759135:	8b f0                                           	mov    esi,eax
  759137:	85 f6                                           	test   esi,esi
  759139:	74 68                                           	je     0x7591a3
  75913b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75913d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  759140:	57                                              	push   edi
  759141:	8b ce                                           	mov    ecx,esi
  759143:	ff d0                                           	call   eax
  759145:	8d 8e 58 01 00 00                               	lea    ecx,[esi+0x158]
  75914b:	e8 e0 33 0c 00                                  	call   0x81c530
  759150:	8b f8                                           	mov    edi,eax
  759152:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
  759155:	8b 07                                           	mov    eax,DWORD PTR [edi]
  759157:	3b c1                                           	cmp    eax,ecx
  759159:	74 3d                                           	je     0x759198
  75915b:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  75915f:	53                                              	push   ebx
  759160:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
  759164:	55                                              	push   ebp
  759165:	8b 28                                           	mov    ebp,DWORD PTR [eax]
  759167:	3b eb                                           	cmp    ebp,ebx
  759169:	75 07                                           	jne    0x759172
  75916b:	8b 68 04                                        	mov    ebp,DWORD PTR [eax+0x4]
  75916e:	3b ea                                           	cmp    ebp,edx
  759170:	74 07                                           	je     0x759179
  759172:	83 c0 08                                        	add    eax,0x8
  759175:	3b c1                                           	cmp    eax,ecx
  759177:	75 ec                                           	jne    0x759165
  759179:	3b c1                                           	cmp    eax,ecx
  75917b:	5d                                              	pop    ebp
  75917c:	5b                                              	pop    ebx
  75917d:	74 19                                           	je     0x759198
  75917f:	8d 50 08                                        	lea    edx,[eax+0x8]
  759182:	3b d1                                           	cmp    edx,ecx
  759184:	73 0e                                           	jae    0x759194
  759186:	2b ca                                           	sub    ecx,edx
  759188:	51                                              	push   ecx
  759189:	52                                              	push   edx
  75918a:	50                                              	push   eax
  75918b:	ff 15 88 66 f9 00                               	call   DWORD PTR ds:0xf96688
  759191:	83 c4 0c                                        	add    esp,0xc
  759194:	83 47 04 f8                                     	add    DWORD PTR [edi+0x4],0xfffffff8
  759198:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75919a:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  75919d:	5f                                              	pop    edi
  75919e:	8b ce                                           	mov    ecx,esi
  7591a0:	5e                                              	pop    esi
  7591a1:	ff e0                                           	jmp    eax
  7591a3:	5e                                              	pop    esi
  7591a4:	c3                                              	ret
  7591a5:	cc                                              	int3
  7591a6:	cc                                              	int3
  7591a7:	cc                                              	int3
  7591a8:	cc                                              	int3
  7591a9:	cc                                              	int3
  7591aa:	cc                                              	int3
  7591ab:	cc                                              	int3
  7591ac:	cc                                              	int3
  7591ad:	cc                                              	int3
  7591ae:	cc                                              	int3
  7591af:	cc                                              	int3
