/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC 1.67 original: ECX world, two float stack words, RET 8; AL boolean. Checks lower-inclusive X/Z
   and upper-exclusive X/world+C0+C4 bounds. Optional terrain +0x54 lookup 008C2C70 and C209C0
   material test at threshold 0.5 can require containing-lot membership. Coordinate conversion uses
   inherited-rounding x87 FIST then float residual sign-bit adjustment, not an asserted floor or
   truncation. Child material/resource semantics beyond these calls remain bounded to the inspected
   instructions. */

bool __thiscall WorldSurface_TestGroundAdmission(void *this,float param_1,float param_2)

{
  void *pvVar1;
  undefined4 uVar2;
  float local_14;
  int local_10;
  float local_c;
  float local_8;
  int local_4;
  
  if ((((*(float *)((int)this + 0xb4) <= param_1) && (*(float *)((int)this + 0xb8) <= param_2)) &&
      (param_1 < *(float *)((int)this + 0xbc))) &&
     (param_2 < *(float *)((int)this + 0xc4) + *(float *)((int)this + 0xc0))) {
    if (*(int *)((int)this + 0x54) != 0) {
      pvVar1 = (void *)FUN_008c2c70(*(int *)((int)this + 0x54));
      if (pvVar1 != (void *)0x0) {
        local_14 = 0.0;
        local_10 = (int)ROUND(param_2);
        local_c = param_2 - (float)local_10;
        local_4 = (int)ROUND(param_1);
        local_8 = param_1 - (float)local_4;
        uVar2 = FUN_00c209c0(pvVar1,local_4 + -1 + (uint)((uint)local_8 < 0x80000001),
                             local_10 + -1 + (uint)((uint)local_c < 0x80000001),0,&local_14);
        if (((char)uVar2 != '\0') && (_DAT_00f9b5b4 <= local_14)) {
          pvVar1 = LotSpatialIndex_FindContainingLotAtWorldXZ(this,param_1,param_2);
          return pvVar1 != (void *)0x0;
        }
      }
    }
    return true;
  }
  return false;
}

