using System;
using System.Reflection;
using System.Runtime.InteropServices;

namespace Sims3.Pipeline;

public class StageOptimizeVertexOrder : Stage
{
	public override void Run(ObjectGraph graph)
	{
		ProcessNodes(graph, ProcessMesh, typeof(Mesh));
	}

	private void ProcessMesh(ObjectGraph graph, object meshNode)
	{
		Mesh mesh = (Mesh)meshNode;
		VertexChannel vertexChannel = mesh.mChannels[0];
		int length = vertexChannel.mData.Length;
		uint[] mIndices = vertexChannel.mIndices;
		uint[] array = new uint[length];
		OptimizeMesh(mIndices, mIndices.Length, length, array);
		VertexChannel[] mChannels = mesh.mChannels;
		foreach (VertexChannel vertexChannel2 in mChannels)
		{
			vertexChannel2.mData = RemapChannelData(vertexChannel2.mData, array, length);
			if (vertexChannel2 != vertexChannel)
			{
				vertexChannel2.mIndices = (uint[])mIndices.Clone();
			}
		}
	}

	private Array RemapChannelData(Array oldData, uint[] newToOldMap, int newVertexCount)
	{
		MethodInfo method = typeof(StageOptimizeVertexOrder).GetMethod("RemapChannelData2", BindingFlags.Static | BindingFlags.NonPublic);
		return (Array)method.MakeGenericMethod(oldData.GetType().GetElementType()).Invoke(null, new object[3] { oldData, newToOldMap, newVertexCount });
	}

	private static T[] RemapChannelData2<T>(T[] oldData, uint[] newToOldMap, int newVertexCount)
	{
		T[] array = new T[newVertexCount];
		for (int i = 0; i < newVertexCount; i++)
		{
			array[i] = oldData[newToOldMap[i]];
		}
		return array;
	}

	[DllImport("Sims3PipelineHelper")]
	private static extern bool OptimizeMesh(uint[] indices, int indexCount, int vertexCount, uint[] vertexRemap);
}
