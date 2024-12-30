#version 300 es
#extension GL_OES_EGL_image_external_essl3 : enable

uniform samplerExternalOES tex;
uniform vec4 crop; // (cropLeft, cropTop, cropRight, cropBottom)

in vec2 uv;
out vec4 out_color;

void main() {
    vec2 croppedTexCoord = mix(crop.xy, crop.zw, uv);
    out_color = texture(tex, croppedTexCoord);
}
