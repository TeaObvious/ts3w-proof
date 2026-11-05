# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00757000 (ScriptCore.Route::Route_UpdateRouteAnimationSpec)
Paired Ghidra pseudocode: 00757000_ScriptCore_Route_Route_UpdateRouteAnimationSpec.c
Window: [0x00757000, 0x00757070) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00757070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00757000: 83 ec 10 8b 4c 24 24 8b 44 24 20 8b 54 24 28 89
00757010: 4c 24 04 8b 0d c4 50 1d 01 85 c9 89 04 24 8b 44
00757020: 24 2c 89 54 24 08 89 44 24 0c 74 3a 8b 54 24 14
00757030: 56 52 e8 79 44 ff ff 8b f0 85 f6 74 28 8b 06 8b
00757040: 50 10 8b ce ff d2 6a 00 6a 00 6a 00 8d 44 24 10
00757050: 50 8b ce e8 28 bb ff ff 8b 16 8b 42 14 8b ce 5e
00757060: 83 c4 10 ff e0 5e 83 c4 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00757000 <.text+0x356000>:
  757000:	83 ec 10                                        	sub    esp,0x10
  757003:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  757007:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  75700b:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  75700f:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  757013:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  757019:	85 c9                                           	test   ecx,ecx
  75701b:	89 04 24                                        	mov    DWORD PTR [esp],eax
  75701e:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  757022:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  757026:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  75702a:	74 3a                                           	je     0x757066
  75702c:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  757030:	56                                              	push   esi
  757031:	52                                              	push   edx
  757032:	e8 79 44 ff ff                                  	call   0x74b4b0
  757037:	8b f0                                           	mov    esi,eax
  757039:	85 f6                                           	test   esi,esi
  75703b:	74 28                                           	je     0x757065
  75703d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  75703f:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  757042:	8b ce                                           	mov    ecx,esi
  757044:	ff d2                                           	call   edx
  757046:	6a 00                                           	push   0x0
  757048:	6a 00                                           	push   0x0
  75704a:	6a 00                                           	push   0x0
  75704c:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  757050:	50                                              	push   eax
  757051:	8b ce                                           	mov    ecx,esi
  757053:	e8 28 bb ff ff                                  	call   0x752b80
  757058:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75705a:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  75705d:	8b ce                                           	mov    ecx,esi
  75705f:	5e                                              	pop    esi
  757060:	83 c4 10                                        	add    esp,0x10
  757063:	ff e0                                           	jmp    eax
  757065:	5e                                              	pop    esi
  757066:	83 c4 10                                        	add    esp,0x10
  757069:	c3                                              	ret
  75706a:	cc                                              	int3
  75706b:	cc                                              	int3
  75706c:	cc                                              	int3
  75706d:	cc                                              	int3
  75706e:	cc                                              	int3
  75706f:	cc                                              	int3
