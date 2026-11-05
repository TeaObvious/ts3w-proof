/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_DestroyDrawableImpl;
   UIManager_DestroyUIHitMaskImpl; UIManager_DestroyUIImageImpl; UIManager_DestroyWindowImpl. Export
   ordinal(s): 1079; 1082; 1083; 1084. Entry VA: 0x1056bd70. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000692; ScriptCore:0x06000694; ScriptCore:0x06000696; ScriptCore:0x060006A1. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl UIManager_DestroyDrawableImpl(uint param_1)

{
  int *piVar1;
  
                    /* 0x56bd70  1079  UIManager_DestroyDrawableImpl
                       0x56bd70  1082  UIManager_DestroyUIHitMaskImpl
                       0x56bd70  1083  UIManager_DestroyUIImageImpl
                       0x56bd70  1084  UIManager_DestroyWindowImpl */
  piVar1 = (int *)FUN_1055b120();
  if ((piVar1 != (int *)0x0) && ((param_1 & 0xff000000) == 0x30000000)) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xd8))(param_1);
    if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x1056bda5. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar1 + 4))();
      return;
    }
  }
  return;
}

