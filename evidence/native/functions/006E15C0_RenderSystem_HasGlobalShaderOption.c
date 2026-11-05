/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX owner, UInt32 option hash, RET4. Presence query over UInt32
   vector+238..23C; AL Boolean. Supplies change guards in the seasonal writer. */

bool __thiscall RenderSystem_HasGlobalShaderOption(void *this,int param_1)

{
  int *piVar1;
  
  for (piVar1 = *(int **)((int)this + 0x238);
      (piVar1 != *(int **)((int)this + 0x23c) && (*piVar1 != param_1)); piVar1 = piVar1 + 1) {
  }
  return piVar1 != *(int **)((int)this + 0x23c);
}

