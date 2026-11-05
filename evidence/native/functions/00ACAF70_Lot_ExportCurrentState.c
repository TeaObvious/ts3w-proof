/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 construction persistence contract): Export counterpart: ACA430 receives
   export flag1 and caller-supplied description identity; collects export construction with fresh
   context, writes REFS, object/export children and auxiliary manager resources. This path must not
   be confused with ordinary save ACAA10, whose description identity and valuation word are zero. */

byte __thiscall
Lot_ExportCurrentState
          (void *this,char *param_1,int param_2,int *param_3,undefined4 *param_4,uint param_5,
          uint param_6)

{
  char cVar1;
  byte bVar2;
  byte local_85;
  undefined1 local_84 [132];
  
  local_85 = 1;
  cVar1 = Lot_WriteDescriptionResource(this,param_1,param_2,param_3,'\x01',param_5,param_6);
  if (cVar1 == '\0') {
    return 0;
  }
  if (param_1[0x14] != '\0') {
    local_85 = FloorManager_WriteElevationResources
                         (*(void **)((int)this + 0x290),param_1,param_2,(uint)param_3,0);
    local_85 = local_85 & 1;
  }
  if (param_1[0x14] != '\0') {
    ResourceReferences_ConstructContext(local_84,0);
    FUN_00ac5370(this,param_1,local_84,param_2,param_3);
    if (*(void **)((int)this + 0x2e4) != (void *)0x0) {
      FUN_00c0dfb0(*(void **)((int)this + 0x2e4),param_1,local_84,param_4,param_2,param_3,0);
    }
    ReferenceStore_WriteResource(local_84,param_1,0,CONCAT44(param_3,param_2),(void *)0x0);
    FUN_00ab36e0(this);
    bVar2 = FUN_00abb2f0(this,param_1,param_2,param_3,param_4);
    FUN_00ab3840(this);
    if (*(void **)((int)this + 0x2d8) != (void *)0x0) {
      FUN_00c08db0(*(void **)((int)this + 0x2d8),param_1,param_4,param_2,param_3,0);
    }
    if (*(void **)((int)this + 0x2cc) != (void *)0x0) {
      FireplaceGroups_ExportObjectIndices
                (*(void **)((int)this + 0x2cc),param_1,(undefined *)param_4,
                 CONCAT44(param_3,param_2),0);
    }
    local_85 = local_85 & bVar2 & param_1[0x14];
    FUN_007d6890((int)local_84);
  }
  return local_85;
}

