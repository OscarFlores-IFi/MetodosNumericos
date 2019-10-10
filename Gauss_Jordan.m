M = [1 1 1 1 10;2 1 1 -1 3;2 -1 1 -1 -1; -1 -1 1 1 4]

for i=1:length(M)-1
    M(i,:) = M(i,:)./M(i,i)
    for j=1:length(M)-1
        if j ~= i
            M(j,:) = M(j,:)-M(i,:)*(M(j,i))
        end
    end
end