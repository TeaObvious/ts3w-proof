/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). ECX manager plus
   world-point pointer, RET4/EAX ID. Actual world-to-local transform then bounds; SSE half-offset
   rounding to nearest floor vertex, low signed coordinate bytes plus level0 passed to compact grid
   lookup. Current Int32/yaw domain is separate; no arbitrary original matrix/numeric equivalence.
   Original managed LotPond constructor/startup/ID/corner/BuildBuy lifetime remains its authority.
   All IDs, physical ABI, prototypes/types/body/bytes/Listing/flow/analysis remain unchanged;
   current resource/cache policy is preserved. */

int __thiscall LotPonds_FindIdAtWorldPoint(void *this,float *param_1)

{
  int iVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  char local_43;
  undefined1 local_42;
  undefined1 local_41;
  float local_40 [2];
  float fStack_38;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  Lot_WorldPositionToLocalVector(*(void **)((int)this + 4),param_1,local_40);
  if ((((0.0 <= local_40[0]) && (local_40[0] <= (float)*(int *)(*(int *)((int)this + 4) + 0x174)))
      && (0.0 <= fStack_38)) && (fStack_38 <= (float)*(int *)(*(int *)((int)this + 4) + 0x178))) {
    fVar2 = local_40[0] + 0.5;
    fVar3 = local_40[0] + 0.5;
    fVar4 = local_40[0] + 0.5;
    local_40[0] = local_40[0] + 0.5;
    local_30 = (float)(~-(uint)(fVar2 < 0.0) & 0xcb000000 | -(uint)(fVar2 < 0.0) & 0x4b000000);
    fStack_2c = (float)(~-(uint)(fVar3 < 0.0) & 0xcb000000 | -(uint)(fVar3 < 0.0) & 0x4b000000);
    fStack_28 = (float)(~-(uint)(fVar4 < 0.0) & 0xcb000000 | -(uint)(fVar4 < 0.0) & 0x4b000000);
    fStack_24 = (float)(~-(uint)(local_40[0] < 0.0) & 0xcb000000 |
                       -(uint)(local_40[0] < 0.0) & 0x4b000000);
    local_30 = (fVar2 - local_30) + local_30;
    fStack_2c = (fVar3 - fStack_2c) + fStack_2c;
    fStack_28 = (fVar4 - fStack_28) + fStack_28;
    fStack_24 = (local_40[0] - fStack_24) + fStack_24;
    local_30 = local_30 - (float)(-(uint)(fVar2 < local_30) & 0x3f800000);
    fStack_2c = fStack_2c - (float)(-(uint)(fVar3 < fStack_2c) & 0x3f800000);
    fStack_28 = fStack_28 - (float)(-(uint)(fVar4 < fStack_28) & 0x3f800000);
    fStack_24 = fStack_24 - (float)(-(uint)(local_40[0] < fStack_24) & 0x3f800000);
    fVar2 = fStack_38 + 0.5;
    fVar3 = fStack_38 + 0.5;
    fVar4 = fStack_38 + 0.5;
    fStack_38 = fStack_38 + 0.5;
    local_20 = (float)(~-(uint)(fVar2 < 0.0) & 0xcb000000 | -(uint)(fVar2 < 0.0) & 0x4b000000);
    fStack_1c = (float)(~-(uint)(fVar3 < 0.0) & 0xcb000000 | -(uint)(fVar3 < 0.0) & 0x4b000000);
    fStack_18 = (float)(~-(uint)(fVar4 < 0.0) & 0xcb000000 | -(uint)(fVar4 < 0.0) & 0x4b000000);
    fStack_14 = (float)(~-(uint)(fStack_38 < 0.0) & 0xcb000000 |
                       -(uint)(fStack_38 < 0.0) & 0x4b000000);
    local_20 = (fVar2 - local_20) + local_20;
    fStack_1c = (fVar3 - fStack_1c) + fStack_1c;
    fStack_18 = (fVar4 - fStack_18) + fStack_18;
    fStack_14 = (fStack_38 - fStack_14) + fStack_14;
    local_20 = local_20 - (float)(-(uint)(fVar2 < local_20) & 0x3f800000);
    fStack_1c = fStack_1c - (float)(-(uint)(fVar3 < fStack_1c) & 0x3f800000);
    fStack_18 = fStack_18 - (float)(-(uint)(fVar4 < fStack_18) & 0x3f800000);
    fStack_14 = fStack_14 - (float)(-(uint)(fStack_38 < fStack_14) & 0x3f800000);
    local_43 = (char)(int)local_30;
    local_42 = (undefined1)(int)local_20;
    local_41 = 0;
    iVar1 = FUN_00b63640(this,&local_43);
    return iVar1;
  }
  return 0;
}

