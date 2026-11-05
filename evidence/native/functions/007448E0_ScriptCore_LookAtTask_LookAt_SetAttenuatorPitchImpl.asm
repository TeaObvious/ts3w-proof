# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007448e0 (ScriptCore.LookAtTask::LookAt_SetAttenuatorPitchImpl)
Paired Ghidra pseudocode: 007448E0_ScriptCore_LookAtTask_LookAt_SetAttenuatorPitchImpl.c
Window: [0x007448e0, 0x00744940) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007448e0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
007448f0: 46 75 47 e8 98 4a 02 00 8b 10 8b c8 8b 82 cc 00
00744900: 00 00 56 ff d0 8b f0 85 f6 74 2f d9 44 24 0c 83
00744910: 46 04 01 51 8b ce d9 1c 24 e8 a2 bb e3 ff 8b 46
00744920: 04 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00
00744930: 8b 16 8b 02 6a 01 8b ce ff d0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
007448e0 <.text+0x3438e0>:
  7448e0:	56                                              	push   esi
  7448e1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  7448e5:	8b c6                                           	mov    eax,esi
  7448e7:	25 00 00 00 ff                                  	and    eax,0xff000000
  7448ec:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  7448f1:	75 47                                           	jne    0x74493a
  7448f3:	e8 98 4a 02 00                                  	call   0x769390
  7448f8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7448fa:	8b c8                                           	mov    ecx,eax
  7448fc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  744902:	56                                              	push   esi
  744903:	ff d0                                           	call   eax
  744905:	8b f0                                           	mov    esi,eax
  744907:	85 f6                                           	test   esi,esi
  744909:	74 2f                                           	je     0x74493a
  74490b:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  74490f:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  744913:	51                                              	push   ecx
  744914:	8b ce                                           	mov    ecx,esi
  744916:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  744919:	e8 a2 bb e3 ff                                  	call   0x5804c0
  74491e:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  744921:	83 c0 ff                                        	add    eax,0xffffffff
  744924:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  744927:	75 11                                           	jne    0x74493a
  744929:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  744930:	8b 16                                           	mov    edx,DWORD PTR [esi]
  744932:	8b 02                                           	mov    eax,DWORD PTR [edx]
  744934:	6a 01                                           	push   0x1
  744936:	8b ce                                           	mov    ecx,esi
  744938:	ff d0                                           	call   eax
  74493a:	5e                                              	pop    esi
  74493b:	c3                                              	ret
  74493c:	cc                                              	int3
  74493d:	cc                                              	int3
  74493e:	cc                                              	int3
  74493f:	cc                                              	int3
