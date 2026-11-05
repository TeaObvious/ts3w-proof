# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740e30 (ScriptCore.DebugDraw::DebugDraw_DrawCircleTimed)
Paired Ghidra pseudocode: 00740E30_ScriptCore_DebugDraw_DebugDraw_DrawCircleTimed.c
Window: [0x00740e30, 0x00740e90) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740e30: 55 8b ec 83 e4 f0 83 ec 10 d9 45 1c 8b 45 18 f3
00740e40: 0f 10 4d 10 f3 0f 10 45 08 51 d9 1c 24 50 d9 45
00740e50: 14 f3 0f 11 4c 24 10 f3 0f 10 4d 0c 51 f3 0f 11
00740e60: 44 24 18 d9 1c 24 f3 0f 11 4c 24 10 f3 0f 11 44
00740e70: 24 0c 0f 28 44 24 0c 8d 4c 24 0c 51 0f 29 44 24
00740e80: 10 e8 3a fe ff ff 83 c4 10 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
00740e30 <.text+0x33fe30>:
  740e30:	55                                              	push   ebp
  740e31:	8b ec                                           	mov    ebp,esp
  740e33:	83 e4 f0                                        	and    esp,0xfffffff0
  740e36:	83 ec 10                                        	sub    esp,0x10
  740e39:	d9 45 1c                                        	fld    DWORD PTR [ebp+0x1c]
  740e3c:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
  740e3f:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  740e44:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  740e49:	51                                              	push   ecx
  740e4a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  740e4d:	50                                              	push   eax
  740e4e:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
  740e51:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  740e57:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  740e5c:	51                                              	push   ecx
  740e5d:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  740e63:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  740e66:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  740e6c:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  740e72:	0f 28 44 24 0c                                  	movaps xmm0,XMMWORD PTR [esp+0xc]
  740e77:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  740e7b:	51                                              	push   ecx
  740e7c:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  740e81:	e8 3a fe ff ff                                  	call   0x740cc0
  740e86:	83 c4 10                                        	add    esp,0x10
  740e89:	8b e5                                           	mov    esp,ebp
  740e8b:	5d                                              	pop    ebp
  740e8c:	c3                                              	ret
  740e8d:	cc                                              	int3
  740e8e:	cc                                              	int3
  740e8f:	cc                                              	int3
