# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[007d5440, 007d54ba]]
signature=undefined1 __thiscall NativePropertyStream_ReadInt32Array(void * this, undefined4 param_1, uint * param_2, uint * param_3)
PLATE
Analyst note (PC1.67 SACS migration contract): ECX reader,three words RET0C. XOR5149A9DF; same stored-count/query/min-capacity protocol as UInt32 array, raw32-bit words read without numeric unsigned-to-signed conversion. Native output pointer/status protocol is distinct from allocating nullable managed int[].

007d5440  8b442404  MOV EAX,dword ptr [ESP + 0x4]
007d5444  56  PUSH ESI
007d5445  35dfa94951  XOR EAX,0x5149a9df
007d544a  50  PUSH EAX
007d544b  8bf1  MOV ESI,ECX
007d544d  e80efdffff  CALL 0x007d5160
007d5452  84c0  TEST AL,AL
007d5454  745f  JZ 0x007d54b5
007d5456  8b7608  MOV ESI,dword ptr [ESI + 0x8]
007d5459  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
007d545c  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007d545f  53  PUSH EBX
007d5460  57  PUSH EDI
007d5461  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
007d5465  8b1f  MOV EBX,dword ptr [EDI]
007d5467  51  PUSH ECX
007d5468  57  PUSH EDI
007d5469  52  PUSH EDX
007d546a  e81185d0ff  CALL 0x004dd980
007d546f  83c40c  ADD ESP,0xc
007d5472  8bce  MOV ECX,ESI
007d5474  50  PUSH EAX
007d5475  e876250000  CALL 0x007d79f0
007d547a  8b442414  MOV EAX,dword ptr [ESP + 0x14]
007d547e  85c0  TEST EAX,EAX
007d5480  7508  JNZ 0x007d548a
007d5482  5f  POP EDI
007d5483  5b  POP EBX
007d5484  b001  MOV AL,0x1
007d5486  5e  POP ESI
007d5487  c20c00  RET 0xc
007d548a  391f  CMP dword ptr [EDI],EBX
007d548c  7602  JBE 0x007d5490
007d548e  891f  MOV dword ptr [EDI],EBX
007d5490  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
007d5493  8b3f  MOV EDI,dword ptr [EDI]
007d5495  8b5608  MOV EDX,dword ptr [ESI + 0x8]
007d5498  51  PUSH ECX
007d5499  57  PUSH EDI
007d549a  50  PUSH EAX
007d549b  52  PUSH EDX
007d549c  e89f85d0ff  CALL 0x004dda40
007d54a1  83c410  ADD ESP,0x10
007d54a4  8bce  MOV ECX,ESI
007d54a6  50  PUSH EAX
007d54a7  e844250000  CALL 0x007d79f0
007d54ac  8a4614  MOV AL,byte ptr [ESI + 0x14]
007d54af  5f  POP EDI
007d54b0  5b  POP EBX
007d54b1  5e  POP ESI
007d54b2  c20c00  RET 0xc
007d54b5  32c0  XOR AL,AL
007d54b7  5e  POP ESI
007d54b8  c20c00  RET 0xc
