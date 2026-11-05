/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LoadSaveManager_SaveChallengeData. Export
   ordinal(s): 1894. Entry VA: 0x10534510. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000037. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl LoadSaveManager_SaveChallengeData(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  void *this;
  short *psVar2;
  wint_t *pwVar3;
  int iVar4;
  undefined4 unaff_retaddr;
  
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  this = (void *)FUN_1006ee60();
  if (this == (void *)0x0) {
    return 0;
  }
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((psVar2 != (short *)0x0) && (*psVar2 != 0)) {
    pwVar3 = (wint_t *)(**(code **)(*piVar1 + 0x58))(param_2);
    if (*psVar2 != 0) {
      iVar4 = FUN_100735c0(this,psVar2,unaff_retaddr,pwVar3);
      return iVar4;
    }
  }
  return 0;
}

