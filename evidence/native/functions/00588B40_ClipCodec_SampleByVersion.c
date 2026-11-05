/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst name. thiscall codec owner in ECX plus pose,clipSeconds,boneMap,mirror arguments. DWORD
   codec+8==1 routes to005861E0; all other values route to00586760. This switch is the direct
   producer call for the reviewed sampler, not proof all other serialized versions are accepted.
   Version1 sampler remains outside this localized review. */

void __thiscall
ClipCodec_SampleByVersion(void *this,void *param_1,float param_2,int param_3,char param_4)

{
  if (*(int *)((int)this + 8) == 1) {
    FUN_005861e0((int)this,param_1,param_2,param_3,param_4);
    return;
  }
  ClipCodec_SampleLocalPose(this,param_1,param_2,(int *)param_3,(bool)param_4);
  return;
}

