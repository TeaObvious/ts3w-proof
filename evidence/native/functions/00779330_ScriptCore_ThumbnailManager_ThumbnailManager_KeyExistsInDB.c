/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162a60 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_KeyExistsInDB [assembly=ScriptCore
   token=0x0600016A; key: Sims3.SimIFace.ResourceKey, templateId: System.UInt64, index:
   System.Int32, size: System.Int32, camera: Sims3.SimIFace.ThumbnailCamera, technique:
   Sims3.SimIFace.ThumbnailTechnique; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

byte ScriptCore.ThumbnailManager::ThumbnailManager_KeyExistsInDB(void)

{
  void *this;
  byte bVar1;
  undefined4 *puVar2;
  undefined4 in_stack_00000014;
  undefined4 in_stack_00000018;
  undefined4 in_stack_0000001c;
  undefined4 in_stack_00000020;
  undefined4 in_stack_00000024;
  undefined1 in_stack_00000028;
  undefined4 local_140 [4];
  int local_130 [4];
  int local_120;
  int local_a0;
  int local_90;
  
  this = DAT_011eec30;
  if (DAT_011eec30 == (void *)0x0) {
    return 0;
  }
  puVar2 = (undefined4 *)FUN_0076c0e0(&stack0x00000004,local_140);
  FUN_00779200(local_130,*puVar2,puVar2[1],puVar2[2],puVar2[3],in_stack_00000014,in_stack_00000018,
               in_stack_0000001c,in_stack_00000020,0,0,in_stack_00000024,in_stack_00000028,
               0xe1c27cd7,0,0);
  bVar1 = FUN_00d4e5d0(this,local_130);
  if ((local_a0 != 0) && (local_a0 != local_90)) {
    FUN_004e44e0(local_a0);
  }
  if ((local_130[0] != 0) && (local_130[0] != local_120)) {
    FUN_004e44e0(local_130[0]);
  }
  return bVar1;
}

