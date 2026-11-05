/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162ab8 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_InvalidateThumbnail [assembly=ScriptCore
   token=0x06000175; expire: System.Boolean, key: Sims3.SimIFace.ResourceKey, templateId:
   System.UInt64, index: System.Int32, size: System.Int32, camera: Sims3.SimIFace.ThumbnailCamera,
   technique: Sims3.SimIFace.ThumbnailTechnique; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.ThumbnailManager::ThumbnailManager_InvalidateThumbnail(char param_1)

{
  void *this;
  undefined4 *puVar1;
  undefined4 uVar2;
  int in_stack_00000018;
  int in_stack_0000001c;
  undefined4 in_stack_00000020;
  undefined4 in_stack_00000024;
  undefined4 in_stack_00000028;
  undefined1 in_stack_0000002c;
  undefined4 local_140 [4];
  int local_130 [4];
  int local_120;
  int local_a0;
  int local_90;
  
  this = DAT_011eec30;
  if (DAT_011eec30 != (void *)0x0) {
    puVar1 = (undefined4 *)FUN_0076c0e0(&stack0x00000008,local_140);
    FUN_00779200(local_130,*puVar1,puVar1[1],puVar1[2],puVar1[3],in_stack_00000018,in_stack_0000001c
                 ,in_stack_00000020,in_stack_00000024,0,0,in_stack_00000028,in_stack_0000002c,
                 0xe1c27cd7,0,0);
    if (in_stack_00000018 != 0 || in_stack_0000001c != 0) {
      uVar2 = FUN_00d4c440(in_stack_00000018,in_stack_0000001c,local_130);
      if ((char)uVar2 == '\0') {
        FUN_005e6410(local_130);
        return;
      }
    }
    FUN_00d60b80(this,local_130,param_1);
    if ((local_a0 != 0) && (local_a0 != local_90)) {
      FUN_004e44e0(local_a0);
    }
    if ((local_130[0] != 0) && (local_130[0] != local_120)) {
      FUN_004e44e0(local_130[0]);
    }
  }
  return;
}

