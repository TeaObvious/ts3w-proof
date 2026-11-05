/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetWorldNameKey. Export ordinal(s): 1390.
   Entry VA: 0x105890d0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C9C. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 World_GetWorldNameKey(void)

{
  short *psVar1;
  int iVar2;
  int *piVar3;
  int unaff_ESI;
  undefined4 unaff_EDI;
  undefined1 auStack_54 [4];
  undefined *puStack_50;
  undefined *puStack_4c;
  undefined2 *puStack_48;
  char *pcStack_44;
  undefined **appuStack_40 [2];
  ushort uStack_38;
  undefined2 uStack_36;
  undefined **appuStack_28 [2];
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  iVar2 = DAT_10c700c4;
  piVar3 = (int *)FUN_1055b120();
  if ((((iVar2 != 0) && (piVar3 != (int *)0x0)) &&
      (psVar1 = *(short **)(iVar2 + 0x27c), psVar1 != *(short **)(iVar2 + 0x280))) &&
     (psVar1 != (short *)0x0)) {
    puStack_50 = &_Dst_10ca8244;
    puStack_4c = &_Dst_10ca8244;
    pcStack_44 = "World/WorldHost";
    puStack_48 = &DAT_10ca8246;
    FUN_1006fb50(&puStack_50,psVar1);
    appuStack_40[0] = &PTR_FUN_10aca5b4;
    uStack_38 = 0;
    uStack_36 = 0;
    FUN_10928b90(appuStack_40,0x13,9,&puStack_50,0x10,1);
    appuStack_20[0] = &PTR_FUN_10aca5b4;
    uStack_16 = 0x13;
    uStack_18 = 2;
    FUN_100c4ac0(appuStack_20,(int)appuStack_40);
    appuStack_40[0] = &PTR_FUN_10aca5b4;
    if ((uStack_38 & 4) != 0) {
      FUN_10928a90(appuStack_40,'\0');
    }
    (**(code **)(*piVar3 + 0x50))(appuStack_20,auStack_54);
    appuStack_28[0] = &PTR_FUN_10aca5b4;
    if (((uint)appuStack_20[0] & 4) != 0) {
      FUN_10928a90(appuStack_28,'\0');
    }
    if ((2 < (int)((int)puStack_50 - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
      FUN_10918e90(unaff_ESI);
    }
    return unaff_EDI;
  }
  return 0;
}

