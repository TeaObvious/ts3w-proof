/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01197268 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_GetCurrentMemoryUsage [assembly=ScriptCore token=0x0600025F; ;
   return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_GameUtils__GameUtils_GetCurrentMemoryUsage(void)

{
  int iVar1;
  int *piVar2;
  float10 fVar3;
  
  piVar2 = (int *)FUN_0092fa20();
  if ((*piVar2 != 0) && (DAT_011dd18c == 2)) {
    iVar1 = *(int *)(*piVar2 + 0x82c);
    fVar3 = (float10)iVar1;
    if (iVar1 < 0) {
      fVar3 = fVar3 + (float10)_DAT_00f99948;
    }
    return fVar3 * (float10)DAT_00fbba84;
  }
  return (float10)0.0;
}

