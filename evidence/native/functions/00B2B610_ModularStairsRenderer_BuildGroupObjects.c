/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 stair collision and renderer contract): ECX renderer; RET30 twelve stack
   slots: UInt32 flight ID, descriptor pointer, direction32, top/bottom LotXZLevel pointers, byte
   flag6, retained word, railing descriptor pointer, byte flags9/10/11/12. Clears prior group/meta
   objects and creates MetaSceneObject pair at +110/+114. Unless flag12 invokes B2AC90;
   grouped/decorative and rail paths remain distinct (B295B0/B2B390). Flag11 selects tint branch.
   Final top XZ inclusive lot bounds guard controls B27B10 placement. These flags do not establish
   frontend Probable/VisualProxy policy. */

void __thiscall
ModularStairsRenderer_BuildGroupObjects
          (void *this,uint flightId,void *descriptor,int direction,LotXZLevel *top,
          LotXZLevel *bottom,byte flag6,uint retainedWord,void *railingDescriptor,byte flag9,
          byte flag10,byte flag11,byte flag12)

{
  undefined4 *puVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *puVar4;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  uint uStack_54;
  float fStack_50;
  float fStack_4c;
  LotXZLevel LStack_48;
  LotXZLevel LStack_3c;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  FUN_00b269d0((int)this);
  pvVar3 = (void *)FUN_004e4520(0x150,0x10,0,
                                "LotRenderer/ModularStairsRenderManager/MetaSceneObject",0);
  if (pvVar3 == (void *)0x0) {
    puVar4 = (undefined4 *)0x0;
  }
  else {
    puVar4 = FUN_00b25ae0(pvVar3,*(int *)((int)this + 0x1c));
  }
  puVar1 = *(undefined4 **)((int)this + 0x110);
  if (puVar4 != puVar1) {
    if (puVar4 != (undefined4 *)0x0) {
      puVar4[1] = puVar4[1] + 1;
    }
    *(undefined4 **)((int)this + 0x110) = puVar4;
    if ((puVar1 != (undefined4 *)0x0) &&
       (iVar2 = puVar1[1], puVar1[1] = iVar2 + -1, iVar2 + -1 == 0)) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  pvVar3 = (void *)FUN_004e4520(0x150,0x10,0,
                                "LotRenderer/ModularStairsRenderManager/MetaSceneObject",0);
  if (pvVar3 == (void *)0x0) {
    puVar4 = (undefined4 *)0x0;
  }
  else {
    puVar4 = FUN_00b25ae0(pvVar3,*(int *)((int)this + 0x1c));
  }
  puVar1 = *(undefined4 **)((int)this + 0x114);
  if (puVar4 != puVar1) {
    if (puVar4 != (undefined4 *)0x0) {
      puVar4[1] = puVar4[1] + 1;
    }
    *(undefined4 **)((int)this + 0x114) = puVar4;
    if ((puVar1 != (undefined4 *)0x0) &&
       (iVar2 = puVar1[1], puVar1[1] = iVar2 + -1, iVar2 + -1 == 0)) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  LStack_3c.level = top->level;
  LStack_3c.x = top->x;
  LStack_3c.z = top->z;
  LStack_48.x = bottom->x;
  LStack_48.z = bottom->z;
  LStack_48.level = bottom->level;
  if (flag12 == 0) {
    ModularStairsRenderer_BuildStepObjects
              (this,flightId,descriptor,direction,&LStack_3c,&LStack_48,flag6,retainedWord,
               *(void **)((int)this + 0x110),0);
  }
  FUN_00b295b0(this,direction,&LStack_3c.x,&LStack_48.x,flag11,*(void **)((int)this + 0x114));
  if ((flag12 == 0) && ((flag9 != 0 || (flag10 != 0)))) {
    ModularStairs_CountQuarterStepsAndWidth
              (direction,top,bottom,(uint *)&fStack_60,&uStack_54,&fStack_58,&fStack_5c);
    if (flag9 != 0) {
      FUN_00afd400(direction,&top->x,bottom,&LStack_3c.x,&fStack_50,&fStack_4c);
      FUN_00b2b390(this,0xffffffff,railingDescriptor,direction,&LStack_3c.x,&fStack_50,
                   (uint)fStack_60,(float)LStack_48.level,retainedWord,*(void **)((int)this + 0x110)
                   ,0);
    }
    if (flag10 != 0) {
      if ((direction == 0) || (direction == 4)) {
        fStack_30 = top->x;
        fStack_2c = LStack_48.z;
      }
      else {
        fStack_30 = LStack_48.x;
        fStack_2c = top->z;
      }
      fStack_28 = (float)top->level;
      FUN_00afd400(direction,&top->x,bottom,&fStack_30,&fStack_50,&fStack_4c);
      FUN_00b2b390(this,0xffffffff,railingDescriptor,direction,&fStack_30,&fStack_50,(uint)fStack_60
                   ,(float)LStack_48.level,retainedWord,*(void **)((int)this + 0x110),0);
    }
  }
  fStack_2c = _DAT_00f9b5b4;
  fStack_24 = DAT_00f9e51c;
  if (flag11 != 0) {
    fStack_2c = FLOAT_00f998f8;
    fStack_24 = FLOAT_00f998f8;
  }
  fStack_30 = FLOAT_00f998f8;
  fStack_20 = FLOAT_00f998f8;
  fStack_60 = *(float *)(*(int *)((int)this + 0x110) + 8);
  fStack_5c = *(float *)(*(int *)((int)this + 0x110) + 0xc);
  fStack_28 = fStack_2c;
  fStack_1c = fStack_2c;
  fStack_18 = fStack_2c;
  fStack_14 = fStack_24;
  LoadPump_ReadFrameServiceGlobal();
  if (fStack_60 != fStack_5c) {
    do {
      if (*(void **)((int)fStack_60 + 0x40) != (void *)0x0) {
        SceneObject_SetTintOpacity(*(void **)((int)fStack_60 + 0x40),&fStack_20);
      }
      fStack_60 = (float)((int)fStack_60 + 0x50);
    } while (fStack_60 != fStack_5c);
  }
  pvVar3 = *(void **)((int)this + 0x1c);
  if ((((0.0 <= top->x) && (top->x <= (float)*(int *)((int)pvVar3 + 0x60))) && (0.0 <= top->z)) &&
     (top->z <= (float)*(int *)((int)pvVar3 + 100))) {
    LotLocation_CopyXZAndSampleElevation(pvVar3,&LStack_3c.x,&fStack_30);
    fStack_5c = ((float)direction - DAT_00fb3f7c) * _DAT_00fc273c;
    if (*(void **)((int)this + 0x110) != (void *)0x0) {
      FUN_00b27b10(*(void **)((int)this + 0x110),&fStack_30,fStack_5c,LStack_48.level,'\0');
    }
    if (*(void **)((int)this + 0x114) != (void *)0x0) {
      FUN_00b27b10(*(void **)((int)this + 0x114),&fStack_30,fStack_5c,LStack_48.level,'\0');
    }
  }
  return;
}

