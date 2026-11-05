# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074df40 (ScriptCore.RouteEvent::RouteEvent_GetRouteEventDirection)
Paired Ghidra pseudocode: 0074DF40_ScriptCore_RouteEvent_RouteEvent_GetRouteEventDirection.c
Window: [0x0074df40, 0x0074dfd0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074dfd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074df40: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 1c 85
0074df50: c9 56 74 6c 8b 45 08 50 e8 b3 d5 ff ff 8b f0 85
0074df60: f6 74 5d 8b 16 8b 02 8b ce ff d0 0f 28 46 40 8b
0074df70: 4d 0c 8b 55 10 8b 45 14 0f 29 44 24 10 f3 0f 10
0074df80: 44 24 10 f3 0f 11 01 0f 28 46 40 0f 29 44 24 10
0074df90: f3 0f 10 44 24 14 f3 0f 11 02 0f 28 46 40 8b 16
0074dfa0: 0f 29 44 24 10 f3 0f 10 44 24 18 f3 0f 11 00 8b
0074dfb0: 42 04 8b ce ff d0 b8 01 00 00 00 5e 8b e5 5d c3
0074dfc0: 33 c0 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074df40 <.text+0x34cf40>:
  74df40:	55                                              	push   ebp
  74df41:	8b ec                                           	mov    ebp,esp
  74df43:	83 e4 f0                                        	and    esp,0xfffffff0
  74df46:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74df4c:	83 ec 1c                                        	sub    esp,0x1c
  74df4f:	85 c9                                           	test   ecx,ecx
  74df51:	56                                              	push   esi
  74df52:	74 6c                                           	je     0x74dfc0
  74df54:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  74df57:	50                                              	push   eax
  74df58:	e8 b3 d5 ff ff                                  	call   0x74b510
  74df5d:	8b f0                                           	mov    esi,eax
  74df5f:	85 f6                                           	test   esi,esi
  74df61:	74 5d                                           	je     0x74dfc0
  74df63:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74df65:	8b 02                                           	mov    eax,DWORD PTR [edx]
  74df67:	8b ce                                           	mov    ecx,esi
  74df69:	ff d0                                           	call   eax
  74df6b:	0f 28 46 40                                     	movaps xmm0,XMMWORD PTR [esi+0x40]
  74df6f:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  74df72:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  74df75:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  74df78:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  74df7d:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
  74df83:	f3 0f 11 01                                     	movss  DWORD PTR [ecx],xmm0
  74df87:	0f 28 46 40                                     	movaps xmm0,XMMWORD PTR [esi+0x40]
  74df8b:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  74df90:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
  74df96:	f3 0f 11 02                                     	movss  DWORD PTR [edx],xmm0
  74df9a:	0f 28 46 40                                     	movaps xmm0,XMMWORD PTR [esi+0x40]
  74df9e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74dfa0:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  74dfa5:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
  74dfab:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  74dfaf:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  74dfb2:	8b ce                                           	mov    ecx,esi
  74dfb4:	ff d0                                           	call   eax
  74dfb6:	b8 01 00 00 00                                  	mov    eax,0x1
  74dfbb:	5e                                              	pop    esi
  74dfbc:	8b e5                                           	mov    esp,ebp
  74dfbe:	5d                                              	pop    ebp
  74dfbf:	c3                                              	ret
  74dfc0:	33 c0                                           	xor    eax,eax
  74dfc2:	5e                                              	pop    esi
  74dfc3:	8b e5                                           	mov    esp,ebp
  74dfc5:	5d                                              	pop    ebp
  74dfc6:	c3                                              	ret
  74dfc7:	cc                                              	int3
  74dfc8:	cc                                              	int3
  74dfc9:	cc                                              	int3
  74dfca:	cc                                              	int3
  74dfcb:	cc                                              	int3
  74dfcc:	cc                                              	int3
  74dfcd:	cc                                              	int3
  74dfce:	cc                                              	int3
  74dfcf:	cc                                              	int3
