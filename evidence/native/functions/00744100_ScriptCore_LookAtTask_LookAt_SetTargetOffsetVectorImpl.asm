# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744100 (ScriptCore.LookAtTask::LookAt_SetTargetOffsetVectorImpl)
Paired Ghidra pseudocode: 00744100_ScriptCore_LookAtTask_LookAt_SetTargetOffsetVectorImpl.c
Window: [0x00744100, 0x007441a0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x007441a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744100: 55 8b ec 83 e4 f0 83 ec 1c 56 8b 75 08 8b c6 25
00744110: 00 00 00 ff 3d 00 00 00 46 75 75 e8 70 52 02 00
00744120: 8b 10 8b c8 8b 82 cc 00 00 00 56 ff d0 8b f0 85
00744130: f6 74 5d f3 0f 10 4d 14 f3 0f 10 45 0c 83 46 04
00744140: 01 f3 0f 11 4c 24 18 f3 0f 10 4d 10 8d 4c 24 10
00744150: f3 0f 11 44 24 1c f3 0f 11 4c 24 14 f3 0f 11 44
00744160: 24 10 0f 28 44 24 10 51 8b ce 0f 29 44 24 14 e8
00744170: ac c6 e3 ff 8b 46 04 83 c0 ff 89 46 04 75 11 c7
00744180: 46 04 01 00 00 00 8b 16 8b 02 6a 01 8b ce ff d0
00744190: 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00744100 <.text+0x343100>:
  744100:	55                                              	push   ebp
  744101:	8b ec                                           	mov    ebp,esp
  744103:	83 e4 f0                                        	and    esp,0xfffffff0
  744106:	83 ec 1c                                        	sub    esp,0x1c
  744109:	56                                              	push   esi
  74410a:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  74410d:	8b c6                                           	mov    eax,esi
  74410f:	25 00 00 00 ff                                  	and    eax,0xff000000
  744114:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744119:	75 75                                           	jne    0x744190
  74411b:	e8 70 52 02 00                                  	call   0x769390
  744120:	8b 10                                           	mov    edx,DWORD PTR [eax]
  744122:	8b c8                                           	mov    ecx,eax
  744124:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  74412a:	56                                              	push   esi
  74412b:	ff d0                                           	call   eax
  74412d:	8b f0                                           	mov    esi,eax
  74412f:	85 f6                                           	test   esi,esi
  744131:	74 5d                                           	je     0x744190
  744133:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  744138:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  74413d:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  744141:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  744147:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  74414c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  744150:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  744156:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  74415c:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  744162:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  744167:	51                                              	push   ecx
  744168:	8b ce                                           	mov    ecx,esi
  74416a:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
  74416f:	e8 ac c6 e3 ff                                  	call   0x580820
  744174:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  744177:	83 c0 ff                                        	add    eax,0xffffffff
  74417a:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  74417d:	75 11                                           	jne    0x744190
  74417f:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  744186:	8b 16                                           	mov    edx,DWORD PTR [esi]
  744188:	8b 02                                           	mov    eax,DWORD PTR [edx]
  74418a:	6a 01                                           	push   0x1
  74418c:	8b ce                                           	mov    ecx,esi
  74418e:	ff d0                                           	call   eax
  744190:	5e                                              	pop    esi
  744191:	8b e5                                           	mov    esp,ebp
  744193:	5d                                              	pop    ebp
  744194:	c3                                              	ret
  744195:	cc                                              	int3
  744196:	cc                                              	int3
  744197:	cc                                              	int3
  744198:	cc                                              	int3
  744199:	cc                                              	int3
  74419a:	cc                                              	int3
  74419b:	cc                                              	int3
  74419c:	cc                                              	int3
  74419d:	cc                                              	int3
  74419e:	cc                                              	int3
  74419f:	cc                                              	int3
