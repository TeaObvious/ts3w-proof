/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TextureDatabase_Create. Export ordinal(s): 2499.
   Entry VA: 0x10994540. Original managed P/Invoke MethodDef(s): WorldBuilderCS:0x0600032E. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * TextureDatabase_Create(void)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
                    /* 0x994540  2499  TextureDatabase_Create */
  puVar2 = (undefined4 *)FUN_10918eb0(0x68,"Scratch/TextureDatabase",0);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 0;
    puVar2[2] = &PTR_LAB_10ab59dc;
    *puVar2 = &PTR_FUN_10b9773c;
    puVar2[2] = &PTR_LAB_10b97718;
    puVar1 = puVar2 + 4;
    puVar2[3] = 0;
    puVar2[6] = "Scratch/TextureDatabase/ToDelete";
    *puVar1 = puVar1;
    puVar2[5] = puVar1;
    FUN_10522410(puVar2 + 8);
    puVar2[1] = puVar2[1] + 1;
    return puVar2;
  }
  return (undefined4 *)0x0;
}

