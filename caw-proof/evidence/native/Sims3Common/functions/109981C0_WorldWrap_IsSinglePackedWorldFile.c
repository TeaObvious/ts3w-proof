/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_IsSinglePackedWorldFile. Export
   ordinal(s): 2675. Entry VA: 0x109981c0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000502. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence.
   
   Analyst CAW 1.22.10 export-thunk instruction boundary. Original export entry109981C0 is exactly
   FIVE bytes E9 5B B9 89 FF, an unconditional tail jump to10233B20; exclusive export-code
   end109981C5. Following CC bytes are padding. This entry has no call, stack adjustment, argument
   read or result computation. Original PE name/ordinal2675 and managed CSHostWrap06000502 LPWStr/U1
   declaration remain the API identity. Ghidra may expand the tail target in this export's actual C
   rendering: those algorithm instructions are in the separate complete197-byte target10233B20 and
   its reader1051FC60, not in the five-byte entry envelope. Read their canonical pairs for the
   marker/probe contract. This plate establishes export-versus-target boundaries and does not unify
   the entry's signature with other exports. */

bool __cdecl WorldWrap_IsSinglePackedWorldFile(LPCWSTR worldFileName)

{
  char cVar1;
  bool bVar2;
  uint uVar3;
  uint auStack_c0 [6];
  int iStack_a8;
  
  uVar3 = FUN_10910a60(worldFileName);
  if ((char)uVar3 == '\0') {
    return false;
  }
  FUN_1051f340(auStack_c0 + 4,0);
  bVar2 = true;
  LOCK();
  iStack_a8 = iStack_a8 + 1;
  UNLOCK();
  FUN_1051f430(auStack_c0 + 4,worldFileName);
  cVar1 = FUN_1070b2b0((int)(auStack_c0 + 4));
  if ((cVar1 != '\0') && (cVar1 = FUN_1051ff80(auStack_c0 + 4,1,6,'\0'), cVar1 != '\0')) {
    auStack_c0[0] = 1;
    auStack_c0[1] = 0;
    auStack_c0[2] = 0x477bd6a;
    auStack_c0[3] = 0;
    bVar2 = CAW_PackedResourceFindOrRead(auStack_c0 + 4,auStack_c0,(void **)0x0,1,6,1,(uint *)0x0);
    bVar2 = !bVar2;
    FUN_1051efa0((int)(auStack_c0 + 4));
  }
  FUN_1051ed50((int *)(auStack_c0 + 4));
  FUN_1051f1e0(auStack_c0 + 4);
  return bVar2;
}

