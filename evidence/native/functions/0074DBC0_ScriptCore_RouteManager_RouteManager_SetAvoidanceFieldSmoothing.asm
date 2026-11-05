# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074dbc0 (ScriptCore.RouteManager::RouteManager_SetAvoidanceFieldSmoothing)
Paired Ghidra pseudocode: 0074DBC0_ScriptCore_RouteManager_RouteManager_SetAvoidanceFieldSmoothing.c
Window: [0x0074dbc0, 0x0074dc30) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074dc30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074dbc0: 0f 57 c9 f3 0f 10 44 24 0c 0f 2f c8 77 0d f3 0f
0074dbd0: 10 0d f8 98 f9 00 0f 2f c1 76 06 f3 0f 11 4c 24
0074dbe0: 0c e8 8a 99 1e 00 85 c0 74 3f 8b 4c 24 08 8b 54
0074dbf0: 24 04 51 52 8b c8 e8 85 a3 1e 00 85 c0 74 2a 8b
0074dc00: 0d 38 a1 1e 01 51 8b c8 e8 53 66 1e 00 85 c0 74
0074dc10: 18 8b 80 0c 01 00 00 85 c0 74 0e f3 0f 10 44 24
0074dc20: 0c f3 0f 11 80 b0 00 00 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074dbc0 <.text+0x34cbc0>:
  74dbc0:	0f 57 c9                                        	xorps  xmm1,xmm1
  74dbc3:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  74dbc9:	0f 2f c8                                        	comiss xmm1,xmm0
  74dbcc:	77 0d                                           	ja     0x74dbdb
  74dbce:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  74dbd6:	0f 2f c1                                        	comiss xmm0,xmm1
  74dbd9:	76 06                                           	jbe    0x74dbe1
  74dbdb:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  74dbe1:	e8 8a 99 1e 00                                  	call   0x937570
  74dbe6:	85 c0                                           	test   eax,eax
  74dbe8:	74 3f                                           	je     0x74dc29
  74dbea:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74dbee:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  74dbf2:	51                                              	push   ecx
  74dbf3:	52                                              	push   edx
  74dbf4:	8b c8                                           	mov    ecx,eax
  74dbf6:	e8 85 a3 1e 00                                  	call   0x937f80
  74dbfb:	85 c0                                           	test   eax,eax
  74dbfd:	74 2a                                           	je     0x74dc29
  74dbff:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  74dc05:	51                                              	push   ecx
  74dc06:	8b c8                                           	mov    ecx,eax
  74dc08:	e8 53 66 1e 00                                  	call   0x934260
  74dc0d:	85 c0                                           	test   eax,eax
  74dc0f:	74 18                                           	je     0x74dc29
  74dc11:	8b 80 0c 01 00 00                               	mov    eax,DWORD PTR [eax+0x10c]
  74dc17:	85 c0                                           	test   eax,eax
  74dc19:	74 0e                                           	je     0x74dc29
  74dc1b:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  74dc21:	f3 0f 11 80 b0 00 00 00                         	movss  DWORD PTR [eax+0xb0],xmm0
  74dc29:	c3                                              	ret
  74dc2a:	cc                                              	int3
  74dc2b:	cc                                              	int3
  74dc2c:	cc                                              	int3
  74dc2d:	cc                                              	int3
  74dc2e:	cc                                              	int3
  74dc2f:	cc                                              	int3
