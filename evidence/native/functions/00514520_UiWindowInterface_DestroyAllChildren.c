/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX parent IWindow, no incoming words/plainRET. Actual
   child-list sentinel is interface+20C (complete+210). Repeatedly fetch current first node, convert
   node-8 to complete and +4 to child IWindow, invoke parent virtualE4(DestroyChild), then reread
   sentinel until empty. This is live destructive traversal, not a prebuilt CLR child array. Actual
   generic IWindow table slotsE0/E4/E8 join514490/5144D0/514520. */

void __thiscall UiWindowInterface_DestroyAllChildren(void *this)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = *(int **)((int)this + 0x210);
  while (piVar1 != (int *)((int)this + 0x20c)) {
    iVar2 = *(int *)((int)this + 0x20c);
    if ((iVar2 == 0) || (iVar2 == 8)) {
      iVar2 = 0;
    }
    else {
      iVar2 = iVar2 + -4;
    }
    (**(code **)(*(int *)this + 0xe4))(iVar2);
    piVar1 = *(int **)((int)this + 0x210);
  }
  return;
}

