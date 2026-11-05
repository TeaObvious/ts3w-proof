# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00759020 (ScriptCore.Route::Route_RemoveObjectToIgnoreForRoute)
Paired Ghidra pseudocode: 00759020_ScriptCore_Route_Route_RemoveObjectToIgnoreForRoute.c
Window: [0x00759020, 0x00759120) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00759120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00759020: 51 8b 0d c4 50 1d 01 85 c9 0f 84 e0 00 00 00 8b
00759030: 44 24 08 55 50 e8 76 24 ff ff 8b e8 85 ed 0f 84
00759040: ca 00 00 00 8b 55 00 8b 42 10 53 56 57 8b cd ff
00759050: d0 8d 8d 58 01 00 00 e8 c4 34 0c 00 8b f0 8b 4e
00759060: 04 8b 06 3b c1 0f 84 92 00 00 00 8b 54 24 20 8b
00759070: 7c 24 1c 8b 18 3b df 75 07 8b 58 04 3b da 74 07
00759080: 83 c0 08 3b c1 75 ec 3b c1 74 72 8d 50 08 3b d1
00759090: 73 0e 2b ca 51 52 50 ff 15 88 66 f9 00 83 c4 0c
007590a0: 83 46 04 f8 8b bd e0 00 00 00 8d 9d e0 00 00 00
007590b0: 3b fb 74 49 8b 77 08 85 f6 74 0c 8d 4e 04 ba 01
007590c0: 00 00 00 f0 0f c1 11 8b 16 8d 85 58 01 00 00 50
007590d0: 8b 42 10 8b ce ff d0 8d 46 04 8b c8 83 ca ff f0
007590e0: 0f c1 11 4a 75 11 b9 01 00 00 00 87 08 8b 16 8b
007590f0: 02 6a 01 8b ce ff d0 8b 3f 3b fb 75 b7 8b 55 00
00759100: 8b 42 14 5f 5e 5b 8b cd 5d 83 c4 04 ff e0 5d 59
00759110: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00759020 <.text+0x358020>:
  759020:	51                                              	push   ecx
  759021:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  759027:	85 c9                                           	test   ecx,ecx
  759029:	0f 84 e0 00 00 00                               	je     0x75910f
  75902f:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  759033:	55                                              	push   ebp
  759034:	50                                              	push   eax
  759035:	e8 76 24 ff ff                                  	call   0x74b4b0
  75903a:	8b e8                                           	mov    ebp,eax
  75903c:	85 ed                                           	test   ebp,ebp
  75903e:	0f 84 ca 00 00 00                               	je     0x75910e
  759044:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  759047:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  75904a:	53                                              	push   ebx
  75904b:	56                                              	push   esi
  75904c:	57                                              	push   edi
  75904d:	8b cd                                           	mov    ecx,ebp
  75904f:	ff d0                                           	call   eax
  759051:	8d 8d 58 01 00 00                               	lea    ecx,[ebp+0x158]
  759057:	e8 c4 34 0c 00                                  	call   0x81c520
  75905c:	8b f0                                           	mov    esi,eax
  75905e:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  759061:	8b 06                                           	mov    eax,DWORD PTR [esi]
  759063:	3b c1                                           	cmp    eax,ecx
  759065:	0f 84 92 00 00 00                               	je     0x7590fd
  75906b:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  75906f:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
  759073:	8b 18                                           	mov    ebx,DWORD PTR [eax]
  759075:	3b df                                           	cmp    ebx,edi
  759077:	75 07                                           	jne    0x759080
  759079:	8b 58 04                                        	mov    ebx,DWORD PTR [eax+0x4]
  75907c:	3b da                                           	cmp    ebx,edx
  75907e:	74 07                                           	je     0x759087
  759080:	83 c0 08                                        	add    eax,0x8
  759083:	3b c1                                           	cmp    eax,ecx
  759085:	75 ec                                           	jne    0x759073
  759087:	3b c1                                           	cmp    eax,ecx
  759089:	74 72                                           	je     0x7590fd
  75908b:	8d 50 08                                        	lea    edx,[eax+0x8]
  75908e:	3b d1                                           	cmp    edx,ecx
  759090:	73 0e                                           	jae    0x7590a0
  759092:	2b ca                                           	sub    ecx,edx
  759094:	51                                              	push   ecx
  759095:	52                                              	push   edx
  759096:	50                                              	push   eax
  759097:	ff 15 88 66 f9 00                               	call   DWORD PTR ds:0xf96688
  75909d:	83 c4 0c                                        	add    esp,0xc
  7590a0:	83 46 04 f8                                     	add    DWORD PTR [esi+0x4],0xfffffff8
  7590a4:	8b bd e0 00 00 00                               	mov    edi,DWORD PTR [ebp+0xe0]
  7590aa:	8d 9d e0 00 00 00                               	lea    ebx,[ebp+0xe0]
  7590b0:	3b fb                                           	cmp    edi,ebx
  7590b2:	74 49                                           	je     0x7590fd
  7590b4:	8b 77 08                                        	mov    esi,DWORD PTR [edi+0x8]
  7590b7:	85 f6                                           	test   esi,esi
  7590b9:	74 0c                                           	je     0x7590c7
  7590bb:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  7590be:	ba 01 00 00 00                                  	mov    edx,0x1
  7590c3:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  7590c7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7590c9:	8d 85 58 01 00 00                               	lea    eax,[ebp+0x158]
  7590cf:	50                                              	push   eax
  7590d0:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  7590d3:	8b ce                                           	mov    ecx,esi
  7590d5:	ff d0                                           	call   eax
  7590d7:	8d 46 04                                        	lea    eax,[esi+0x4]
  7590da:	8b c8                                           	mov    ecx,eax
  7590dc:	83 ca ff                                        	or     edx,0xffffffff
  7590df:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  7590e3:	4a                                              	dec    edx
  7590e4:	75 11                                           	jne    0x7590f7
  7590e6:	b9 01 00 00 00                                  	mov    ecx,0x1
  7590eb:	87 08                                           	xchg   DWORD PTR [eax],ecx
  7590ed:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7590ef:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7590f1:	6a 01                                           	push   0x1
  7590f3:	8b ce                                           	mov    ecx,esi
  7590f5:	ff d0                                           	call   eax
  7590f7:	8b 3f                                           	mov    edi,DWORD PTR [edi]
  7590f9:	3b fb                                           	cmp    edi,ebx
  7590fb:	75 b7                                           	jne    0x7590b4
  7590fd:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  759100:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  759103:	5f                                              	pop    edi
  759104:	5e                                              	pop    esi
  759105:	5b                                              	pop    ebx
  759106:	8b cd                                           	mov    ecx,ebp
  759108:	5d                                              	pop    ebp
  759109:	83 c4 04                                        	add    esp,0x4
  75910c:	ff e0                                           	jmp    eax
  75910e:	5d                                              	pop    ebp
  75910f:	59                                              	pop    ecx
  759110:	c3                                              	ret
  759111:	cc                                              	int3
  759112:	cc                                              	int3
  759113:	cc                                              	int3
  759114:	cc                                              	int3
  759115:	cc                                              	int3
  759116:	cc                                              	int3
  759117:	cc                                              	int3
  759118:	cc                                              	int3
  759119:	cc                                              	int3
  75911a:	cc                                              	int3
  75911b:	cc                                              	int3
  75911c:	cc                                              	int3
  75911d:	cc                                              	int3
  75911e:	cc                                              	int3
  75911f:	cc                                              	int3
