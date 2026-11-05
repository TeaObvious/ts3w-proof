/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LoadSaveManager_GetLoadSaveFileInfoID_Impl.
   Export ordinal(s): 1887. Entry VA: 0x10534cb0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000031. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 * __cdecl LoadSaveManager_GetLoadSaveFileInfoID_Impl(int param_1)

{
  int *piVar1;
  void *this;
  undefined1 *puVar2;
  undefined *puStack_34;
  undefined *puStack_30;
  undefined **ppuStack_2c;
  char *pcStack_28;
  undefined **appuStack_24 [2];
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    this = (void *)(**(code **)(*piVar1 + 0xcc))();
    if (this != (void *)0x0) {
      puStack_34 = &_Dst_10ca8244;
      puStack_30 = &_Dst_10ca8244;
      pcStack_28 = "Scripting/LoadSaveManagerHost";
      ppuStack_2c = (undefined **)&DAT_10ca8246;
      FUN_1006fc90(this,&puStack_34);
      appuStack_24[0] = &PTR_FUN_10aca5b4;
      uStack_1c = 0;
      uStack_1a = 0;
      FUN_10928b90(appuStack_24,0x13,9,&puStack_34,0x10,1);
      puVar2 = &stack0xffffffc8;
      (**(code **)(*piVar1 + 0x50))(appuStack_24);
      ppuStack_2c = &PTR_FUN_10aca5b4;
      if (((uint)appuStack_24[0] & 4) != 0) {
        FUN_10928a90(&ppuStack_2c,'\0');
      }
      if ((2 < (int)((int)puStack_34 - param_1 & 0xfffffffeU)) && (param_1 != 0)) {
        FUN_10918e90(param_1);
      }
      return puVar2;
    }
  }
  return (undefined1 *)0x0;
}

