using System.Runtime.InteropServices;
using Sims3.Pipeline.ModelFormat;

namespace Sims3.Pipeline;

public class StageConvertTristrips : Stage
{
	private const uint RESTART_VAL_8BIT = 255u;

	private const uint RESTART_VAL_16BIT = 65535u;

	private const uint RESTART_VAL_32BIT = uint.MaxValue;

	[DllImport("Sims3PipelineHelper.dll")]
	private static extern void TS_CreateTriStrip(uint[] indices, uint numIndices, bool useRestartValue, uint restartValue, uint cacheSize);

	[DllImport("Sims3PipelineHelper.dll")]
	private static extern void TS_CopyIndexBuffer(uint[] dest_buffer);

	[DllImport("Sims3PipelineHelper.dll")]
	private static extern void TS_FreeGeneratedBuffers();

	[DllImport("Sims3PipelineHelper.dll")]
	private static extern uint TS_GetNumTriStripIndices();

	[DllImport("Sims3PipelineHelper.dll")]
	private static extern uint TS_NumStripsGenerated();

	private void ProcessModel(Model model)
	{
		ModelLOD[] mLods = model.mLods;
		foreach (ModelLOD modelLOD in mLods)
		{
			Mesh[] mMeshes = modelLOD.mMeshes;
			foreach (Mesh mesh in mMeshes)
			{
				if (mesh.mChannels[0].mIndices != null && mesh.mChannels[0].mIndices.Length > 0 && mesh.mPerformTristripping)
				{
					bool useRestartValue = false;
					uint cacheSize = 24u;
					TS_CreateTriStrip(mesh.mChannels[0].mIndices, (uint)mesh.mChannels[0].mIndices.Length, useRestartValue, 65535u, cacheSize);
					uint num = TS_GetNumTriStripIndices();
					mesh.mChannels[0].mIndices = new uint[num];
					TS_CopyIndexBuffer(mesh.mChannels[0].mIndices);
					VertexChannel[] mChannels = mesh.mChannels;
					foreach (VertexChannel vertexChannel in mChannels)
					{
						vertexChannel.mIndices = mesh.mChannels[0].mIndices;
					}
					TS_FreeGeneratedBuffers();
					TS_NumStripsGenerated();
					mesh.mPrimitiveType = ModelPrimitiveType.TriangleStrip;
				}
			}
		}
	}

	public override void Run(ObjectGraph graph)
	{
		foreach (object @object in graph.Objects)
		{
			if (@object is Model model)
			{
				ProcessModel(model);
			}
		}
	}
}
