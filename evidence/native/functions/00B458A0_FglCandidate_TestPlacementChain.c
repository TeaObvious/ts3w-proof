/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  bool bVar1;
  char cVar2;
  undefined1 uVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  
  uVar4 = FUN_00afbd00((float)candidate[5]);
  candidate[8] = uVar4;
  iVar5 = FUN_00c8ebb0(DAT_011ee034,(uint *)(*candidate + 0x18));
  candidate[7] = iVar5;
  if (iVar5 == 0) {
    return false;
  }
  if (*(char *)((int)candidate + 0x81) == '\0') {
    bVar1 = FUN_00afc090(iVar5);
    if (bVar1) {
      uVar6 = FUN_00b3b2f0(candidate[7],candidate[1],(float *)(candidate + 2),optionalOutput);
      if ((char)uVar6 == '\0') {
        return false;
      }
    }
  }
  cVar2 = FUN_00b45410(candidate,optionalOutput);
  uVar3 = 0;
  if (cVar2 != '\0') {
    uVar6 = FUN_00b43900(candidate,optionalOutput);
    uVar3 = (undefined1)uVar6;
  }
  return (bool)uVar3;
}

