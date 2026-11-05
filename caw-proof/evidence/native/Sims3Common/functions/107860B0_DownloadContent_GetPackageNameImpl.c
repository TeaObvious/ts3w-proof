/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_GetPackageNameImpl. Export
   ordinal(s): 385. Entry VA: 0x107860b0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001191. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 * DownloadContent_GetPackageNameImpl(void)

{
  void *this;
  uint uVar1;
  int *piVar2;
  int unaff_ESI;
  undefined1 *puVar3;
  undefined1 local_34 [4];
  undefined *local_30;
  undefined *local_2c;
  undefined **local_28;
  char *local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
                    /* 0x7860b0  385  DownloadContent_GetPackageNameImpl */
  this = (void *)FUN_107744c0();
  if (this != (void *)0x0) {
    local_30 = &_Dst_10ca8244;
    local_2c = &_Dst_10ca8244;
    local_24 = "Scratch/DownloadContent/pkgName";
    local_28 = (undefined **)&DAT_10ca8246;
    FUN_1055dac0(&stack0x00000004,&stack0xffffffb4);
    uVar1 = FUN_1077a070(this);
    if ((char)uVar1 != '\0') {
      local_20[0] = &PTR_FUN_10aca5b4;
      local_16 = 0x13;
      local_18 = 0xb;
      FUN_10928b90(local_20,0x13,9,&local_30,0x10,1);
      piVar2 = (int *)FUN_1055b120();
      puVar3 = local_34;
      (**(code **)(*piVar2 + 0x50))();
      local_28 = &PTR_FUN_10aca5b4;
      if (((uint)local_20[0] & 4) != 0) {
        FUN_10928a90(&local_28,'\0');
      }
      if ((2 < (int)((int)local_30 - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
        FUN_10918e90(unaff_ESI);
      }
      return puVar3;
    }
    if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (undefined *)0x0))
    {
      FUN_10918e90((int)local_30);
    }
  }
  return (undefined1 *)0x0;
}

