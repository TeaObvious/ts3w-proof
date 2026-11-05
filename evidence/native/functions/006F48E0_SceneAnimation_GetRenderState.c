/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 actual scene animation render-state getter. ECX component, no stack arguments,
   plain RET; EAX returns the DWORD pointer at receiver+298 directly without retain, allocation,
   generation/key validation or null guard. It is a borrowed view of the separately uniquely owned
   native render-state allocation. Selected callers include009409F0 creation/input binding
   and00940B10 pose evaluation. This field is not the current host GUID-to-shared-model lease
   dictionary. */

undefined4 __fastcall SceneAnimation_GetRenderState(int param_1)

{
  return *(undefined4 *)(param_1 + 0x298);
}

