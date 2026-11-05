/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162ab8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  bool bVar1;
  undefined4 *puVar2;
  undefined1 uStack00000008;
  uint in_stack_00000018;
  uint in_stack_0000001c;
  undefined4 in_stack_00000020;
  undefined4 in_stack_00000024;
  undefined4 in_stack_00000028;
  undefined1 in_stack_0000002c;
  undefined4 local_140 [4];
  void *local_130 [4];
  void *local_120;
  void *local_a0;
  void *local_90;
  
  this = DAT_011eec30;
  if (DAT_011eec30 != (void *)0x0) {
    puVar2 = UIResourceKey_CopyManagedToNative(&uStack00000008,local_140);
    UIThumbnail_InitializeRequestDescriptor
              (local_130,*puVar2,puVar2[1],puVar2[2],puVar2[3],in_stack_00000018,in_stack_0000001c,
               in_stack_00000020,in_stack_00000024,0,0,in_stack_00000028,in_stack_0000002c,
               0xe1c27cd7,0,0);
    if (in_stack_00000018 != 0 || in_stack_0000001c != 0) {
      bVar1 = UIThumbnail_PublishObjectRequestKeys(in_stack_00000018,in_stack_0000001c,local_130);
      if (!bVar1) {
        FUN_005e6410((int *)local_130);
        return;
      }
    }
    FUN_00d60b80(this,(int *)local_130,param_1);
    if ((local_a0 != (void *)0x0) && (local_a0 != local_90)) {
      Memory_FreeIfNonNull(local_a0);
    }
    if ((local_130[0] != (void *)0x0) && (local_130[0] != local_120)) {
      Memory_FreeIfNonNull(local_130[0]);
    }
  }
  return;
}

