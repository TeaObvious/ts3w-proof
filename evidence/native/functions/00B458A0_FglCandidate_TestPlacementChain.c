/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 FindGoodLocation boundary contract. cdecl2pointers RET, AL Boolean.
   Candidate+14float -> AFBD00 direction stored+20; footprintresource resolved using object+18
   stored+1C, absent ->AL0. If candidatebyte81==0 and AFC090(resource)ALtrue,
   B3B2F0(resource,lot,location,optionalOutput) must ALsucceed. Then
   B45410(candidate,optionalOutput); only nonzeroAL proceeds to B43900; returns that last AL. Exact
   chain/status polarities preserved; do not rename childresults to generic collision success.
   Candidate producers B45930/B45960 and complete childgeometry/depth/intersection rules are
   unexpanded. */

bool __cdecl FglCandidate_TestPlacementChain(int *candidate,void *optionalOutput)

{
  char cVar1;
  undefined1 uVar2;
  uint uVar3;
  void *catalog;
  undefined4 uVar4;
  
  uVar3 = Placement_QuantizeYawToOctant((float)candidate[5]);
  candidate[8] = uVar3;
  catalog = (void *)ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)(*candidate + 0x18));
  candidate[7] = (int)catalog;
  if (catalog == (void *)0x0) {
    return false;
  }
  if (*(char *)((int)candidate + 0x81) == '\0') {
    uVar3 = Catalog_TestPlacementMask403F(catalog);
    if ((char)uVar3 != '\0') {
      uVar4 = FUN_00b3b2f0(candidate[7],candidate[1],(float *)(candidate + 2),optionalOutput);
      if ((char)uVar4 == '\0') {
        return false;
      }
    }
  }
  cVar1 = ObjectPlacement_TestLotAdmission(candidate,optionalOutput);
  uVar2 = 0;
  if (cVar1 != '\0') {
    uVar4 = FUN_00b43900(candidate,optionalOutput);
    uVar2 = (undefined1)uVar4;
  }
  return (bool)uVar2;
}

