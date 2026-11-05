/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011816b8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_ExportLotContentsToExportBinImpl [assembly=ScriptCore
   token=0x060000A5; id: System.UInt64; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.DownloadContent::DownloadContent_ExportLotContentsToExportBinImpl
          (uint param_1,undefined4 param_2)

{
  void *this;
  char cVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 unaff_ESI;
  int unaff_EDI;
  int local_58;
  undefined1 local_54 [4];
  void *local_50;
  undefined4 local_4c;
  undefined1 *local_48;
  undefined1 *local_44;
  undefined2 *local_40;
  char *local_3c;
  undefined4 local_38 [4];
  undefined **appuStack_28 [2];
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  this = DAT_011ea6a4;
  uVar2 = FUN_009a1670((int)DAT_011ea6a4);
  if ((char)uVar2 == '\0') {
    local_58 = 0;
    local_50 = (void *)0x0;
    local_4c = 0;
    uVar2 = FUN_009a2d10(this,&local_58,(undefined8 *)&local_50);
    if ((char)uVar2 != '\0') {
      FUN_007d7920(local_38,local_58,1);
      cVar1 = LotContent_ExportHouseholdToTravelDatabase(param_1,param_2,local_38);
      if (cVar1 != '\0') {
        local_3c = "Scratch/DownloadContent/NewPackage";
        local_48 = &DAT_011c8e54;
        local_44 = &DAT_011c8e54;
        local_40 = &DAT_011c8e56;
        FUN_009a1bf0(this,&local_48);
        piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
        local_20[0] = &PTR_FUN_0100886c;
        local_16 = 0x13;
        local_18 = 0xb;
        FUN_004f59c0(local_20,0x13,9,&local_48,0x10,1);
        (**(code **)(*piVar3 + 0x50))(local_20,local_54);
        FUN_009a5830((int)this);
        appuStack_28[0] = &PTR_FUN_00fba6f4;
        if (((uint)local_20[0] & 4) != 0) {
          FUN_004f5760(appuStack_28,'\0');
        }
        if ((2 < (int)((int)local_48 - (int)local_50 & 0xfffffffeU)) && (local_50 != (void *)0x0)) {
          Memory_FreeIfNonNull(local_50);
        }
        StreamReader_ReleaseAuxiliary(&local_40);
        if (unaff_EDI != 0) {
          (**(code **)(*(int *)(unaff_EDI + 4) + 4))();
        }
        return unaff_ESI;
      }
      StreamReader_ReleaseAuxiliary(local_38);
    }
    if (local_58 != 0) {
      (**(code **)(*(int *)(local_58 + 4) + 4))();
    }
  }
  else {
    local_48 = &DAT_011c8e54;
    local_44 = &DAT_011c8e54;
    local_3c = "Scratch/DownloadContent/OpenPackage";
    local_40 = &DAT_011c8e56;
    FUN_009a1bf0(this,&local_48);
    if ((2 < (int)((int)local_40 - (int)local_48 & 0xfffffffeU)) && (local_48 != (undefined1 *)0x0))
    {
      Memory_FreeIfNonNull(local_48);
      return 0;
    }
  }
  return 0;
}

