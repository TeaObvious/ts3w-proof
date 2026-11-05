# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740da0 (ScriptCore.DebugDraw::DebugDraw_DrawLineTimed)
Paired Ghidra pseudocode: 00740DA0_ScriptCore_DebugDraw_DebugDraw_DrawLineTimed.c
Window: [0x00740da0, 0x00740e30) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740e30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740da0: 55 8b ec 83 e4 f0 83 ec 20 f3 0f 10 4d 1c d9 45
00740db0: 24 f3 0f 10 45 14 8b 45 20 f3 0f 11 4c 24 08 f3
00740dc0: 0f 10 4d 18 51 f3 0f 11 4c 24 08 d9 1c 24 f3 0f
00740dd0: 10 4d 10 f3 0f 11 44 24 10 f3 0f 11 44 24 04 0f
00740de0: 28 44 24 04 f3 0f 11 4c 24 0c f3 0f 10 4d 0c 50
00740df0: 0f 29 44 24 18 f3 0f 10 45 08 8d 4c 24 18 f3 0f
00740e00: 11 44 24 14 f3 0f 11 4c 24 0c f3 0f 11 44 24 08
00740e10: 0f 28 44 24 08 51 8d 54 24 0c 52 0f 29 44 24 10
00740e20: e8 bb fd ff ff 83 c4 10 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
00740da0 <.text+0x33fda0>:
  740da0:	55                                              	push   ebp
  740da1:	8b ec                                           	mov    ebp,esp
  740da3:	83 e4 f0                                        	and    esp,0xfffffff0
  740da6:	83 ec 20                                        	sub    esp,0x20
  740da9:	f3 0f 10 4d 1c                                  	movss  xmm1,DWORD PTR [ebp+0x1c]
  740dae:	d9 45 24                                        	fld    DWORD PTR [ebp+0x24]
  740db1:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
  740db6:	8b 45 20                                        	mov    eax,DWORD PTR [ebp+0x20]
  740db9:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  740dbf:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  740dc4:	51                                              	push   ecx
  740dc5:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  740dcb:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  740dce:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  740dd3:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  740dd9:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
  740ddf:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
  740de4:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  740dea:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  740def:	50                                              	push   eax
  740df0:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
  740df5:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  740dfa:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  740dfe:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  740e04:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  740e0a:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  740e10:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
  740e15:	51                                              	push   ecx
  740e16:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  740e1a:	52                                              	push   edx
  740e1b:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  740e20:	e8 bb fd ff ff                                  	call   0x740be0
  740e25:	83 c4 10                                        	add    esp,0x10
  740e28:	8b e5                                           	mov    esp,ebp
  740e2a:	5d                                              	pop    ebp
  740e2b:	c3                                              	ret
  740e2c:	cc                                              	int3
  740e2d:	cc                                              	int3
  740e2e:	cc                                              	int3
  740e2f:	cc                                              	int3
