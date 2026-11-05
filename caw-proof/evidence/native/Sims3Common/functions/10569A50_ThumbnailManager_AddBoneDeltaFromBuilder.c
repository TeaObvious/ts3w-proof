/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_AddBoneDeltaFromBuilder. Export
   ordinal(s): 1025. Entry VA: 0x10569a50. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000377. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl ThumbnailManager_AddBoneDeltaFromBuilder(int param_1)

{
  void *this;
  int *piVar1;
  void *this_00;
  undefined4 uVar2;
  undefined4 *puVar3;
  int unaff_retaddr;
  
                    /* 0x569a50  1025  ThumbnailManager_AddBoneDeltaFromBuilder */
  if (param_1 != 0) {
    piVar1 = (int *)FUN_1055b120();
    this_00 = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    this = DAT_10c71150;
    if ((DAT_10c71150 != (void *)0x0) && (this_00 != (void *)0x0)) {
      uVar2 = FUN_103dc2c0(this_00,(int *)&stack0x00000000);
      if ((char)uVar2 != '\0') {
        puVar3 = FUN_10370880(unaff_retaddr);
        FUN_10330f60(this,puVar3);
      }
    }
  }
  return;
}

