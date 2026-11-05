/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. No stack arguments. Check service9430C3C4, allocate0x20
   and construct/register if absent. Allocation failure passes null into generic registration;
   complete allocation failure behavior not established. */

void NameGuidMaps_RegisterIfAbsent(void)

{
  void *this;
  undefined4 uVar1;
  void *this_00;
  int *piVar2;
  
  this = DAT_011cf3f4;
  uVar1 = FUN_0059f7e0(DAT_011cf3f4,-0x6bcf3c3c);
  if ((char)uVar1 == '\0') {
    this_00 = (void *)FUN_004e4500(0x20,"ResourceSystem/NameGuidMap/Service",0);
    if (this_00 != (void *)0x0) {
      piVar2 = NameGuidMaps_Construct(this_00);
      FUN_0059fd00(this,piVar2,0);
      return;
    }
    FUN_0059fd00(this,(int *)0x0,0);
  }
  return;
}

