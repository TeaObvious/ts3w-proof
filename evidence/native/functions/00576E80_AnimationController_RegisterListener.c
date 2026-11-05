/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Allocates 16-byte node
   next/previous/listener/token, inserts into intrusive list at controllerListenerInterface+4/+8,
   returns boolean AL. Listener pointer is borrowed: registration performs no AddRef. Requires valid
   list interface; no null guard. Allocation failure returns0. */

bool __thiscall AnimationController_RegisterListener(void *this,int *listener,int token)

{
  int *piVar1;
  
  piVar1 = (int *)FUN_004e4500(0x10,"Animation/DelegateRegistration",0);
  if (piVar1 != (int *)0x0) {
    piVar1[2] = 0;
    piVar1[3] = -1;
    piVar1[2] = (int)listener;
    piVar1[3] = token;
    piVar1[1] = *(int *)((int)this + 8);
    *piVar1 = (int)this + 4;
    *(int **)((int)this + 8) = piVar1;
    *(int **)piVar1[1] = piVar1;
    return true;
  }
  return false;
}

