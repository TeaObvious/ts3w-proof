# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788890 (ScriptCore.World::World_IsInPoolImpl)
Paired Ghidra pseudocode: 00788890_ScriptCore_World_World_IsInPoolImpl.c
Window: [0x00788890, 0x00788910) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788890: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 83 ec 10 85
007888a0: c9 75 06 32 c0 8b e5 5d c3 d9 45 10 83 ec 08 d9
007888b0: 5c 24 04 d9 45 08 d9 1c 24 e8 12 ff 4d 00 85 c0
007888c0: 74 e1 f3 0f 10 4d 10 f3 0f 10 45 08 6a 01 f3 0f
007888d0: 11 4c 24 0c f3 0f 10 4d 0c 6a 00 8d 4c 24 08 f3
007888e0: 0f 11 44 24 14 f3 0f 11 4c 24 0c f3 0f 11 44 24
007888f0: 08 0f 28 44 24 08 51 50 0f 29 44 24 10 e8 ce 70
00788900: 37 00 83 c4 10 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788890 <.text+0x387890>:
  788890:	55                                              	push   ebp
  788891:	8b ec                                           	mov    ebp,esp
  788893:	83 e4 f0                                        	and    esp,0xfffffff0
  788896:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78889c:	83 ec 10                                        	sub    esp,0x10
  78889f:	85 c9                                           	test   ecx,ecx
  7888a1:	75 06                                           	jne    0x7888a9
  7888a3:	32 c0                                           	xor    al,al
  7888a5:	8b e5                                           	mov    esp,ebp
  7888a7:	5d                                              	pop    ebp
  7888a8:	c3                                              	ret
  7888a9:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
  7888ac:	83 ec 08                                        	sub    esp,0x8
  7888af:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  7888b3:	d9 45 08                                        	fld    DWORD PTR [ebp+0x8]
  7888b6:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7888b9:	e8 12 ff 4d 00                                  	call   0xc687d0
  7888be:	85 c0                                           	test   eax,eax
  7888c0:	74 e1                                           	je     0x7888a3
  7888c2:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  7888c7:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  7888cc:	6a 01                                           	push   0x1
  7888ce:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  7888d4:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  7888d9:	6a 00                                           	push   0x0
  7888db:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7888df:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  7888e5:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  7888eb:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  7888f1:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
  7888f6:	51                                              	push   ecx
  7888f7:	50                                              	push   eax
  7888f8:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  7888fd:	e8 ce 70 37 00                                  	call   0xaff9d0
  788902:	83 c4 10                                        	add    esp,0x10
  788905:	8b e5                                           	mov    esp,ebp
  788907:	5d                                              	pop    ebp
  788908:	c3                                              	ret
  788909:	cc                                              	int3
  78890a:	cc                                              	int3
  78890b:	cc                                              	int3
  78890c:	cc                                              	int3
  78890d:	cc                                              	int3
  78890e:	cc                                              	int3
  78890f:	cc                                              	int3
