/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* PC1.67 thiscall point/RET4 void, generic brushECX differs by-28 from outer clickECX. Requires
   active8C/lot34/brushD8; Float timer nextEC vs elapsed, updates next=now+50 after raster;
   timer/reentrancy/feedback remain controller responsibilities. Ground is raw DWORDlevel==0, NOT
   float0 comparison. Fade: oppositeX=abs(signed lotW - point.x) converted/storedFloat32, choose
   x>oppositeX ? oppositeX : x; same Z; choose dx>dz ? dz : dx. Ordered COMISS4,d JBE also takes
   UNORDERED to1; otherwise d*.25. Do not substitute W-x without ABS, MathF.Min NaN behavior, or
   clamp negative near-edge values. Intermediate dimension subtraction uses x87 FILD/FSUB/FABS;
   ordinary bounded lot coordinates/integers match Float32 output profile. Raster sees original
   centre; D195C0 separately clamps its rasterpoint. Floor flags/live paint mask and costjournal are
   separate owners. */

void __thiscall LotPaintTool_ApplyTimedStamp(void *this,LotPaintPoint *point)

{
  void *this_00;
  bool bVar1;
  LotPaintPoint *pLVar2;
  LotPaintPoint *pLVar3;
  LotPaintPoint *pLVar4;
  float10 fVar5;
  float fVar6;
  LotPaintPoint local_5c;
  float local_50 [19];
  
  if (((*(char *)((int)this + 0x8c) != '\0') && (*(int *)((int)this + 0x34) != 0)) &&
     (*(int *)((int)this + 0xd8) != 0)) {
    fVar5 = ElapsedClock_ReadScaledTicks((void *)((int)this + 0x100));
    local_5c.level = (int)(float)fVar5;
    if ((float10)*(float *)((int)this + 0xec) <= fVar5) {
      this_00 = (void *)((int)this + 0x124);
      *(undefined1 *)((int)this + 0xf0) = 1;
      FUN_00ad77d0((int)this_00);
      if (point->level == 0) {
        FUN_00ad6e90(this_00,*(void **)((int)this + 0x34),&point->x);
        FUN_00cee460(this,'\x01');
        local_5c.x = ABS((float)*(int *)(*(int *)((int)this + 0x34) + 0x174) - point->x);
        pLVar3 = &local_5c;
        if (point->x <= local_5c.x) {
          pLVar3 = point;
        }
        pLVar4 = (LotPaintPoint *)&point->z;
        local_5c.z = pLVar3->x;
        local_5c.x = ABS((float)*(int *)(*(int *)((int)this + 0x34) + 0x178) - *(float *)pLVar4);
        if (local_5c.x < *(float *)pLVar4) {
          pLVar4 = &local_5c;
        }
        local_5c.x = pLVar4->x;
        pLVar2 = &local_5c;
        if (pLVar3->x <= pLVar4->x) {
          pLVar2 = (LotPaintPoint *)&local_5c.z;
        }
        if (4.0 <= pLVar2->x) {
          fVar6 = 1.0;
        }
        else {
          fVar6 = pLVar2->x * 0.25;
        }
        *(float *)((int)this + 0xe8) = fVar6;
        FUN_00d195c0(this,&point->x,(int *)((int)this + 0x94));
        *(float *)((int)this + 0xec) = (float)local_5c.level + 50.0;
        FUN_00cee0f0((int)this);
        if (*(char *)((int)this + 0xf0) == '\0') {
          (**(code **)(*(int *)((int)this + 0x28) + 0x54))(point,1);
        }
        if ((*(int *)((int)this + 0xbc) <= *(int *)((int)this + 0xc4)) &&
           (*(int *)((int)this + 0xc0) <= *(int *)((int)this + 200))) {
          FUN_00cee6e0(this,'\0');
          FUN_00cee460(this,'\0');
          return;
        }
        FUN_00cee6e0(this,'\x01');
        bVar1 = FUN_00ad6f10((int)this_00);
        if (bVar1) {
          FUN_00cd3890(this_00,1,'\x01');
        }
        FUN_00cee460(this,'\0');
        return;
      }
      FUN_00cee6e0(this,'\x01');
      FUN_00ad6720(local_50,0xd7,*(int *)((int)this + 0x34),&point->x,0,0);
      FUN_00ad8570(this_00,local_50);
      FUN_00cd3890(this_00,1,'\x01');
      FUN_00ad70d0((int)local_50);
    }
  }
  return;
}

