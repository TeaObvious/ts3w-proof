/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011816b0 (original PC 1.67 TS3W.exe).
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
  undefined4 *puVar4;
  undefined4 *in_stack_00000024;
  undefined1 auStack_60 [12];
  undefined4 uStack_54;
  undefined4 local_40 [4];
  undefined4 local_30 [4];
  undefined4 local_20 [4];
  undefined4 local_10 [4];
  uint uVar3;
  
  this = (void *)FUN_00982e60();
  uVar3 = 0;
  if (this != (void *)0x0) {
    FUN_0076c0e0(&stack0x00000014,local_30);
    FUN_0076c0e0(in_stack_00000024,local_40);
    FUN_0076bff0(&stack0x00000004,local_20);
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

