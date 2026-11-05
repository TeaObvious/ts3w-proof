/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetWorldFileName. Export ordinal(s): 1389.
   Entry VA: 0x105890e0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C9D. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 World_GetWorldFileName(void)

{
  int iVar1;
  int *piVar2;
  ushort *puVar3;
  short *psVar4;
  int unaff_ESI;
  undefined4 unaff_EDI;
  undefined1 auStack_66c [4];
  undefined *puStack_668;
  undefined *puStack_664;
  undefined2 *puStack_660;
  char *pcStack_65c;
  undefined **appuStack_658 [2];
  ushort uStack_650;
  undefined2 uStack_64e;
  undefined **appuStack_640 [2];
  undefined **appuStack_638 [2];
  undefined2 uStack_630;
  undefined2 uStack_62e;
  undefined4 uStack_618;
  undefined2 auStack_410 [520];
  
  iVar1 = DAT_10c700c4;
  piVar2 = (int *)FUN_1055b120();
  if ((iVar1 != 0) && (piVar2 != (int *)0x0)) {
    FUN_10920e80(auStack_410);
    puVar3 = (ushort *)FUN_10a55410(iVar1);
    FUN_109221e0(auStack_410,puVar3);
    FUN_10922110(auStack_410,&uStack_618,0x104);
    puStack_668 = &_Dst_10ca8244;
    puStack_664 = &_Dst_10ca8244;
    pcStack_65c = "World/WorldHost";
    puStack_660 = &DAT_10ca8246;
    psVar4 = (short *)&uStack_618;
    while ((short)uStack_618 != 0) {
      psVar4 = psVar4 + 1;
      uStack_618._0_2_ = *psVar4;
    }
    FUN_1001f8c0(&puStack_668,&uStack_618,
                 (int *)((int)&uStack_618 + ((int)psVar4 - (int)&uStack_618 >> 1) * 2));
    appuStack_658[0] = &PTR_FUN_10aca5b4;
    uStack_650 = 0;
    uStack_64e = 0;
    FUN_10928b90(appuStack_658,0x13,9,&puStack_668,0x10,1);
    appuStack_638[0] = &PTR_FUN_10aca5b4;
    uStack_62e = 0x13;
    uStack_630 = 2;
    FUN_100c4ac0(appuStack_638,(int)appuStack_658);
    appuStack_658[0] = &PTR_FUN_10aca5b4;
    if ((uStack_650 & 4) != 0) {
      FUN_10928a90(appuStack_658,'\0');
    }
    (**(code **)(*piVar2 + 0x50))(appuStack_638,auStack_66c);
    appuStack_640[0] = &PTR_FUN_10aca5b4;
    if (((uint)appuStack_638[0] & 4) != 0) {
      FUN_10928a90(appuStack_640,'\0');
    }
    if ((2 < (int)((int)puStack_668 - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
      FUN_10918e90(unaff_ESI);
    }
    return unaff_EDI;
  }
  return 0;
}

