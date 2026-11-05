# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078ea40 (ScriptCore.World::World_HasAnySnowAtPoint)
Paired Ghidra pseudocode: 0078EA40_ScriptCore_World_World_HasAnySnowAtPoint.c
Window: [0x0078ea40, 0x0078ead0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078ead0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078ea40: 55 8b ec 83 e4 f0 a1 c4 db 1e 01 83 ec 2c 85 c0
0078ea50: 56 74 07 8b 70 74 85 f6 75 07 32 c0 5e 8b e5 5d
0078ea60: c3 8b ce e8 38 b0 5d 00 0f b7 c0 66 3d 01 00 74
0078ea70: 06 66 3d 02 00 75 e3 f3 0f 10 4d 10 f3 0f 10 45
0078ea80: 08 f3 0f 11 4c 24 18 f3 0f 10 4d 0c 8d 44 24 0f
0078ea90: 50 8d 4c 24 24 f3 0f 11 44 24 20 f3 0f 11 4c 24
0078eaa0: 18 f3 0f 11 44 24 14 0f 28 44 24 14 51 8b ce 0f
0078eab0: 29 44 24 28 c6 44 24 17 00 e8 b2 f7 5d 00 dd d8
0078eac0: 8a 44 24 0f 5e 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078ea40 <.text+0x38da40>:
  78ea40:	55                                              	push   ebp
  78ea41:	8b ec                                           	mov    ebp,esp
  78ea43:	83 e4 f0                                        	and    esp,0xfffffff0
  78ea46:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  78ea4b:	83 ec 2c                                        	sub    esp,0x2c
  78ea4e:	85 c0                                           	test   eax,eax
  78ea50:	56                                              	push   esi
  78ea51:	74 07                                           	je     0x78ea5a
  78ea53:	8b 70 74                                        	mov    esi,DWORD PTR [eax+0x74]
  78ea56:	85 f6                                           	test   esi,esi
  78ea58:	75 07                                           	jne    0x78ea61
  78ea5a:	32 c0                                           	xor    al,al
  78ea5c:	5e                                              	pop    esi
  78ea5d:	8b e5                                           	mov    esp,ebp
  78ea5f:	5d                                              	pop    ebp
  78ea60:	c3                                              	ret
  78ea61:	8b ce                                           	mov    ecx,esi
  78ea63:	e8 38 b0 5d 00                                  	call   0xd69aa0
  78ea68:	0f b7 c0                                        	movzx  eax,ax
  78ea6b:	66 3d 01 00                                     	cmp    ax,0x1
  78ea6f:	74 06                                           	je     0x78ea77
  78ea71:	66 3d 02 00                                     	cmp    ax,0x2
  78ea75:	75 e3                                           	jne    0x78ea5a
  78ea77:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  78ea7c:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  78ea81:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  78ea87:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  78ea8c:	8d 44 24 0f                                     	lea    eax,[esp+0xf]
  78ea90:	50                                              	push   eax
  78ea91:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  78ea95:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  78ea9b:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  78eaa1:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  78eaa7:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
  78eaac:	51                                              	push   ecx
  78eaad:	8b ce                                           	mov    ecx,esi
  78eaaf:	0f 29 44 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm0
  78eab4:	c6 44 24 17 00                                  	mov    BYTE PTR [esp+0x17],0x0
  78eab9:	e8 b2 f7 5d 00                                  	call   0xd6e270
  78eabe:	dd d8                                           	fstp   st(0)
  78eac0:	8a 44 24 0f                                     	mov    al,BYTE PTR [esp+0xf]
  78eac4:	5e                                              	pop    esi
  78eac5:	8b e5                                           	mov    esp,ebp
  78eac7:	5d                                              	pop    ebp
  78eac8:	c3                                              	ret
  78eac9:	cc                                              	int3
  78eaca:	cc                                              	int3
  78eacb:	cc                                              	int3
  78eacc:	cc                                              	int3
  78eacd:	cc                                              	int3
  78eace:	cc                                              	int3
  78eacf:	cc                                              	int3
