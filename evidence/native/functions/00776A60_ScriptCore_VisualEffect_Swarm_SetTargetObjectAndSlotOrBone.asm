# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00776a60 (ScriptCore.VisualEffect::Swarm_SetTargetObjectAndSlotOrBone)
Paired Ghidra pseudocode: 00776A60_ScriptCore_VisualEffect_Swarm_SetTargetObjectAndSlotOrBone.c
Window: [0x00776a60, 0x00776af0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00776af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00776a60: 55 8b ec 83 e4 f0 83 ec 10 e8 02 0b 1c 00 8b 4d
00776a70: 0c 8b 55 08 51 52 8b c8 e8 03 15 1c 00 85 c0 74
00776a80: 63 8b 0d 90 9e 1e 01 51 8b c8 e8 d1 d7 1b 00 85
00776a90: c0 74 51 8b 55 28 f3 0f 10 4d 24 f3 0f 10 45 1c
00776aa0: 52 8b 55 18 8d 4c 24 04 51 8b 4d 14 52 8b 55 10
00776ab0: f3 0f 11 4c 24 14 f3 0f 10 4d 20 51 f3 0f 11 44
00776ac0: 24 1c f3 0f 11 4c 24 14 f3 0f 11 44 24 10 0f 28
00776ad0: 44 24 10 52 8b c8 0f 29 44 24 14 e8 90 d5 1c 00
00776ae0: 8b e5 5d c3 32 c0 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00776a60 <.text+0x375a60>:
  776a60:	55                                              	push   ebp
  776a61:	8b ec                                           	mov    ebp,esp
  776a63:	83 e4 f0                                        	and    esp,0xfffffff0
  776a66:	83 ec 10                                        	sub    esp,0x10
  776a69:	e8 02 0b 1c 00                                  	call   0x937570
  776a6e:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  776a71:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  776a74:	51                                              	push   ecx
  776a75:	52                                              	push   edx
  776a76:	8b c8                                           	mov    ecx,eax
  776a78:	e8 03 15 1c 00                                  	call   0x937f80
  776a7d:	85 c0                                           	test   eax,eax
  776a7f:	74 63                                           	je     0x776ae4
  776a81:	8b 0d 90 9e 1e 01                               	mov    ecx,DWORD PTR ds:0x11e9e90
  776a87:	51                                              	push   ecx
  776a88:	8b c8                                           	mov    ecx,eax
  776a8a:	e8 d1 d7 1b 00                                  	call   0x934260
  776a8f:	85 c0                                           	test   eax,eax
  776a91:	74 51                                           	je     0x776ae4
  776a93:	8b 55 28                                        	mov    edx,DWORD PTR [ebp+0x28]
  776a96:	f3 0f 10 4d 24                                  	movss  xmm1,DWORD PTR [ebp+0x24]
  776a9b:	f3 0f 10 45 1c                                  	movss  xmm0,DWORD PTR [ebp+0x1c]
  776aa0:	52                                              	push   edx
  776aa1:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
  776aa4:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  776aa8:	51                                              	push   ecx
  776aa9:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  776aac:	52                                              	push   edx
  776aad:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  776ab0:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  776ab6:	f3 0f 10 4d 20                                  	movss  xmm1,DWORD PTR [ebp+0x20]
  776abb:	51                                              	push   ecx
  776abc:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  776ac2:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  776ac8:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  776ace:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  776ad3:	52                                              	push   edx
  776ad4:	8b c8                                           	mov    ecx,eax
  776ad6:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
  776adb:	e8 90 d5 1c 00                                  	call   0x944070
  776ae0:	8b e5                                           	mov    esp,ebp
  776ae2:	5d                                              	pop    ebp
  776ae3:	c3                                              	ret
  776ae4:	32 c0                                           	xor    al,al
  776ae6:	8b e5                                           	mov    esp,ebp
  776ae8:	5d                                              	pop    ebp
  776ae9:	c3                                              	ret
  776aea:	cc                                              	int3
  776aeb:	cc                                              	int3
  776aec:	cc                                              	int3
  776aed:	cc                                              	int3
  776aee:	cc                                              	int3
  776aef:	cc                                              	int3
