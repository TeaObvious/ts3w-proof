/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01181628 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  int iVar3;
  undefined1 uStack00000004;
  undefined4 local_10 [4];
  
  puVar2 = UIResourceKey_CopyManagedToNative(&uStack00000004,local_10);
  bVar1 = FUN_00993d10(puVar2);
  iVar3 = CONCAT31(extraout_var,bVar1);
  if (((iVar3 == 3) || (iVar3 == 2)) || (iVar3 == 0)) {
    return 1;
  }
  return 0;
}

