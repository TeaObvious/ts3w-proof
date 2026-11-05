/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011816d0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_GetExportBinPackageNamesImpl [assembly=ScriptCore
   token=0x06000106; ; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * ScriptCore.DownloadContent::DownloadContent_GetExportBinPackageNamesImpl(void)

{
  int *piVar1;
  void *unaff_ESI;
  undefined4 *puVar2;
  undefined4 local_34;
  undefined1 *local_30;
  undefined1 *local_2c;
  undefined **local_28;
  char *local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  local_30 = &DAT_011c8e54;
  local_2c = &DAT_011c8e54;
  local_24 = "Scratch/DownloadContent/ExportBin/packageNames";
  local_28 = (undefined **)&DAT_011c8e56;
  FUN_009a4920(DAT_011ea6a4,&local_30);
  if (local_30 == local_2c) {
    if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (undefined1 *)0x0))
    {
      Memory_FreeIfNonNull(local_30);
    }
    return (undefined4 *)0x0;
  }
  local_20[0] = &PTR_FUN_0100886c;
  local_16 = 0x13;
  local_18 = 0xb;
  FUN_004f59c0(local_20,0x13,9,&local_30,0x10,1);
  local_34 = 0;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  puVar2 = &local_34;
  (**(code **)(*piVar1 + 0x50))(local_20);
  local_28 = &PTR_FUN_00fba6f4;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_004f5760(&local_28,'\0');
  }
  if ((2 < (int)((int)local_30 - (int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_ESI);
  }
  return puVar2;
}

