/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 lot spatial resource / main-entrance boundary review (2026-10-17). ECX routing manager
   plus seven stack words (output pointer, world-surface owner, lot-ID low/high, input pointer,
   height offset, clamp flag); RET0x1C.0062F360 supplies coordinates and rawInt32level; signed
   optional clamp selects max(level,0).Calls00C6A090 with the observed entrance flag tuple, x87-adds
   supplied offset, FSTP stores binary32Y, writesX/Z and returns output pointer inEAX despite
   inferredvoid prototype. No current surface-policy or full numeric parity claim. Complete actual
   C/Listing and pristine PE support the selected observations.
   Names/IDs/prototypes/types/body/bytes/Listing/flow/analysis otherwise remain unchanged; current
   managed resource/cache policy is preserved. */

void __thiscall
LotRouting_ResolvePortalWorldPosition
          (void *this,float *param_1,void *param_2,undefined4 param_3,undefined4 param_4,
          float *param_5,float param_6,char param_7)

{
  int *piVar1;
  float10 fVar2;
  int local_34 [2];
  TS3WPortalXZLevel local_2c;
  float fStack_18;
  float fStack_14;
  
  LotRouteGraph_ApplyInverseLotPositionMatrix
            (this,CONCAT44(param_4,param_3),(TS3WPortalXZLevel *)param_5,&local_2c);
  if (param_7 != '\0') {
    local_34[0] = 0;
    piVar1 = local_34;
    if (-1 < local_2c.level) {
      piVar1 = &local_2c.level;
    }
    local_2c.level = *piVar1;
  }
  fStack_14 = local_2c.x;
  fStack_18 = local_2c.z;
  fVar2 = WorldSurface_QueryHeight
                    (param_2,local_2c.x,local_2c.z,local_2c.level,'\x01','\0',(undefined1 *)0x0,
                     (undefined1 *)0x0,'\0','\x01');
  *param_1 = local_2c.x;
  param_1[1] = (float)(fVar2 + (float10)param_6);
  param_1[2] = fStack_18;
  param_1[3] = fStack_14;
  return;
}

