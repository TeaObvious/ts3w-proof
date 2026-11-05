/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX filter context, five stack words; RET0x14. Global0115924C gates the initial filter group;
   context+72 receives option bit10 when that group runs. Tests each selected child result in AL and
   returns on failure. Options0x800/0x8000/0x1000000/0x8000000 select further passes, including
   sea-level inputs. The final group still runs when the initial gate is clear. Child semantics and
   option meanings are not established solely by this dispatcher. */

bool __thiscall
NeighborhoodPath_DispatchConditionalFilterPasses
          (void *this,void *param_1,int param_2,int param_3,uint param_4,char param_5)

{
  char cVar1;
  undefined4 uVar2;
  byte bVar3;
  float10 fVar4;
  uint uVar5;
  
  if (DAT_0115924c != '\0') {
    *(byte *)((int)this + 0x72) = (byte)(param_4 >> 10) & 1;
    uVar2 = FUN_00645850(this,(int)param_1);
    if ((char)uVar2 == '\0') {
      return false;
    }
    uVar2 = NeighborhoodPath_DemoteIsolatedConstraintPairs((int)param_1,param_4);
    if ((char)uVar2 == '\0') {
      return false;
    }
    uVar2 = NeighborhoodPath_StraightenWithRunners(this,(int)param_1);
    if ((char)uVar2 == '\0') {
      return false;
    }
    uVar2 = NeighborhoodPath_AdjustCrossingMiddlePoints((int)param_1);
    if ((char)uVar2 == '\0') {
      return false;
    }
    if ((((param_4 & 0x8000) != 0) && ((param_4 & 0x1000000) != 0)) &&
       (uVar2 = FUN_0064c9f0((int)param_1,param_4), (char)uVar2 == '\0')) {
      return false;
    }
    uVar2 = FUN_00645b90(this,(int)param_1,param_2,param_3,param_4);
    if ((char)uVar2 == '\0') {
      return false;
    }
    uVar2 = FUN_00643090(param_1);
    if ((char)uVar2 == '\0') {
      return false;
    }
    if (((param_4 & 0x800) != 0) &&
       (uVar2 = FUN_00643a20((int)param_1,param_3), (char)uVar2 == '\0')) {
      return false;
    }
    uVar2 = FUN_00648730((int)param_1,param_4);
    if ((char)uVar2 == '\0') {
      return false;
    }
    if ((param_4 & 0x8000) != 0) {
      uVar5 = param_4;
      fVar4 = WorldWater_GetSeaLevel(*(int *)this);
      uVar2 = FUN_0064bcb0(this,(int)param_1,(float)fVar4,uVar5);
      if ((char)uVar2 == '\0') {
        return false;
      }
      uVar2 = FUN_0064c450(this,(int)param_1);
      if ((char)uVar2 == '\0') {
        return false;
      }
    }
    if ((param_4 & 0x1000000) != 0) {
      bVar3 = (byte)(param_4 >> 0x1b) & 1;
      uVar5 = param_4;
      fVar4 = WorldWater_GetSeaLevel(*(int *)this);
      uVar2 = FUN_00649460(this,(int)param_1,(float)fVar4,bVar3,uVar5);
      if ((char)uVar2 == '\0') {
        return false;
      }
      uVar2 = FUN_00649e60((int)param_1);
      if ((char)uVar2 == '\0') {
        return false;
      }
      cVar1 = FUN_0064a110(this,(int)param_1);
      if (cVar1 == '\0') {
        return false;
      }
    }
    if (((param_4 & 0x8000000) != 0) &&
       (uVar2 = FUN_0064b1d0(this,(int)param_1), (char)uVar2 == '\0')) {
      return false;
    }
  }
  uVar2 = FUN_0064d040(this,(int)param_1,param_5);
  if ((char)uVar2 == '\0') {
    return false;
  }
  if (((param_4 & 0x800) != 0) &&
     (uVar2 = FUN_0064de30(this,(int)param_1,param_4,param_3), (char)uVar2 == '\0')) {
    return false;
  }
  if (((param_4 & 0x1000000) != 0) && (uVar2 = FUN_0064af10((int)param_1), (char)uVar2 == '\0')) {
    return false;
  }
  uVar2 = FUN_00642600((int)param_1);
  return (char)uVar2 != '\0';
}

