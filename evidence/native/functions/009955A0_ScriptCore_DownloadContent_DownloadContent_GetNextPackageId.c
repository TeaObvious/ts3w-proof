/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011816f8 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_GetNextPackageId [assembly=ScriptCore
   token=0x060000E9; packageId: Sims3.SimIFace.PackageId&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

char __cdecl ScriptCore.DownloadContent::DownloadContent_GetNextPackageId(undefined4 *param_1)

{
  void *this;
  undefined4 uVar1;
  longlong *plVar2;
  char cVar3;
  undefined4 local_20 [4];
  longlong local_10 [2];
  
  cVar3 = '\0';
  this = (void *)FUN_009b0c60();
  if (this != (void *)0x0) {
    FUN_00500c00(local_20);
    uVar1 = FUN_009b05f0(this,local_20);
    cVar3 = (char)uVar1;
    if (cVar3 != '\0') {
      plVar2 = FUN_0076c020(local_10,local_20);
      *param_1 = (int)*plVar2;
      param_1[1] = *(undefined4 *)((int)plVar2 + 4);
      param_1[2] = (int)plVar2[1];
      param_1[3] = *(undefined4 *)((int)plVar2 + 0xc);
    }
  }
  return cVar3;
}

