/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC 1.67 bounded physical function. SPT2 factory allocation of a constructor-initialized
   0x80-byte template; returns its resource interface at object+8. No explicit stack arguments; EAX
   pointer/zero. Allocation failure is preserved. The stored decompiler signature is inferred and is
   not an independently established foreign prototype. Full owned range 00715ae0..00715b13;
   instruction bytes unchanged. */

int TreeTemplate_AllocateDefaultResourceOwner(void)

{
  undefined4 *puVar1;
  int iVar2;
  
  puVar1 = (undefined4 *)FUN_004e4520(0x80,0x10,0,"SpeedTree/TemplateData",0);
  if (puVar1 != (undefined4 *)0x0) {
    iVar2 = TreeTemplate_ConstructDefault(puVar1);
    if (iVar2 != 0) {
      return iVar2 + 8;
    }
  }
  return 0;
}

