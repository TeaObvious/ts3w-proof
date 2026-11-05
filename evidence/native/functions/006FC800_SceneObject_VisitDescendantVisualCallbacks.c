/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original instruction review. Walks child intrusive list rootedthis+194, invokes
   each child virtual+5C, then recursively visits descendants. Full concrete callback targets/graph
   cycles not established by this bounded analysis. */

void __thiscall SceneObject_VisitDescendantVisualCallbacks(void *this)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  int *this_00;
  
  puVar1 = (undefined4 *)((int)this + 0x194);
  if (*(undefined4 **)((int)this + 0x198) != puVar1) {
    for (puVar2 = (undefined4 *)*puVar1; puVar2 != puVar1; puVar2 = (undefined4 *)*puVar2) {
      if (puVar2 == (undefined4 *)0x0) {
        this_00 = (int *)0x0;
      }
      else {
        this_00 = puVar2 + -8;
      }
      (**(code **)(*this_00 + 0x5c))();
      SceneObject_VisitDescendantVisualCallbacks(this_00);
    }
  }
  return;
}

