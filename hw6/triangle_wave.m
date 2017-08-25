function out = triangle_wave(n)

t = 0:(4*pi/1000):(4*pi);
out = zeros(size(t)); %preallocation
for i=1:length(t)
  suma=0;
    for k=0:n
        suma = suma + ((-1)^k)*sin((2*k+1)*(t(1,i)))/((2*k+1)^(2));
    end 
  out(1,i) = suma;
end

end

