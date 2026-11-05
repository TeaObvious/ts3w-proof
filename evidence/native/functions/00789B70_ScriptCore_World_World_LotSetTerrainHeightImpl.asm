# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00789b70 (ScriptCore.World::World_LotSetTerrainHeightImpl)
Paired Ghidra pseudocode: 00789B70_ScriptCore_World_World_LotSetTerrainHeightImpl.c
Window: [0x00789b70, 0x00789c30) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00789c30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00789b70: 55 8b ec 83 e4 f0 8b 45 0c 8b 55 08 8b 0d c4 db
00789b80: 1e 01 83 ec 2c 56 6a 00 50 52 e8 81 8c 4d 00 8b
00789b90: f0 85 f6 0f 84 8d 00 00 00 8b 15 d4 31 16 01 f3
00789ba0: 0f 2c 4d 14 f3 0f 2c 45 10 6a 00 6a 00 6a 00 88
00789bb0: 4c 24 19 52 88 44 24 1c 8b 06 8b 50 64 8d 4c 24
00789bc0: 30 51 8b ce c6 44 24 22 00 ff d2 0f 28 00 0f 29
00789bd0: 44 24 20 f3 0f 10 45 18 f3 0f 5c 44 24 24 51 8d
00789be0: 44 24 20 0f c6 c0 00 0f 29 44 24 24 d9 44 24 24
00789bf0: d9 1c 24 50 56 e8 16 6b 52 00 83 c4 1c 84 c0 74
00789c00: 25 f3 0f 2c 4d 14 d9 45 18 f3 0f 2c 55 10 6a 01
00789c10: 6a 01 51 52 51 8b ce d9 1c 24 e8 71 76 32 00 8b
00789c20: ce e8 fa bf 32 00 5e 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00789b70 <.text+0x388b70>:
  789b70:	55                                              	push   ebp
  789b71:	8b ec                                           	mov    ebp,esp
  789b73:	83 e4 f0                                        	and    esp,0xfffffff0
  789b76:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  789b79:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  789b7c:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  789b82:	83 ec 2c                                        	sub    esp,0x2c
  789b85:	56                                              	push   esi
  789b86:	6a 00                                           	push   0x0
  789b88:	50                                              	push   eax
  789b89:	52                                              	push   edx
  789b8a:	e8 81 8c 4d 00                                  	call   0xc62810
  789b8f:	8b f0                                           	mov    esi,eax
  789b91:	85 f6                                           	test   esi,esi
  789b93:	0f 84 8d 00 00 00                               	je     0x789c26
  789b99:	8b 15 d4 31 16 01                               	mov    edx,DWORD PTR ds:0x11631d4
  789b9f:	f3 0f 2c 4d 14                                  	cvttss2si ecx,DWORD PTR [ebp+0x14]
  789ba4:	f3 0f 2c 45 10                                  	cvttss2si eax,DWORD PTR [ebp+0x10]
  789ba9:	6a 00                                           	push   0x0
  789bab:	6a 00                                           	push   0x0
  789bad:	6a 00                                           	push   0x0
  789baf:	88 4c 24 19                                     	mov    BYTE PTR [esp+0x19],cl
  789bb3:	52                                              	push   edx
  789bb4:	88 44 24 1c                                     	mov    BYTE PTR [esp+0x1c],al
  789bb8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  789bba:	8b 50 64                                        	mov    edx,DWORD PTR [eax+0x64]
  789bbd:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  789bc1:	51                                              	push   ecx
  789bc2:	8b ce                                           	mov    ecx,esi
  789bc4:	c6 44 24 22 00                                  	mov    BYTE PTR [esp+0x22],0x0
  789bc9:	ff d2                                           	call   edx
  789bcb:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  789bce:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  789bd3:	f3 0f 10 45 18                                  	movss  xmm0,DWORD PTR [ebp+0x18]
  789bd8:	f3 0f 5c 44 24 24                               	subss  xmm0,DWORD PTR [esp+0x24]
  789bde:	51                                              	push   ecx
  789bdf:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  789be3:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  789be7:	0f 29 44 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm0
  789bec:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  789bf0:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  789bf3:	50                                              	push   eax
  789bf4:	56                                              	push   esi
  789bf5:	e8 16 6b 52 00                                  	call   0xcb0710
  789bfa:	83 c4 1c                                        	add    esp,0x1c
  789bfd:	84 c0                                           	test   al,al
  789bff:	74 25                                           	je     0x789c26
  789c01:	f3 0f 2c 4d 14                                  	cvttss2si ecx,DWORD PTR [ebp+0x14]
  789c06:	d9 45 18                                        	fld    DWORD PTR [ebp+0x18]
  789c09:	f3 0f 2c 55 10                                  	cvttss2si edx,DWORD PTR [ebp+0x10]
  789c0e:	6a 01                                           	push   0x1
  789c10:	6a 01                                           	push   0x1
  789c12:	51                                              	push   ecx
  789c13:	52                                              	push   edx
  789c14:	51                                              	push   ecx
  789c15:	8b ce                                           	mov    ecx,esi
  789c17:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  789c1a:	e8 71 76 32 00                                  	call   0xab1290
  789c1f:	8b ce                                           	mov    ecx,esi
  789c21:	e8 fa bf 32 00                                  	call   0xab5c20
  789c26:	5e                                              	pop    esi
  789c27:	8b e5                                           	mov    esp,ebp
  789c29:	5d                                              	pop    ebp
  789c2a:	c3                                              	ret
  789c2b:	cc                                              	int3
  789c2c:	cc                                              	int3
  789c2d:	cc                                              	int3
  789c2e:	cc                                              	int3
  789c2f:	cc                                              	int3
