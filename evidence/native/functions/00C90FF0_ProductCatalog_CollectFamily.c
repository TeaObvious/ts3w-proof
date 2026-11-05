/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role names except retained registered
   export. Physical thiscall ECXcatalog,familyDWORD,outVector pointer; allRET8. Unsigned family>32
   returns without appending;33selectorbytes choose18targets via C911BC/C91174. Cases0
   wall;1patternbank2;2bank1;3foundation;4and20objects;6roof;7roofpattern;8fence;15sculpt;16stairs;17railing;18paint;19fireplace;23water;31curvedpool;32curvedfountain.
   Family25/26 are not dispatched here; wrapper CEA960 separately handles26 via family8 filter. No
   CLR refresh/signature/all12resource scan/reject logging/dedup/cache publication is established by
   this native dispatcher. */

void __thiscall ProductCatalog_CollectFamily(void *this,uint family,void *outVector)

{
  uint local_50 [8];
  undefined4 local_30;
  undefined4 local_8;
  
  switch(family) {
  case 0:
    FUN_00c8fc20(this,outVector);
    return;
  case 1:
    FUN_00c8fdf0(this,2,outVector);
    return;
  case 2:
    FUN_00c8fdf0(this,1,outVector);
    return;
  case 3:
    FUN_00c8ff10(this,outVector);
    return;
  case 4:
    FUN_00828c90(local_50);
    local_8 = 0x10;
    ObjectCatalog_CollectFilteredProducts(this,local_50,outVector);
    return;
  case 6:
    FUN_00c902b0(this,outVector);
    return;
  case 7:
    FUN_00c90380(this,outVector);
    return;
  case 8:
    FUN_00c8fc70(this,outVector);
    return;
  case 0xf:
    FUN_00c904e0(this,outVector);
    return;
  case 0x10:
    FUN_00c8fcd0(this,outVector);
    return;
  case 0x11:
    FUN_00c8fd30(this,outVector);
    return;
  case 0x12:
    FUN_00c90540(this,outVector);
    return;
  case 0x13:
    FUN_00c8fd90(this,outVector);
    return;
  case 0x14:
    FUN_00828c90(local_50);
    local_30 = 0x10;
    ObjectCatalog_CollectFilteredProducts(this,local_50,outVector);
    break;
  case 0x17:
    FUN_00c90610(this,outVector);
    return;
  case 0x1f:
    FUN_00c903e0(this,outVector);
    return;
  case 0x20:
    FUN_00c90460(this,outVector);
    return;
  }
  return;
}

