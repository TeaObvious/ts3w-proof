# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785cd0 (ScriptCore.World::World_HasPoolImpl)
Paired Ghidra pseudocode: 00785CD0_ScriptCore_World_World_HasPoolImpl.c
Window: [0x00785cd0, 0x00785d90) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785d90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785cd0: 8b 0d c4 db 1e 01 83 ec 10 85 c9 56 0f 84 9d 00
00785ce0: 00 00 8b 44 24 1c 8b 54 24 18 6a 00 50 52 e8 1d
00785cf0: cb 4d 00 8b f0 85 f6 0f 84 82 00 00 00 f3 0f 2a
00785d00: 44 24 20 0c ff 88 44 24 04 88 44 24 05 88 44 24
00785d10: 07 0f be 44 24 28 8d 4c 24 04 51 8d 54 24 0c f3
00785d20: 0f 11 44 24 0c f3 0f 2a 44 24 28 52 c6 44 24 0e
00785d30: 00 f3 0f 11 44 24 14 89 44 24 18 e8 70 20 37 00
00785d40: 6a 01 6a 01 8d 44 24 14 50 56 e8 21 b0 34 00 83
00785d50: c4 18 84 c0 75 1f 6a 00 6a 01 6a 01 8d 4c 24 10
00785d60: 51 56 e8 99 af 34 00 83 c4 14 84 c0 75 07 33 c0
00785d70: 5e 83 c4 10 c3 b8 01 00 00 00 5e 83 c4 10 c3 32
00785d80: c0 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785cd0 <.text+0x384cd0>:
  785cd0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  785cd6:	83 ec 10                                        	sub    esp,0x10
  785cd9:	85 c9                                           	test   ecx,ecx
  785cdb:	56                                              	push   esi
  785cdc:	0f 84 9d 00 00 00                               	je     0x785d7f
  785ce2:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  785ce6:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  785cea:	6a 00                                           	push   0x0
  785cec:	50                                              	push   eax
  785ced:	52                                              	push   edx
  785cee:	e8 1d cb 4d 00                                  	call   0xc62810
  785cf3:	8b f0                                           	mov    esi,eax
  785cf5:	85 f6                                           	test   esi,esi
  785cf7:	0f 84 82 00 00 00                               	je     0x785d7f
  785cfd:	f3 0f 2a 44 24 20                               	cvtsi2ss xmm0,DWORD PTR [esp+0x20]
  785d03:	0c ff                                           	or     al,0xff
  785d05:	88 44 24 04                                     	mov    BYTE PTR [esp+0x4],al
  785d09:	88 44 24 05                                     	mov    BYTE PTR [esp+0x5],al
  785d0d:	88 44 24 07                                     	mov    BYTE PTR [esp+0x7],al
  785d11:	0f be 44 24 28                                  	movsx  eax,BYTE PTR [esp+0x28]
  785d16:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  785d1a:	51                                              	push   ecx
  785d1b:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  785d1f:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  785d25:	f3 0f 2a 44 24 28                               	cvtsi2ss xmm0,DWORD PTR [esp+0x28]
  785d2b:	52                                              	push   edx
  785d2c:	c6 44 24 0e 00                                  	mov    BYTE PTR [esp+0xe],0x0
  785d31:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  785d37:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  785d3b:	e8 70 20 37 00                                  	call   0xaf7db0
  785d40:	6a 01                                           	push   0x1
  785d42:	6a 01                                           	push   0x1
  785d44:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  785d48:	50                                              	push   eax
  785d49:	56                                              	push   esi
  785d4a:	e8 21 b0 34 00                                  	call   0xad0d70
  785d4f:	83 c4 18                                        	add    esp,0x18
  785d52:	84 c0                                           	test   al,al
  785d54:	75 1f                                           	jne    0x785d75
  785d56:	6a 00                                           	push   0x0
  785d58:	6a 01                                           	push   0x1
  785d5a:	6a 01                                           	push   0x1
  785d5c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  785d60:	51                                              	push   ecx
  785d61:	56                                              	push   esi
  785d62:	e8 99 af 34 00                                  	call   0xad0d00
  785d67:	83 c4 14                                        	add    esp,0x14
  785d6a:	84 c0                                           	test   al,al
  785d6c:	75 07                                           	jne    0x785d75
  785d6e:	33 c0                                           	xor    eax,eax
  785d70:	5e                                              	pop    esi
  785d71:	83 c4 10                                        	add    esp,0x10
  785d74:	c3                                              	ret
  785d75:	b8 01 00 00 00                                  	mov    eax,0x1
  785d7a:	5e                                              	pop    esi
  785d7b:	83 c4 10                                        	add    esp,0x10
  785d7e:	c3                                              	ret
  785d7f:	32 c0                                           	xor    al,al
  785d81:	5e                                              	pop    esi
  785d82:	83 c4 10                                        	add    esp,0x10
  785d85:	c3                                              	ret
  785d86:	cc                                              	int3
  785d87:	cc                                              	int3
  785d88:	cc                                              	int3
  785d89:	cc                                              	int3
  785d8a:	cc                                              	int3
  785d8b:	cc                                              	int3
  785d8c:	cc                                              	int3
  785d8d:	cc                                              	int3
  785d8e:	cc                                              	int3
  785d8f:	cc                                              	int3
