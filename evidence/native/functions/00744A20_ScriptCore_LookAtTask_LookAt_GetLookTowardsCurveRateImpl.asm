# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744a20 (ScriptCore.LookAtTask::LookAt_GetLookTowardsCurveRateImpl)
Paired Ghidra pseudocode: 00744A20_ScriptCore_LookAtTask_LookAt_GetLookTowardsCurveRateImpl.c
Window: [0x00744a20, 0x00744aa0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744aa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744a20: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00744a30: 46 75 59 e8 58 49 02 00 8b 10 8b c8 8b 82 cc 00
00744a40: 00 00 56 ff d0 8b f0 85 f6 74 41 83 46 04 01 8b
00744a50: ce e8 4a 50 ff ff 8b 10 8b c8 8b 42 1c ff d0 f3
00744a60: 0f 10 40 14 8b 46 04 83 c0 ff f3 0f 11 44 24 08
00744a70: 89 46 04 75 11 c7 46 04 01 00 00 00 8b 16 8b 02
00744a80: 6a 01 8b ce ff d0 d9 44 24 08 5e c3 f3 0f 10 05
00744a90: f8 98 f9 00 f3 0f 11 44 24 08 d9 44 24 08 5e c3

LINEAR DISASSEMBLY
00744a20 <.text+0x343a20>:
  744a20:	56                                              	push   esi
  744a21:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744a25:	8b c6                                           	mov    eax,esi
  744a27:	25 00 00 00 ff                                  	and    eax,0xff000000
  744a2c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744a31:	75 59                                           	jne    0x744a8c
  744a33:	e8 58 49 02 00                                  	call   0x769390
  744a38:	8b 10                                           	mov    edx,DWORD PTR [eax]
  744a3a:	8b c8                                           	mov    ecx,eax
  744a3c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  744a42:	56                                              	push   esi
  744a43:	ff d0                                           	call   eax
  744a45:	8b f0                                           	mov    esi,eax
  744a47:	85 f6                                           	test   esi,esi
  744a49:	74 41                                           	je     0x744a8c
  744a4b:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  744a4f:	8b ce                                           	mov    ecx,esi
  744a51:	e8 4a 50 ff ff                                  	call   0x739aa0
  744a56:	8b 10                                           	mov    edx,DWORD PTR [eax]
  744a58:	8b c8                                           	mov    ecx,eax
  744a5a:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  744a5d:	ff d0                                           	call   eax
  744a5f:	f3 0f 10 40 14                                  	movss  xmm0,DWORD PTR [eax+0x14]
  744a64:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  744a67:	83 c0 ff                                        	add    eax,0xffffffff
  744a6a:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  744a70:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  744a73:	75 11                                           	jne    0x744a86
  744a75:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  744a7c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  744a7e:	8b 02                                           	mov    eax,DWORD PTR [edx]
  744a80:	6a 01                                           	push   0x1
  744a82:	8b ce                                           	mov    ecx,esi
  744a84:	ff d0                                           	call   eax
  744a86:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  744a8a:	5e                                              	pop    esi
  744a8b:	c3                                              	ret
  744a8c:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  744a94:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  744a9a:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  744a9e:	5e                                              	pop    esi
  744a9f:	c3                                              	ret
