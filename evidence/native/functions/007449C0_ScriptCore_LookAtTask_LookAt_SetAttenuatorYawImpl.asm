# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007449c0 (ScriptCore.LookAtTask::LookAt_SetAttenuatorYawImpl)
Paired Ghidra pseudocode: 007449C0_ScriptCore_LookAtTask_LookAt_SetAttenuatorYawImpl.c
Window: [0x007449c0, 0x00744a20) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744a20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007449c0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
007449d0: 46 75 47 e8 b8 49 02 00 8b 10 8b c8 8b 82 cc 00
007449e0: 00 00 56 ff d0 8b f0 85 f6 74 2f d9 44 24 0c 83
007449f0: 46 04 01 51 8b ce d9 1c 24 e8 e2 ba e3 ff 8b 46
00744a00: 04 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00
00744a10: 8b 16 8b 02 6a 01 8b ce ff d0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
007449c0 <.text+0x3439c0>:
  7449c0:	56                                              	push   esi
  7449c1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  7449c5:	8b c6                                           	mov    eax,esi
  7449c7:	25 00 00 00 ff                                  	and    eax,0xff000000
  7449cc:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  7449d1:	75 47                                           	jne    0x744a1a
  7449d3:	e8 b8 49 02 00                                  	call   0x769390
  7449d8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7449da:	8b c8                                           	mov    ecx,eax
  7449dc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  7449e2:	56                                              	push   esi
  7449e3:	ff d0                                           	call   eax
  7449e5:	8b f0                                           	mov    esi,eax
  7449e7:	85 f6                                           	test   esi,esi
  7449e9:	74 2f                                           	je     0x744a1a
  7449eb:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  7449ef:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  7449f3:	51                                              	push   ecx
  7449f4:	8b ce                                           	mov    ecx,esi
  7449f6:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7449f9:	e8 e2 ba e3 ff                                  	call   0x5804e0
  7449fe:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  744a01:	83 c0 ff                                        	add    eax,0xffffffff
  744a04:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  744a07:	75 11                                           	jne    0x744a1a
  744a09:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  744a10:	8b 16                                           	mov    edx,DWORD PTR [esi]
  744a12:	8b 02                                           	mov    eax,DWORD PTR [edx]
  744a14:	6a 01                                           	push   0x1
  744a16:	8b ce                                           	mov    ecx,esi
  744a18:	ff d0                                           	call   eax
  744a1a:	5e                                              	pop    esi
  744a1b:	c3                                              	ret
  744a1c:	cc                                              	int3
  744a1d:	cc                                              	int3
  744a1e:	cc                                              	int3
  744a1f:	cc                                              	int3
