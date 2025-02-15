#version 450

layout(constant_id = 4) const uint _2 = 0u;

struct _49
{
    float _m0;
    float _m1;
    float _m2;
    float _m3;
};

const float _438[4] = float[](-0.01171875, 0.00390625, 0.01171875, -0.00390625);

layout(set = 1, binding = 1, std140) uniform _43_45
{
    float _m0;
    float _m1;
    float _m2;
    float _m3;
    float _m4;
} _45;

layout(set = 0, binding = 0, std140) uniform _50_52
{
    vec4 _m0;
    uint _m1;
    uint _m2;
    int _m3;
    int _m4;
    ivec4 _m5;
    uvec4 _m6;
    _49 _m7;
} _52;

layout(set = 2, binding = 1) uniform sampler2D _7;
layout(set = 2, binding = 2) uniform sampler2D _8;

layout(location = 0) in vec4 _11;
layout(location = 1) in vec4 _12;
layout(location = 2) in vec4 _13;
layout(location = 3) in vec3 _16;
layout(location = 4) in vec3 _17;
layout(location = 5) in vec3 _18;
layout(location = 6) in vec3 _19;
layout(location = 7) in vec3 _20;
layout(location = 0) out vec4 _22;
layout(location = 1) out vec4 _23;
float _25;
vec3 _27;
vec2 _30;
vec2 _31;
vec4 _33;
vec3 _34;
float _35;
bool _38;
vec3 _39;
float _40;
float _41;
float _42;
float _455;
uint _459;
vec3 _465 = vec3(255.0);
uint _506;
vec3 _508 = vec3(255.0);

void _55()
{
    _25 = _45._m1 * 10.0;
    _25 = clamp(_25, 0.0, 1.0);
    _35 = (_25 * (-2.0)) + 3.0;
    _25 *= _25;
    _25 *= _35;
    _25 *= _45._m3;
    _27.x = _12.w + 0.100000001490116119384765625;
    _27.x *= 5.0;
    _27.x = clamp(_27.x, 0.0, 1.0);
    _39.x = (_27.x * (-2.0)) + 3.0;
    _27.x *= _27.x;
    _27.x *= _39.x;
    vec2 _128 = vec2(_13.y + _13.w, _13.z + _13.w);
    _39 = vec3(_128.x, _128.y, _39.z);
    vec2 _134 = min(_39.xy, vec2(1.0));
    _39 = vec3(_134.x, _134.y, _39.z);
    _35 = (-_45._m4) + 1.0;
    _41 = _35 + _39.x;
    _39.x = (-_13.y) + _13.w;
    _39.x = max(_39.x, 0.0);
    _35 += _39.x;
    _41 = (-_35) + _41;
    _41 = 1.0 / _41;
    vec3 _171 = texture(_7, _11.zw).xyz;
    _33 = vec4(_171.x, _171.y, _171.z, _33.w);
    _31 = _33.xy + vec2(-0.5);
    _31 = _33.zz * _31;
    _30 = (_31 * vec2(_45._m2, _45._m2)) + _11.xy;
    _33 = texture(_8, _30);
    _35 = (-_35) + _33.z;
    _35 = _41 * _35;
    _35 = clamp(_35, 0.0, 1.0);
    _41 = (_35 * (-2.0)) + 3.0;
    _35 *= _35;
    _35 *= _41;
    _35 *= _33.w;
    _35 = _27.x * _35;
    _27.x = (_35 * _25) + (-0.00999999977648258209228515625);
    _25 *= _35;
    _38 = _27.x < 0.0;
    if ((int(_38) * (-1)) != 0)
    {
        discard;
    }
    _27.x = (-_39.x) + _39.y;
    _39.x = (-_39.x) + _33.z;
    _27.x = 1.0 / _27.x;
    _27.x *= _39.x;
    _27.x = clamp(_27.x, 0.0, 1.0);
    _39.x = (_27.x * (-2.0)) + 3.0;
    _27.x *= _27.x;
    _27.x = ((-_39.x) * _27.x) + 1.0;
    _27.x = (_27.x * 4.0) + (-_33.y);
    _27.x = (_13.w * _27.x) + _33.y;
    _39 = _19 + (-_20);
    _39 = (_33.xxx * _39) + _20;
    _27 = (_18 * _27.xxx) + _39;
    _34 = _19 * vec3(_45._m0);
    _27 = (_34 * vec3(0.4000000059604644775390625)) + _27;
    _27 = (_17 * _33.xxx) + _27;
    _42 = _13.x + 1.0;
    _27 = (_27 * vec3(_42)) + (-_16);
    _42 = _45._m0 + (-0.4000000059604644775390625);
    _42 *= 3.333333492279052734375;
    _42 = clamp(_42, 0.0, 1.0);
    _34.x = (_42 * (-2.0)) + 3.0;
    _42 *= _42;
    _42 *= _34.x;
    _34.x = _12.w * 10.0;
    _34.x = clamp(_34.x, 0.0, 1.0);
    _40 = (_34.x * (-2.0)) + 3.0;
    _34.x *= _34.x;
    _34.x *= _40;
    _34.x = min(_34.x, 1.0);
    _40 = (-_34.x) + 1.0;
    _42 = (_42 * _40) + _34.x;
    _27 = (vec3(_42) * _27) + _16;
    _22 = vec4(_27.x, _27.y, _27.z, _22.w);
    _23 = vec4(_27.x, _27.y, _27.z, _23.w);
    _22.w = _25;
    _23.w = _25;
}

void main()
{
    vec3 _462 = vec3(0.0);
    vec3 _507 = vec3(0.0);
    _55();
    if (_2 != 0u)
    {
        _455 = _438[((uint(gl_FragCoord.x) & 1u) << 1u) | (uint(gl_FragCoord.y) & 1u)];
        _459 = (_2 >> 0u) & 3u;
        switch (_459)
        {
            case 1u:
            {
                _462 = vec3(_455 * 2.0);
                _465 = vec3(15.0);
                break;
            }
            case 2u:
            {
                _462 = vec3(_455);
                _465 = vec3(31.0);
                break;
            }
            case 3u:
            {
                _462 = vec3(_455, _455 * 0.5, _455);
                _465 = vec3(31.0, 63.0, 31.0);
                break;
            }
        }
        vec3 _492 = _22.xyz + _462;
        _22 = vec4(_492.x, _492.y, _492.z, _22.w);
        vec3 _501 = round(_22.xyz * _465) / _465;
        _22 = vec4(_501.x, _501.y, _501.z, _22.w);
        _506 = (_2 >> 2u) & 3u;
        switch (_506)
        {
            case 1u:
            {
                _507 = vec3(_455 * 2.0);
                _508 = vec3(15.0);
                break;
            }
            case 2u:
            {
                _507 = vec3(_455);
                _508 = vec3(31.0);
                break;
            }
            case 3u:
            {
                _507 = vec3(_455, _455 * 0.5, _455);
                _508 = vec3(31.0, 63.0, 31.0);
                break;
            }
        }
        vec3 _527 = _23.xyz + _507;
        _23 = vec4(_527.x, _527.y, _527.z, _23.w);
        vec3 _536 = round(_23.xyz * _508) / _508;
        _23 = vec4(_536.x, _536.y, _536.z, _23.w);
    }
}

