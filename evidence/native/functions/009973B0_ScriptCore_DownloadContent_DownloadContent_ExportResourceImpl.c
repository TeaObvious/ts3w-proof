/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181698 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_ExportResourceImpl [assembly=ScriptCore
   token=0x060000AC; key: Sims3.SimIFace.ResourceKey, packageFile: System.String, description:
   System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

char ScriptCore_DownloadContent__DownloadContent_ExportResourceImpl(void)

{
  byte bVar1;
  char cVar2;
  int *piVar3;
  undefined3 extraout_var;
  int iVar4;
  int iVar5;
  undefined4 *unaff_ESI;
  undefined4 in_stack_00000014;
  undefined4 auStack_160 [2];
  undefined4 auStack_158 [2];
  undefined1 auStack_150 [24];
  int aiStack_138 [18];
  uint auStack_f0 [4];
  undefined4 auStack_e0 [4];
  undefined4 auStack_d0 [4];
  undefined1 *puStack_c0;
  
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  FUN_0076c0e0(&stack0x00000004,auStack_158);
  bVar1 = FUN_00993d10(auStack_158);
  if (CONCAT31(extraout_var,bVar1) != 3) {
    return '\0';
  }
  iVar4 = (**(code **)(*piVar3 + 0x58))(in_stack_00000014);
  iVar5 = (**(code **)(*piVar3 + 0x58))(in_stack_00000014);
  if (iVar4 == 0) {
    return '\0';
  }
  FUN_005e6d30(auStack_f0,auStack_160);
  FUN_00590e60(auStack_e0,&DAT_0104a21c);
  if (iVar5 != 0) {
    FUN_00590e60(auStack_d0,&DAT_0104a21c);
  }
  FUN_004df460(&stack0xfffffe74,0,0,"ResourceSystem/DownloadContent/MetaDataStream");
  FUN_004dee40(&stack0xfffffe74,1,1.0);
  FUN_004df2b0(&stack0xfffffe74,0,0);
  FUN_007d93e0(auStack_150,(int *)&stack0xfffffe74,1);
  puStack_c0 = auStack_150;
  FUN_005e5c10(aiStack_138,0,1);
  cVar2 = FUN_009adf50(auStack_f0,aiStack_138,(undefined1 **)0x0);
  FUN_005e5f50((int)aiStack_138);
  FUN_007d7990((int)auStack_150);
  if (unaff_ESI != (undefined4 *)0x0) {
    FUN_004dee00(unaff_ESI);
  }
  FUN_005e7560((int)auStack_f0);
  return cVar2;
}

