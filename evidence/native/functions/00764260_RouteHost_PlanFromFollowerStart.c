/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Produces follower start-candidate vector via0075d9b0. Failure
   code copied directly to result.type; no destination expansion on failure. Success calls00760770.
   All temporary candidate allocation is freed on return. */

int * __thiscall RouteHost_PlanFromFollowerStart(void *this,int *param_1)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int local_58 [3];
  char *local_4c;
  int local_48 [18];
  
  local_58[0] = 0;
  local_58[1] = 0;
  local_58[2] = 0;
  local_4c = "Routing/RoutingHost/startPoints";
  local_48[0] = 2;
  local_48[1] = 0;
  local_48[3] = 0;
  local_48[4] = 0;
  local_48[5] = 0;
  local_48[6] = 0;
  local_48[7] = 0;
  local_48[8] = 0;
  local_48[9] = 0;
  local_48[10] = 0;
  local_48[0xb] = 0;
  local_48[0xc] = 0;
  local_48[0xd] = 0;
  local_48[0xe] = 0;
  local_48[0xf] = 0;
  local_48[0x10] = 0;
  iVar1 = RouteHost_BuildFollowerStartCandidate(this,local_58,local_48 + 8);
  if (iVar1 != 1) {
    local_48[0] = iVar1;
    piVar2 = local_48;
    piVar3 = param_1;
    for (iVar1 = 0x12; iVar1 != 0; iVar1 = iVar1 + -1) {
      *piVar3 = *piVar2;
      piVar2 = piVar2 + 1;
      piVar3 = piVar3 + 1;
    }
    if (local_58[0] != 0) {
      FUN_004e44e0(local_58[0]);
    }
    return param_1;
  }
  RouteHost_PlanFromStartCandidates(this,param_1,local_58);
  if (local_58[0] != 0) {
    FUN_004e44e0(local_58[0]);
  }
  return param_1;
}

