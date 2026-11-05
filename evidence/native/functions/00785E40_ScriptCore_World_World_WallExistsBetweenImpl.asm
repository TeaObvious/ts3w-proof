# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785e40 (ScriptCore.World::World_WallExistsBetweenImpl)
Paired Ghidra pseudocode: 00785E40_ScriptCore_World_World_WallExistsBetweenImpl.c
Window: [0x00785e40, 0x00785ef0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785ef0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785e40: 8b 0d c4 db 1e 01 83 ec 18 85 c9 0f 84 91 00 00
00785e50: 00 8b 44 24 20 8b 54 24 1c 6a 00 50 52 e8 ae c9
00785e60: 4d 00 85 c0 74 7c 8b 80 98 02 00 00 8b 48 64 85
00785e70: c9 74 6f f3 0f 10 05 b4 b5 f9 00 f3 0f 2a 4c 24
00785e80: 24 0f be 54 24 2c 0f be 44 24 38 f3 0f 58 c8 f3
00785e90: 0f 11 4c 24 0c f3 0f 2a 4c 24 28 f3 0f 58 c8 f3
00785ea0: 0f 11 4c 24 10 f3 0f 2a 4c 24 30 89 54 24 14 f3
00785eb0: 0f 58 c8 6a 00 8d 54 24 04 f3 0f 11 4c 24 04 f3
00785ec0: 0f 2a 4c 24 38 89 44 24 0c 52 8d 44 24 14 f3 0f
00785ed0: 58 c8 50 f3 0f 11 4c 24 10 e8 82 ad 4b 00 83 c4
00785ee0: 18 c3 32 c0 83 c4 18 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785e40 <.text+0x384e40>:
  785e40:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  785e46:	83 ec 18                                        	sub    esp,0x18
  785e49:	85 c9                                           	test   ecx,ecx
  785e4b:	0f 84 91 00 00 00                               	je     0x785ee2
  785e51:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  785e55:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  785e59:	6a 00                                           	push   0x0
  785e5b:	50                                              	push   eax
  785e5c:	52                                              	push   edx
  785e5d:	e8 ae c9 4d 00                                  	call   0xc62810
  785e62:	85 c0                                           	test   eax,eax
  785e64:	74 7c                                           	je     0x785ee2
  785e66:	8b 80 98 02 00 00                               	mov    eax,DWORD PTR [eax+0x298]
  785e6c:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
  785e6f:	85 c9                                           	test   ecx,ecx
  785e71:	74 6f                                           	je     0x785ee2
  785e73:	f3 0f 10 05 b4 b5 f9 00                         	movss  xmm0,DWORD PTR ds:0xf9b5b4
  785e7b:	f3 0f 2a 4c 24 24                               	cvtsi2ss xmm1,DWORD PTR [esp+0x24]
  785e81:	0f be 54 24 2c                                  	movsx  edx,BYTE PTR [esp+0x2c]
  785e86:	0f be 44 24 38                                  	movsx  eax,BYTE PTR [esp+0x38]
  785e8b:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  785e8f:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  785e95:	f3 0f 2a 4c 24 28                               	cvtsi2ss xmm1,DWORD PTR [esp+0x28]
  785e9b:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  785e9f:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  785ea5:	f3 0f 2a 4c 24 30                               	cvtsi2ss xmm1,DWORD PTR [esp+0x30]
  785eab:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  785eaf:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  785eb3:	6a 00                                           	push   0x0
  785eb5:	8d 54 24 04                                     	lea    edx,[esp+0x4]
  785eb9:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
  785ebf:	f3 0f 2a 4c 24 38                               	cvtsi2ss xmm1,DWORD PTR [esp+0x38]
  785ec5:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  785ec9:	52                                              	push   edx
  785eca:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  785ece:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  785ed2:	50                                              	push   eax
  785ed3:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  785ed9:	e8 82 ad 4b 00                                  	call   0xc40c60
  785ede:	83 c4 18                                        	add    esp,0x18
  785ee1:	c3                                              	ret
  785ee2:	32 c0                                           	xor    al,al
  785ee4:	83 c4 18                                        	add    esp,0x18
  785ee7:	c3                                              	ret
  785ee8:	cc                                              	int3
  785ee9:	cc                                              	int3
  785eea:	cc                                              	int3
  785eeb:	cc                                              	int3
  785eec:	cc                                              	int3
  785eed:	cc                                              	int3
  785eee:	cc                                              	int3
  785eef:	cc                                              	int3
