# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00863ca0 (ScriptCore.Audio::Audio_MuteAllObjectSoundsImpl)
Paired Ghidra pseudocode: 00863CA0_ScriptCore_Audio_Audio_MuteAllObjectSoundsImpl.c
Window: [0x00863ca0, 0x00863d20) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00863d20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00863ca0: 51 c7 04 24 00 00 00 00 e8 c3 38 0d 00 85 c0 74
00863cb0: 62 8b 4c 24 0c 8b 54 24 08 56 51 52 8b c8 e8 bd
00863cc0: 42 0d 00 50 8d 4c 24 08 e8 e3 12 01 00 8b 74 24
00863cd0: 04 85 f6 74 3d a1 70 9e 1e 01 50 8b ce e8 7e 05
00863ce0: 0d 00 85 c0 74 0c 8b 4c 24 14 51 8b c8 e8 9e e2
00863cf0: 0d 00 8d 46 04 8b d0 83 c9 ff f0 0f c1 0a 49 75
00863d00: 11 ba 01 00 00 00 87 10 8b 06 8b 10 6a 01 8b ce
00863d10: ff d2 5e 59 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00863ca0 <.text+0x462ca0>:
  863ca0:	51                                              	push   ecx
  863ca1:	c7 04 24 00 00 00 00                            	mov    DWORD PTR [esp],0x0
  863ca8:	e8 c3 38 0d 00                                  	call   0x937570
  863cad:	85 c0                                           	test   eax,eax
  863caf:	74 62                                           	je     0x863d13
  863cb1:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  863cb5:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  863cb9:	56                                              	push   esi
  863cba:	51                                              	push   ecx
  863cbb:	52                                              	push   edx
  863cbc:	8b c8                                           	mov    ecx,eax
  863cbe:	e8 bd 42 0d 00                                  	call   0x937f80
  863cc3:	50                                              	push   eax
  863cc4:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  863cc8:	e8 e3 12 01 00                                  	call   0x874fb0
  863ccd:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  863cd1:	85 f6                                           	test   esi,esi
  863cd3:	74 3d                                           	je     0x863d12
  863cd5:	a1 70 9e 1e 01                                  	mov    eax,ds:0x11e9e70
  863cda:	50                                              	push   eax
  863cdb:	8b ce                                           	mov    ecx,esi
  863cdd:	e8 7e 05 0d 00                                  	call   0x934260
  863ce2:	85 c0                                           	test   eax,eax
  863ce4:	74 0c                                           	je     0x863cf2
  863ce6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  863cea:	51                                              	push   ecx
  863ceb:	8b c8                                           	mov    ecx,eax
  863ced:	e8 9e e2 0d 00                                  	call   0x941f90
  863cf2:	8d 46 04                                        	lea    eax,[esi+0x4]
  863cf5:	8b d0                                           	mov    edx,eax
  863cf7:	83 c9 ff                                        	or     ecx,0xffffffff
  863cfa:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  863cfe:	49                                              	dec    ecx
  863cff:	75 11                                           	jne    0x863d12
  863d01:	ba 01 00 00 00                                  	mov    edx,0x1
  863d06:	87 10                                           	xchg   DWORD PTR [eax],edx
  863d08:	8b 06                                           	mov    eax,DWORD PTR [esi]
  863d0a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  863d0c:	6a 01                                           	push   0x1
  863d0e:	8b ce                                           	mov    ecx,esi
  863d10:	ff d2                                           	call   edx
  863d12:	5e                                              	pop    esi
  863d13:	59                                              	pop    ecx
  863d14:	c3                                              	ret
  863d15:	cc                                              	int3
  863d16:	cc                                              	int3
  863d17:	cc                                              	int3
  863d18:	cc                                              	int3
  863d19:	cc                                              	int3
  863d1a:	cc                                              	int3
  863d1b:	cc                                              	int3
  863d1c:	cc                                              	int3
  863d1d:	cc                                              	int3
  863d1e:	cc                                              	int3
  863d1f:	cc                                              	int3
