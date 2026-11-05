# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007769b0 (ScriptCore.VisualEffect::Swarm_SetAutoDestroy)
Paired Ghidra pseudocode: 007769B0_ScriptCore_VisualEffect_Swarm_SetAutoDestroy.c
Window: [0x007769b0, 0x00776a20) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00776a20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007769b0: 51 56 e8 b9 0b 1c 00 8b 4c 24 10 8b 54 24 0c 51
007769c0: 52 8b c8 e8 b8 15 1c 00 8b f0 85 f6 74 4a a1 90
007769d0: 9e 1e 01 50 8b ce e8 85 d8 1b 00 85 c0 74 1d 33
007769e0: c9 38 4c 24 14 6a 01 0f 95 c1 8d 54 24 08 52 6a
007769f0: 05 89 4c 24 10 8b c8 e8 a4 db 1c 00 a1 58 a1 1e
00776a00: 01 50 8b ce e8 57 d8 1b 00 85 c0 74 0b 8b c8 5e
00776a10: 83 c4 04 e9 18 f5 1d 00 5e 59 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
007769b0 <.text+0x3759b0>:
  7769b0:	51                                              	push   ecx
  7769b1:	56                                              	push   esi
  7769b2:	e8 b9 0b 1c 00                                  	call   0x937570
  7769b7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7769bb:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  7769bf:	51                                              	push   ecx
  7769c0:	52                                              	push   edx
  7769c1:	8b c8                                           	mov    ecx,eax
  7769c3:	e8 b8 15 1c 00                                  	call   0x937f80
  7769c8:	8b f0                                           	mov    esi,eax
  7769ca:	85 f6                                           	test   esi,esi
  7769cc:	74 4a                                           	je     0x776a18
  7769ce:	a1 90 9e 1e 01                                  	mov    eax,ds:0x11e9e90
  7769d3:	50                                              	push   eax
  7769d4:	8b ce                                           	mov    ecx,esi
  7769d6:	e8 85 d8 1b 00                                  	call   0x934260
  7769db:	85 c0                                           	test   eax,eax
  7769dd:	74 1d                                           	je     0x7769fc
  7769df:	33 c9                                           	xor    ecx,ecx
  7769e1:	38 4c 24 14                                     	cmp    BYTE PTR [esp+0x14],cl
  7769e5:	6a 01                                           	push   0x1
  7769e7:	0f 95 c1                                        	setne  cl
  7769ea:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  7769ee:	52                                              	push   edx
  7769ef:	6a 05                                           	push   0x5
  7769f1:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  7769f5:	8b c8                                           	mov    ecx,eax
  7769f7:	e8 a4 db 1c 00                                  	call   0x9445a0
  7769fc:	a1 58 a1 1e 01                                  	mov    eax,ds:0x11ea158
  776a01:	50                                              	push   eax
  776a02:	8b ce                                           	mov    ecx,esi
  776a04:	e8 57 d8 1b 00                                  	call   0x934260
  776a09:	85 c0                                           	test   eax,eax
  776a0b:	74 0b                                           	je     0x776a18
  776a0d:	8b c8                                           	mov    ecx,eax
  776a0f:	5e                                              	pop    esi
  776a10:	83 c4 04                                        	add    esp,0x4
  776a13:	e9 18 f5 1d 00                                  	jmp    0x955f30
  776a18:	5e                                              	pop    esi
  776a19:	59                                              	pop    ecx
  776a1a:	c3                                              	ret
  776a1b:	cc                                              	int3
  776a1c:	cc                                              	int3
  776a1d:	cc                                              	int3
  776a1e:	cc                                              	int3
  776a1f:	cc                                              	int3
