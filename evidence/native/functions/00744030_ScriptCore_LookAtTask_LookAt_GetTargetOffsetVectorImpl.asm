# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744030 (ScriptCore.LookAtTask::LookAt_GetTargetOffsetVectorImpl)
Paired Ghidra pseudocode: 00744030_ScriptCore_LookAtTask_LookAt_GetTargetOffsetVectorImpl.c
Window: [0x00744030, 0x00744100) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744030: 55 8b ec 83 e4 f0 83 ec 28 56 8b 75 0c 8b c6 25
00744040: 00 00 00 ff 3d 00 00 00 46 57 74 13 33 f6 0f 57
00744050: c0 f3 0f 11 44 24 10 f3 0f 11 44 24 14 eb 5c e8
00744060: 2c 53 02 00 8b 10 8b c8 8b 82 cc 00 00 00 56 ff
00744070: d0 8b f0 85 f6 74 d7 83 46 04 01 8b ce e8 1e 5a
00744080: ff ff 8b 10 8b c8 8b 42 08 ff d0 0f 28 00 0f 29
00744090: 44 24 10 f3 0f 10 4c 24 10 0f 29 44 24 20 f3 0f
007440a0: 11 4c 24 10 f3 0f 10 4c 24 24 0f 29 44 24 20 f3
007440b0: 0f 10 44 24 28 f3 0f 11 4c 24 14 85 f6 8b 7d 08
007440c0: 8b 4c 24 10 8b 54 24 14 f3 0f 11 44 24 18 8b 44
007440d0: 24 18 89 0f 89 57 04 89 47 08 74 1c 8b 46 04 83
007440e0: c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b 16
007440f0: 8b 02 6a 01 8b ce ff d0 8b c7 5f 5e 8b e5 5d c3

LINEAR DISASSEMBLY
00744030 <.text+0x343030>:
  744030:	55                                              	push   ebp
  744031:	8b ec                                           	mov    ebp,esp
  744033:	83 e4 f0                                        	and    esp,0xfffffff0
  744036:	83 ec 28                                        	sub    esp,0x28
  744039:	56                                              	push   esi
  74403a:	8b 75 0c                                        	mov    esi,DWORD PTR [ebp+0xc]
  74403d:	8b c6                                           	mov    eax,esi
  74403f:	25 00 00 00 ff                                  	and    eax,0xff000000
  744044:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744049:	57                                              	push   edi
  74404a:	74 13                                           	je     0x74405f
  74404c:	33 f6                                           	xor    esi,esi
  74404e:	0f 57 c0                                        	xorps  xmm0,xmm0
  744051:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  744057:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  74405d:	eb 5c                                           	jmp    0x7440bb
  74405f:	e8 2c 53 02 00                                  	call   0x769390
  744064:	8b 10                                           	mov    edx,DWORD PTR [eax]
  744066:	8b c8                                           	mov    ecx,eax
  744068:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  74406e:	56                                              	push   esi
  74406f:	ff d0                                           	call   eax
  744071:	8b f0                                           	mov    esi,eax
  744073:	85 f6                                           	test   esi,esi
  744075:	74 d7                                           	je     0x74404e
  744077:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  74407b:	8b ce                                           	mov    ecx,esi
  74407d:	e8 1e 5a ff ff                                  	call   0x739aa0
  744082:	8b 10                                           	mov    edx,DWORD PTR [eax]
  744084:	8b c8                                           	mov    ecx,eax
  744086:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  744089:	ff d0                                           	call   eax
  74408b:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  74408e:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  744093:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
  744099:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  74409e:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  7440a4:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
  7440aa:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  7440af:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  7440b5:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  7440bb:	85 f6                                           	test   esi,esi
  7440bd:	8b 7d 08                                        	mov    edi,DWORD PTR [ebp+0x8]
  7440c0:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7440c4:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  7440c8:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  7440ce:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  7440d2:	89 0f                                           	mov    DWORD PTR [edi],ecx
  7440d4:	89 57 04                                        	mov    DWORD PTR [edi+0x4],edx
  7440d7:	89 47 08                                        	mov    DWORD PTR [edi+0x8],eax
  7440da:	74 1c                                           	je     0x7440f8
  7440dc:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  7440df:	83 c0 ff                                        	add    eax,0xffffffff
  7440e2:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  7440e5:	75 11                                           	jne    0x7440f8
  7440e7:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  7440ee:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7440f0:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7440f2:	6a 01                                           	push   0x1
  7440f4:	8b ce                                           	mov    ecx,esi
  7440f6:	ff d0                                           	call   eax
  7440f8:	8b c7                                           	mov    eax,edi
  7440fa:	5f                                              	pop    edi
  7440fb:	5e                                              	pop    esi
  7440fc:	8b e5                                           	mov    esp,ebp
  7440fe:	5d                                              	pop    ebp
  7440ff:	c3                                              	ret
