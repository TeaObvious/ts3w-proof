/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 static instruction contract: ECX state,
   three stack words, RET0C; AL success/failure, upper EAX incidental. Reader length >=20, unsigned
   version 0100..01FF. Payload +8 name, +0C authored flags applied with mask FFFFFFFF, +10 optional
   packed graph ref, +14 outbound count then packed refs. Nonzero unresolved graph/outbound fails
   AL0. Version>=0101 reads trailing overlay; value6 leaves prior/default field. Constructors, outer
   wrapper bounds and host allocation remain bounded children. No native C#
   reflection/default-conversion equivalent is implied. */

uint __thiscall SacsState_ReadRecord(void *this,int *param_1,void *param_2,char param_3)

{
  uint *puVar1;
  uint uVar2;
  undefined4 *puVar3;
  void *pvVar4;
  uint *puVar5;
  
  if (param_1[1] == 0) {
    puVar5 = (uint *)0x0;
  }
  else {
    puVar5 = *(uint **)(param_1[1] + 8);
  }
  uVar2 = (**(code **)(*param_1 + 0x1c))();
  if (0x13 < uVar2) {
    if (param_3 != '\0') {
      FUN_007d3070(puVar5,uVar2 >> 2);
    }
    puVar1 = puVar5 + 1;
    uVar2 = *puVar1;
    if ((0xff < uVar2) && (uVar2 < 0x200)) {
      *(uint *)((int)this + 0x28) = puVar5[2];
      SacsState_ApplyAuthoredFlagMask(this,0xffffffff,puVar5[3]);
      if (puVar5[4] != 0) {
        puVar3 = RcolContext_ResolveOneBasedBlock(param_2,puVar5[4]);
        if (puVar3 == (undefined4 *)0x0) {
          return 0;
        }
        FUN_007fd1d0(this,puVar3);
      }
      uVar2 = puVar5[5];
      puVar5 = puVar5 + 6;
      while( true ) {
        if (uVar2 == 0) {
          if ((0x100 < *puVar1) && (*puVar5 != 6)) {
            *(uint *)((int)this + 0x30) = *puVar5;
          }
          return CONCAT31((int3)((uint)puVar1 >> 8),1);
        }
        pvVar4 = RcolContext_ResolveOneBasedBlock(param_2,*puVar5);
        if (pvVar4 == (void *)0x0) break;
        FUN_007fe820(this,(int)pvVar4);
        puVar5 = puVar5 + 1;
        uVar2 = uVar2 - 1;
      }
      return 0;
    }
  }
  return uVar2 & 0xffffff00;
}

