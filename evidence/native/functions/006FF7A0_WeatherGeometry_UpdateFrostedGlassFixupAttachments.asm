# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe, complete actual Ghidra-owned Listing.
; Analyst-assigned name: WeatherGeometry_UpdateFrostedGlassFixupAttachments
; entry=006ff7a0 name="WeatherGeometry_UpdateFrostedGlassFixupAttachments" source=USER_DEFINED signatureSource=ANALYSIS prototype="undefined __thiscall WeatherGeometry_UpdateFrostedGlassFixupAttachments(char param_1)" cc="__thiscall" custom=false purge=4 return=/undefined returnStorage=<UNASSIGNED> inline=false noreturn=false thunk=false external=false varargs=false callfixup=null bodyMetadata=[[006ff7a0, 006ff8a1]] bodyAddressCount=258
; PARAM 0 "this" type=/void * storage=ECX:4 (auto) source=ANALYSIS firstUse=0 auto=true
; PARAM 1 "param_1" type=/char storage=Stack[0x4]:1 source=DEFAULT firstUse=0 auto=false
; LOCAL "local_8" type=/undefined4 storage=Stack[-0x8]:4 source=DEFAULT firstUse=0
; 
; Actual entry PLATE: PC1.67, complete95instructions/258ownedbytes checked against pristine PE. ECX collection receiver; one incoming stack DWORD whose low byte enables attachment; physical RET4. Each qualifying node queries descriptor interface017F1D88, requires descriptor flags bit00020000, then clears fixup hash0D646E03 at descriptor+210 BEFORE testing enable. Enabled allocates12bytes/alignment4 tagged Renderer/FrostedGlassFixupLOD, invokes00693FE0 with0,1, retains via virtual0, attaches via descriptor virtual80 with00FF3834, then releases via virtual4. Null allocation still calls attachment with null. This body does not directly test the render snow/frost disable masks; collection producer, caller policy, fixup shader behavior and provider identities remain unexpanded. Eight allocator stack DWORDs in ASM override the incomplete decompiler call prototype. Existing ABI/types/locals are unchanged.

006ff7a0  83ec08  SUB ESP,0x8
006ff7a3  53  PUSH EBX
006ff7a4  8d4104  LEA EAX,[ECX + 0x4]
006ff7a7  56  PUSH ESI
006ff7a8  8b30  MOV ESI,dword ptr [EAX]
006ff7aa  85f6  TEST ESI,ESI
006ff7ac  8bd8  MOV EBX,EAX
006ff7ae  7512  JNZ 0x006ff7c2
006ff7b0  397004  CMP dword ptr [EAX + 0x4],ESI
006ff7b3  8d5804  LEA EBX,[EAX + 0x4]
006ff7b6  7508  JNZ 0x006ff7c0
006ff7b8  83c304  ADD EBX,0x4
006ff7bb  833b00  CMP dword ptr [EBX],0x0
006ff7be  74f8  JZ 0x006ff7b8
006ff7c0  8b33  MOV ESI,dword ptr [EBX]
006ff7c2  8b8928100000  MOV ECX,dword ptr [ECX + 0x1028]
006ff7c8  3bf1  CMP ESI,ECX
006ff7ca  894c2408  MOV dword ptr [ESP + 0x8],ECX
006ff7ce  0f84c2000000  JZ 0x006ff896
006ff7d4  55  PUSH EBP
006ff7d5  57  PUSH EDI
006ff7d6  85f6  TEST ESI,ESI
006ff7d8  0f849a000000  JZ 0x006ff878
006ff7de  8d4ef8  LEA ECX,[ESI + -0x8]
006ff7e1  85c9  TEST ECX,ECX
006ff7e3  0f848f000000  JZ 0x006ff878
006ff7e9  8b01  MOV EAX,dword ptr [ECX]
006ff7eb  8b500c  MOV EDX,dword ptr [EAX + 0xc]
006ff7ee  68881d7f01  PUSH 0x17f1d88
006ff7f3  ffd2  CALL EDX
006ff7f5  8be8  MOV EBP,EAX
006ff7f7  85ed  TEST EBP,EBP
006ff7f9  747d  JZ 0x006ff878
006ff7fb  8bcd  MOV ECX,EBP
006ff7fd  e86e04f1ff  CALL 0x0060fc70
006ff802  a900000200  TEST EAX,0x20000
006ff807  746f  JZ 0x006ff878
006ff809  68036e640d  PUSH 0xd646e03
006ff80e  8d8d10020000  LEA ECX,[EBP + 0x210]
006ff814  e847dafdff  CALL 0x006dd260
006ff819  807c241c00  CMP byte ptr [ESP + 0x1c],0x0
006ff81e  7458  JZ 0x006ff878
006ff820  6a00  PUSH 0x0
006ff822  6a00  PUSH 0x0
006ff824  6a00  PUSH 0x0
006ff826  6a00  PUSH 0x0
006ff828  68a4b0ff00  PUSH 0xffb0a4
006ff82d  6a00  PUSH 0x0
006ff82f  6a04  PUSH 0x4
006ff831  6a0c  PUSH 0xc
006ff833  e8e84cdeff  CALL 0x004e4520
006ff838  83c420  ADD ESP,0x20
006ff83b  85c0  TEST EAX,EAX
006ff83d  745f  JZ 0x006ff89e
006ff83f  6a01  PUSH 0x1
006ff841  6a00  PUSH 0x0
006ff843  8bc8  MOV ECX,EAX
006ff845  e89647f9ff  CALL 0x00693fe0
006ff84a  8bf8  MOV EDI,EAX
006ff84c  85ff  TEST EDI,EDI
006ff84e  7408  JZ 0x006ff858
006ff850  8b07  MOV EAX,dword ptr [EDI]
006ff852  8b10  MOV EDX,dword ptr [EAX]
006ff854  8bcf  MOV ECX,EDI
006ff856  ffd2  CALL EDX
006ff858  8b4500  MOV EAX,dword ptr [EBP]
006ff85b  8b9080000000  MOV EDX,dword ptr [EAX + 0x80]
006ff861  683438ff00  PUSH 0xff3834
006ff866  57  PUSH EDI
006ff867  8bcd  MOV ECX,EBP
006ff869  ffd2  CALL EDX
006ff86b  85ff  TEST EDI,EDI
006ff86d  7409  JZ 0x006ff878
006ff86f  8b07  MOV EAX,dword ptr [EDI]
006ff871  8b5004  MOV EDX,dword ptr [EAX + 0x4]
006ff874  8bcf  MOV ECX,EDI
006ff876  ffd2  CALL EDX
006ff878  8b36  MOV ESI,dword ptr [ESI]
006ff87a  85f6  TEST ESI,ESI
006ff87c  750c  JNZ 0x006ff88a
006ff87e  8bff  MOV EDI,EDI
006ff880  8b7304  MOV ESI,dword ptr [EBX + 0x4]
006ff883  83c304  ADD EBX,0x4
006ff886  85f6  TEST ESI,ESI
006ff888  74f6  JZ 0x006ff880
006ff88a  3b742410  CMP ESI,dword ptr [ESP + 0x10]
006ff88e  0f8542ffffff  JNZ 0x006ff7d6
006ff894  5f  POP EDI
006ff895  5d  POP EBP
006ff896  5e  POP ESI
006ff897  5b  POP EBX
006ff898  83c408  ADD ESP,0x8
006ff89b  c20400  RET 0x4
006ff89e  33ff  XOR EDI,EDI
006ff8a0  ebb6  JMP 0x006ff858
