/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  this = (void *)Graphics_GetManagerSingleton();
  Renderer_GetLogicalDimensions(this,&logicalWidth,&logicalHeight,&local_14);
  (**(code **)(*window + 0x40))(window,&windowLeft);
  *outX = (int)((float)(windowRight - windowLeft) * logicalX) / logicalWidth;
  *outY = (int)((float)(windowBottom - windowTop) * logicalY) / logicalHeight;
  return;
}

