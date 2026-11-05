/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LoadSaveManager_GetCurrentSaveGameInfo_Impl.
   Export ordinal(s): 1886. Entry VA: 0x10534560. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000030. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 LoadSaveManager_GetCurrentSaveGameInfo_Impl(void)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  
                    /* 0x534560  1886  LoadSaveManager_GetCurrentSaveGameInfo_Impl */
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    iVar2 = FUN_1006ee60();
    if (iVar2 != 0) {
      iVar2 = FUN_1070b380(iVar2);
      if (iVar2 != 0) {
        *(int *)(iVar2 + 4) = *(int *)(iVar2 + 4) + 1;
        uVar3 = (**(code **)(*piVar1 + 200))(iVar2,0x40);
        return uVar3;
      }
    }
  }
  return 0;
}

