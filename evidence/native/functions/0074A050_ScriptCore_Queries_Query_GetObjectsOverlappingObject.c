/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  undefined4 *allocation;
  char cVar1;
  void *pvVar2;
  int *piVar3;
  void *this;
  void *pvVar4;
  undefined4 *puVar5;
  int iVar6;
  float fVar7;
  undefined4 unaff_retaddr;
  undefined4 in_stack_00000008;
  int *piVar8;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  void *pvStack_30;
  float afStack_2c [2];
  int *piStack_24;
  int *piStack_20;
  undefined4 uStack_1c;
  char *pcStack_18;
  undefined4 *puStack_14;
  int iStack_10;
  undefined4 uStack_c;
  char *pcStack_8;
  
  pvVar2 = ObjectRegistry_GetGlobal();
  if (pvVar2 == (void *)0x0) {
    return (void *)0x0;
  }
  pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44((undefined4)objectGuid,in_stack_00000008));
  if (pvVar2 == (void *)0x0) {
    return (void *)0x0;
  }
  piVar3 = (int *)FUN_0068f130((int)pvVar2);
  if ((piVar3 == (int *)0x0) ||
     (this = (void *)(**(code **)(*piVar3 + 0xc))(0x90566b0e), this == (void *)0x0)) {
    return (void *)0x0;
  }
  pvVar4 = Object_GetComponentByMask(pvVar2,DAT_011edf08);
  if (pvVar4 == (void *)0x0) {
    return (void *)0x0;
  }
  fVar7 = PlacementLocation_ReadYawWithRefresh(pvVar4);
  pvStack_30 = (void *)-1.0;
  afStack_2c[0] = -1.0;
  afStack_2c[1] = 0.0;
  ObjectLocation_CopyXZLevel(pvVar4,&pvStack_30,afStack_2c,afStack_2c + 1);
  piStack_24 = (int *)0x0;
  piStack_20 = (int *)0x0;
  uStack_1c = 0;
  pcStack_18 = "QueryHost/Query_GetObjectsOverlappingObject/objects";
  Lot_CollectObjectsIntersectingObjectFootprints(this,pvVar2,(int *)&piStack_24);
  piVar3 = piStack_20;
  puStack_14 = (undefined4 *)0x0;
  iStack_10 = 0;
  uStack_c = 0;
  pcStack_8 = "QueryHost/Query_GetObjectsOverlappingObject/objectsIds";
  if (piStack_24 != piStack_20) {
    piVar8 = piStack_24;
    do {
      pvVar4 = (void *)*piVar8;
      if (((pvVar4 != (void *)0x0) && (pvVar4 != pvVar2)) &&
         (((*(uint *)((int)pvVar2 + 0x2c) & DAT_011ea0f8) == 0 ||
          (((*(uint *)((int)pvVar4 + 0x2c) & DAT_011ea0f8) == 0 ||
           (cVar1 = ObjectIntersection_InvokeHandToolAllowCallback
                              (this,*(undefined4 *)((int)pvVar2 + 8),
                               *(undefined4 *)((int)pvVar2 + 0xc),*(undefined4 *)((int)pvVar4 + 8),
                               *(undefined4 *)((int)pvVar4 + 0xc),(float *)&pvStack_30,fVar7),
           cVar1 == '\0')))))) {
        uStack_40 = *(undefined4 *)((int)pvVar4 + 8);
        uStack_3c = *(undefined4 *)((int)pvVar4 + 0xc);
        FUN_00572500(&puStack_14,&uStack_40);
      }
      piVar8 = piVar8 + 1;
    } while (piVar8 != piVar3);
  }
  iVar6 = iStack_10;
  allocation = puStack_14;
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar6 = iVar6 - (int)allocation >> 3;
  uStack_38 = 0;
  uStack_34 = 0;
  puVar5 = allocation;
  if (iVar6 == 0) {
    puVar5 = &uStack_38;
  }
  pvVar2 = (void *)(**(code **)(*piVar3 + 0xc0))(unaff_retaddr,puVar5,iVar6);
  if (allocation != (undefined4 *)0x0) {
    Memory_FreeIfNonNull(allocation);
  }
  if (pvStack_30 != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_30);
  }
  return pvVar2;
}

