# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074deb0 (ScriptCore.RouteEvent::RouteEvent_GetRouteEventSource)
Paired Ghidra pseudocode: 0074DEB0_ScriptCore_RouteEvent_RouteEvent_GetRouteEventSource.c
Window: [0x0074deb0, 0x0074df40) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074df40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074deb0: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 1c 85
0074dec0: c9 56 74 6c 8b 45 08 50 e8 43 d6 ff ff 8b f0 85
0074ded0: f6 74 5d 8b 16 8b 02 8b ce ff d0 0f 28 46 30 8b
0074dee0: 4d 0c 8b 55 10 8b 45 14 0f 29 44 24 10 f3 0f 10
0074def0: 44 24 10 f3 0f 11 01 0f 28 46 30 0f 29 44 24 10
0074df00: f3 0f 10 44 24 14 f3 0f 11 02 0f 28 46 30 8b 16
0074df10: 0f 29 44 24 10 f3 0f 10 44 24 18 f3 0f 11 00 8b
0074df20: 42 04 8b ce ff d0 b8 01 00 00 00 5e 8b e5 5d c3
0074df30: 33 c0 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074deb0 <.text+0x34ceb0>:
  74deb0:	55                                              	push   ebp
  74deb1:	8b ec                                           	mov    ebp,esp
  74deb3:	83 e4 f0                                        	and    esp,0xfffffff0
  74deb6:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74debc:	83 ec 1c                                        	sub    esp,0x1c
  74debf:	85 c9                                           	test   ecx,ecx
  74dec1:	56                                              	push   esi
  74dec2:	74 6c                                           	je     0x74df30
  74dec4:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  74dec7:	50                                              	push   eax
  74dec8:	e8 43 d6 ff ff                                  	call   0x74b510
  74decd:	8b f0                                           	mov    esi,eax
  74decf:	85 f6                                           	test   esi,esi
  74ded1:	74 5d                                           	je     0x74df30
  74ded3:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74ded5:	8b 02                                           	mov    eax,DWORD PTR [edx]
  74ded7:	8b ce                                           	mov    ecx,esi
  74ded9:	ff d0                                           	call   eax
  74dedb:	0f 28 46 30                                     	movaps xmm0,XMMWORD PTR [esi+0x30]
  74dedf:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  74dee2:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  74dee5:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  74dee8:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  74deed:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
  74def3:	f3 0f 11 01                                     	movss  DWORD PTR [ecx],xmm0
  74def7:	0f 28 46 30                                     	movaps xmm0,XMMWORD PTR [esi+0x30]
  74defb:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  74df00:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
  74df06:	f3 0f 11 02                                     	movss  DWORD PTR [edx],xmm0
  74df0a:	0f 28 46 30                                     	movaps xmm0,XMMWORD PTR [esi+0x30]
  74df0e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74df10:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  74df15:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
  74df1b:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  74df1f:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  74df22:	8b ce                                           	mov    ecx,esi
  74df24:	ff d0                                           	call   eax
  74df26:	b8 01 00 00 00                                  	mov    eax,0x1
  74df2b:	5e                                              	pop    esi
  74df2c:	8b e5                                           	mov    esp,ebp
  74df2e:	5d                                              	pop    ebp
  74df2f:	c3                                              	ret
  74df30:	33 c0                                           	xor    eax,eax
  74df32:	5e                                              	pop    esi
  74df33:	8b e5                                           	mov    esp,ebp
  74df35:	5d                                              	pop    ebp
  74df36:	c3                                              	ret
  74df37:	cc                                              	int3
  74df38:	cc                                              	int3
  74df39:	cc                                              	int3
  74df3a:	cc                                              	int3
  74df3b:	cc                                              	int3
  74df3c:	cc                                              	int3
  74df3d:	cc                                              	int3
  74df3e:	cc                                              	int3
  74df3f:	cc                                              	int3
