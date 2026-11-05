/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX manager, no stack arguments. Visit lot signed minimum/maximum levels,
   allocate0x280, construct B665F0, setup B677A0 and rebuild presence B668A0; store accepted
   per-level entries and dirty-level records. Virtual retain/release-shaped calls are observed
   without asserting full lifetime/refcount contracts. No return value is established by stored void
   display. Descriptive role, not recovered symbol. */

void __fastcall PoolRenderManager_CreateLevelGeometry(int param_1)

{
  int *piVar1;
  char cVar2;
  undefined4 *puVar3;
  int *this;
  int *piVar4;
  int iVar5;
  uint uVar6;
  uint local_14;
  uint uStack_10;
  int local_c;
  undefined4 auStack_8 [2];
  
  iVar5 = *(int *)(*(int *)(param_1 + 4) + 0x6c);
  uVar6 = *(uint *)(*(int *)(param_1 + 4) + 0x68);
  local_c = iVar5;
  if ((int)uVar6 <= iVar5) {
    do {
      local_14 = uVar6;
      puVar3 = (undefined4 *)FUN_004e4500(0x280,"LotRenderer/PoolRenderManager/PoolGeometry",0);
      if (puVar3 == (undefined4 *)0x0) {
        this = (int *)0x0;
      }
      else {
        this = PoolGeometry_Construct(puVar3);
        if (this != (int *)0x0) {
          (**(code **)*this)();
        }
      }
      PoolGeometry_SetupLotLevel(this,*(int *)(param_1 + 4),param_1,uVar6);
      cVar2 = PoolGeometry_RebuildPresenceFromRooms((int)this);
      if (cVar2 != '\0') {
        piVar4 = (int *)FUN_007f35b0((void *)(param_1 + 0x20),&local_14);
        piVar1 = (int *)*piVar4;
        if (this != piVar1) {
          if (this != (int *)0x0) {
            (**(code **)*this)();
          }
          *piVar4 = (int)this;
          if (piVar1 != (int *)0x0) {
            (**(code **)(*piVar1 + 4))();
          }
        }
        uStack_10 = uStack_10 & 0xffffff00;
        FUN_00628a70((void *)(param_1 + 0x40),auStack_8,(int *)&local_14);
        iVar5 = local_c;
        uVar6 = local_14;
      }
      if (this != (int *)0x0) {
        (**(code **)(*this + 4))();
      }
      uVar6 = uVar6 + 1;
    } while ((int)uVar6 <= iVar5);
  }
  return;
}

