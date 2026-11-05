# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078ee40 (ScriptCore.World::World_GetWorldPositionImpl)
Paired Ghidra pseudocode: 0078EE40_ScriptCore_World_World_GetWorldPositionImpl.c
Window: [0x0078ee40, 0x0078ef00) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078ef00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078ee40: 55 8b ec 83 e4 f0 83 ec 2c 8b 0d c4 db 1e 01 85
0078ee50: c9 0f 57 c0 56 0f 29 44 24 10 74 6c 8b 45 0c 8b
0078ee60: 55 08 6a 00 50 52 e8 a5 39 4d 00 8b f0 85 f6 74
0078ee70: 52 f3 0f 10 05 b4 b5 f9 00 f3 0f 2a 4d 10 0f be
0078ee80: 45 18 8d 4c 24 20 f3 0f 58 c8 51 8d 54 24 08 f3
0078ee90: 0f 11 4c 24 08 f3 0f 2a 4d 14 52 f3 0f 58 c8 56
0078eea0: f3 0f 11 4c 24 14 89 44 24 18 e8 a1 d8 34 00 83
0078eeb0: c4 0c 8d 44 24 10 50 8d 4c 24 24 51 8b ce e8 7d
0078eec0: 81 32 00 0f 28 44 24 10 8b 45 1c 0f 29 44 24 20
0078eed0: f3 0f 10 4c 24 20 0f 29 44 24 20 f3 0f 11 08 f3
0078eee0: 0f 10 4c 24 24 0f 29 44 24 20 f3 0f 10 44 24 28
0078eef0: f3 0f 11 48 04 f3 0f 11 40 08 5e 8b e5 5d c3 cc

LINEAR DISASSEMBLY
0078ee40 <.text+0x38de40>:
  78ee40:	55                                              	push   ebp
  78ee41:	8b ec                                           	mov    ebp,esp
  78ee43:	83 e4 f0                                        	and    esp,0xfffffff0
  78ee46:	83 ec 2c                                        	sub    esp,0x2c
  78ee49:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78ee4f:	85 c9                                           	test   ecx,ecx
  78ee51:	0f 57 c0                                        	xorps  xmm0,xmm0
  78ee54:	56                                              	push   esi
  78ee55:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  78ee5a:	74 6c                                           	je     0x78eec8
  78ee5c:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  78ee5f:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  78ee62:	6a 00                                           	push   0x0
  78ee64:	50                                              	push   eax
  78ee65:	52                                              	push   edx
  78ee66:	e8 a5 39 4d 00                                  	call   0xc62810
  78ee6b:	8b f0                                           	mov    esi,eax
  78ee6d:	85 f6                                           	test   esi,esi
  78ee6f:	74 52                                           	je     0x78eec3
  78ee71:	f3 0f 10 05 b4 b5 f9 00                         	movss  xmm0,DWORD PTR ds:0xf9b5b4
  78ee79:	f3 0f 2a 4d 10                                  	cvtsi2ss xmm1,DWORD PTR [ebp+0x10]
  78ee7e:	0f be 45 18                                     	movsx  eax,BYTE PTR [ebp+0x18]
  78ee82:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  78ee86:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  78ee8a:	51                                              	push   ecx
  78ee8b:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  78ee8f:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  78ee95:	f3 0f 2a 4d 14                                  	cvtsi2ss xmm1,DWORD PTR [ebp+0x14]
  78ee9a:	52                                              	push   edx
  78ee9b:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  78ee9f:	56                                              	push   esi
  78eea0:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  78eea6:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  78eeaa:	e8 a1 d8 34 00                                  	call   0xadc750
  78eeaf:	83 c4 0c                                        	add    esp,0xc
  78eeb2:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  78eeb6:	50                                              	push   eax
  78eeb7:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  78eebb:	51                                              	push   ecx
  78eebc:	8b ce                                           	mov    ecx,esi
  78eebe:	e8 7d 81 32 00                                  	call   0xab7040
  78eec3:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  78eec8:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
  78eecb:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  78eed0:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  78eed6:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  78eedb:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  78eedf:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
  78eee5:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  78eeea:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  78eef0:	f3 0f 11 48 04                                  	movss  DWORD PTR [eax+0x4],xmm1
  78eef5:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
  78eefa:	5e                                              	pop    esi
  78eefb:	8b e5                                           	mov    esp,ebp
  78eefd:	5d                                              	pop    ebp
  78eefe:	c3                                              	ret
  78eeff:	cc                                              	int3
