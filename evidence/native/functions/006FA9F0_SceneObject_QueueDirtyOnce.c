/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Physical ECX object/component, no stack argument, plain RET. Actual dirty node is
   object+18. If its next word is nonzero do nothing; otherwise first self-link both words, then if
   object+30 scene is nonnull call006E3F00(scene,object). A null ECX chooses zero node then
   dereferences it: it is not a safe-null early return. No lock, retain, bounds calculation,
   queue-drain scheduler or GPU completion is implied. Actual00940B10 calls this after its optional
   post-pose callback. */

void __fastcall SceneObject_QueueDirtyOnce(int param_1)

{
  int *piVar1;
  
  if (param_1 == 0) {
    piVar1 = (int *)0x0;
  }
  else {
    piVar1 = (int *)(param_1 + 0x18);
  }
  if (*piVar1 == 0) {
    *piVar1 = (int)piVar1;
    piVar1[1] = (int)piVar1;
    if (*(void **)(param_1 + 0x30) != (void *)0x0) {
      Scene_AppendDirtyObject(*(void **)(param_1 + 0x30),param_1);
    }
  }
  return;
}

