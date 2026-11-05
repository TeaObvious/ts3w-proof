/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01181710 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_SaveCustomSim [assembly=ScriptCore token=0x06000095;
   pKeyTable: System.Byte[], pIdTable: System.UInt64[], pScriptData: System.Byte[], outputFilename:
   System.String, key: Sims3.SimIFace.ResourceKey, trait: System.Int32, ageGenderSpecies:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_DownloadContent__DownloadContent_SaveCustomSim
               (void *param_1,void *param_2,void *param_3,undefined4 *param_4)

{
  int *piVar1;
  void *this;
  int iVar2;
  undefined4 *puVar3;
  short *psVar4;
  uint uVar5;
  undefined1 uStack00000014;
  undefined4 in_stack_00000024;
  undefined4 auStack_20 [4];
  undefined1 auStack_10 [16];
  
  puVar3 = DownloadContent_MarshalSimContentPayload(auStack_10,param_1,param_2,param_3);
  piVar1 = (int *)puVar3[1];
  this = (void *)puVar3[2];
  iVar2 = puVar3[3];
  if ((char)*puVar3 == '\0') {
    return (uint)puVar3 & 0xffffff00;
  }
  UIResourceKey_CopyManagedToNative(&uStack00000014,auStack_20);
  puVar3 = auStack_20;
  psVar4 = (short *)(**(code **)(*piVar1 + 0x58))();
  uVar5 = FUN_009ca540(this,iVar2,psVar4,param_4,(int)puVar3,in_stack_00000024);
  return uVar5;
}

