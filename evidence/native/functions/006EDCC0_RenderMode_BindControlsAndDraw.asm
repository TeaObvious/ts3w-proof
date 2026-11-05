# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Actual Ghidra function metadata
; entry=006edcc0 name="RenderMode_BindControlsAndDraw" source=USER_DEFINED signatureSource=ANALYSIS prototype="undefined __thiscall RenderMode_BindControlsAndDraw(undefined4 param_1)" cc="__thiscall" custom=false purge=4 return=/undefined returnStorage=<UNASSIGNED> inline=false noreturn=false thunk=false external=false varargs=false callfixup=null bodyMetadata=[[006edcc0, 006ee36f]] bodyAddressCount=1712
; PARAM 0 "this" type=/void * storage=ECX:4 (auto) source=ANALYSIS firstUse=0 auto=true
; PARAM 1 "param_1" type=/undefined4 storage=Stack[0x4]:4 source=DEFAULT firstUse=0 auto=false
; LOCAL "local_20" type=/undefined1[16] storage=Stack[-0x20]:16 source=DEFAULT firstUse=0
; LOCAL "local_30" type=/undefined1[16] storage=Stack[-0x30]:16 source=DEFAULT firstUse=0
; LOCAL "local_40" type=/undefined1[16] storage=Stack[-0x40]:16 source=DEFAULT firstUse=0
; LOCAL "local_50" type=/undefined1[16] storage=Stack[-0x50]:16 source=DEFAULT firstUse=0
; LOCAL "local_60" type=/undefined1[16] storage=Stack[-0x60]:16 source=DEFAULT firstUse=0
; LOCAL "local_70" type=/undefined1[16] storage=Stack[-0x70]:16 source=DEFAULT firstUse=0
; LOCAL "local_74" type=/undefined4 storage=Stack[-0x74]:4 source=DEFAULT firstUse=0
; LOCAL "local_78" type=/undefined4 storage=Stack[-0x78]:4 source=DEFAULT firstUse=0
; 
; Actual entry PLATE: PC1.67, full1712B/437 instructions checked against pristine PE. ECX receiver, one incoming stack DWORD, physical RET4. Lazily registers scratch/translucent offsets and BloomData/ShimmerControl/UnderSeaControl, then checks graphics-manager+8D. Selector4 transforms z=-1,w=1 and writes projected Z/W followed by receiver+2B4/+2B8/+2BC to UnderSeaControl; then common selected-technique draw/temporary-offset clear. Matrix-unit conversion, tuning defaults and complete shader/provider behavior remain unproved. No ABI/type change.
006edcc0  55  PUSH EBP
006edcc1  8bec  MOV EBP,ESP
006edcc3  83e4f0  AND ESP,0xfffffff0
006edcc6  83ec74  SUB ESP,0x74
006edcc9  f605f42b1d0101  TEST byte ptr [0x011d2bf4],0x1
006edcd0  53  PUSH EBX
006edcd1  56  PUSH ESI
006edcd2  8b3530851d01  MOV ESI,dword ptr [0x011d8530]
006edcd8  57  PUSH EDI
006edcd9  8bf9  MOV EDI,ECX
006edcdb  751c  JNZ 0x006edcf9
006edcdd  830df42b1d0101  OR dword ptr [0x011d2bf4],0x1
006edce4  6a02  PUSH 0x2
006edce6  6a01  PUSH 0x1
006edce8  687098ff00  PUSH 0xff9870
006edced  8bce  MOV ECX,ESI
006edcef  e83cc80a00  CALL 0x0079a530
006edcf4  a3f02b1d01  MOV [0x011d2bf0],EAX
006edcf9  f605f42b1d0102  TEST byte ptr [0x011d2bf4],0x2
006edd00  751c  JNZ 0x006edd1e
006edd02  830df42b1d0102  OR dword ptr [0x011d2bf4],0x2
006edd09  6a02  PUSH 0x2
006edd0b  6a01  PUSH 0x1
006edd0d  685498ff00  PUSH 0xff9854
006edd12  8bce  MOV ECX,ESI
006edd14  e817c80a00  CALL 0x0079a530
006edd19  a3ec2b1d01  MOV [0x011d2bec],EAX
006edd1e  f605f42b1d0104  TEST byte ptr [0x011d2bf4],0x4
006edd25  751c  JNZ 0x006edd43
006edd27  830df42b1d0104  OR dword ptr [0x011d2bf4],0x4
006edd2e  6a02  PUSH 0x2
006edd30  6a01  PUSH 0x1
006edd32  684898ff00  PUSH 0xff9848
006edd37  8bce  MOV ECX,ESI
006edd39  e8f2c70a00  CALL 0x0079a530
006edd3e  a3e82b1d01  MOV [0x011d2be8],EAX
006edd43  b808000000  MOV EAX,0x8
006edd48  8405f42b1d01  TEST byte ptr [0x011d2bf4],AL
006edd4e  751b  JNZ 0x006edd6b
006edd50  0905f42b1d01  OR dword ptr [0x011d2bf4],EAX
006edd56  6a02  PUSH 0x2
006edd58  6a01  PUSH 0x1
006edd5a  683898ff00  PUSH 0xff9838
006edd5f  8bce  MOV ECX,ESI
006edd61  e8cac70a00  CALL 0x0079a530
006edd66  a3e42b1d01  MOV [0x011d2be4],EAX
006edd6b  b810000000  MOV EAX,0x10
006edd70  8405f42b1d01  TEST byte ptr [0x011d2bf4],AL
006edd76  751b  JNZ 0x006edd93
006edd78  0905f42b1d01  OR dword ptr [0x011d2bf4],EAX
006edd7e  6a02  PUSH 0x2
006edd80  6a01  PUSH 0x1
006edd82  682898ff00  PUSH 0xff9828
006edd87  8bce  MOV ECX,ESI
006edd89  e8a2c70a00  CALL 0x0079a530
006edd8e  a3e02b1d01  MOV [0x011d2be0],EAX
006edd93  e8780bf2ff  CALL 0x0060e910
006edd98  80b88d00000000  CMP byte ptr [EAX + 0x8d],0x0
006edd9f  8944241c  MOV dword ptr [ESP + 0x1c],EAX
006edda3  0f85be050000  JNZ 0x006ee367
006edda9  e8d299f2ff  CALL 0x00617780
006eddae  8bd8  MOV EBX,EAX
006eddb0  685eafb976  PUSH 0x76b9af5e
006eddb5  8bcb  MOV ECX,EBX
006eddb7  e8d49ef2ff  CALL 0x00617c90
006eddbc  681378bd75  PUSH 0x75bd7813
006eddc1  8bcb  MOV ECX,EBX
006eddc3  8944241c  MOV dword ptr [ESP + 0x1c],EAX
006eddc7  e8c49ef2ff  CALL 0x00617c90
006eddcc  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
006eddd0  8b09  MOV ECX,dword ptr [ECX]
006eddd2  8b5114  MOV EDX,dword ptr [ECX + 0x14]
006eddd5  db4114  FILD dword ptr [ECX + 0x14]
006eddd8  85d2  TEST EDX,EDX
006eddda  7d06  JGE 0x006edde2
006edddc  d8054899f900  FADD float ptr [0x00f99948]
006edde2  d9e8  FLD1
006edde4  8b4918  MOV ECX,dword ptr [ECX + 0x18]
006edde7  85c9  TEST ECX,ECX
006edde9  d9c0  FLD ST0
006eddeb  894c2418  MOV dword ptr [ESP + 0x18],ECX
006eddef  def2  FDIVRP ST2,ST0
006eddf1  db442418  FILD dword ptr [ESP + 0x18]
006eddf5  7d06  JGE 0x006eddfd
006eddf7  d8054899f900  FADD float ptr [0x00f99948]
006eddfd  8b00  MOV EAX,dword ptr [EAX]
006eddff  d8f9  FDIVR ST0,ST1
006ede01  8b5014  MOV EDX,dword ptr [EAX + 0x14]
006ede04  85d2  TEST EDX,EDX
006ede06  db4014  FILD dword ptr [EAX + 0x14]
006ede09  7d06  JGE 0x006ede11
006ede0b  d8054899f900  FADD float ptr [0x00f99948]
006ede11  8b4018  MOV EAX,dword ptr [EAX + 0x18]
006ede14  d8fa  FDIVR ST0,ST2
006ede16  85c0  TEST EAX,EAX
006ede18  89442418  MOV dword ptr [ESP + 0x18],EAX
006ede1c  db442418  FILD dword ptr [ESP + 0x18]
006ede20  7d06  JGE 0x006ede28
006ede22  d8054899f900  FADD float ptr [0x00f99948]
006ede28  defb  FDIVP ST3,ST0
006ede2a  bb01000000  MOV EBX,0x1
006ede2f  d9c1  FLD ST1
006ede31  d905284cfe00  FLD float ptr [0x00fe4c28]
006ede37  dcc9  FMUL ST1
006ede39  d9c9  FXCH
006ede3b  d95c2418  FSTP float ptr [ESP + 0x18]
006ede3f  f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
006ede45  d9c4  FLD ST4
006ede47  d8c9  FMUL ST1
006ede49  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
006ede4f  d95c2418  FSTP float ptr [ESP + 0x18]
006ede53  f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
006ede59  d905b4b5f900  FLD float ptr [0x00f9b5b4]
006ede5f  dccb  FMUL ST3
006ede61  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
006ede67  d9cb  FXCH ST3
006ede69  d95c2418  FSTP float ptr [ESP + 0x18]
006ede6d  f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
006ede73  d9cc  FXCH ST4
006ede75  d8ca  FMUL ST2
006ede77  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
006ede7d  d95c2418  FSTP float ptr [ESP + 0x18]
006ede81  f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
006ede87  d9c2  FLD ST2
006ede89  d8cc  FMUL ST4
006ede8b  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
006ede91  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
006ede96  0f29442430  MOVAPS xmmword ptr [ESP + 0x30],XMM0
006ede9b  d95c2418  FSTP float ptr [ESP + 0x18]
006ede9f  f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
006edea5  d9c0  FLD ST0
006edea7  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
006edead  decc  FMULP ST4
006edeaf  d9cb  FXCH ST3
006edeb1  d95c2418  FSTP float ptr [ESP + 0x18]
006edeb5  f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
006edebb  dcc9  FMUL ST1
006edebd  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
006edec3  d9c9  FXCH
006edec5  d95c2418  FSTP float ptr [ESP + 0x18]
006edec9  f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
006edecf  dec9  FMULP
006eded1  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
006eded7  d95c2418  FSTP float ptr [ESP + 0x18]
006ededb  f30f10442418  MOVSS XMM0,dword ptr [ESP + 0x18]
006edee1  a1f02b1d01  MOV EAX,[0x011d2bf0]
006edee6  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
006edeec  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
006edef1  0f29442440  MOVAPS xmmword ptr [ESP + 0x40],XMM0
006edef6  3b4608  CMP EAX,dword ptr [ESI + 0x8]
006edef9  7320  JNC 0x006edf1b
006edefb  c1e004  SHL EAX,0x4
006edefe  034604  ADD EAX,dword ptr [ESI + 0x4]
006edf01  8d542430  LEA EDX,[ESP + 0x30]
006edf05  0118  ADD dword ptr [EAX],EBX
006edf07  895808  MOV dword ptr [EAX + 0x8],EBX
006edf0a  66c740060200  MOV word ptr [EAX + 0x6],0x2
006edf10  668b4e12  MOV CX,word ptr [ESI + 0x12]
006edf14  66894804  MOV word ptr [EAX + 0x4],CX
006edf18  89500c  MOV dword ptr [EAX + 0xc],EDX
006edf1b  a1ec2b1d01  MOV EAX,[0x011d2bec]
006edf20  3b4608  CMP EAX,dword ptr [ESI + 0x8]
006edf23  7320  JNC 0x006edf45
006edf25  c1e004  SHL EAX,0x4
006edf28  034604  ADD EAX,dword ptr [ESI + 0x4]
006edf2b  8d542440  LEA EDX,[ESP + 0x40]
006edf2f  0118  ADD dword ptr [EAX],EBX
006edf31  895808  MOV dword ptr [EAX + 0x8],EBX
006edf34  66c740060200  MOV word ptr [EAX + 0x6],0x2
006edf3a  668b4e12  MOV CX,word ptr [ESI + 0x12]
006edf3e  66894804  MOV word ptr [EAX + 0x4],CX
006edf42  89500c  MOV dword ptr [EAX + 0xc],EDX
006edf45  8b4508  MOV EAX,dword ptr [EBP + 0x8]
006edf48  83f804  CMP EAX,0x4
006edf4b  0f87a8030000  JA 0x006ee2f9
006edf51  ff248570e36e00  JMP dword ptr [EAX*0x4 + 0x6ee370]
006edf58  53  PUSH EBX
006edf59  8bcf  MOV ECX,EDI
006edf5b  e830fdffff  CALL 0x006edc90
006edf60  8b873c050000  MOV EAX,dword ptr [EDI + 0x53c]
006edf66  8b8f00030000  MOV ECX,dword ptr [EDI + 0x300]
006edf6c  50  PUSH EAX
006edf6d  e82ec70a00  CALL 0x0079a6a0
006edf72  8b0de82b1d01  MOV ECX,dword ptr [0x011d2be8]
006edf78  68d0181d01  PUSH 0x11d18d0
006edf7d  51  PUSH ECX
006edf7e  8bce  MOV ECX,ESI
006edf80  e8db0dfaff  CALL 0x0068ed60
006edf85  e96f030000  JMP 0x006ee2f9
006edf8a  53  PUSH EBX
006edf8b  8bcf  MOV ECX,EDI
006edf8d  e8fefcffff  CALL 0x006edc90
006edf92  8b9740050000  MOV EDX,dword ptr [EDI + 0x540]
006edf98  8b8f00030000  MOV ECX,dword ptr [EDI + 0x300]
006edf9e  52  PUSH EDX
006edf9f  e8fcc60a00  CALL 0x0079a6a0
006edfa4  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
006edfac  8b4724  MOV EAX,dword ptr [EDI + 0x24]
006edfaf  0f289080000000  MOVAPS XMM2,xmmword ptr [EAX + 0x80]
006edfb6  0f285870  MOVAPS XMM3,xmmword ptr [EAX + 0x70]
006edfba  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
006edfc0  f30f1005f098f900  MOVSS XMM0,dword ptr [0x00f998f0]
006edfc8  f30f5c87ac020000  SUBSS XMM0,dword ptr [EDI + 0x2ac]
006edfd0  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
006edfd6  0f57c0  XORPS XMM0,XMM0
006edfd9  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
006edfdf  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
006edfe5  0f284c2420  MOVAPS XMM1,xmmword ptr [ESP + 0x20]
006edfea  83c070  ADD EAX,0x70
006edfed  0f28c1  MOVAPS XMM0,XMM1
006edff0  0fc6c155  SHUFPS XMM0,XMM1,0x55
006edff4  0f59c2  MULPS XMM0,XMM2
006edff7  0f28d1  MOVAPS XMM2,XMM1
006edffa  0fc6d100  SHUFPS XMM2,XMM1,0x0
006edffe  0f59d3  MULPS XMM2,XMM3
006ee001  0f285820  MOVAPS XMM3,xmmword ptr [EAX + 0x20]
006ee005  0f58c2  ADDPS XMM0,XMM2
006ee008  0f28d1  MOVAPS XMM2,XMM1
006ee00b  0fc6d1aa  SHUFPS XMM2,XMM1,0xaa
006ee00f  0f59d3  MULPS XMM2,XMM3
006ee012  0f58c2  ADDPS XMM0,XMM2
006ee015  0f28d1  MOVAPS XMM2,XMM1
006ee018  0fc6d1ff  SHUFPS XMM2,XMM1,0xff
006ee01c  0f284830  MOVAPS XMM1,xmmword ptr [EAX + 0x30]
006ee020  0f59d1  MULPS XMM2,XMM1
006ee023  0f58c2  ADDPS XMM0,XMM2
006ee026  0f28c8  MOVAPS XMM1,XMM0
006ee029  0f28d0  MOVAPS XMM2,XMM0
006ee02c  b820000000  MOV EAX,0x20
006ee031  8405f42b1d01  TEST byte ptr [0x011d2bf4],AL
006ee037  0fc6c8ff  SHUFPS XMM1,XMM0,0xff
006ee03b  0fc6d0aa  SHUFPS XMM2,XMM0,0xaa
006ee03f  0f5ed1  DIVPS XMM2,XMM1
006ee042  0f29442460  MOVAPS xmmword ptr [ESP + 0x60],XMM0
006ee047  0f29542450  MOVAPS xmmword ptr [ESP + 0x50],XMM2
006ee04c  7506  JNZ 0x006ee054
006ee04e  0905f42b1d01  OR dword ptr [0x011d2bf4],EAX
006ee054  b948ed1c01  MOV ECX,0x11ced48
006ee059  e8f26feaff  CALL 0x00595050
006ee05e  84c0  TEST AL,AL
006ee060  751b  JNZ 0x006ee07d
006ee062  b948ed1c01  MOV ECX,0x11ced48
006ee067  e8646eeaff  CALL 0x00594ed0
006ee06c  84c0  TEST AL,AL
006ee06e  750d  JNZ 0x006ee07d
006ee070  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
006ee078  0f57c9  XORPS XMM1,XMM1
006ee07b  eb06  JMP 0x006ee083
006ee07d  0f57c9  XORPS XMM1,XMM1
006ee080  0f28c1  MOVAPS XMM0,XMM1
006ee083  a1e42b1d01  MOV EAX,[0x011d2be4]
006ee088  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
006ee08e  f30f10442450  MOVSS XMM0,dword ptr [ESP + 0x50]
006ee094  f30f114c242c  MOVSS dword ptr [ESP + 0x2c],XMM1
006ee09a  f30f114c2428  MOVSS dword ptr [ESP + 0x28],XMM1
006ee0a0  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
006ee0a6  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
006ee0ab  68d02b1d01  PUSH 0x11d2bd0
006ee0b0  50  PUSH EAX
006ee0b1  8bce  MOV ECX,ESI
006ee0b3  0f2905d02b1d01  MOVAPS xmmword ptr [0x011d2bd0],XMM0
006ee0ba  e8a10cfaff  CALL 0x0068ed60
006ee0bf  803d8c281d0100  CMP byte ptr [0x011d288c],0x0
006ee0c6  741f  JZ 0x006ee0e7
006ee0c8  8b0d74281d01  MOV ECX,dword ptr [0x011d2874]
006ee0ce  e8fd4d0300  CALL 0x00722ed0
006ee0d3  8b0d7c281d01  MOV ECX,dword ptr [0x011d287c]
006ee0d9  50  PUSH EAX
006ee0da  51  PUSH ECX
006ee0db  8bce  MOV ECX,ESI
006ee0dd  e8de97f0ff  CALL 0x005f78c0
006ee0e2  e912020000  JMP 0x006ee2f9
006ee0e7  8b0d7c281d01  MOV ECX,dword ptr [0x011d287c]
006ee0ed  33c0  XOR EAX,EAX
006ee0ef  50  PUSH EAX
006ee0f0  51  PUSH ECX
006ee0f1  8bce  MOV ECX,ESI
006ee0f3  e8c897f0ff  CALL 0x005f78c0
006ee0f8  e9fc010000  JMP 0x006ee2f9
006ee0fd  53  PUSH EBX
006ee0fe  8bcf  MOV ECX,EDI
006ee100  e88bfbffff  CALL 0x006edc90
006ee105  8b9744050000  MOV EDX,dword ptr [EDI + 0x544]
006ee10b  8b8f00030000  MOV ECX,dword ptr [EDI + 0x300]
006ee111  52  PUSH EDX
006ee112  e889c50a00  CALL 0x0079a6a0
006ee117  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
006ee11f  8b4724  MOV EAX,dword ptr [EDI + 0x24]
006ee122  0f289080000000  MOVAPS XMM2,xmmword ptr [EAX + 0x80]
006ee129  0f285870  MOVAPS XMM3,xmmword ptr [EAX + 0x70]
006ee12d  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
006ee133  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
006ee13b  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
006ee141  0f57c0  XORPS XMM0,XMM0
006ee144  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
006ee14a  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
006ee150  0f284c2420  MOVAPS XMM1,xmmword ptr [ESP + 0x20]
006ee155  83c070  ADD EAX,0x70
006ee158  0f28c1  MOVAPS XMM0,XMM1
006ee15b  0fc6c155  SHUFPS XMM0,XMM1,0x55
006ee15f  0f59c2  MULPS XMM0,XMM2
006ee162  0f28d1  MOVAPS XMM2,XMM1
006ee165  0fc6d100  SHUFPS XMM2,XMM1,0x0
006ee169  0f59d3  MULPS XMM2,XMM3
006ee16c  0f285820  MOVAPS XMM3,xmmword ptr [EAX + 0x20]
006ee170  0f58c2  ADDPS XMM0,XMM2
006ee173  0f28d1  MOVAPS XMM2,XMM1
006ee176  0fc6d1aa  SHUFPS XMM2,XMM1,0xaa
006ee17a  0f59d3  MULPS XMM2,XMM3
006ee17d  0f58c2  ADDPS XMM0,XMM2
006ee180  0f28d1  MOVAPS XMM2,XMM1
006ee183  0fc6d1ff  SHUFPS XMM2,XMM1,0xff
006ee187  0f284830  MOVAPS XMM1,xmmword ptr [EAX + 0x30]
006ee18b  0f59d1  MULPS XMM2,XMM1
006ee18e  0f58c2  ADDPS XMM0,XMM2
006ee191  0f28c8  MOVAPS XMM1,XMM0
006ee194  0f28d0  MOVAPS XMM2,XMM0
006ee197  b840000000  MOV EAX,0x40
006ee19c  8405f42b1d01  TEST byte ptr [0x011d2bf4],AL
006ee1a2  0fc6c8ff  SHUFPS XMM1,XMM0,0xff
006ee1a6  0fc6d0aa  SHUFPS XMM2,XMM0,0xaa
006ee1aa  0f5ed1  DIVPS XMM2,XMM1
006ee1ad  0f29442470  MOVAPS xmmword ptr [ESP + 0x70],XMM0
006ee1b2  0f29542450  MOVAPS xmmword ptr [ESP + 0x50],XMM2
006ee1b7  7506  JNZ 0x006ee1bf
006ee1b9  0905f42b1d01  OR dword ptr [0x011d2bf4],EAX
006ee1bf  f30f1087bc020000  MOVSS XMM0,dword ptr [EDI + 0x2bc]
006ee1c7  a1e02b1d01  MOV EAX,[0x011d2be0]
006ee1cc  f30f1144242c  MOVSS dword ptr [ESP + 0x2c],XMM0
006ee1d2  f30f1087b8020000  MOVSS XMM0,dword ptr [EDI + 0x2b8]
006ee1da  f30f11442428  MOVSS dword ptr [ESP + 0x28],XMM0
006ee1e0  f30f1087b4020000  MOVSS XMM0,dword ptr [EDI + 0x2b4]
006ee1e8  f30f11442424  MOVSS dword ptr [ESP + 0x24],XMM0
006ee1ee  f30f10442450  MOVSS XMM0,dword ptr [ESP + 0x50]
006ee1f4  f30f11442420  MOVSS dword ptr [ESP + 0x20],XMM0
006ee1fa  0f28442420  MOVAPS XMM0,xmmword ptr [ESP + 0x20]
006ee1ff  68c02b1d01  PUSH 0x11d2bc0
006ee204  50  PUSH EAX
006ee205  8bce  MOV ECX,ESI
006ee207  0f2905c02b1d01  MOVAPS xmmword ptr [0x011d2bc0],XMM0
006ee20e  e84d0bfaff  CALL 0x0068ed60
006ee213  803d8c281d0100  CMP byte ptr [0x011d288c],0x0
006ee21a  741f  JZ 0x006ee23b
006ee21c  8b0d78281d01  MOV ECX,dword ptr [0x011d2878]
006ee222  e8a94c0300  CALL 0x00722ed0
006ee227  8b0d88281d01  MOV ECX,dword ptr [0x011d2888]
006ee22d  50  PUSH EAX
006ee22e  51  PUSH ECX
006ee22f  8bce  MOV ECX,ESI
006ee231  e88a96f0ff  CALL 0x005f78c0
006ee236  e9be000000  JMP 0x006ee2f9
006ee23b  8b0d88281d01  MOV ECX,dword ptr [0x011d2888]
006ee241  33c0  XOR EAX,EAX
006ee243  50  PUSH EAX
006ee244  51  PUSH ECX
006ee245  8bce  MOV ECX,ESI
006ee247  e87496f0ff  CALL 0x005f78c0
006ee24c  e9a8000000  JMP 0x006ee2f9
006ee251  803d8c281d0100  CMP byte ptr [0x011d288c],0x0
006ee258  743c  JZ 0x006ee296
006ee25a  8b0d6c281d01  MOV ECX,dword ptr [0x011d286c]
006ee260  e86b4c0300  CALL 0x00722ed0
006ee265  8b1580281d01  MOV EDX,dword ptr [0x011d2880]
006ee26b  50  PUSH EAX
006ee26c  52  PUSH EDX
006ee26d  8bce  MOV ECX,ESI
006ee26f  e84c96f0ff  CALL 0x005f78c0
006ee274  8b0d70281d01  MOV ECX,dword ptr [0x011d2870]
006ee27a  e8514c0300  CALL 0x00722ed0
006ee27f  50  PUSH EAX
006ee280  a184281d01  MOV EAX,[0x011d2884]
006ee285  50  PUSH EAX
006ee286  8bce  MOV ECX,ESI
006ee288  e83396f0ff  CALL 0x005f78c0
006ee28d  8b8738050000  MOV EAX,dword ptr [EDI + 0x538]
006ee293  50  PUSH EAX
006ee294  eb58  JMP 0x006ee2ee
006ee296  8b0d80281d01  MOV ECX,dword ptr [0x011d2880]
006ee29c  6a00  PUSH 0x0
006ee29e  51  PUSH ECX
006ee29f  8bce  MOV ECX,ESI
006ee2a1  e81a96f0ff  CALL 0x005f78c0
006ee2a6  8b1584281d01  MOV EDX,dword ptr [0x011d2884]
006ee2ac  6a00  PUSH 0x0
006ee2ae  52  PUSH EDX
006ee2af  8bce  MOV ECX,ESI
006ee2b1  e80a96f0ff  CALL 0x005f78c0
006ee2b6  8b8738050000  MOV EAX,dword ptr [EDI + 0x538]
006ee2bc  50  PUSH EAX
006ee2bd  eb2f  JMP 0x006ee2ee
006ee2bf  b880000000  MOV EAX,0x80
006ee2c4  8405f42b1d01  TEST byte ptr [0x011d2bf4],AL
006ee2ca  751b  JNZ 0x006ee2e7
006ee2cc  8b8f00030000  MOV ECX,dword ptr [EDI + 0x300]
006ee2d2  0905f42b1d01  OR dword ptr [0x011d2bf4],EAX
006ee2d8  681c98ff00  PUSH 0xff981c
006ee2dd  e83ec60a00  CALL 0x0079a920
006ee2e2  a3b42b1d01  MOV [0x011d2bb4],EAX
006ee2e7  8b0db42b1d01  MOV ECX,dword ptr [0x011d2bb4]
006ee2ed  51  PUSH ECX
006ee2ee  8b8f00030000  MOV ECX,dword ptr [EDI + 0x300]
006ee2f4  e8a7c30a00  CALL 0x0079a6a0
006ee2f9  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
006ee2fd  6a02  PUSH 0x2
006ee2ff  e8dc1cf2ff  CALL 0x0060ffe0
006ee304  8b8f00030000  MOV ECX,dword ptr [EDI + 0x300]
006ee30a  6a00  PUSH 0x0
006ee30c  6a00  PUSH 0x0
006ee30e  e8bdc30a00  CALL 0x0079a6d0
006ee313  a1f02b1d01  MOV EAX,[0x011d2bf0]
006ee318  3b4608  CMP EAX,dword ptr [ESI + 0x8]
006ee31b  7320  JNC 0x006ee33d
006ee31d  c1e004  SHL EAX,0x4
006ee320  034604  ADD EAX,dword ptr [ESI + 0x4]
006ee323  0118  ADD dword ptr [EAX],EBX
006ee325  895808  MOV dword ptr [EAX + 0x8],EBX
006ee328  66c740060200  MOV word ptr [EAX + 0x6],0x2
006ee32e  668b5612  MOV DX,word ptr [ESI + 0x12]
006ee332  66895004  MOV word ptr [EAX + 0x4],DX
006ee336  c7400c00000000  MOV dword ptr [EAX + 0xc],0x0
006ee33d  a1ec2b1d01  MOV EAX,[0x011d2bec]
006ee342  3b4608  CMP EAX,dword ptr [ESI + 0x8]
006ee345  7320  JNC 0x006ee367
006ee347  c1e004  SHL EAX,0x4
006ee34a  034604  ADD EAX,dword ptr [ESI + 0x4]
006ee34d  0118  ADD dword ptr [EAX],EBX
006ee34f  895808  MOV dword ptr [EAX + 0x8],EBX
006ee352  66c740060200  MOV word ptr [EAX + 0x6],0x2
006ee358  668b4e12  MOV CX,word ptr [ESI + 0x12]
006ee35c  66894804  MOV word ptr [EAX + 0x4],CX
006ee360  c7400c00000000  MOV dword ptr [EAX + 0xc],0x0
006ee367  5f  POP EDI
006ee368  5e  POP ESI
006ee369  5b  POP EBX
006ee36a  8be5  MOV ESP,EBP
006ee36c  5d  POP EBP
006ee36d  c20400  RET 0x4
