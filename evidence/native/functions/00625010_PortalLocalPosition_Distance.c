/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Custom register ABI: ECX first triple, EAX second
   triple; third DWORD is signed int level (SUB/FILD), not float. x87 result
   sqrt(dx²+dz²+9*dLevel²). */

float __fastcall PortalLocalPosition_Distance(TS3WPortalXZLevel *from,TS3WPortalXZLevel *to)

{
  float fVar1;
  float fVar2;
  float fVar3;
  
  fVar2 = (float)(from->level - to->level);
  fVar1 = from->z - to->z;
  fVar3 = from->x - to->x;
  return SQRT(fVar2 * fVar2 * DAT_00fbd020 + fVar3 * fVar3 + fVar1 * fVar1);
}

