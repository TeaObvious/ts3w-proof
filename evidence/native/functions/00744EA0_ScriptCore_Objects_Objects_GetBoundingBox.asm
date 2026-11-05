# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744ea0 (ScriptCore.Objects::Objects_GetBoundingBox)
Paired Ghidra pseudocode: 00744EA0_ScriptCore_Objects_Objects_GetBoundingBox.c
Window: [0x00744ea0, 0x00744f20) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744f20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744ea0: 56 e8 ca 26 1f 00 8b 4c 24 10 8b 54 24 0c 51 52
00744eb0: 8b c8 e8 c9 30 1f 00 85 c0 74 2b 8b 0d c4 9f 1e
00744ec0: 01 51 8b c8 e8 97 f3 1e 00 85 c0 74 19 8b c8 e8
00744ed0: ac 39 20 00 8b 74 24 08 50 56 e8 c1 72 02 00 83
00744ee0: c4 08 8b c6 5e c3 d9 ee 8b 74 24 08 83 ec 0c d9
00744ef0: 54 24 08 d9 54 24 04 8b ce d9 1c 24 e8 6f 70 02
00744f00: 00 d9 ee 83 ec 0c d9 54 24 08 d9 54 24 04 8d 4e
00744f10: 0c d9 1c 24 e8 57 70 02 00 8b c6 5e c3 cc cc cc

LINEAR DISASSEMBLY
00744ea0 <.text+0x343ea0>:
  744ea0:	56                                              	push   esi
  744ea1:	e8 ca 26 1f 00                                  	call   0x937570
  744ea6:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  744eaa:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  744eae:	51                                              	push   ecx
  744eaf:	52                                              	push   edx
  744eb0:	8b c8                                           	mov    ecx,eax
  744eb2:	e8 c9 30 1f 00                                  	call   0x937f80
  744eb7:	85 c0                                           	test   eax,eax
  744eb9:	74 2b                                           	je     0x744ee6
  744ebb:	8b 0d c4 9f 1e 01                               	mov    ecx,DWORD PTR ds:0x11e9fc4
  744ec1:	51                                              	push   ecx
  744ec2:	8b c8                                           	mov    ecx,eax
  744ec4:	e8 97 f3 1e 00                                  	call   0x934260
  744ec9:	85 c0                                           	test   eax,eax
  744ecb:	74 19                                           	je     0x744ee6
  744ecd:	8b c8                                           	mov    ecx,eax
  744ecf:	e8 ac 39 20 00                                  	call   0x948880
  744ed4:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744ed8:	50                                              	push   eax
  744ed9:	56                                              	push   esi
  744eda:	e8 c1 72 02 00                                  	call   0x76c1a0
  744edf:	83 c4 08                                        	add    esp,0x8
  744ee2:	8b c6                                           	mov    eax,esi
  744ee4:	5e                                              	pop    esi
  744ee5:	c3                                              	ret
  744ee6:	d9 ee                                           	fldz
  744ee8:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744eec:	83 ec 0c                                        	sub    esp,0xc
  744eef:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  744ef3:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  744ef7:	8b ce                                           	mov    ecx,esi
  744ef9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  744efc:	e8 6f 70 02 00                                  	call   0x76bf70
  744f01:	d9 ee                                           	fldz
  744f03:	83 ec 0c                                        	sub    esp,0xc
  744f06:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  744f0a:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  744f0e:	8d 4e 0c                                        	lea    ecx,[esi+0xc]
  744f11:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  744f14:	e8 57 70 02 00                                  	call   0x76bf70
  744f19:	8b c6                                           	mov    eax,esi
  744f1b:	5e                                              	pop    esi
  744f1c:	c3                                              	ret
  744f1d:	cc                                              	int3
  744f1e:	cc                                              	int3
  744f1f:	cc                                              	int3
