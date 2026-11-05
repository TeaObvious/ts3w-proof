# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074de20 (ScriptCore.RouteEvent::RouteEvent_GetRouteEventPosition)
Paired Ghidra pseudocode: 0074DE20_ScriptCore_RouteEvent_RouteEvent_GetRouteEventPosition.c
Window: [0x0074de20, 0x0074deb0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074deb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074de20: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 1c 85
0074de30: c9 56 74 6c 8b 45 08 50 e8 d3 d6 ff ff 8b f0 85
0074de40: f6 74 5d 8b 16 8b 02 8b ce ff d0 0f 28 46 20 8b
0074de50: 4d 0c 8b 55 10 8b 45 14 0f 29 44 24 10 f3 0f 10
0074de60: 44 24 10 f3 0f 11 01 0f 28 46 20 0f 29 44 24 10
0074de70: f3 0f 10 44 24 14 f3 0f 11 02 0f 28 46 20 8b 16
0074de80: 0f 29 44 24 10 f3 0f 10 44 24 18 f3 0f 11 00 8b
0074de90: 42 04 8b ce ff d0 b8 01 00 00 00 5e 8b e5 5d c3
0074dea0: 33 c0 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074de20 <.text+0x34ce20>:
  74de20:	55                                              	push   ebp
  74de21:	8b ec                                           	mov    ebp,esp
  74de23:	83 e4 f0                                        	and    esp,0xfffffff0
  74de26:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74de2c:	83 ec 1c                                        	sub    esp,0x1c
  74de2f:	85 c9                                           	test   ecx,ecx
  74de31:	56                                              	push   esi
  74de32:	74 6c                                           	je     0x74dea0
  74de34:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  74de37:	50                                              	push   eax
  74de38:	e8 d3 d6 ff ff                                  	call   0x74b510
  74de3d:	8b f0                                           	mov    esi,eax
  74de3f:	85 f6                                           	test   esi,esi
  74de41:	74 5d                                           	je     0x74dea0
  74de43:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74de45:	8b 02                                           	mov    eax,DWORD PTR [edx]
  74de47:	8b ce                                           	mov    ecx,esi
  74de49:	ff d0                                           	call   eax
  74de4b:	0f 28 46 20                                     	movaps xmm0,XMMWORD PTR [esi+0x20]
  74de4f:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  74de52:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  74de55:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  74de58:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  74de5d:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
  74de63:	f3 0f 11 01                                     	movss  DWORD PTR [ecx],xmm0
  74de67:	0f 28 46 20                                     	movaps xmm0,XMMWORD PTR [esi+0x20]
  74de6b:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  74de70:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
  74de76:	f3 0f 11 02                                     	movss  DWORD PTR [edx],xmm0
  74de7a:	0f 28 46 20                                     	movaps xmm0,XMMWORD PTR [esi+0x20]
  74de7e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74de80:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  74de85:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
  74de8b:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  74de8f:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  74de92:	8b ce                                           	mov    ecx,esi
  74de94:	ff d0                                           	call   eax
  74de96:	b8 01 00 00 00                                  	mov    eax,0x1
  74de9b:	5e                                              	pop    esi
  74de9c:	8b e5                                           	mov    esp,ebp
  74de9e:	5d                                              	pop    ebp
  74de9f:	c3                                              	ret
  74dea0:	33 c0                                           	xor    eax,eax
  74dea2:	5e                                              	pop    esi
  74dea3:	8b e5                                           	mov    esp,ebp
  74dea5:	5d                                              	pop    ebp
  74dea6:	c3                                              	ret
  74dea7:	cc                                              	int3
  74dea8:	cc                                              	int3
  74dea9:	cc                                              	int3
  74deaa:	cc                                              	int3
  74deab:	cc                                              	int3
  74deac:	cc                                              	int3
  74dead:	cc                                              	int3
  74deae:	cc                                              	int3
  74deaf:	cc                                              	int3
