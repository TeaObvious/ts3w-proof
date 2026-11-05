/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 rendered-pick contract. ECX=pick manager, aligned output pointer, RET4 Boolean AL.
   CompletedX48 signed<0 returns false without output writes. Otherwise writes
   X/Y,index=-1,aux5C,packed60,object=NULL and16 point bytes by MOVAPS to output+20 (requires16-byte
   alignment); output18/1C not initialized here. No float-to-int conversion: point bytes remain
   float bits. True can still mean no object. Nonnegative selected index58 looks up borrowed scene
   object; then optional virtual+C interface0499DC66 delegates point resolution6F8110, else
   interface938D7230 may remap nonzero GUID228/22C through render manager6FE120. Child
   lifetimes/interface meaning unexpanded. No retain in this getter's selected direct lookup. */

bool __thiscall RenderPick_CopyResult(void *this,PC167_RenderPickResult *alignedOutput)

{
  float fVar1;
  float fVar2;
  float fVar3;
  ulonglong arg1;
  int *piVar4;
  void *pvVar5;
  
  if (*(int *)((int)this + 0x48) < 0) {
    return false;
  }
  alignedOutput->pixelX = *(int *)((int)this + 0x48);
  alignedOutput->pixelY = *(int *)((int)this + 0x4c);
  alignedOutput->packedSample = *(uint *)((int)this + 0x60);
  alignedOutput->sceneIndex = -1;
  alignedOutput->object = (void *)0x0;
  fVar1 = *(float *)((int)this + 0x74);
  fVar2 = *(float *)((int)this + 0x78);
  fVar3 = *(float *)((int)this + 0x7c);
                    /* MOVAPS copies16 raw float bytes to output+20, NOT numeric float-to-int
                       conversion. Output pointer must be16-byte aligned. */
  alignedOutput->point[0] = *(float *)((int)this + 0x70);
  alignedOutput->point[1] = fVar1;
  alignedOutput->point[2] = fVar2;
  alignedOutput->point[3] = fVar3;
  alignedOutput->auxiliaryIndex = *(int *)((int)this + 0x5c);
  if (-1 < (int)*(uint *)((int)this + 0x58)) {
    piVar4 = RenderScene_GetBorrowedAtIndex(*(void **)((int)this + 4),*(uint *)((int)this + 0x58));
    alignedOutput->object = piVar4;
    if (piVar4 != (int *)0x0) {
      alignedOutput->sceneIndex = *(int *)((int)this + 0x58);
      pvVar5 = (**(code **)(*piVar4 + 0xc))(piVar4,0x499dc66);
      if (pvVar5 != (void *)0x0) {
        pvVar5 = FUN_006f8110(pvVar5,alignedOutput->point);
        alignedOutput->object = pvVar5;
        return true;
      }
      piVar4 = alignedOutput->object;
      if (piVar4 != (int *)0x0) {
        pvVar5 = (**(code **)(*piVar4 + 0xc))(piVar4,0x938d7230);
        if (pvVar5 != (void *)0x0) {
          arg1 = *(ulonglong *)((int)pvVar5 + 0x228);
          if (*(int *)((int)pvVar5 + 0x228) != 0 || *(int *)((int)pvVar5 + 0x22c) != 0) {
            pvVar5 = (void *)FUN_006fdbe0();
            if (pvVar5 != (void *)0x0) {
              pvVar5 = FUN_006fe120(pvVar5,arg1);
              if (pvVar5 != (void *)0x0) {
                alignedOutput->object = pvVar5;
              }
            }
          }
        }
      }
    }
  }
  return true;
}

