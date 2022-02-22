Shader "Comun/BasicColor"
{
    Properties
    {
        _Albedo("Albedo", Color)=(1,1,1,1)
    }
    SubShader
    {
        Tags{"RenderType"= "Opaque"}
        CGPROGRAM
        #pragma surface surf Lambert
        fixed4 _Albedo;
        struct Input
        {
            float4 color: COLOR;
        };
        void surf(Input IN, inout SurfaceOutput o)
        {
            o.Albedo= _Albedo.rgb;
        }
        ENDCG
    }
}
