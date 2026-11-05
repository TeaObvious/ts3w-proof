# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785b00 (ScriptCore.World::World_HasFloorFeaturesWorldPosImpl)
Paired Ghidra pseudocode: 00785B00_ScriptCore_World_World_HasFloorFeaturesWorldPosImpl.c
Window: [0x00785b00, 0x00785b60) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785b60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785b00: 55 8b ec 83 e4 f0 83 ec 10 83 7d 14 04 75 3f f3
00785b10: 0f 10 4d 10 f3 0f 10 45 08 f3 0f 11 4c 24 08 f3
00785b20: 0f 10 4d 0c f3 0f 11 44 24 0c f3 0f 11 4c 24 04
00785b30: f3 0f 11 04 24 0f 28 04 24 8d 04 24 50 0f 29 44
00785b40: 24 04 e8 59 86 5e 00 83 c4 04 8b e5 5d c3 32 c0
00785b50: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785b00 <.text+0x384b00>:
  785b00:	55                                              	push   ebp
  785b01:	8b ec                                           	mov    ebp,esp
  785b03:	83 e4 f0                                        	and    esp,0xfffffff0
  785b06:	83 ec 10                                        	sub    esp,0x10
  785b09:	83 7d 14 04                                     	cmp    DWORD PTR [ebp+0x14],0x4
  785b0d:	75 3f                                           	jne    0x785b4e
  785b0f:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  785b14:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  785b19:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  785b1f:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  785b24:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  785b2a:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  785b30:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  785b35:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
  785b39:	8d 04 24                                        	lea    eax,[esp]
  785b3c:	50                                              	push   eax
  785b3d:	0f 29 44 24 04                                  	movaps XMMWORD PTR [esp+0x4],xmm0
  785b42:	e8 59 86 5e 00                                  	call   0xd6e1a0
  785b47:	83 c4 04                                        	add    esp,0x4
  785b4a:	8b e5                                           	mov    esp,ebp
  785b4c:	5d                                              	pop    ebp
  785b4d:	c3                                              	ret
  785b4e:	32 c0                                           	xor    al,al
  785b50:	8b e5                                           	mov    esp,ebp
  785b52:	5d                                              	pop    ebp
  785b53:	c3                                              	ret
  785b54:	cc                                              	int3
  785b55:	cc                                              	int3
  785b56:	cc                                              	int3
  785b57:	cc                                              	int3
  785b58:	cc                                              	int3
  785b59:	cc                                              	int3
  785b5a:	cc                                              	int3
  785b5b:	cc                                              	int3
  785b5c:	cc                                              	int3
  785b5d:	cc                                              	int3
  785b5e:	cc                                              	int3
  785b5f:	cc                                              	int3
