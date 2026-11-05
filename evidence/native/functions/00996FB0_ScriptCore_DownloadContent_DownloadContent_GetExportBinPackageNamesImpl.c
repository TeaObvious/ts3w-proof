/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011816d0 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_GetExportBinPackageNamesImpl [assembly=ScriptCore
   token=0x06000106; ; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * ScriptCore.DownloadContent::DownloadContent_GetExportBinPackageNamesImpl(void)

{
  int *piVar1;
  int unaff_ESI;
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
  if (local_30 != local_2c) {
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
    if ((2 < (int)((int)local_30 - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
      FUN_004e44e0(unaff_ESI);
    }
    return puVar2;
  }
  if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (undefined1 *)0x0)) {
    FUN_004e44e0((int)local_30);
  }
  return (undefined4 *)0x0;
}

