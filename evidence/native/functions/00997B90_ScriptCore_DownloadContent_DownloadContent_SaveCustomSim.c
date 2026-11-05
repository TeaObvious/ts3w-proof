/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181710 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_SaveCustomSim [assembly=ScriptCore token=0x06000095;
   pKeyTable: System.Byte[], pIdTable: System.UInt64[], pScriptData: System.Byte[], outputFilename:
   System.String, key: Sims3.SimIFace.ResourceKey, trait: System.Int32, ageGenderSpecies:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_DownloadContent__DownloadContent_SaveCustomSim
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  int *piVar1;
  void *this;
  int iVar2;
  undefined4 *puVar3;
  short *psVar4;
  uint uVar5;
  undefined4 in_stack_00000024;
  undefined4 auStack_20 [4];
  uint auStack_10 [4];
  
  puVar3 = (undefined4 *)FUN_00997a10(auStack_10,param_1,param_2);
  piVar1 = (int *)puVar3[1];
  this = (void *)puVar3[2];
  iVar2 = puVar3[3];
  if ((char)*puVar3 == '\0') {
    return (uint)puVar3 & 0xffffff00;
  }
  FUN_0076c0e0(&stack0x00000014,auStack_20);
  puVar3 = auStack_20;
  psVar4 = (short *)(**(code **)(*piVar1 + 0x58))();
  uVar5 = FUN_009ca540(this,iVar2,psVar4,param_4,(int)puVar3,in_stack_00000024);
  return uVar5;
}

