# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: AnimationActor_GetAgeParameterHash
Paired actual annotated Ghidra pseudocode: 005C9720_AnimationActor_GetAgeParameterHash.c
Owned ranges: [[005c9720, 005c976b]]
Envelope bytes=172

GHIDRA LISTING (original bytes; nonowned alignment explicit)
005c9720  8b81f0020000  MOV EAX,dword ptr [ECX + 0x2f0]
005c9726  83e07f  AND EAX,0x7f
005c9729  83c0ff  ADD EAX,-0x1
005c972c  83f83f  CMP EAX,0x3f
005c972f  7738  JA 0x005c9769
005c9731  0fb6808c975c00  MOVZX EAX,byte ptr [EAX + 0x5c978c]
005c9738  ff24856c975c00  JMP dword ptr [EAX*0x4 + 0x5c976c]
005c973f  b8e9cdf95b  MOV EAX,0x5bf9cde9
005c9744  c3  RET
005c9745  b8b702429f  MOV EAX,0x9f4202b7
005c974a  c3  RET
005c974b  b8955af7ff  MOV EAX,0xfff75a95
005c9750  c3  RET
005c9751  b8351b2cc6  MOV EAX,0xc62c1b35
005c9756  c3  RET
005c9757  b8aeb29499  MOV EAX,0x9994b2ae
005c975c  c3  RET
005c975d  b8f75f13a4  MOV EAX,0xa4135ff7
005c9762  c3  RET
005c9763  b82b6b253a  MOV EAX,0x3a256b2b
005c9768  c3  RET
005c9769  33c0  XOR EAX,EAX
005c976b  c3  RET
005c976c  3f  .byte (gap/alignment)
005c976d  97  .byte (gap/alignment)
005c976e  5c  .byte (gap/alignment)
005c976f  00  .byte (gap/alignment)
005c9770  45  .byte (gap/alignment)
005c9771  97  .byte (gap/alignment)
005c9772  5c  .byte (gap/alignment)
005c9773  00  .byte (gap/alignment)
005c9774  4b  .byte (gap/alignment)
005c9775  97  .byte (gap/alignment)
005c9776  5c  .byte (gap/alignment)
005c9777  00  .byte (gap/alignment)
005c9778  51  .byte (gap/alignment)
005c9779  97  .byte (gap/alignment)
005c977a  5c  .byte (gap/alignment)
005c977b  00  .byte (gap/alignment)
005c977c  57  .byte (gap/alignment)
005c977d  97  .byte (gap/alignment)
005c977e  5c  .byte (gap/alignment)
005c977f  00  .byte (gap/alignment)
005c9780  5d  .byte (gap/alignment)
005c9781  97  .byte (gap/alignment)
005c9782  5c  .byte (gap/alignment)
005c9783  00  .byte (gap/alignment)
005c9784  63  .byte (gap/alignment)
005c9785  97  .byte (gap/alignment)
005c9786  5c  .byte (gap/alignment)
005c9787  00  .byte (gap/alignment)
005c9788  69  .byte (gap/alignment)
005c9789  97  .byte (gap/alignment)
005c978a  5c  .byte (gap/alignment)
005c978b  00  .byte (gap/alignment)
005c978c  00  .byte (gap/alignment)
005c978d  01  .byte (gap/alignment)
005c978e  07  .byte (gap/alignment)
005c978f  02  .byte (gap/alignment)
005c9790  07  .byte (gap/alignment)
005c9791  07  .byte (gap/alignment)
005c9792  07  .byte (gap/alignment)
005c9793  03  .byte (gap/alignment)
005c9794  07  .byte (gap/alignment)
005c9795  07  .byte (gap/alignment)
005c9796  07  .byte (gap/alignment)
005c9797  07  .byte (gap/alignment)
005c9798  07  .byte (gap/alignment)
005c9799  07  .byte (gap/alignment)
005c979a  07  .byte (gap/alignment)
005c979b  04  .byte (gap/alignment)
005c979c  07  .byte (gap/alignment)
005c979d  07  .byte (gap/alignment)
005c979e  07  .byte (gap/alignment)
005c979f  07  .byte (gap/alignment)
005c97a0  07  .byte (gap/alignment)
005c97a1  07  .byte (gap/alignment)
005c97a2  07  .byte (gap/alignment)
005c97a3  07  .byte (gap/alignment)
005c97a4  07  .byte (gap/alignment)
005c97a5  07  .byte (gap/alignment)
005c97a6  07  .byte (gap/alignment)
005c97a7  07  .byte (gap/alignment)
005c97a8  07  .byte (gap/alignment)
005c97a9  07  .byte (gap/alignment)
005c97aa  07  .byte (gap/alignment)
005c97ab  05  .byte (gap/alignment)
005c97ac  07  .byte (gap/alignment)
005c97ad  07  .byte (gap/alignment)
005c97ae  07  .byte (gap/alignment)
005c97af  07  .byte (gap/alignment)
005c97b0  07  .byte (gap/alignment)
005c97b1  07  .byte (gap/alignment)
005c97b2  07  .byte (gap/alignment)
005c97b3  07  .byte (gap/alignment)
005c97b4  07  .byte (gap/alignment)
005c97b5  07  .byte (gap/alignment)
005c97b6  07  .byte (gap/alignment)
005c97b7  07  .byte (gap/alignment)
005c97b8  07  .byte (gap/alignment)
005c97b9  07  .byte (gap/alignment)
005c97ba  07  .byte (gap/alignment)
005c97bb  07  .byte (gap/alignment)
005c97bc  07  .byte (gap/alignment)
005c97bd  07  .byte (gap/alignment)
005c97be  07  .byte (gap/alignment)
005c97bf  07  .byte (gap/alignment)
005c97c0  07  .byte (gap/alignment)
005c97c1  07  .byte (gap/alignment)
005c97c2  07  .byte (gap/alignment)
005c97c3  07  .byte (gap/alignment)
005c97c4  07  .byte (gap/alignment)
005c97c5  07  .byte (gap/alignment)
005c97c6  07  .byte (gap/alignment)
005c97c7  07  .byte (gap/alignment)
005c97c8  07  .byte (gap/alignment)
005c97c9  07  .byte (gap/alignment)
005c97ca  07  .byte (gap/alignment)
005c97cb  06  .byte (gap/alignment)
Owned instructions=23 owned bytes=76 gap/nonowned bytes=96
