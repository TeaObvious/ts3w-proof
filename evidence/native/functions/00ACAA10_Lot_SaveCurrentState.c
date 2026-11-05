/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX lot; ordinary save calls ACA430 with
   export flag0 and supplied description identity0/0; retains resource lot identity from+48/+4C.
   Constructs NEW narrow ResourceTableContext for construction, writes all manager state then its
   REFS, and separate fresh object context when enabled. Original does not seed a new save context
   by retaining every unused source key or source record. Status gates later children and returns
   accumulated result; full cleanup in actual body. */

bool __thiscall Lot_SaveCurrentState(void *this,int *param_1,char param_2,char param_3)

{
  int iVar1;
  char cVar2;
  byte bVar3;
  void *this_00;
  undefined4 uVar4;
  undefined8 uVar5;
  bool local_135;
  int local_134 [5];
  byte local_120;
  char *local_11c;
  LPCWSTR local_118 [4];
  undefined1 local_108 [132];
  undefined1 local_84 [132];
  
  iVar1 = *param_1;
  *(undefined1 *)((int)this + 0xb9) = 0;
  if (iVar1 == 0) {
    return false;
  }
  FUN_007d7920(local_134,iVar1,param_1[1]);
  if (local_120 == 0) {
    StreamReader_ReleaseAuxiliary(local_134);
    return false;
  }
  local_135 = true;
  this_00 = (void *)FUN_00aa99c0();
  if (this_00 != (void *)0x0) {
    FUN_00aaa310(this_00,1,(int)this,local_134);
  }
  cVar2 = Lot_WriteDescriptionResource
                    (this,local_134,*(undefined4 *)((int)this + 0x48),
                     *(undefined4 *)((int)this + 0x4c),'\0',0,0);
  if (cVar2 == '\0') {
    StreamReader_ReleaseAuxiliary(local_134);
    return false;
  }
  if (local_120 == 0) goto LAB_00acacc4;
  cVar2 = FUN_00a8b1e0(*(void **)((int)this + 0x290),local_134,*(undefined4 *)((int)this + 0x48),
                       *(undefined4 *)((int)this + 0x4c),0);
  local_135 = cVar2 != '\0';
  if (local_120 == 0) goto LAB_00acacc4;
  if (*(int *)((int)this + 0x364) != 0) {
    if (*(char *)((int)this + 0xba) != '\0') {
      FUN_00ab11a0((int)this);
    }
    bVar3 = FUN_00adf5f0(*(void **)((int)this + 0x364),local_134,*(undefined4 *)((int)this + 0x48),
                         *(undefined4 *)((int)this + 0x4c));
    if (bVar3 == 0) {
      local_11c = "Lot/Id";
      FUN_004088f0(local_118,&local_11c);
      FUN_0040e840(local_118,(ushort *)L"%I64u");
      FUN_00c67ce0(*(int *)((int)this + 0xc),3,0xc,local_118[0],
                   "Error during construction of imposter for lot %I64u");
      FUN_004ef8f0((int *)local_118);
    }
    local_135 = (bool)(local_135 & bVar3);
  }
  FUN_00ab04f0(this,local_134,(int *)0x1);
  FUN_00c6dcd0(this,1,1,0,(int *)0x0);
  ResourceReferences_ConstructContext(local_84,0);
  LotDataLayers_WriteSavedResources
            (this,(char *)local_134,local_84,*(char **)((int)this + 0x48),
             *(int **)((int)this + 0x4c));
  ReferenceStore_WriteResource(local_84,local_134,0,*(ulonglong *)((int)this + 0x48),(void *)0x0);
  if ((param_2 != '\0') && (local_120 != 0)) {
    ResourceReferences_ConstructContext(local_108,0);
    FUN_00ab30d0(this,local_134,local_108,param_1[5]);
    ReferenceStore_WriteResource
              (local_108,local_134,0xf0b54d,*(ulonglong *)((int)this + 0x48),(void *)0x0);
    FUN_007d6890((int)local_108);
  }
  if (param_3 == '\0') {
LAB_00acac60:
    if (local_120 != 0) {
      FUN_00c6eb90(this,local_134,*(undefined4 *)((int)this + 0x48),
                   *(undefined4 *)((int)this + 0x4c));
    }
  }
  else if (local_120 != 0) {
    FUN_00c6edf0(this,local_134);
    goto LAB_00acac60;
  }
  iVar1 = *(int *)((int)this + 0xc);
  *(undefined1 *)((int)this + 200) = 0;
  uVar4 = FUN_0096fe00(iVar1);
  if ((char)uVar4 != '\0') {
    uVar5 = FUN_00c5f560(iVar1);
    if (((int)uVar5 == *(int *)((int)this + 0x48)) &&
       ((int)((ulonglong)uVar5 >> 0x20) == *(int *)((int)this + 0x4c))) {
      FUN_00c71ab0(this,(undefined4 *)0x0);
    }
  }
  local_135 = (bool)(local_135 & local_120);
  FUN_007d6890((int)local_84);
LAB_00acacc4:
  if (this_00 != (void *)0x0) {
    FUN_00aaa310(this_00,0,(int)this,local_134);
  }
  StreamReader_ReleaseAuxiliary(local_134);
  return local_135;
}

