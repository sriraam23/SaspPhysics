%##################################################################

%#Calculating time given initial velocity, angle, initial height and final height.

_specification(
subgoals,
projectile_time(Object1, PT),
[v0(Object1, V0), theta(Object1, Theta), h0(Object1, H0), h1(Object1, H1), g(Object1, G)]).

_specification(
solution,
projectile_time(Object1, PT),
[v0(Object1, V0), theta(Object1, Theta), h0(Object1, H0), h1(Object1, H1), g(Object1, G)],
projectile_time(Object1, divide(add(neg(multiply([V0,sin(Theta)])), sqrt(sub(pow(multiply([V0,sin(Theta)]), 2), multiply([2, G, sub(H0, H1)])))), neg(G)))).


%##################################################################

%#Calculating vertical displacement given intial vertical velocity, final vertical velocity.

_specification(
subgoals,
vertical_displacement1(Object1, VD1),
[v0(Object1, V0), v1(Object1, V1), g(Object1, G)]).

_specification(
solution,
vertical_displacement1(Object1, VD1),
[v0(Object1, V0), v1(Object1, V1), g(Object1, G)],
vertical_displacement(Object1, divide(sub(pow(V0,2), pow(V1,2)), multiply(2,G)))).


%##################################################################

%#Calculating vertical displacement given initial velocity, theta and time.

_specification(
subgoals,
vertical_displacement2(Object1, VD2),
[v0(Object1, V0), theta(Object1, Theta), t(Object1, T), g(Object1, G)]).

_specification(
solution,
vertical_displacement2(Object1, VD2),
[v0(Object1, V0), theta(Object1, Theta), t(Object1, T), g(Object1, G)],
vertical_displacement2(Object1, sub(multiply(multiply([V0,sin(Theta)]),T), divide(multiply(G, pow(T,2)), 2)))).