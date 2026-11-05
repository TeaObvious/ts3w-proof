# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009aed00 (DirectTargetOf_DownloadContent_DownloadContent_IsDevBuild)
Paired Ghidra pseudocode: 009AED00_DirectTargetOf_DownloadContent_DownloadContent_IsDevBuild.c
Window: [0x009aed00, 0x009aed70) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x009aed70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009aed00: 83 ec 10 80 3d c1 a6 1e 01 00 74 09 a0 c0 a6 1e
009aed10: 01 83 c4 10 c3 68 f4 d4 04 01 68 b0 d4 04 01 68
009aed20: a0 d4 04 01 e8 37 bf bd ff 83 c4 0c 50 8d 4c 24
009aed30: 04 e8 7a ff ff ff 83 3c 24 00 b0 01 a2 c1 a6 1e
009aed40: 01 75 15 83 7c 24 04 00 75 0e 83 7c 24 08 00 75
009aed50: 07 83 7c 24 0c 00 74 02 32 c0 a2 c0 a6 1e 01 83
009aed60: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
009aed00 <.text+0x5add00>:
  9aed00:	83 ec 10                                        	sub    esp,0x10
  9aed03:	80 3d c1 a6 1e 01 00                            	cmp    BYTE PTR ds:0x11ea6c1,0x0
  9aed0a:	74 09                                           	je     0x9aed15
  9aed0c:	a0 c0 a6 1e 01                                  	mov    al,ds:0x11ea6c0
  9aed11:	83 c4 10                                        	add    esp,0x10
  9aed14:	c3                                              	ret
  9aed15:	68 f4 d4 04 01                                  	push   0x104d4f4
  9aed1a:	68 b0 d4 04 01                                  	push   0x104d4b0
  9aed1f:	68 a0 d4 04 01                                  	push   0x104d4a0
  9aed24:	e8 37 bf bd ff                                  	call   0x58ac60
  9aed29:	83 c4 0c                                        	add    esp,0xc
  9aed2c:	50                                              	push   eax
  9aed2d:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  9aed31:	e8 7a ff ff ff                                  	call   0x9aecb0
  9aed36:	83 3c 24 00                                     	cmp    DWORD PTR [esp],0x0
  9aed3a:	b0 01                                           	mov    al,0x1
  9aed3c:	a2 c1 a6 1e 01                                  	mov    ds:0x11ea6c1,al
  9aed41:	75 15                                           	jne    0x9aed58
  9aed43:	83 7c 24 04 00                                  	cmp    DWORD PTR [esp+0x4],0x0
  9aed48:	75 0e                                           	jne    0x9aed58
  9aed4a:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
  9aed4f:	75 07                                           	jne    0x9aed58
  9aed51:	83 7c 24 0c 00                                  	cmp    DWORD PTR [esp+0xc],0x0
  9aed56:	74 02                                           	je     0x9aed5a
  9aed58:	32 c0                                           	xor    al,al
  9aed5a:	a2 c0 a6 1e 01                                  	mov    ds:0x11ea6c0,al
  9aed5f:	83 c4 10                                        	add    esp,0x10
  9aed62:	c3                                              	ret
  9aed63:	cc                                              	int3
  9aed64:	cc                                              	int3
  9aed65:	cc                                              	int3
  9aed66:	cc                                              	int3
  9aed67:	cc                                              	int3
  9aed68:	cc                                              	int3
  9aed69:	cc                                              	int3
  9aed6a:	cc                                              	int3
  9aed6b:	cc                                              	int3
  9aed6c:	cc                                              	int3
  9aed6d:	cc                                              	int3
  9aed6e:	cc                                              	int3
  9aed6f:	cc                                              	int3
