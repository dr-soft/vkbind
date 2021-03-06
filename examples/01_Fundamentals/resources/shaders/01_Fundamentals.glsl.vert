#version 450

// Vertex Input
layout(location = 0) in vec3 VERT_Position;
layout(location = 1) in vec3 VERT_Color;
layout(location = 2) in vec2 VERT_TexCoord;

// Vertex Output / Fragment Input
layout(location = 0) out vec3 FRAG_Color;
layout(location = 1) out vec2 FRAG_TexCoord;

// Uniforms
layout(set = 1, binding = 0) uniform UBO
{
    vec4 Offset;
} Transform;

void main()
{
    gl_Position   = vec4(VERT_Position, 1) + Transform.Offset;
    FRAG_Color    = VERT_Color;
    FRAG_TexCoord = VERT_TexCoord;
}