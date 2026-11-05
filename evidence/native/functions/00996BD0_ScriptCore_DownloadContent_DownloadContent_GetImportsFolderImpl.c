/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181640 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_GetImportsFolderImpl [assembly=ScriptCore
   token=0x060000E5; ; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * ScriptCore.DownloadContent::DownloadContent_GetImportsFolderImpl(void)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && (PTR_DAT_01181600 != PTR_DAT_01181604)) {
    local_20[0] = &PTR_FUN_00fba6f4;
    local_18 = 0;
    local_16 = 0;
    FUN_004f59c0(local_20,0x13,9,&PTR_DAT_01181600,0x10,1);
    puVar2 = &local_24;
    local_24 = 0;
    (**(code **)(*piVar1 + 0x50))(local_20);
    if (((uint)local_20[0] & 4) != 0) {
      FUN_004f5760(&stack0xffffffd8,'\0');
    }
    return puVar2;
  }
  return (undefined4 *)0x0;
}

