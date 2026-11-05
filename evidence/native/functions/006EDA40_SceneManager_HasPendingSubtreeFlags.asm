# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[006eda40, 006edaf6]]
Actual pseudocode: 006EDA40_SceneManager_HasPendingSubtreeFlags.c
; Actual plate: Analyst PC1.67 Physical ECX scene manager plus subtree/source and32-bit mask stack words, RET08. If this+29D byte iszero and this+8 nonzero, call006E3D50 before scratch collection. Lazily initialize actual process-global pointer-vector11D2B9C/BA0/BA4 and register its exit cleanup; reset logical end to begin each call, then006E4D30 fills it for actual source. Scan32-bit object pointers. MaskFFFFFFFF bypasses actual0060FC70 descriptor+44 getter; otherwise require bit intersection. Then TEST byte[object+40],42; return AL1 on first match, else AL0. No per-call owned snapshot, thread-safe scratch, decoded meanings for flag02/40, complete descendant algorithm, native texture hashes or Vulkan readiness are claimed. The actual producer/consumer path is700C20 component enumeration to this selected pending-bit test.

006eda40  53  PUSH EBX
006eda41  55  PUSH EBP
006eda42  56  PUSH ESI
006eda43  8bf1  MOV ESI,ECX
006eda45  33db  XOR EBX,EBX
006eda47  389e9d020000  CMP byte ptr [ESI + 0x29d],BL
006eda4d  57  PUSH EDI
006eda4e  750c  JNZ 0x006eda5c
006eda50  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
006eda53  3bcb  CMP ECX,EBX
006eda55  7405  JZ 0x006eda5c
006eda57  e8f462ffff  CALL 0x006e3d50
006eda5c  f605ac2b1d0101  TEST byte ptr [0x011d2bac],0x1
006eda63  7530  JNZ 0x006eda95
006eda65  830dac2b1d0101  OR dword ptr [0x011d2bac],0x1
006eda6c  68302df900  PUSH 0xf92d30
006eda71  891d9c2b1d01  MOV dword ptr [0x011d2b9c],EBX
006eda77  891da02b1d01  MOV dword ptr [0x011d2ba0],EBX
006eda7d  891da42b1d01  MOV dword ptr [0x011d2ba4],EBX
006eda83  c705a82b1d010498ff00  MOV dword ptr [0x011d2ba8],0xff9804
006eda8d  e8ef188900  CALL 0x00f7f381
006eda92  83c404  ADD ESP,0x4
006eda95  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
006eda99  a19c2b1d01  MOV EAX,[0x011d2b9c]
006eda9e  51  PUSH ECX
006eda9f  a3a02b1d01  MOV [0x011d2ba0],EAX
006edaa4  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
006edaa7  689c2b1d01  PUSH 0x11d2b9c
006edaac  e87f72ffff  CALL 0x006e4d30
006edab1  a1a02b1d01  MOV EAX,[0x011d2ba0]
006edab6  8b359c2b1d01  MOV ESI,dword ptr [0x011d2b9c]
006edabc  3bf0  CMP ESI,EAX
006edabe  8bd8  MOV EBX,EAX
006edac0  7423  JZ 0x006edae5
006edac2  8b6c2418  MOV EBP,dword ptr [ESP + 0x18]
006edac6  83fdff  CMP EBP,-0x1
006edac9  8b3e  MOV EDI,dword ptr [ESI]
006edacb  740b  JZ 0x006edad8
006edacd  8bcf  MOV ECX,EDI
006edacf  e89c21f2ff  CALL 0x0060fc70
006edad4  85c5  TEST EBP,EAX
006edad6  7406  JZ 0x006edade
006edad8  f6474042  TEST byte ptr [EDI + 0x40],0x42
006edadc  7510  JNZ 0x006edaee
006edade  83c604  ADD ESI,0x4
006edae1  3bf3  CMP ESI,EBX
006edae3  75e1  JNZ 0x006edac6
006edae5  5f  POP EDI
006edae6  5e  POP ESI
006edae7  5d  POP EBP
006edae8  32c0  XOR AL,AL
006edaea  5b  POP EBX
006edaeb  c20800  RET 0x8
006edaee  5f  POP EDI
006edaef  5e  POP ESI
006edaf0  5d  POP EBP
006edaf1  b001  MOV AL,0x1
006edaf3  5b  POP EBX
006edaf4  c20800  RET 0x8
