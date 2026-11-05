# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743b30 (ScriptCore.LookAtMgr::LookAt_FlushLookAtQueueImpl)
Paired Ghidra pseudocode: 00743B30_ScriptCore_LookAtMgr_LookAt_FlushLookAtQueueImpl.c
Window: [0x00743b30, 0x00743b80) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743b80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743b30: e8 3b 3a 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
00743b40: c8 e8 3a 44 1f 00 85 c0 74 26 8b 0d 84 d4 1d 01
00743b50: 51 8b c8 e8 08 07 1f 00 85 c0 74 14 8b 40 28 85
00743b60: c0 74 0d 8b 54 24 0c 52 8b c8 e8 b1 d8 e3 ff c3
00743b70: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00743b30 <.text+0x342b30>:
  743b30:	e8 3b 3a 1f 00                                  	call   0x937570
  743b35:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  743b39:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  743b3d:	51                                              	push   ecx
  743b3e:	52                                              	push   edx
  743b3f:	8b c8                                           	mov    ecx,eax
  743b41:	e8 3a 44 1f 00                                  	call   0x937f80
  743b46:	85 c0                                           	test   eax,eax
  743b48:	74 26                                           	je     0x743b70
  743b4a:	8b 0d 84 d4 1d 01                               	mov    ecx,DWORD PTR ds:0x11dd484
  743b50:	51                                              	push   ecx
  743b51:	8b c8                                           	mov    ecx,eax
  743b53:	e8 08 07 1f 00                                  	call   0x934260
  743b58:	85 c0                                           	test   eax,eax
  743b5a:	74 14                                           	je     0x743b70
  743b5c:	8b 40 28                                        	mov    eax,DWORD PTR [eax+0x28]
  743b5f:	85 c0                                           	test   eax,eax
  743b61:	74 0d                                           	je     0x743b70
  743b63:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  743b67:	52                                              	push   edx
  743b68:	8b c8                                           	mov    ecx,eax
  743b6a:	e8 b1 d8 e3 ff                                  	call   0x581420
  743b6f:	c3                                              	ret
  743b70:	33 c0                                           	xor    eax,eax
  743b72:	c3                                              	ret
  743b73:	cc                                              	int3
  743b74:	cc                                              	int3
  743b75:	cc                                              	int3
  743b76:	cc                                              	int3
  743b77:	cc                                              	int3
  743b78:	cc                                              	int3
  743b79:	cc                                              	int3
  743b7a:	cc                                              	int3
  743b7b:	cc                                              	int3
  743b7c:	cc                                              	int3
  743b7d:	cc                                              	int3
  743b7e:	cc                                              	int3
  743b7f:	cc                                              	int3
