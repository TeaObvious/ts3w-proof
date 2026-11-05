/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TextRenderer_Create. Export ordinal(s): 2472.
   Entry VA: 0x109934f0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000603. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void * TextRenderer_Create(void)

{
  int iVar1;
  void *this;
  
                    /* 0x9934f0  2472  TextRenderer_Create */
  iVar1 = FUN_10918eb0(0xa394,"Renderer/TextRenderer",0);
  if (iVar1 != 0) {
    this = (void *)FUN_10488400(iVar1);
    if (this != (void *)0x0) {
      FUN_104887f0(this,0,(undefined4 *)0x0,0);
    }
    return this;
  }
  return (void *)0x0;
}

