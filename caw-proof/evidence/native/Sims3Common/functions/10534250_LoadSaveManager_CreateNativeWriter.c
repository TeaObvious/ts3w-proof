/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LoadSaveManager_CreateNativeWriter. Export
   ordinal(s): 1883. Entry VA: 0x10534250. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000035. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 LoadSaveManager_CreateNativeWriter(void)

{
  undefined4 *puVar1;
  int *piVar2;
  undefined4 uVar3;
  
                    /* 0x534250  1883  LoadSaveManager_CreateNativeWriter */
  puVar1 = (undefined4 *)FUN_10918eb0(0x9c,"Debug/NativeWriter",0);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1 = FUN_105c73d0(puVar1);
    if (puVar1 != (undefined4 *)0x0) {
      FUN_105c7880();
      piVar2 = (int *)FUN_1055b120();
      uVar3 = (**(code **)(*piVar2 + 200))(puVar1,0x44);
      return uVar3;
    }
  }
  return 0;
}

