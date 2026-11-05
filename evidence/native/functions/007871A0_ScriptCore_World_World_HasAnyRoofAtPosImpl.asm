# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007871a0 (ScriptCore.World::World_HasAnyRoofAtPosImpl)
Paired Ghidra pseudocode: 007871A0_ScriptCore_World_World_HasAnyRoofAtPosImpl.c
Window: [0x007871a0, 0x00787230) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007871a0: 8b 0d c4 db 1e 01 83 ec 0c 85 c9 56 74 6f d9 44
007871b0: 24 1c 83 ec 08 d9 5c 24 04 d9 44 24 1c d9 1c 24
007871c0: e8 0b 16 4e 00 8b f0 85 f6 74 52 d9 44 24 1c f3
007871d0: 0f 10 05 18 b2 fa 00 8d 44 24 08 50 8d 4c 24 08
007871e0: 51 83 ec 08 d9 5c 24 04 8b ce d9 44 24 24 f3 0f
007871f0: 11 44 24 14 d9 1c 24 f3 0f 11 44 24 18 c7 44 24
00787200: 1c 00 00 00 00 e8 36 fc 32 00 6a 01 8d 54 24 08
00787210: 52 8b ce e8 c8 98 32 00 5e 83 c4 0c c3 32 c0 5e
00787220: 83 c4 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007871a0 <.text+0x3861a0>:
  7871a0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7871a6:	83 ec 0c                                        	sub    esp,0xc
  7871a9:	85 c9                                           	test   ecx,ecx
  7871ab:	56                                              	push   esi
  7871ac:	74 6f                                           	je     0x78721d
  7871ae:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  7871b2:	83 ec 08                                        	sub    esp,0x8
  7871b5:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  7871b9:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  7871bd:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7871c0:	e8 0b 16 4e 00                                  	call   0xc687d0
  7871c5:	8b f0                                           	mov    esi,eax
  7871c7:	85 f6                                           	test   esi,esi
  7871c9:	74 52                                           	je     0x78721d
  7871cb:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  7871cf:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  7871d7:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  7871db:	50                                              	push   eax
  7871dc:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7871e0:	51                                              	push   ecx
  7871e1:	83 ec 08                                        	sub    esp,0x8
  7871e4:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  7871e8:	8b ce                                           	mov    ecx,esi
  7871ea:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  7871ee:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  7871f4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7871f7:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  7871fd:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
  787205:	e8 36 fc 32 00                                  	call   0xab6e40
  78720a:	6a 01                                           	push   0x1
  78720c:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  787210:	52                                              	push   edx
  787211:	8b ce                                           	mov    ecx,esi
  787213:	e8 c8 98 32 00                                  	call   0xab0ae0
  787218:	5e                                              	pop    esi
  787219:	83 c4 0c                                        	add    esp,0xc
  78721c:	c3                                              	ret
  78721d:	32 c0                                           	xor    al,al
  78721f:	5e                                              	pop    esi
  787220:	83 c4 0c                                        	add    esp,0xc
  787223:	c3                                              	ret
  787224:	cc                                              	int3
  787225:	cc                                              	int3
  787226:	cc                                              	int3
  787227:	cc                                              	int3
  787228:	cc                                              	int3
  787229:	cc                                              	int3
  78722a:	cc                                              	int3
  78722b:	cc                                              	int3
  78722c:	cc                                              	int3
  78722d:	cc                                              	int3
  78722e:	cc                                              	int3
  78722f:	cc                                              	int3
