uniform vec3 color;
uniform sampler2D pointTexture;
uniform float alphaTest;

varying vec3 vColor;

void main() {

    vec4 resultColor = vec4( color * vColor, 1.0 ) * texture2D( pointTexture, gl_PointCoord );

    gl_FragColor = resultColor;
    if ( gl_FragColor.a < alphaTest ) discard;
}
