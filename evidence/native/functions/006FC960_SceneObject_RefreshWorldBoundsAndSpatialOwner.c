/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Physical ECX scene object, no stack inputs, plain RET; existing inferred fastcall
   prototype preserved.006FB240 writes local world-bounds output. Compare maxX against minX with
   COMISS then JC: inverted OR unordered inputs choose an all-zero sphere; C decompiler simple
   less-than omits this NaN case. Otherwise0069D730 computes actual center/half-diagonal radius.
   Store full sphere16bytes at object+70. If scene+30 then its+2C spatial owner exist,
   invoke00705A50 with object and actual world bounds. No vertex-stream union, finite-all-lanes
   guarantee or current GPU stamp is implied. */

void __fastcall SceneObject_RefreshWorldBoundsAndSpatialOwner(void *param_1)

{
  void *this;
  float fVar1;
  float local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  float local_30 [4];
  float local_20;
  
  SceneObject_WriteWorldBounds(param_1,local_30);
  local_40 = local_30[0];
                    /* COMISS/JC also selects unordered X bounds for the zero sphere; actual C '<'
                       does not express that NaN branch. */
  if (local_20 < local_30[0]) {
    fVar1 = 0.0;
    uStack_3c = 0;
    uStack_38 = 0;
    uStack_34 = 0;
  }
  else {
    Bounds_WriteCenterAndHalfDiagonalRadius(&local_40,local_30);
    fVar1 = local_40;
  }
  *(float *)((int)param_1 + 0x70) = fVar1;
  *(undefined4 *)((int)param_1 + 0x74) = uStack_3c;
  *(undefined4 *)((int)param_1 + 0x78) = uStack_38;
  *(undefined4 *)((int)param_1 + 0x7c) = uStack_34;
  if ((*(int *)((int)param_1 + 0x30) != 0) &&
     (this = *(void **)(*(int *)((int)param_1 + 0x30) + 0x2c), this != (void *)0x0)) {
    SceneSpatialOwner_UpdateObjectCell(this,(int)param_1,local_30);
  }
  return;
}

