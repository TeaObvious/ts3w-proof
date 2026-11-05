/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. Checks AB0830, nonnull property/context and AB0A00. Obtains the
   Location component using selector011EDF08, copies XZ/level/yaw into the local request and calls
   A64100. A64100 semantics and all producer meanings are not established by this body alone. */

undefined1 __cdecl
ObjectPickup_CheckContextAtObjectLocation(void *param_1,void *param_2,void *param_3)

{
  char cVar1;
  undefined1 uVar2;
  undefined4 uVar3;
  void *this;
  float fVar4;
  float local_c;
  float local_8 [2];
  
  cVar1 = ObjectPickup_IsContextGateEnabled();
  if ((cVar1 != '\0') && (param_1 != (void *)0x0)) {
    uVar3 = FUN_00ab0a00((int)param_1);
    if (((char)uVar3 != '\0') && (param_2 != (void *)0x0)) {
      this = Object_GetComponentByMask(param_2,DAT_011edf08);
      if (this != (void *)0x0) {
        local_c = FLOAT_00fab218;
        local_8[0] = FLOAT_00fab218;
        local_8[1] = 0.0;
        ObjectLocation_CopyXZLevel(this,&local_c,local_8,local_8 + 1);
        fVar4 = PlacementLocation_ReadYawWithRefresh(this);
        uVar2 = FUN_00a64100(&local_c,fVar4,param_1,param_2,param_3);
        return uVar2;
      }
    }
  }
  return 0;
}

