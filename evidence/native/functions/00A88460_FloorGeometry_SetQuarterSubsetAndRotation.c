/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC 1.67 floor geometry preparation comparison.
   Lazily constructs SubsetQuads storage and invokes A82FE0 with signed-byte tile
   coordinates/quarter, the new two-DWORD subset key, old-key output and rotation low byte. Compares
   absent-pair sentinelFFFFFFFFFFFFFFF8; admitted new/old keys update tracking through
   A87D80/A87720, and changed low-byte status marks this+0x260 dirty. Optional partition
   notification uses this+0x238.
   Physical ECX receiver plus four stack slots, RET0x10. Subset storage, key tracking and partition
   child effects remain call boundaries; no complete lifetime, vertex emission, UV rotation or
   current material-resolver equivalence is inferred.
   Static original-code observations; preserve function ID, ABI/types, stored body, original bytes
   and flow. */

void __thiscall
FloorGeometry_SetQuarterSubsetAndRotation
          (void *this,char *param_1,uint param_2,uint param_3,undefined4 param_4)

{
  char *pcVar1;
  uint uVar2;
  byte bVar3;
  void *pvVar4;
  uint uVar5;
  uint uVar6;
  
  pcVar1 = param_1;
  if (*(int *)((int)this + 0x264) == 0) {
    pvVar4 = (void *)FUN_004e4500(0x18,"LotRenderer/FloorGeometry/SubsetQuads",0);
    if (pvVar4 == (void *)0x0) {
      pvVar4 = (void *)0x0;
    }
    else {
      pvVar4 = FUN_00a87990(pvVar4,*(uint *)((int)this + 0x220),*(uint *)((int)this + 0x224));
    }
    *(void **)((int)this + 0x264) = pvVar4;
  }
  uVar2 = param_3;
  uVar6 = param_2;
  uVar5 = FUN_00a82fe0(*(void **)((int)this + 0x264),(int)*param_1,(int)param_1[1],(int)param_1[2],
                       param_2,param_3,(int *)&param_2,(byte)param_4);
  if ((uVar6 != 0xfffffff8) || (uVar2 != 0xffffffff)) {
    FUN_00a87d80(this,uVar6,uVar2,1);
    if ((param_2 != 0xfffffff8) || (param_3 != 0xffffffff)) {
      FUN_00a87720(this,param_2,param_3);
    }
    if ((char)uVar5 != '\0') {
      *(undefined1 *)((int)this + 0x260) = 1;
    }
    if (*(int *)((int)this + 0x238) != 0) {
      param_2 = FUN_00a9ce20(*(int *)((int)this + 0x218));
      bVar3 = FUN_00a9d0f0(*(int *)((int)this + 0x218));
      param_1 = (char *)CONCAT31(param_1._1_3_,bVar3);
      uVar6 = FUN_00a9d140(*(int *)((int)this + 0x218));
      param_4 = CONCAT31(param_4._1_3_,(char)uVar6);
      FloorLighting_PrepareAndStoreTilePartColor
                (*(void **)((int)this + 0x238),(int)*pcVar1,(int)pcVar1[1],(uint)(byte)pcVar1[2],
                 param_2,param_4,param_1);
    }
  }
  return;
}

