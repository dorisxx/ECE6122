#version 410

out vec4 colorOut;
uniform double screen_ratio;
uniform dvec2 screen_size;
uniform dvec2 center;
uniform double zoom;
uniform int itr;
uniform sampler2D tex;
uniform int expo;

vec4 map_to_color(float t, vec2 cord) {
    float r = 9.0 * (1.0 - t) * t * t * t;
    float g = 15.0 * (1.0 - t) * (1.0 - t) * t * t;
    float b = 8.5 * (1.0 - t) * (1.0 - t) * (1.0 - t) * t;
    if(cord.x<0 && cord.y<0){
    return texture(tex, cord*3);}
    else{
    return vec4(r, g, b, 1.0);}


}

double real(double zx, double zy, int n){
    int i;
    double r = zx;
    double temp;
    double im = zy;

    for(i=0;i<n-1;i++){
        temp = r;
        r = r*zx-im*zy;
        im = temp*zy+im*zx;

    }

    return r;

}

double imaginary(double zx, double zy, int n){
    int i;
    double r = zx;
    double temp;
    double im = zy;

    for(i=0;i<n-1;i++){
        temp = r;
        r = r*zx-im*zy;
        im = temp*zy+im*zx;
    }
    return im;
}

void main()
{
    dvec2 z, c;
    vec2 coord;

    z.x = screen_ratio * (gl_FragCoord.x / screen_size.x - 0.5);
    z.y = (gl_FragCoord.y / screen_size.y - 0.5);

    z.x /= zoom;
    z.y /= zoom;

    z.x += center.x;
    z.y += center.y;

    c.x = -0.6;
    c.y = 0.4;
    int i;
    for(i = 0; i < itr; i++) {
        //double x = (z.x * z.x  - z.y * z.y) + c.x;
		//double y = (z.y * z.x + z.y * z.x) + c.y;

		double x = real(z.x,z.y,expo)+c.x;
		double y = imaginary(z.x,z.y,expo)+c.y;


		if((x * x   + y * y ) > 2.0) break;
		z.x= x;
		z.y = y;
    }

    double t = double(i) / double(itr);
    coord = vec2(gl_FragCoord.x/ screen_size.x, 1-(gl_FragCoord.y/ screen_size.y));
    colorOut = map_to_color(float(t),coord);
}
