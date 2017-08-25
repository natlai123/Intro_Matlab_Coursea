function mbd = spherical_mirror_aberr(fn,D)

f = D*fn
delta_x = 0.01
x = 0:delta_x:(D/2)
theta = asin(x/(2*f))
costheta = cos(theta)
d = (2*f*(tan(2*theta))).*((1./costheta)-1)

sumxd = x*(d')
format long
mbd = ((8*delta_x)/(D^2))*(sumxd)
end
