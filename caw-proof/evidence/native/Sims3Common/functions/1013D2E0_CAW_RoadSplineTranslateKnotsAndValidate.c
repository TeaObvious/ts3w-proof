/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: When unlocked, directly adds the four knot deltas without
   calling the absolute setter or nudging coincident knots. Refreshes geometry/moving state, rejects
   either endpoint curvature outside[0,runtime binary32 one-sixth] through0x1013B4D0, then rejects
   self-overlap through virtual+5C=0x1013E5D0. Mutation precedes rejection. Original managed
   CmdTranslateSplineKnots restores saved absolute knots on false. Analyst-assigned helper names are
   not recovered original symbols. Original instructions govern decompiler ABI/register artifacts.
    */

uint __thiscall
CAW_RoadSplineTranslateKnotsAndValidate
          (void *this,float *param_1,float *param_2,float *param_3,float *param_4,char param_5)

{
  float *pfVar1;
  void *this_00;
  float fVar2;
  float fVar3;
  char cVar4;
  uint in_EAX;
  uint extraout_EAX;
  uint extraout_EAX_00;
  float10 fVar5;
  float fVar6;
  
  if (*(char *)((int)this + 0x24) == '\0') {
    this_00 = *(void **)(DAT_10c700c4 + 0x5c);
    if (*(char *)((int)this + 0xc) == '\0') {
      FUN_10140ff0(this_00,(float *)((int)this + 0x10));
    }
    *(char *)((int)this + 0xc) = param_5;
    fVar6 = param_1[1];
    fVar2 = param_1[2];
    fVar3 = param_1[3];
    *(float *)((int)this + 0x30) = *(float *)((int)this + 0x30) + *param_1;
    *(float *)((int)this + 0x34) = *(float *)((int)this + 0x34) + fVar6;
    *(float *)((int)this + 0x38) = *(float *)((int)this + 0x38) + fVar2;
    *(float *)((int)this + 0x3c) = *(float *)((int)this + 0x3c) + fVar3;
    fVar6 = param_2[1];
    fVar2 = param_2[2];
    fVar3 = param_2[3];
    *(float *)((int)this + 0x40) = *param_2 + *(float *)((int)this + 0x40);
    *(float *)((int)this + 0x44) = fVar6 + *(float *)((int)this + 0x44);
    *(float *)((int)this + 0x48) = fVar2 + *(float *)((int)this + 0x48);
    *(float *)((int)this + 0x4c) = fVar3 + *(float *)((int)this + 0x4c);
    fVar6 = param_3[1];
    fVar2 = param_3[2];
    fVar3 = param_3[3];
    pfVar1 = (float *)((int)this + 0x50);
    *pfVar1 = *param_3 + *(float *)((int)this + 0x50);
    *(float *)((int)this + 0x54) = fVar6 + *(float *)((int)this + 0x54);
    *(float *)((int)this + 0x58) = fVar2 + *(float *)((int)this + 0x58);
    *(float *)((int)this + 0x5c) = fVar3 + *(float *)((int)this + 0x5c);
    fVar6 = param_4[1];
    fVar2 = param_4[2];
    fVar3 = param_4[3];
    *(float *)((int)this + 0x60) = *(float *)((int)this + 0x60) + *param_4;
    *(float *)((int)this + 100) = *(float *)((int)this + 100) + fVar6;
    *(float *)((int)this + 0x68) = *(float *)((int)this + 0x68) + fVar2;
    *(float *)((int)this + 0x6c) = *(float *)((int)this + 0x6c) + fVar3;
    (**(code **)(*(int *)this + 0x44))();
    if (param_5 == '\0') {
      FUN_10140ff0(this_00,(float *)((int)this + 0x10));
    }
    fVar5 = CAW_RoadSplineEndpointCurvature
                      ((float *)((int)this + 0x30),(float *)((int)this + 0x40),pfVar1);
    in_EAX = extraout_EAX;
    if (((float10)0 <= fVar5) && ((float)fVar5 <= DAT_10c6f7c8)) {
      fVar6 = DAT_10c6f7c8;
      fVar5 = CAW_RoadSplineEndpointCurvature
                        ((float *)((int)this + 0x60),pfVar1,(float *)((int)this + 0x40));
      in_EAX = extraout_EAX_00;
      if (((float10)0 <= fVar5) && ((float)fVar5 <= fVar6)) {
        cVar4 = (**(code **)(*(int *)this + 0x5c))();
        return (uint)(cVar4 == '\0');
      }
    }
  }
  return in_EAX & 0xffffff00;
}

