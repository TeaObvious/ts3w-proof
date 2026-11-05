/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011816b0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_GetLocalKeyFromSourceKey [assembly=ScriptCore
   token=0x060000B1; pid: Sims3.SimIFace.PackageId, sourceKey: Sims3.SimIFace.ResourceKey, localKey:
   Sims3.SimIFace.ResourceKey&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore.DownloadContent::DownloadContent_GetLocalKeyFromSourceKey(void)

{
  undefined4 uVar1;
  char cVar2;
  void *this;
  undefined3 extraout_var;
  uint uVar3;
  undefined4 *puVar4;
  undefined1 uStack00000004;
  undefined1 uStack00000014;
  undefined4 *in_stack_00000024;
  undefined1 auStack_60 [12];
  undefined4 uStack_54;
  undefined4 local_40 [4];
  undefined4 local_30 [4];
  undefined4 local_20 [4];
  undefined4 local_10 [4];
  
  this = DownloadContent_GetOwnerFromGlobalLink();
  uVar3 = 0;
  if (this != (void *)0x0) {
    UIResourceKey_CopyManagedToNative(&uStack00000014,local_30);
    UIResourceKey_CopyManagedToNative(in_stack_00000024,local_40);
    FUN_0076bff0(&uStack00000004,local_20);
    FUN_00500c90(auStack_60,local_20);
    cVar2 = FUN_009885e0(this);
    uVar3 = CONCAT31(extraout_var,cVar2);
    if (cVar2 != '\0') {
      uStack_54 = 0x995503;
      puVar4 = (undefined4 *)FUN_0076bfd0(local_10,local_40);
      *in_stack_00000024 = *puVar4;
      in_stack_00000024[1] = puVar4[1];
      in_stack_00000024[2] = puVar4[2];
      uVar1 = puVar4[3];
      in_stack_00000024[3] = uVar1;
      return CONCAT31((int3)((uint)uVar1 >> 8),1);
    }
  }
  return uVar3 & 0xffffff00;
}

