/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_GetImportsFolderImpl. Export
   ordinal(s): 379. Entry VA: 0x10785be0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011C6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * DownloadContent_GetImportsFolderImpl(void)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
                    /* 0x785be0  379  DownloadContent_GetImportsFolderImpl */
  piVar1 = (int *)FUN_1055b120();
  if ((piVar1 != (int *)0x0) && (PTR__Dst_10ca8244_10c4e8b0 != PTR__Dst_10ca8244_10c4e8b4)) {
    local_20[0] = &PTR_FUN_10aca5b4;
    local_18 = 0;
    local_16 = 0;
    FUN_10928b90(local_20,0x13,9,&PTR__Dst_10ca8244_10c4e8b0,0x10,1);
    puVar2 = &local_24;
    local_24 = 0;
    (**(code **)(*piVar1 + 0x50))(local_20);
    if (((uint)local_20[0] & 4) != 0) {
      FUN_10928a90(&stack0xffffffd8,'\0');
    }
    return puVar2;
  }
  return (undefined4 *)0x0;
}

