/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Returns unchanged when lock byte+24 is set. Otherwise
   copies four knot vectors then tests planar coincidence in this order: equal endpoints nudge endX
   by binary32 0.01; first handle equal start adds0.01*(possibly adjusted end-start); last handle
   equal the possibly adjusted end adds0.01*(start-end). Refreshes geometry through virtual+44. This
   adjustment is used by the constructor and absolute setter; the delta worker0x1013D2E0 adds
   directly and does not perform it. Analyst-assigned helper names are not recovered original
   symbols. Original instructions govern decompiler ABI/register artifacts. */

void __thiscall
CAW_RoadSplineSetKnotsWhenUnlocked(void *this,int *param_1,int *param_2,int *param_3,int *param_4)

{
  void *this_00;
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  int iVar4;
  int iVar5;
  int iVar6;
  float fVar7;
  undefined4 uVar8;
  
  if (*(char *)((int)this + 0x24) == '\0') {
    this_00 = *(void **)(DAT_10c700c4 + 0x5c);
    FUN_10140ff0(this_00,(float *)((int)this + 0x10));
    fVar7 = DAT_10acf464;
    iVar4 = param_1[1];
    iVar5 = param_1[2];
    iVar6 = param_1[3];
    *(int *)((int)this + 0x30) = *param_1;
    *(int *)((int)this + 0x34) = iVar4;
    *(int *)((int)this + 0x38) = iVar5;
    *(int *)((int)this + 0x3c) = iVar6;
    iVar4 = param_2[1];
    iVar5 = param_2[2];
    iVar6 = param_2[3];
    *(int *)((int)this + 0x40) = *param_2;
    *(int *)((int)this + 0x44) = iVar4;
    *(int *)((int)this + 0x48) = iVar5;
    *(int *)((int)this + 0x4c) = iVar6;
    iVar4 = param_3[1];
    iVar5 = param_3[2];
    iVar6 = param_3[3];
    *(int *)((int)this + 0x50) = *param_3;
    *(int *)((int)this + 0x54) = iVar4;
    *(int *)((int)this + 0x58) = iVar5;
    *(int *)((int)this + 0x5c) = iVar6;
    iVar4 = param_4[1];
    iVar5 = param_4[2];
    iVar6 = param_4[3];
    *(int *)((int)this + 0x60) = *param_4;
    *(int *)((int)this + 100) = iVar4;
    *(int *)((int)this + 0x68) = iVar5;
    *(int *)((int)this + 0x6c) = iVar6;
    auVar1._4_4_ = -(uint)(*(float *)((int)this + 100) == *(float *)((int)this + 0x34));
    auVar1._0_4_ = -(uint)(*(float *)((int)this + 0x60) == *(float *)((int)this + 0x30));
    auVar1._8_4_ = -(uint)(*(float *)((int)this + 0x68) == *(float *)((int)this + 0x38));
    auVar1._12_4_ = -(uint)(*(float *)((int)this + 0x6c) == *(float *)((int)this + 0x3c));
    uVar8 = movmskps(param_2,auVar1);
    if (((byte)uVar8 & 3) == 3) {
      *(float *)((int)this + 0x60) = fVar7 + *(float *)((int)this + 0x60);
      *(undefined4 *)((int)this + 100) = *(undefined4 *)((int)this + 100);
      *(undefined4 *)((int)this + 0x68) = *(undefined4 *)((int)this + 0x68);
      *(undefined4 *)((int)this + 0x6c) = *(undefined4 *)((int)this + 0x6c);
    }
    auVar2._4_4_ = -(uint)(*(float *)((int)this + 0x44) == *(float *)((int)this + 0x34));
    auVar2._0_4_ = -(uint)(*(float *)((int)this + 0x40) == *(float *)((int)this + 0x30));
    auVar2._8_4_ = -(uint)(*(float *)((int)this + 0x48) == *(float *)((int)this + 0x38));
    auVar2._12_4_ = -(uint)(*(float *)((int)this + 0x4c) == *(float *)((int)this + 0x3c));
    uVar8 = movmskps(param_3,auVar2);
    if (((byte)uVar8 & 3) == 3) {
      *(float *)((int)this + 0x40) =
           (*(float *)((int)this + 0x60) - *(float *)((int)this + 0x30)) * fVar7 +
           *(float *)((int)this + 0x40);
      *(float *)((int)this + 0x44) =
           (*(float *)((int)this + 100) - *(float *)((int)this + 0x34)) * fVar7 +
           *(float *)((int)this + 0x44);
      *(float *)((int)this + 0x48) =
           (*(float *)((int)this + 0x68) - *(float *)((int)this + 0x38)) * fVar7 +
           *(float *)((int)this + 0x48);
      *(float *)((int)this + 0x4c) =
           (*(float *)((int)this + 0x6c) - *(float *)((int)this + 0x3c)) * fVar7 +
           *(float *)((int)this + 0x4c);
    }
    auVar3._4_4_ = -(uint)(*(float *)((int)this + 0x54) == *(float *)((int)this + 100));
    auVar3._0_4_ = -(uint)(*(float *)((int)this + 0x50) == *(float *)((int)this + 0x60));
    auVar3._8_4_ = -(uint)(*(float *)((int)this + 0x58) == *(float *)((int)this + 0x68));
    auVar3._12_4_ = -(uint)(*(float *)((int)this + 0x5c) == *(float *)((int)this + 0x6c));
    uVar8 = movmskps(param_4,auVar3);
    if (((byte)uVar8 & 3) == 3) {
      *(float *)((int)this + 0x50) =
           (*(float *)((int)this + 0x30) - *(float *)((int)this + 0x60)) * fVar7 +
           *(float *)((int)this + 0x50);
      *(float *)((int)this + 0x54) =
           (*(float *)((int)this + 0x34) - *(float *)((int)this + 100)) * fVar7 +
           *(float *)((int)this + 0x54);
      *(float *)((int)this + 0x58) =
           (*(float *)((int)this + 0x38) - *(float *)((int)this + 0x68)) * fVar7 +
           *(float *)((int)this + 0x58);
      *(float *)((int)this + 0x5c) =
           (*(float *)((int)this + 0x3c) - *(float *)((int)this + 0x6c)) * fVar7 +
           *(float *)((int)this + 0x5c);
    }
    (**(code **)(*(int *)this + 0x44))();
    FUN_10140ff0(this_00,(float *)((int)this + 0x10));
  }
  return;
}

