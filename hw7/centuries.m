function c = centuries(n)
  if ~isscalar(n) || n < 1 || n > 3000 || n ~= floor(n)    % Check input
      c = '';
   else
      cent = {'I'; 'II'; 'III'; 'IV'; 'V'; 'VI'; 'VII'; 'VIII'; 'IX'; 'X';
              'XI'; 'XII'; 'XIII'; 'XIV'; 'XV'; 'XVI'; 'XVII'; 'XVIII'; 
              'XIX'; 'XX'; 'XXI'; 'XXII'; 'XXIII'; 'XXIV'; 'XXV'; 'XXVI'; 
              'XXVII'; 'XXVIII'; 'XXIX'; 'XXX'};            % List
        c = cent{ceil(n/100)};                              % Indexation
    end
end