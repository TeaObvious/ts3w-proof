/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Registered cdecl Type
   and ulong GUID, return managed Array. Gets lot interface via 0x0068f130 and virtual slot +0x0c
   key 0x90566b0e, then location component and candidate producer 0x00acb9c0. Skips NULL/self. When
   both objects have the original Script component (descriptor 0x0117ca48; dynamic mask global
   0x011ea0f8; object presence field +0x2c), invokes managed HandToolAllowIntersection via
   0x0078f780. A true callback removes the candidate. Host slot +0xc0 creates typed array including
   zero hits; missing prerequisites returns NULL. Original argument pushes govern decompiler
   artifacts across indirect calls. */

void * __cdecl
ScriptCore_Queries__Query_GetObjectsOverlappingObject(void *managedType,ulonglong objectGuid)

{
  undefined4 *puVar1;
  int *piVar2;
  char cVar3;
  void *pvVar4;
  int *piVar5;
  void *this;
  void *pvVar6;
  undefined4 *puVar7;
  int iVar8;
  float10 fVar9;
  undefined4 unaff_retaddr;
  undefined4 in_stack_00000008;
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
  
  pvVar4 = ObjectRegistry_GetGlobal();
  if (pvVar4 == (void *)0x0) {
    return (void *)0x0;
  }
  pvVar4 = ObjectRegistry_FindBorrowed(pvVar4,CONCAT44((undefined4)objectGuid,in_stack_00000008));
  if (pvVar4 == (void *)0x0) {
    return (void *)0x0;
  }
  piVar5 = (int *)FUN_0068f130((int)pvVar4);
  if ((piVar5 != (int *)0x0) &&
     (this = (void *)(**(code **)(*piVar5 + 0xc))(0x90566b0e), this != (void *)0x0)) {
    pvVar6 = Object_GetComponentByMask(pvVar4,DAT_011edf08);
    if (pvVar6 == (void *)0x0) {
      return (void *)0x0;
    }
    fVar9 = FUN_00c89940((float)pvVar6);
    fStack_30 = DAT_00fab218;
    fStack_2c = DAT_00fab218;
    uStack_28 = 0;
    FUN_00c894e0(pvVar6,&fStack_30,&fStack_2c,&uStack_28);
    piStack_24 = (int *)0x0;
    piStack_20 = (int *)0x0;
    uStack_1c = 0;
    pcStack_18 = "QueryHost/Query_GetObjectsOverlappingObject/objects";
    Lot_CollectObjectsIntersectingObjectFootprints(this,pvVar4,(int *)&piStack_24);
    piVar2 = piStack_20;
    puStack_14 = (undefined4 *)0x0;
    iStack_10 = 0;
    uStack_c = 0;
    pcStack_8 = "QueryHost/Query_GetObjectsOverlappingObject/objectsIds";
    puVar1 = puStack_14;
    iVar8 = iStack_10;
    for (piVar5 = piStack_24; puStack_14 = puVar1, iStack_10 = iVar8, piVar5 != piVar2;
        piVar5 = piVar5 + 1) {
      pvVar6 = (void *)*piVar5;
      if (((pvVar6 != (void *)0x0) && (pvVar6 != pvVar4)) &&
         (((*(uint *)((int)pvVar4 + 0x2c) & DAT_011ea0f8) == 0 ||
          (((*(uint *)((int)pvVar6 + 0x2c) & DAT_011ea0f8) == 0 ||
           (cVar3 = ObjectIntersection_InvokeHandToolAllowCallback
                              (this,*(undefined4 *)((int)pvVar4 + 8),
                               *(undefined4 *)((int)pvVar4 + 0xc),*(undefined4 *)((int)pvVar6 + 8),
                               *(undefined4 *)((int)pvVar6 + 0xc),&fStack_30,(float)fVar9),
           cVar3 == '\0')))))) {
        uStack_40 = *(undefined4 *)((int)pvVar6 + 8);
        uStack_3c = *(undefined4 *)((int)pvVar6 + 0xc);
        FUN_00572500(&puStack_14,&uStack_40);
      }
      puVar1 = puStack_14;
      iVar8 = iStack_10;
    }
    piVar5 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar8 = iVar8 - (int)puVar1 >> 3;
    uStack_38 = 0;
    uStack_34 = 0;
    puVar7 = puVar1;
    if (iVar8 == 0) {
      puVar7 = &uStack_38;
    }
    pvVar4 = (void *)(**(code **)(*piVar5 + 0xc0))(unaff_retaddr,puVar7,iVar8);
    if (puVar1 != (undefined4 *)0x0) {
      FUN_004e44e0((int)puVar1);
    }
    if (fStack_30 != 0.0) {
      FUN_004e44e0((int)fStack_30);
    }
    return pvVar4;
  }
  return (void *)0x0;
}

