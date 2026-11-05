/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_GetExportBinPackageNamesImpl.
   Export ordinal(s): 374. Entry VA: 0x10785fc0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011E7. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * DownloadContent_GetExportBinPackageNamesImpl(void)

{
  int *piVar1;
  int unaff_ESI;
  undefined4 *puVar2;
  undefined4 local_34;
  undefined *local_30;
  undefined *local_2c;
  undefined **local_28;
  char *local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
                    /* 0x785fc0  374  DownloadContent_GetExportBinPackageNamesImpl */
  local_30 = &_Dst_10ca8244;
  local_2c = &_Dst_10ca8244;
  local_24 = "Scratch/DownloadContent/ExportBin/packageNames";
  local_28 = (undefined **)&DAT_10ca8246;
  FUN_10793b20(DAT_10c8de94,&local_30);
  if (local_30 != local_2c) {
    local_20[0] = &PTR_FUN_10aca5b4;
    local_16 = 0x13;
    local_18 = 0xb;
    FUN_10928b90(local_20,0x13,9,&local_30,0x10,1);
    local_34 = 0;
    piVar1 = (int *)FUN_1055b120();
    puVar2 = &local_34;
    (**(code **)(*piVar1 + 0x50))(local_20);
    local_28 = &PTR_FUN_10aca5b4;
    if (((uint)local_20[0] & 4) != 0) {
      FUN_10928a90(&local_28,'\0');
    }
    if ((2 < (int)((int)local_30 - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
      FUN_10918e90(unaff_ESI);
    }
    return puVar2;
  }
  if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (undefined *)0x0)) {
    FUN_10918e90((int)local_30);
  }
  return (undefined4 *)0x0;
}

