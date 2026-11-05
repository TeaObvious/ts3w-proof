/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 placement/source boundary. ECXtool, one object pointerword, RET4/ALBoolean. Null
   fails. SpecialB04980object category uses separate011EE7B9; otherwise011EE7B8 moveObjects returns1
   before ordinaryCCD330 pickup validation and later catalog exclusions. Current mode flag does not
   by itself reproduce all special-object policy. */

bool __thiscall HandTool_CanPickObject(void *this,void *param_1)

{
  char cVar1;
  uint uVar2;
  int iVar3;
  bool bVar4;
  
  if (param_1 == (void *)0x0) {
    return false;
  }
  FUN_00ad77d0((int)this + 0x270);
  uVar2 = ObjectCatalog_HasBuildableShellFlag((int)param_1);
  if ((char)uVar2 != '\0') {
    return (bool)DAT_011ee7b9;
  }
  if (DAT_011ee7b8 != '\0') {
    return true;
  }
  cVar1 = ObjectPickup_CollectAdmissionErrors(param_1,(void *)((int)this + 0x270),0,0,0,'\0');
  bVar4 = cVar1 != '\0';
  iVar3 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)param_1 + 0x18));
  if ((iVar3 != 0) &&
     (((*(uint *)(iVar3 + 0xd0) >> 6 & 1) != 0 || ((*(uint *)(iVar3 + 0xd0) >> 7 & 1) != 0)))) {
    bVar4 = false;
  }
  iVar3 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)param_1 + 0x18));
  if (iVar3 == 0) {
    bVar4 = false;
  }
  return bVar4;
}

