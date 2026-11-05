/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Physical ECX scene component, no own stack arguments, plain RET. Read callback
   pointer+2B4, skip if null; otherwise PUSH ECX, CALL EAX, POP ECX. The actual callback gets the
   component stack word and caller restores ECX; no inferred deeper callback implementation,
   retention, locking or safe-reentrance rule. Selected00940B10 invokes it after00573430 pose
   publication and006FC770 attachment propagation, before006FA9F0 dirty admission. */

void __fastcall SceneAnimation_InvokePostPoseCallback(int param_1)

{
  if (*(code **)(param_1 + 0x2b4) != (code *)0x0) {
                    /* Actual nullable callback receives pushed component; CALL EAX followed by POP
                       ECX, target implementation unresolved. */
    (**(code **)(param_1 + 0x2b4))(param_1);
  }
  return;
}

