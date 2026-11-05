/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Query_GetObjectsOverlappingObject. Export
   ordinal(s): 536. Entry VA: 0x1053ad60. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000012. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 Query_GetObjectsOverlappingObject(void)

{
  undefined4 *puVar1;
  int *piVar2;
  char cVar3;
  int iVar4;
  void *this;
  int *piVar5;
  void *this_00;
  void *pvVar6;
  undefined4 uVar7;
  undefined4 *puVar8;
  float10 fVar9;
  undefined4 unaff_retaddr;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  float fStack_30;
  float fStack_2c;
  undefined4 uStack_28;
  int *piStack_24;
  int *piStack_20;
  undefined4 uStack_1c;
  char *pcStack_18;
  undefined4 *puStack_14;
  int iStack_10;
  undefined4 uStack_c;
  char *pcStack_8;
  
                    /* 0x53ad60  536  Query_GetObjectsOverlappingObject */
  iVar4 = FUN_1072a1a0();
  if (iVar4 == 0) {
    return 0;
  }
  this = (void *)FUN_1072abb0(iVar4);
  if (this == (void *)0x0) {
    return 0;
  }
  piVar5 = (int *)FUN_10967620((int)this);
  if ((piVar5 != (int *)0x0) &&
     (this_00 = (void *)(**(code **)(*piVar5 + 0xc))(0x90566b0e), this_00 != (void *)0x0)) {
    pvVar6 = (void *)FUN_10726da0(this,DAT_10c70408);
    if (pvVar6 == (void *)0x0) {
      return 0;
    }
    fVar9 = FUN_102602d0((float)pvVar6);
    fStack_30 = DAT_10aae184;
    fStack_2c = DAT_10aae184;
    uStack_28 = 0;
    FUN_1025fe90(pvVar6,&fStack_30,&fStack_2c,&uStack_28);
    piStack_24 = (int *)0x0;
    piStack_20 = (int *)0x0;
    uStack_1c = 0;
    pcStack_18 = "QueryHost/Query_GetObjectsOverlappingObject/objects";
    FUN_10091a30(this_00,this,(int *)&piStack_24);
    piVar2 = piStack_20;
    puStack_14 = (undefined4 *)0x0;
    iStack_10 = 0;
    uStack_c = 0;
    pcStack_8 = "QueryHost/Query_GetObjectsOverlappingObject/objectsIds";
    puVar1 = puStack_14;
    iVar4 = iStack_10;
    for (piVar5 = piStack_24; puStack_14 = puVar1, iStack_10 = iVar4, piVar5 != piVar2;
        piVar5 = piVar5 + 1) {
      pvVar6 = (void *)*piVar5;
      if (((pvVar6 != (void *)0x0) && (pvVar6 != this)) &&
         (((*(uint *)((int)this + 0x2c) & DAT_10c8d938) == 0 ||
          (((*(uint *)((int)pvVar6 + 0x2c) & DAT_10c8d938) == 0 ||
           (cVar3 = FUN_10582440(this_00,*(undefined4 *)((int)this + 8),
                                 *(undefined4 *)((int)this + 0xc),*(undefined4 *)((int)pvVar6 + 8),
                                 *(undefined4 *)((int)pvVar6 + 0xc),&fStack_30,(float)fVar9),
           cVar3 == '\0')))))) {
        uStack_40 = *(undefined4 *)((int)pvVar6 + 8);
        uStack_3c = *(undefined4 *)((int)pvVar6 + 0xc);
        FUN_10036d60(&puStack_14,&uStack_40);
      }
      puVar1 = puStack_14;
      iVar4 = iStack_10;
    }
    piVar5 = (int *)FUN_1055b120();
    iVar4 = iVar4 - (int)puVar1 >> 3;
    uStack_38 = 0;
    uStack_34 = 0;
    puVar8 = puVar1;
    if (iVar4 == 0) {
      puVar8 = &uStack_38;
    }
    uVar7 = (**(code **)(*piVar5 + 0xc0))(unaff_retaddr,puVar8,iVar4);
    if (puVar1 != (undefined4 *)0x0) {
      FUN_10918e90((int)puVar1);
    }
    if (fStack_30 != 0.0) {
      FUN_10918e90((int)fStack_30);
    }
    return uVar7;
  }
  return 0;
}

