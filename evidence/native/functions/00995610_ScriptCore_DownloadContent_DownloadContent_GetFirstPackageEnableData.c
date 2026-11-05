/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181700 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_GetFirstPackageEnableData [assembly=ScriptCore
   token=0x060000EA; packageId: Sims3.SimIFace.PackageId&, enableState: System.Boolean&;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.DownloadContent::DownloadContent_GetFirstPackageEnableData
          (undefined4 *param_1,undefined1 *param_2)

{
  char cVar1;
  void *this;
  undefined3 extraout_var;
  longlong *plVar3;
  undefined4 local_20 [4];
  longlong local_10 [2];
  undefined4 uVar2;
  
  cVar1 = '\0';
  this = (void *)FUN_009b0c60();
  uVar2 = 0;
  if (this != (void *)0x0) {
    FUN_00500c00(local_20);
    cVar1 = FUN_009b0620(this,local_20,param_2);
    uVar2 = CONCAT31(extraout_var,cVar1);
    if (cVar1 != '\0') {
      plVar3 = FUN_0076c020(local_10,local_20);
      *param_1 = (int)*plVar3;
      param_1[1] = *(undefined4 *)((int)plVar3 + 4);
      param_1[2] = (int)plVar3[1];
      uVar2 = *(undefined4 *)((int)plVar3 + 0xc);
      param_1[3] = uVar2;
    }
  }
  return CONCAT31((int3)((uint)uVar2 >> 8),cVar1);
}

