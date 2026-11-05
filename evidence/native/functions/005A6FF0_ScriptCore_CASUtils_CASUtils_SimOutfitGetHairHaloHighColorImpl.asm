# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6ff0 (ScriptCore.CASUtils::CASUtils_SimOutfitGetHairHaloHighColorImpl)
Paired Ghidra pseudocode: 005A6FF0_ScriptCore_CASUtils_CASUtils_SimOutfitGetHairHaloHighColorImpl.c
Window: [0x005a6ff0, 0x005a7080) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6ff0: 33 c0 56 8b 74 24 08 89 06 89 46 04 57 8b 7c 24
005a7000: 10 89 46 08 8b c7 25 00 00 00 ff 3d 00 00 00 35
005a7010: 75 5a e8 79 23 1c 00 8b 10 8b c8 8b 82 cc 00 00
005a7020: 00 57 ff d0 85 c0 74 44 8b 40 64 f3 0f 10 05 64
005a7030: e5 fa 00 8b c8 c1 e9 10 0f b6 d1 8b c8 f3 0f 2a
005a7040: ca f3 0f 59 c8 c1 e9 08 f3 0f 11 0e 0f b6 d1 0f
005a7050: b6 c0 f3 0f 2a ca f3 0f 59 c8 f3 0f 11 4e 04 f3
005a7060: 0f 2a c8 f3 0f 59 c8 f3 0f 11 4e 08 5f 8b c6 5e
005a7070: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6ff0 <.text+0x1a5ff0>:
  5a6ff0:	33 c0                                           	xor    eax,eax
  5a6ff2:	56                                              	push   esi
  5a6ff3:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6ff7:	89 06                                           	mov    DWORD PTR [esi],eax
  5a6ff9:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  5a6ffc:	57                                              	push   edi
  5a6ffd:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  5a7001:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a7004:	8b c7                                           	mov    eax,edi
  5a7006:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a700b:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a7010:	75 5a                                           	jne    0x5a706c
  5a7012:	e8 79 23 1c 00                                  	call   0x769390
  5a7017:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a7019:	8b c8                                           	mov    ecx,eax
  5a701b:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a7021:	57                                              	push   edi
  5a7022:	ff d0                                           	call   eax
  5a7024:	85 c0                                           	test   eax,eax
  5a7026:	74 44                                           	je     0x5a706c
  5a7028:	8b 40 64                                        	mov    eax,DWORD PTR [eax+0x64]
  5a702b:	f3 0f 10 05 64 e5 fa 00                         	movss  xmm0,DWORD PTR ds:0xfae564
  5a7033:	8b c8                                           	mov    ecx,eax
  5a7035:	c1 e9 10                                        	shr    ecx,0x10
  5a7038:	0f b6 d1                                        	movzx  edx,cl
  5a703b:	8b c8                                           	mov    ecx,eax
  5a703d:	f3 0f 2a ca                                     	cvtsi2ss xmm1,edx
  5a7041:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5a7045:	c1 e9 08                                        	shr    ecx,0x8
  5a7048:	f3 0f 11 0e                                     	movss  DWORD PTR [esi],xmm1
  5a704c:	0f b6 d1                                        	movzx  edx,cl
  5a704f:	0f b6 c0                                        	movzx  eax,al
  5a7052:	f3 0f 2a ca                                     	cvtsi2ss xmm1,edx
  5a7056:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5a705a:	f3 0f 11 4e 04                                  	movss  DWORD PTR [esi+0x4],xmm1
  5a705f:	f3 0f 2a c8                                     	cvtsi2ss xmm1,eax
  5a7063:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5a7067:	f3 0f 11 4e 08                                  	movss  DWORD PTR [esi+0x8],xmm1
  5a706c:	5f                                              	pop    edi
  5a706d:	8b c6                                           	mov    eax,esi
  5a706f:	5e                                              	pop    esi
  5a7070:	c3                                              	ret
  5a7071:	cc                                              	int3
  5a7072:	cc                                              	int3
  5a7073:	cc                                              	int3
  5a7074:	cc                                              	int3
  5a7075:	cc                                              	int3
  5a7076:	cc                                              	int3
  5a7077:	cc                                              	int3
  5a7078:	cc                                              	int3
  5a7079:	cc                                              	int3
  5a707a:	cc                                              	int3
  5a707b:	cc                                              	int3
  5a707c:	cc                                              	int3
  5a707d:	cc                                              	int3
  5a707e:	cc                                              	int3
  5a707f:	cc                                              	int3
