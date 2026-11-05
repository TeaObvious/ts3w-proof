# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744800 (ScriptCore.LookAtTask::LookAt_SetTorsoPercentImpl)
Paired Ghidra pseudocode: 00744800_ScriptCore_LookAtTask_LookAt_SetTorsoPercentImpl.c
Window: [0x00744800, 0x00744860) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744800: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00744810: 46 75 47 e8 78 4b 02 00 8b 10 8b c8 8b 82 cc 00
00744820: 00 00 56 ff d0 8b f0 85 f6 74 2f d9 44 24 0c 83
00744830: 46 04 01 51 8b ce d9 1c 24 e8 62 bc e3 ff 8b 46
00744840: 04 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00
00744850: 8b 16 8b 02 6a 01 8b ce ff d0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
00744800 <.text+0x343800>:
  744800:	56                                              	push   esi
  744801:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  744805:	8b c6                                           	mov    eax,esi
  744807:	25 00 00 00 ff                                  	and    eax,0xff000000
  74480c:	3d 00 00 00 46                                  	cmp    eax,0x46000000
  744811:	75 47                                           	jne    0x74485a
  744813:	e8 78 4b 02 00                                  	call   0x769390
  744818:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74481a:	8b c8                                           	mov    ecx,eax
  74481c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  744822:	56                                              	push   esi
  744823:	ff d0                                           	call   eax
  744825:	8b f0                                           	mov    esi,eax
  744827:	85 f6                                           	test   esi,esi
  744829:	74 2f                                           	je     0x74485a
  74482b:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  74482f:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  744833:	51                                              	push   ecx
  744834:	8b ce                                           	mov    ecx,esi
  744836:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  744839:	e8 62 bc e3 ff                                  	call   0x5804a0
  74483e:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  744841:	83 c0 ff                                        	add    eax,0xffffffff
  744844:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  744847:	75 11                                           	jne    0x74485a
  744849:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  744850:	8b 16                                           	mov    edx,DWORD PTR [esi]
  744852:	8b 02                                           	mov    eax,DWORD PTR [edx]
  744854:	6a 01                                           	push   0x1
  744856:	8b ce                                           	mov    ecx,esi
  744858:	ff d0                                           	call   eax
  74485a:	5e                                              	pop    esi
  74485b:	c3                                              	ret
  74485c:	cc                                              	int3
  74485d:	cc                                              	int3
  74485e:	cc                                              	int3
  74485f:	cc                                              	int3
