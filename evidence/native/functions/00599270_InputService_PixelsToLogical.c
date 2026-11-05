/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Converts physical integer pointer coordinates to renderer logical
   coordinates: float(logicalWidth*pixelX)/windowWidth and float(logicalHeight*pixelY)/windowHeight.
   Width/height come from renderer0060ED00 and windowinterface+40 rectangle. Original integer
   multiplication precedes float conversion; no evidence for treating a physical pixel as one
   logical unit at arbitrary window scale. */

void __cdecl InputService_PixelsToLogical(float *outX,float *outY,int pixelX,int pixelY)

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
  *outX = (float)(logicalWidth * pixelX) / (float)(windowRight - windowLeft);
  *outY = (float)(logicalHeight * pixelY) / (float)(windowBottom - windowTop);
  return;
}

