/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_AddNewObjectWithID. Export
   ordinal(s): 1962. Entry VA: 0x109962b0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000254. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl ObjectManagerWrap_AddNewObjectWithID(int *param_1)

{
  int *piVar1;
  char cVar2;
  int iVar3;
  undefined4 *puVar4;
  
                    /* 0x9962b0  1962  ObjectManagerWrap_AddNewObjectWithID */
  if (param_1 == (int *)0x0) {
    return false;
  }
  iVar3 = FUN_1072a1a0();
  puVar4 = (undefined4 *)FUN_1072abb0(iVar3);
  if (puVar4 != (undefined4 *)0x0) {
    piVar1 = puVar4 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    cVar2 = (**(code **)(*param_1 + 0x30))(puVar4);
    if (cVar2 != '\0') {
      FUN_107282f0(0xb,puVar4,0);
    }
    LOCK();
    iVar3 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar3 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*puVar4)(1);
    }
    return cVar2 != '\0';
  }
  return false;
}

