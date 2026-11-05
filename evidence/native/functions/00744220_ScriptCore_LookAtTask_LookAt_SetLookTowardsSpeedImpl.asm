# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744220 (ScriptCore.LookAtTask::LookAt_SetLookTowardsSpeedImpl)
Paired Ghidra pseudocode: 00744220_ScriptCore_LookAtTask_LookAt_SetLookTowardsSpeedImpl.c
Window: [0x00744220, 0x00744280) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744280
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744220: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00744230: 46 75 47 e8 58 51 02 00 8b 10 8b c8 8b 82 cc 00
00744240: 00 00 56 ff d0 8b f0 85 f6 74 2f d9 44 24 0c 83
00744250: 46 04 01 51 8b ce d9 1c 24 e8 62 c1 e3 ff 8b 46
00744260: 04 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00
00744270: 8b 16 8b 02 6a 01 8b ce ff d0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
00744220 <.text+0x343220>:
  744220:	56                                              	push   esi
  744221:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744225:	8b c6                                           	mov    eax,esi
  744227:	25 00 00 00 ff                                  	and    eax,0xff000000
  74422c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744231:	75 47                                           	jne    0x74427a
  744233:	e8 58 51 02 00                                  	call   0x769390
  744238:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74423a:	8b c8                                           	mov    ecx,eax
  74423c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  744242:	56                                              	push   esi
  744243:	ff d0                                           	call   eax
  744245:	8b f0                                           	mov    esi,eax
  744247:	85 f6                                           	test   esi,esi
  744249:	74 2f                                           	je     0x74427a
  74424b:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  74424f:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  744253:	51                                              	push   ecx
  744254:	8b ce                                           	mov    ecx,esi
  744256:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  744259:	e8 62 c1 e3 ff                                  	call   0x5803c0
  74425e:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  744261:	83 c0 ff                                        	add    eax,0xffffffff
  744264:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  744267:	75 11                                           	jne    0x74427a
  744269:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  744270:	8b 16                                           	mov    edx,DWORD PTR [esi]
  744272:	8b 02                                           	mov    eax,DWORD PTR [edx]
  744274:	6a 01                                           	push   0x1
  744276:	8b ce                                           	mov    ecx,esi
  744278:	ff d0                                           	call   eax
  74427a:	5e                                              	pop    esi
  74427b:	c3                                              	ret
  74427c:	cc                                              	int3
  74427d:	cc                                              	int3
  74427e:	cc                                              	int3
  74427f:	cc                                              	int3
