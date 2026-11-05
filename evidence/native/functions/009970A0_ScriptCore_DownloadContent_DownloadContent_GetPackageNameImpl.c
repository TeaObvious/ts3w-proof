/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011816a8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_GetPackageNameImpl [assembly=ScriptCore
   token=0x060000B0; packageId: Sims3.SimIFace.PackageId; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 * ScriptCore_DownloadContent__DownloadContent_GetPackageNameImpl(void)

{
  void *this;
  uint uVar1;
  int *piVar2;
  void *unaff_ESI;
  undefined1 uStack00000004;
  undefined1 auStackY_d0 [128];
  undefined1 *puVar3;
  undefined1 auStack_34 [4];
  undefined1 *puStack_30;
  undefined1 *puStack_2c;
  undefined **ppuStack_28;
  char *pcStack_24;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  this = DownloadContent_GetOwnerFromGlobalLink();
  if (this != (void *)0x0) {
    puStack_30 = &DAT_011c8e54;
    puStack_2c = &DAT_011c8e54;
    pcStack_24 = "Scratch/DownloadContent/pkgName";
    ppuStack_28 = (undefined **)&DAT_011c8e56;
    FUN_0076bff0(&uStack00000004,auStackY_d0 + 0x84);
    uVar1 = FUN_00988920(this);
    if ((char)uVar1 != '\0') {
      appuStack_20[0] = &PTR_FUN_0100886c;
      uStack_16 = 0x13;
      uStack_18 = 0xb;
      FUN_004f59c0(appuStack_20,0x13,9,&puStack_30,0x10,1);
      piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
      puVar3 = auStack_34;
      (**(code **)(*piVar2 + 0x50))();
      ppuStack_28 = &PTR_FUN_00fba6f4;
      if (((uint)appuStack_20[0] & 4) != 0) {
        FUN_004f5760(&ppuStack_28,'\0');
      }
      if ((2 < (int)((int)puStack_30 - (int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (void *)0x0))
      {
        Memory_FreeIfNonNull(unaff_ESI);
      }
      return puVar3;
    }
    if ((2 < (int)((int)ppuStack_28 - (int)puStack_30 & 0xfffffffeU)) &&
       (puStack_30 != (undefined1 *)0x0)) {
      Memory_FreeIfNonNull(puStack_30);
    }
  }
  return (undefined1 *)0x0;
}

