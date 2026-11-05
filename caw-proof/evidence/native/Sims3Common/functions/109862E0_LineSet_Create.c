/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LineSet_Create. Export ordinal(s): 1879. Entry
   VA: 0x109862e0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060008FC. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 LineSet_Create(void)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  
                    /* 0x9862e0  1879  LineSet_Create */
  puVar1 = (undefined4 *)FUN_10918eb0(0x1c,"Renderer/LineSet",0);
  if (puVar1 != (undefined4 *)0x0) {
    uVar2 = FUN_104bef50(puVar1);
    return uVar2;
  }
  return 0;
}

