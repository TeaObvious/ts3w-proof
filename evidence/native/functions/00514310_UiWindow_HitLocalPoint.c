/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; analyst-assigned role. Physical thiscall ECX window interface
   (complete object+4), local float X/Y stack arguments, RET8; only returned AL matters. Width uses
   interface+44 minus+3C and height+48 minus+40. Optional bit4 at interface+1F5 selects inset bounds
   from+5C/+60/+64/+68 with explicit positivity/extent rejection and clamping. Float point bounds
   are inclusive via original COMISS branches. Inside initializes local hit byte1. When callback+2C
   exists and interface+6C bit20 or+1F5 low2bits require complex tests, pass event13 with original
   local coordinates and mutable hit-byte pointer through callback virtual10. Return resulting hit
   byte; no mask/shape result is fabricated. Rejection returns AL0. Decompiler bit-punning a float
   argument to store the temporary byte is stack-reuse artifact, not mutation of caller's float
   coordinates. Native callback recipients are dynamic and not completed by this body. */

bool __thiscall UiWindow_HitLocalPoint(void *this,float localX,float localY)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  undefined1 local_1c [4];
  float local_18;
  undefined4 local_14;
  float local_10;
  float local_c;
  float *local_4;
  
  local_10 = localX;
  fVar5 = *(float *)((int)this + 0x44) - *(float *)((int)this + 0x3c);
  fVar6 = *(float *)((int)this + 0x48) - *(float *)((int)this + 0x40);
  fVar7 = 0.0;
  local_18 = 0.0;
  if ((*(byte *)((int)this + 0x1f5) & 4) != 0) {
    fVar1 = *(float *)((int)this + 100);
    if (fVar1 <= 0.0) {
      return false;
    }
    fVar2 = *(float *)((int)this + 0x5c);
    if (fVar5 <= fVar2) {
      return false;
    }
    fVar3 = *(float *)((int)this + 0x68);
    if (fVar3 <= 0.0) {
      return false;
    }
    fVar4 = *(float *)((int)this + 0x60);
    if (fVar6 <= fVar4) {
      return false;
    }
    if (0.0 < fVar2) {
      fVar7 = fVar2;
    }
    if (0.0 < fVar4) {
      local_18 = fVar4;
    }
    if (fVar1 < fVar5) {
      fVar5 = fVar1;
    }
    if (fVar3 < fVar6) {
      fVar6 = fVar3;
    }
  }
  if ((((fVar7 <= localX) && (local_18 <= localY)) && (localX <= fVar5)) && (localY <= fVar6)) {
    localX = (float)CONCAT31(localX._1_3_,1);
    if ((*(int *)((int)this + 0x2c) != 0) &&
       (((*(byte *)((int)this + 0x6c) & 0x20) != 0 || ((*(byte *)((int)this + 0x1f5) & 3) != 0)))) {
      local_4 = &localX;
      local_14 = 0x13;
      local_c = localY;
      (**(code **)(**(int **)((int)this + 0x2c) + 0x10))
                (-(uint)(this != &DAT_00000004) & (uint)this,
                 -(uint)(this != &DAT_00000004) & (uint)this,local_1c,0);
    }
    return (bool)localX._0_1_;
  }
  return false;
}

