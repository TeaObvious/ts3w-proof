/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_ExportLotContentsToTravelBinImpl.
   Export ordinal(s): 366. Entry VA: 0x10785090. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001187. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl DownloadContent_ExportLotContentsToTravelBinImpl(uint param_1,undefined4 param_2)

{
  void *this;
  int iVar1;
  int local_1c;
  undefined4 local_18 [6];
  
                    /* 0x785090  366  DownloadContent_ExportLotContentsToTravelBinImpl */
  iVar1 = FUN_1055b120();
  this = DAT_10c8de94;
  if (iVar1 != 0) {
    FUN_10790ad0((int)DAT_10c8de94);
    local_1c = 0;
    FUN_10790b30(this,&local_1c);
    if (local_1c != 0) {
      FUN_105ca890(local_18,local_1c,1);
      FUN_1009b600(param_1,param_2,local_18);
      FUN_105ca900((int)local_18);
      if (local_1c != 0) {
        (**(code **)(*(int *)(local_1c + 4) + 4))();
      }
    }
  }
  return;
}

