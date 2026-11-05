/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetChildByIDImpl. Export ordinal(s):
   1091. Entry VA: 0x1056f680. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600069F. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl UIManager_GetChildByIDImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 unaff_retaddr;
  
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar2 != (int *)0x0) {
      piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xeeee8218);
      if (piVar2 != (int *)0x0) {
        puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0xf4))(unaff_retaddr,param_1);
        if (puVar3 != (undefined4 *)0x0) {
          (**(code **)*puVar3)();
          uVar4 = (**(code **)(*piVar1 + 200))(puVar3,0x30);
          return uVar4;
        }
      }
    }
  }
  return 0;
}

