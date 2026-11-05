/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_ExportLotContentsToExportBinImpl.
   Export ordinal(s): 365. Entry VA: 0x10785de0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001186. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl DownloadContent_ExportLotContentsToExportBinImpl(uint param_1,undefined4 param_2)

{
  void *this;
  char cVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 unaff_ESI;
  int unaff_EDI;
  int local_58;
  undefined1 local_54 [4];
  int local_50 [2];
  undefined *local_48;
  undefined *local_44;
  undefined2 *local_40;
  char *local_3c;
  undefined4 local_38 [4];
  undefined **appuStack_28 [2];
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
                    /* 0x785de0  365  DownloadContent_ExportLotContentsToExportBinImpl */
  this = DAT_10c8de94;
  uVar2 = FUN_107907c0((int)DAT_10c8de94);
  if ((char)uVar2 == '\0') {
    local_58 = 0;
    local_50[0] = 0;
    local_50[1] = 0;
    uVar2 = FUN_10791f10(this,&local_58,(undefined8 *)local_50);
    if ((char)uVar2 != '\0') {
      FUN_105ca890(local_38,local_58,1);
      cVar1 = FUN_1009b600(param_1,param_2,local_38);
      if (cVar1 != '\0') {
        local_3c = "Scratch/DownloadContent/NewPackage";
        local_48 = &_Dst_10ca8244;
        local_44 = &_Dst_10ca8244;
        local_40 = &DAT_10ca8246;
        FUN_10790d40(this,&local_48);
        piVar3 = (int *)FUN_1055b120();
        local_20[0] = &PTR_FUN_10aca5b4;
        local_16 = 0x13;
        local_18 = 0xb;
        FUN_10928b90(local_20,0x13,9,&local_48,0x10,1);
        (**(code **)(*piVar3 + 0x50))(local_20,local_54);
        FUN_10794a30((int)this);
        appuStack_28[0] = &PTR_FUN_10aca5b4;
        if (((uint)local_20[0] & 4) != 0) {
          FUN_10928a90(appuStack_28,'\0');
        }
        if ((2 < (int)((int)local_48 - local_50[0] & 0xfffffffeU)) && (local_50[0] != 0)) {
          FUN_10918e90(local_50[0]);
        }
        FUN_105ca900((int)&local_40);
        if (unaff_EDI != 0) {
          (**(code **)(*(int *)(unaff_EDI + 4) + 4))();
        }
        return unaff_ESI;
      }
      FUN_105ca900((int)local_38);
    }
    if (local_58 != 0) {
      (**(code **)(*(int *)(local_58 + 4) + 4))();
    }
  }
  else {
    local_48 = &_Dst_10ca8244;
    local_44 = &_Dst_10ca8244;
    local_3c = "Scratch/DownloadContent/OpenPackage";
    local_40 = &DAT_10ca8246;
    FUN_10790d40(this,&local_48);
    if ((2 < (int)((int)local_40 - (int)local_48 & 0xfffffffeU)) && (local_48 != (undefined *)0x0))
    {
      FUN_10918e90((int)local_48);
      return 0;
    }
  }
  return 0;
}

