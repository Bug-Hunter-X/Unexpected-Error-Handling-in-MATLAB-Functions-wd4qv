function result = myFunctionImproved(input)
  try
    if input < 0
      error('Input must be non-negative');
    end
    result = input * 2;
  catch exception
    result = NaN; % Or handle the error in another way
    disp(['Error encountered: ' exception.message]);
  end
end

% Example usage:
input = -5;
result = myFunctionImproved(input); 
input = 5;
result = myFunctionImproved(input);