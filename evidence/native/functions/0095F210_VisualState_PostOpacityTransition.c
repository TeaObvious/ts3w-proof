/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original instruction review. cdecl(object,payload16). Copies ownerGUID at+8/+C and
   all4 payloadDWORDs into renderer message048A2325 (payload becomes+10..1F). Byteflag's padding
   copied but not semantic. Posts via00693380 and releases message companion ifpresent. Message
   transport scheduling/ownership not fully resolved. */

void __cdecl VisualState_PostOpacityTransition(void *object,uint *payload16)

{
  undefined4 local_60;
  undefined **local_5c;
  undefined4 local_58;
  undefined4 local_54;
  uint local_50;
  uint local_4c;
  uint local_48;
  uint local_44;
  
  local_58 = *(undefined4 *)((int)object + 8);
  local_54 = *(undefined4 *)((int)object + 0xc);
  local_50 = *payload16;
  local_4c = payload16[1];
  local_48 = payload16[2];
  local_44 = payload16[3];
  local_60 = 0x48a2325;
  local_5c = &PTR_PTR_01156b3c;
  FUN_00693380(&local_60);
  if (local_5c != (undefined **)0x0) {
    (**(code **)*local_5c)(&local_50);
  }
  return;
}

