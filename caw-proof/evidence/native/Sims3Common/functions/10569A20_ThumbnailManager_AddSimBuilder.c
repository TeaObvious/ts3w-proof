/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_AddSimBuilder. Export
   ordinal(s): 1033. Entry VA: 0x10569a20. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000376. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl ThumbnailManager_AddSimBuilder(int param_1)

{
  int *piVar1;
  undefined4 uVar2;
  
                    /* 0x569a20  1033  ThumbnailManager_AddSimBuilder */
  if (param_1 != 0) {
    piVar1 = (int *)FUN_1055b120();
    uVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    if (DAT_10c71150 != (void *)0x0) {
      FUN_10330fc0(DAT_10c71150,uVar2);
    }
  }
  return;
}

