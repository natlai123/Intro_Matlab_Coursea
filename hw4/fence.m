function [segments, poles] = fence(lng, seg)

% fence takes two scalar inputs: lng, the length of a straight fence one
% needs to build and seg, the length of one segment of fencing material. A 
% segment needs to have a pole at both ends, but two neighboring segments 
% always share a pole. The function returns two scalar outputs: the number of 
% segments one needs for the given length of fence and the number of poles 
% needed. Note that a segment can be cut shorter if needed. For example, 
% to build a 75m long straight fence using 10m segments, one needs 8 segments.

segments = ceil(lng/seg);
poles = segments + 1;

end
