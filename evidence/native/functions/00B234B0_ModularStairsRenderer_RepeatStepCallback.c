/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 stair collision and renderer contract): ECX renderer; RET30 twelve stack
   slots: flight ID, signed level, signed level delta, retained word, descriptor pointer, position4,
   direction32, UInt32 count, callback pointer, meta-scene pointer, byte flag, offsetXZ. Missing lot
   +230 grid returns with no callback. Otherwise each nonzero count calls callback immediately with
   nine physical stack slots, then adds all four returned advance lanes into supplied position,
   decrements count to zero. When enabled, crossing sampled floor height +binary32 0.0001 decrements
   level and resamples. No delayed callback scheduling: B2AC90 quotient callback group completes
   before remainder group. Actual C indirect-call type does not encode ECX callback ownership;
   instruction MOV ECX before CALL is authoritative. */

void __thiscall
ModularStairsRenderer_RepeatStepCallback
          (void *this,uint flightId,int level,int levelDelta,uint retainedWord,void *descriptor,
          float *position4,int direction,uint count,void *callback,void *metaSceneObject,byte flag,
          float *offsetXZ)

{
  float fVar1;
  void *pvVar2;
  bool bVar3;
  float10 fVar4;
  undefined3 in_stack_0000002d;
  float local_8c;
  uint local_88;
  float local_7c;
  float local_78;
  int local_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_40;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  pvVar2 = *(void **)(*(int *)((int)this + 0x1c) + 0x230);
  if (pvVar2 != (void *)0x0) {
    if ((level == 0) && (levelDelta < 1)) {
      bVar3 = false;
      local_8c = 0.0;
    }
    else {
      fStack_64 = *position4;
      fStack_54 = position4[2];
      fVar1 = offsetXZ[1];
      local_78 = fStack_54 + fVar1;
      fStack_5c = fStack_54 + fVar1;
      fStack_58 = fStack_54 + fVar1;
      fStack_54 = fStack_54 + fVar1;
      fVar1 = *offsetXZ;
      local_7c = fStack_64 + fVar1;
      fStack_6c = fStack_64 + fVar1;
      fStack_68 = fStack_64 + fVar1;
      fStack_64 = fStack_64 + fVar1;
      bVar3 = true;
      local_74 = level;
      local_70 = local_7c;
      local_60 = local_78;
      fVar4 = WallFloor_SampleLevelGridHeight(pvVar2,&local_7c);
      local_8c = (float)fVar4;
    }
    if (count != 0) {
      local_60 = 0.0;
      fStack_5c = 0.0;
      fStack_58 = 0.0;
      fStack_54 = 0.0;
      local_88 = count;
      do {
        local_70 = local_60;
        fStack_6c = fStack_5c;
        fStack_68 = fStack_58;
        fStack_64 = fStack_54;
        (*callback)(flightId,level,retainedWord,descriptor,position4,direction,&local_70,
                    metaSceneObject,_flag);
        *position4 = local_70 + *position4;
        position4[1] = fStack_6c + position4[1];
        position4[2] = fStack_68 + position4[2];
        position4[3] = fStack_64 + position4[3];
        if (bVar3) {
          fStack_40 = position4[1];
          fStack_50 = local_8c + _DAT_0106c294;
          if (fStack_40 < fStack_50) {
            fStack_24 = *position4;
            fStack_14 = position4[2];
            fVar1 = offsetXZ[1];
            local_78 = fStack_14 + fVar1;
            fStack_1c = fStack_14 + fVar1;
            fStack_18 = fStack_14 + fVar1;
            fStack_14 = fStack_14 + fVar1;
            fVar1 = *offsetXZ;
            local_7c = fStack_24 + fVar1;
            fStack_2c = fStack_24 + fVar1;
            fStack_28 = fStack_24 + fVar1;
            fStack_24 = fStack_24 + fVar1;
            level = level + -1;
            local_74 = level;
            fStack_30 = local_7c;
            fStack_20 = local_78;
            fVar4 = WallFloor_SampleLevelGridHeight(pvVar2,&local_7c);
            local_8c = (float)fVar4;
          }
        }
        local_88 = local_88 - 1;
      } while (local_88 != 0);
    }
  }
  return;
}

