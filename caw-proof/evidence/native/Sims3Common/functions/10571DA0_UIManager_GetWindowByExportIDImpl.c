/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetWindowByExportIDImpl. Export
   ordinal(s): 1115. Entry VA: 0x10571da0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600069D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl UIManager_GetWindowByExportIDImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  int unaff_ESI;
  
  piVar2 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    iVar3 = (**(code **)(*piVar2 + 0xcc))(param_1);
    if (iVar3 != 0) {
      FUN_106a8410((void *)(iVar3 + 0x44),(undefined4 *)&stack0xfffffff4,(uint *)&stack0x00000000);
      if ((unaff_ESI != *(int *)(*(int *)(iVar3 + 0x48) + *(int *)(iVar3 + 0x4c) * 4)) &&
         (piVar1 = *(int **)(unaff_ESI + 4), piVar1 != (int *)0x0)) {
        (**(code **)*piVar1)();
        iVar3 = *piVar2;
        uVar4 = (**(code **)(*piVar1 + 0xc))(0xeeee8218,0x30);
        uVar4 = (**(code **)(iVar3 + 200))(uVar4);
        return uVar4;
      }
    }
  }
  return 0;
}

