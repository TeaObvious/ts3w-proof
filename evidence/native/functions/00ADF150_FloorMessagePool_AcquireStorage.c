/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. Selectedfloorpacketproducerclosure:
   enterscriticalsection011EC5B0, pops freeblock011EC5A0, otherwiseasks poolgrower4E4840 and
   retriesuntilgrowfails, leavescriticalsection andreturnsblockornull. Bodydoesnotreadcallerstack.
   A99C50physicallypushes90hexbytesandcdecl-cleans4 aroundthiscall;
   unusedincomingformalcountcannotbeprovedfromthisleafalone. No hosttexture/GPUresidency or
   managedexceptioncontract inferred. */

undefined4 * FloorMessagePool_AcquireStorage(void)

{
  undefined4 *puVar1;
  int iVar2;
  
  FUN_004e1c00(&DAT_011ec5b0,(uint *)&DAT_01069858);
  do {
    puVar1 = DAT_011ec5a0;
    if (DAT_011ec5a0 != (undefined4 *)0x0) {
      DAT_011ec5a0 = (undefined4 *)*DAT_011ec5a0;
      FUN_004e1cc0((LPCRITICAL_SECTION)&DAT_011ec5b0);
      return puVar1;
    }
    iVar2 = FUN_004e4840(&DAT_011ec590,(undefined4 *)0x0,0);
  } while ((char)iVar2 != '\0');
  FUN_004e1cc0((LPCRITICAL_SECTION)&DAT_011ec5b0);
  return (undefined4 *)0x0;
}

