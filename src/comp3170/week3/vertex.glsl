#version 410

in vec4 a_position; // vertex position as a homogenous vector in NDC 
in vec3 a_colour;   // vertex colour RGB

uniform mat4 u_modelMatrix; // model matrix

out vec3 v_colour; // to fragment shader

void main() {
    v_colour = a_colour;

    // transform the vertex position using the model matrix
    gl_Position = u_modelMatrix * a_position;
}