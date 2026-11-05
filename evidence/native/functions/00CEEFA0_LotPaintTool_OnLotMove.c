/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall lot+point RET8 AL1. Same ordered Float32 grid quantization/currentCW FISTP as
   click; field8 copies raw SIGNED level. While active64, stampcentre=snappedXY-0.125, saves
   centreF0/F4/F8, calls ApplyTimedStamp with ECX adjusted-28. It does NOT re-run click
   Lot_ContainsLocalPoint/context predicate. Current host clips moves through its input gate; do not
   claim exact original off-lot move parity. Cost virtual34 uses actual getterST0 then display; no
   extra charge inferred. */

bool __thiscall LotPaintTool_OnLotMove(void *this,undefined *lot,LotPaintPoint *point)

{
  float10 fVar1;
  float local_18;
  float local_14;
  int local_10;
  LotPaintPoint local_c;
  
  local_18 = ((float)(int)ROUND(point->x * 4.0 + 0.5) - 0.5) * 0.25;
  local_10 = point->level;
  local_14 = ((float)(int)ROUND(point->z * 4.0 + 0.5) - 0.5) * 0.25;
  if (*(char *)((int)this + 100) != '\0') {
    local_c.x = local_18 - 0.125;
    local_c.z = local_14 - 0.125;
    *(float *)((int)this + 0xf0) = local_c.x;
    *(float *)((int)this + 0xf4) = local_c.z;
    *(int *)((int)this + 0xf8) = local_10;
    local_c.level = local_10;
    LotPaintTool_ApplyTimedStamp((void *)((int)this + -0x28),&local_c);
    if (*(int **)((int)this + 0x188) != (int *)0x0) {
      fVar1 = (float10)(**(code **)(**(int **)((int)this + 0x188) + 0x34))();
      FUN_00cd3670(this,(float)fVar1,&local_18,0.0,'\x01','\0');
    }
  }
  (**(code **)(*(int *)this + 0x74))(lot,&local_18,0);
  return true;
}

