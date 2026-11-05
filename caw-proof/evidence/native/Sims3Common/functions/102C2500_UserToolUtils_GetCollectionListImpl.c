/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_GetCollectionListImpl. Export
   ordinal(s): 1185. Entry VA: 0x102c2500. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A8D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 * UserToolUtils_GetCollectionListImpl(void)

{
  void *this;
  int *piVar1;
  int unaff_ESI;
  undefined1 *puVar2;
  undefined1 auStack_34 [4];
  undefined *puStack_30;
  undefined *puStack_2c;
  undefined **ppuStack_28;
  char *pcStack_24;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  this = DAT_10c7d328;
  if (DAT_10c7d328 != (void *)0x0) {
    FUN_1055b120();
    puStack_30 = &_Dst_10ca8244;
    puStack_2c = &_Dst_10ca8244;
    pcStack_24 = "Scratch/UserToolHost/CollInfo";
    ppuStack_28 = (undefined **)&DAT_10ca8246;
    FUN_105d2af0(this,&puStack_30);
    appuStack_20[0] = &PTR_FUN_10aca5b4;
    uStack_16 = 0x13;
    uStack_18 = 0xb;
    FUN_10928b90(appuStack_20,0x13,9,&puStack_30,0x10,1);
    piVar1 = (int *)FUN_1055b120();
    puVar2 = auStack_34;
    (**(code **)(*piVar1 + 0x50))(appuStack_20);
    ppuStack_28 = &PTR_FUN_10aca5b4;
    if (((uint)appuStack_20[0] & 4) != 0) {
      FUN_10928a90(&ppuStack_28,'\0');
    }
    if ((2 < (int)((int)puStack_30 - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
      FUN_10918e90(unaff_ESI);
    }
    return puVar2;
  }
  return (undefined1 *)0x0;
}

