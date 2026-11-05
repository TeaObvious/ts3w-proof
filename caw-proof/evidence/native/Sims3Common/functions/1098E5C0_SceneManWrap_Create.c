/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_Create. Export ordinal(s): 2247.
   Entry VA: 0x1098e5c0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000135. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl SceneManWrap_Create(char param_1)

{
  undefined4 *puVar1;
  
                    /* 0x98e5c0  2247  SceneManWrap_Create */
  puVar1 = (undefined4 *)FUN_10918eb0(0x560,"SceneManWrap_Create",0);
  if (puVar1 == (undefined4 *)0x0) {
    puVar1 = (undefined4 *)0x0;
  }
  else {
    puVar1 = FUN_104e51d0(puVar1);
  }
  if (param_1 != '\0') {
    FUN_104de3b0(puVar1);
  }
  *(undefined1 *)((int)puVar1 + 0x26a) = 1;
  return puVar1;
}

