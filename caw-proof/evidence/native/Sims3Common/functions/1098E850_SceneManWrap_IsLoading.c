/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_IsLoading. Export ordinal(s): 2268.
   Entry VA: 0x1098e850. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000143. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl SceneManWrap_IsLoading(void *param_1)

{
  undefined4 uVar1;
  
                    /* 0x98e850  2268  SceneManWrap_IsLoading */
  uVar1 = FUN_104e9780(param_1,0xffffffff,'\0',(int *)0x0,0);
  return (char)uVar1 != '\0';
}

