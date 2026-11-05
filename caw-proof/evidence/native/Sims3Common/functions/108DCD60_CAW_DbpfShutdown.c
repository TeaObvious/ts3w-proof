/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: If initialized, closes an open database through its
   virtual+1C, destroys resource state through+98, clears auxiliary owner+260 and initialized flag.
   Ordinary last-owner removal invokes this before releasing the manager-held reference.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

undefined4 __fastcall CAW_DbpfShutdown(int *param_1)

{
  int *piVar1;
  undefined4 in_EAX;
  
  if ((char)param_1[3] != '\0') {
    if (param_1[5] != 0) {
      (**(code **)(*param_1 + 0x1c))();
    }
    in_EAX = (**(code **)(*param_1 + 0x98))(param_1[0xb4]);
    param_1[0xb4] = 0;
    piVar1 = (int *)param_1[0x98];
    if (piVar1 != (int *)0x0) {
      param_1[0x98] = 0;
      in_EAX = (**(code **)(*piVar1 + 8))();
    }
    *(undefined1 *)(param_1 + 3) = 0;
  }
  return CONCAT31((int3)((uint)in_EAX >> 8),1);
}

