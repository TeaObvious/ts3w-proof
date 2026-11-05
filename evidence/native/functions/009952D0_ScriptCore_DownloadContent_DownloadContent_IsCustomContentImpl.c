/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181628 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_IsCustomContentImpl [assembly=ScriptCore
   token=0x0600009A; key: Sims3.SimIFace.ResourceKey; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.DownloadContent::DownloadContent_IsCustomContentImpl(void)

{
  byte bVar1;
  undefined4 *puVar2;
  undefined3 extraout_var;
  undefined4 local_10 [4];
  int iVar3;
  
  puVar2 = (undefined4 *)FUN_0076c0e0(&stack0x00000004,local_10);
  bVar1 = FUN_00993d10(puVar2);
  iVar3 = CONCAT31(extraout_var,bVar1);
  if (((iVar3 != 3) && (iVar3 != 2)) && (iVar3 != 0)) {
    return 0;
  }
  return 1;
}

