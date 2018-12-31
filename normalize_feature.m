function[new_X] = normalize_feature(X);
new_X1 = X-mean(X);
new_X = new_X1./std(new_X1);
end
