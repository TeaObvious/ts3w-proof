/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX child Transform receiver, five stack words
   forwarded to958D90; RET14h. Pushes two additional trailing words0 then0 before forwarding the
   original five, yielding ordinary point mode and final0. Only caller582E2F is the saved
   ordinary-parent branch of582D40. No preliminary detach/clear or separate callback is performed in
   this wrapper. Callee admission, ownership and same-point handling remain958D90 responsibilities;
   inferred types are unchanged. */

void __thiscall
AnimationScene_RestoreOrdinaryParentPoint
          (void *this,void *param_1,int *param_2,float *param_3,char param_4,char param_5)

{
  TransformComponent_AttachToSlotPoint(this,param_1,param_2,param_3,param_4,param_5,'\0','\0');
  return;
}

