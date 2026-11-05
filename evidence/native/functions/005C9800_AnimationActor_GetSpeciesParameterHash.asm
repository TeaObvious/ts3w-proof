# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: AnimationActor_GetSpeciesParameterHash
Paired actual annotated Ghidra pseudocode: 005C9800_AnimationActor_GetSpeciesParameterHash.c
Owned ranges: [[005c9800, 005c986a]]
Envelope bytes=107

GHIDRA LISTING (original bytes; nonowned alignment explicit)
005c9800  8b81f0020000  MOV EAX,dword ptr [ECX + 0x2f0]
005c9806  2500cf0000  AND EAX,0xcf00
005c980b  3d00040000  CMP EAX,0x400
005c9810  772f  JA 0x005c9841
005c9812  7427  JZ 0x005c983b
005c9814  3d00010000  CMP EAX,0x100
005c9819  741a  JZ 0x005c9835
005c981b  3d00020000  CMP EAX,0x200
005c9820  740d  JZ 0x005c982f
005c9822  3d00030000  CMP EAX,0x300
005c9827  752d  JNZ 0x005c9856
005c9829  b8bba3973a  MOV EAX,0x3a97a3bb
005c982e  c3  RET
005c982f  b8604ec4e5  MOV EAX,0xe5c44e60
005c9834  c3  RET
005c9835  b8cc16b5e7  MOV EAX,0xe7b516cc
005c983a  c3  RET
005c983b  b82d3c9520  MOV EAX,0x20953c2d
005c9840  c3  RET
005c9841  3d00050000  CMP EAX,0x500
005c9846  741d  JZ 0x005c9865
005c9848  3d00060000  CMP EAX,0x600
005c984d  7410  JZ 0x005c985f
005c984f  3d00070000  CMP EAX,0x700
005c9854  7403  JZ 0x005c9859
005c9856  33c0  XOR EAX,EAX
005c9858  c3  RET
005c9859  b82833f906  MOV EAX,0x6f93328
005c985e  c3  RET
005c985f  b8b9b2d575  MOV EAX,0x75d5b2b9
005c9864  c3  RET
005c9865  b8a168bf94  MOV EAX,0x94bf68a1
005c986a  c3  RET
Owned instructions=33 owned bytes=107 gap/nonowned bytes=0
