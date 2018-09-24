figure()
pause(10)
A = [pos(:,1) pos(:,2) pos(:,3)];
for i = 1:length(A)
% Plotting
    X = [A(i,1)];
    Y = [A(i,2)];
    Z = [A(i,3)];
    S=[20] %not to scale
    % C=[.197 .1 .296; .154 .39 .247]; nice rgb colors
    C = final_colors(i,:);
    scatter3(X,Y,Z,S,C,'filled');
    axis equal;
    set(gca,'Color','k'); % spiffy black background, just like space
    hold on;
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    xlim([-2,2]);
    ylim([-2,2]);
    zlim([-2,2]);
    view(2)
    pause(.01);
end