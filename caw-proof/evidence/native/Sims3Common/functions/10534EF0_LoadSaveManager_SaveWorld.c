/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LoadSaveManager_SaveWorld. Export ordinal(s):
   1898. Entry VA: 0x10534ef0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600002E. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl LoadSaveManager_SaveWorld(undefined4 param_1)

{
  int *piVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined **local_40 [2];
  ushort local_38;
  undefined2 local_36;
  char local_30;
  undefined **local_20 [2];
  byte bStack_18;
  
                    /* 0x534ef0  1898  LoadSaveManager_SaveWorld */
  if (DAT_10c700c4 != 0) {
    piVar1 = (int *)FUN_10918eb0(0x40,"Scripting/SaveWorldProcess",0);
    piVar3 = (int *)0x0;
    if (piVar1 != (int *)0x0) {
      FUN_10325520(piVar1);
      piVar1[8] = (int)&PTR_LAB_10ab04d0;
      piVar1[10] = 0;
      *piVar1 = (int)&PTR_FUN_10b1a620;
      piVar1[8] = (int)&PTR_LAB_10b1a610;
      *(undefined1 *)(piVar1 + 9) = 0;
      (**(code **)(*piVar1 + 4))();
      piVar3 = piVar1;
    }
    piVar1 = (int *)FUN_1055b120();
    uVar2 = FUN_10534ce0(piVar3);
    if ((char)uVar2 == '\0') {
      local_40[0] = &PTR_FUN_10aca5b4;
      local_36 = 1;
      local_38 = 2;
      local_30 = (char)uVar2;
      (**(code **)(*piVar1 + 0x134))(local_20,param_1,local_40,1);
      local_20[0] = &PTR_FUN_10aca5b4;
      if ((bStack_18 & 4) != 0) {
        FUN_10928a90(local_20,'\0');
      }
      local_40[0] = &PTR_FUN_10aca5b4;
      if ((local_38 & 4) != 0) {
        FUN_10928a90(local_40,'\0');
      }
    }
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 8))();
      return;
    }
  }
  return;
}

