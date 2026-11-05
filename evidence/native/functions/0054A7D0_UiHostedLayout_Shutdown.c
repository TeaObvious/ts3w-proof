/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Actual installed layout primary+8, ECX layout, no stack
   words/plainRET or tail Release. Call549DD0->549D80 whose virtual10 destroys roots, then reread
   host+98. If nonnull clear+98 BEFORE tail virtual4 release of retained host. Current Root
   map/lease/ShutdownLayout policy differs; original host ownership is an actual retained IWindow.
    */

void __thiscall UiHostedLayout_Shutdown(void *this)

{
  int *piVar1;
  
  UiLayout_ShutdownBaseState(this);
  piVar1 = *(int **)((int)this + 0x98);
  if (piVar1 != (int *)0x0) {
    *(undefined4 *)((int)this + 0x98) = 0;
                    /* WARNING: Could not recover jumptable at 0x0054a7f2. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 4))();
    return;
  }
  return;
}

