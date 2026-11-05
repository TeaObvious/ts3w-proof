/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Reverse logical-to-physical warp conversion. Original truncates
   logicalCoordinate*windowDimension to int then performs signed integer division by logical
   dimension. Returns through two output pointers. This ABI is confirmed by caller pushes and
   original ret; earlier threeargument decompilation was incorrect. */

void __cdecl InputService_LogicalToPixels(int *outX,int *outY,float logicalX,float logicalY)

{
  int *window;
  void *this;
  int logicalWidth;
  int logicalHeight;
  undefined4 local_14;
  int windowLeft;
  int windowTop;
  int windowRight;
  int windowBottom;

  window = DAT_011cebd0;
  this = (void *)FUN_0060e910();
  Renderer_GetLogicalDimensions(this,&logicalWidth,&logicalHeight,&local_14);
  (**(code **)(*window + 0x40))(window,&windowLeft);
  *outX = (int)((float)(windowRight - windowLeft) * logicalX) / logicalWidth;
  *outY = (int)((float)(windowBottom - windowTop) * logicalY) / logicalHeight;
  return;
}

